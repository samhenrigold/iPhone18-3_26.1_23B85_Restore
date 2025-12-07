_BYTE *initializeWithCopy for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v6;
    v25 = *(v6 + 1);
    v26 = v6[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v6, v25, v26);
    *v5 = v24;
    *(v5 + 1) = v25;
    v5[16] = v26;
    v27 = *(v6 + 5);
    v28 = *(v6 + 24);
    *(v5 + 24) = v28;
    *(v5 + 5) = v27;
    v29 = v28;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v30 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v30;
    goto LABEL_6;
  }

  v8 = *v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  v11 = *(v6 + 3);
  v12 = v6[34];
  v13 = *(v6 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v6, v9, v10, v11, v13, v12);
  *v5 = v8;
  *(v5 + 1) = v9;
  *(v5 + 2) = v10;
  *(v5 + 3) = v11;
  *(v5 + 16) = v13;
  v5[34] = v12;
  v14 = *(v6 + 5);
  v15 = *(v6 + 6);
  v16 = *(v6 + 7);
  v17 = *(v6 + 8);
  LOBYTE(v11) = v6[74];
  v18 = *(v6 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v14, v15, v16, v17, v18, v11);
  *(v5 + 5) = v14;
  *(v5 + 6) = v15;
  *(v5 + 7) = v16;
  *(v5 + 8) = v17;
  *(v5 + 36) = v18;
  v5[74] = v11;
  v19 = *(type metadata accessor for LinkDestination() + 24);
  v20 = &v5[v19];
  v21 = &v6[v19];
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 16))(v20, v21, v22);
  v23 = type metadata accessor for LinkDestination.Configuration();
  v20[*(v23 + 20)] = v21[*(v23 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t outlined destroy of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for ResolvedButtonStyle(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v1, *(v1 + 8), *(v1 + 16));

LABEL_9:
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  outlined consume of Environment<OpenURLAction>.Content(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 74));
  v3 = *(type metadata accessor for LinkDestination() + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 8);

  return v5(v1 + v3, v4);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ButtonStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t specialized static IOSFocusEnabledFlag.evaluate(inputs:)(uint64_t *a1)
{
  lazy protocol witness table accessor for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag();
  PropertyList.subscript.getter();
  if (v3 == 1)
  {
    _GraphInputs.interfaceIdiom.getter();
    if (AnyInterfaceIdiom.accepts<A>(_:)())
    {
      v1 = 1;
    }

    else
    {
      _GraphInputs.interfaceIdiom.getter();
      v1 = AnyInterfaceIdiom.accepts<A>(_:)();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag()
{
  result = lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag;
  if (!lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IOSFocusEnabledFlag, &type metadata for IOSFocusEnabledFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag;
  if (!lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IOSFocusEnabledFlag, &type metadata for IOSFocusEnabledFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag;
  if (!lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IOSFocusEnabledFlag, &type metadata for IOSFocusEnabledFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag;
  if (!lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IOSFocusEnabledFlag, &type metadata for IOSFocusEnabledFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag;
  if (!lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IOSFocusEnabledFlag, &type metadata for IOSFocusEnabledFlag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IOSFocusEnabledFlag and conformance IOSFocusEnabledFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey;
  if (!lazy protocol witness table cache variable for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityProperties.ActionsKey, &type metadata for AccessibilityProperties.ActionsKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey);
  }

  return result;
}

uint64_t specialized closure #1 in AccessibilityButtonModifier.body(content:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v6 = a2[3];
  v15 = a2[2];
  v16 = v6;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable);
  v8 = (a3 + *(v7 + 36));
  v9 = v14;
  *v8 = v13;
  v8[1] = v9;
  v10 = v16;
  v8[2] = v15;
  v8[3] = v10;
  return outlined init with copy of AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>(a2, &v12);
}

uint64_t initializeWithCopy for AccessibilityButtonModifier.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);

  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    outlined copy of Environment<AppIntentExecutor?>.Content(v6, v7, v8);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    v11 = v5;
  }

  else
  {
    v12 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v12;
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

void type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Attachment<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Attachment<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(255);
    v5[0] = v2;
    v5[1] = v2;
    v6 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
    v7 = v6;
    v3 = type metadata accessor for AccessibilityButtonModifier.Attachment(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Attachment<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>);
    }
  }
}

uint64_t initializeWithCopy for AccessibilityButtonModifier.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);

  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    outlined copy of Environment<AppIntentExecutor?>.Content(v6, v7, v8);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    *(a1 + 40) = v5;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    v11 = v5;
  }

  else
  {
    v12 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v12;
    *(a1 + 48) = *(a2 + 48);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t destroy for KeyboardShortcutBindingBehavior(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for KeyboardShortcutBindingBehavior(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

uint64_t initializeWithCopy for NavigationLinkLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of Environment<Bool>.Content();
  *v7 = v9;
  *(v7 + 8) = v5;
  return a1;
}

uint64_t outlined init with copy of AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable(0, &lazy cache variable for type metadata for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>, type metadata accessor for AccessibilityButtonModifier);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ResolvedButtonStyleBody.StyleBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = type metadata accessor for ResolvedButtonStyleBody(0, a4, a5, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  Value = AGGraphGetValue();
  v16 = v15;
  v17 = (*(v11 + 16))(v13, Value, v10);
  if (a2 & 1) != 0 || (v16)
  {
    v21[3] = v7;
    MEMORY[0x1EEE9AC00](v17);
    *&v21[-8] = a4;
    *&v21[-6] = a5;
    *&v21[-4] = a1;
    *&v21[-2] = v13;
    v19 = type metadata accessor for ResolvedButtonStyleBody.StyleBodyAccessor(0, a4, a5, v18);
    swift_getWitnessTable(protocol conformance descriptor for ResolvedButtonStyleBody<A>.StyleBodyAccessor, v19);
    BodyAccessor.setBody(_:)();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t initializeWithCopy for ButtonSpringLoadedInteraction(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);
  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;

  return a1;
}

uint64_t destroy for ButtonSpringLoadedInteraction(void *a1)
{
}

uint64_t ButtonStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t destroy for WrappedButtonStyleBody(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 80);
  v7 = ((((v4 + a1 + (v6 | 7)) | v6 | 7) + 1) & ~(v6 | 7));
  v8 = *(*(v5 - 8) + 64) + ((v6 + 75) & ~v6);
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
    v20 = *(v5 - 8);
    v15 = v5;
    outlined consume of Environment<OpenURLAction>.Content(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 16), v7[34]);
    v16 = (v7 + 42) & 0xFFFFFFFFFFFFFFF8;
    v17.n128_f64[0] = outlined consume of Environment<OpenURLAction>.Content(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32), *(v16 + 34));
    v18 = *(v20 + 8);

    return v18((v6 + v16 + 35) & ~v6, v15, v17);
  }
}

uint64_t WrappedButtonStyleBody.body.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v1 + *(a1 + 36), &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PrimitiveButtonStyleConfiguration);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  (*(v3 + 16))(v5, v1, a1);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  (*(v3 + 32))(v12 + v11, v5, a1);
  v16 = type metadata accessor for ResolvedButtonStyleBody(0, v13, v14, v15);
  v18 = property wrapper backing initializer of ButtonBehavior.state(2, v16, &protocol witness table for ResolvedButtonStyleBody<A>, v17);
  v43 = 1;
  v30 = 0;
  v31 = 1;
  v32 = partial apply for implicit closure #2 in implicit closure #1 in WrappedButtonStyleBody.body.getter;
  v33 = v10;
  v34 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v35 = 0;
  v36 = partial apply for closure #1 in WrappedButtonStyleBody.body.getter;
  v37 = v12;
  v38 = 0;
  v39 = 0;
  v40 = v18;
  v41 = BYTE2(v18) & 1;
  v42 = v19;
  v27 = v13;
  v28 = v14;
  v29 = v1;
  v24 = v13;
  v25 = v14;
  v26 = &v30;
  v21 = type metadata accessor for ButtonBehavior(0, v16, &protocol witness table for ResolvedButtonStyleBody<A>, v20);
  swift_getWitnessTable(protocol conformance descriptor for ButtonBehavior<A>, v21);
  StaticIf<>.init<A>(idiom:then:else:)();
  return (*(*(v21 - 8) + 8))(&v30, v21);
}

uint64_t closure #3 in WrappedButtonStyleBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ResolvedButtonStyleBody(255, a2, a3, a4);
  v6 = type metadata accessor for ButtonBehavior(0, v4, &protocol witness table for ResolvedButtonStyleBody<A>, v5);
  swift_getWitnessTable(protocol conformance descriptor for ButtonBehavior<A>, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  v14[5] = v13;
  v14[0] = v8;
  v14[1] = v9;
  return (*(*(v6 - 8) + 8))(v14, v6);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ButtonBehavior.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v125 = a2;
  type metadata accessor for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v128 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  v9 = v8;
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v137 = a1;
  v12 = type metadata accessor for VStack();
  v135 = v9;
  v127 = v12;
  v13 = type metadata accessor for StaticIf();
  v129 = v6;
  v14 = type metadata accessor for ModifiedContent();
  v108 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v106 = v103 - v15;
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _AnimationModifier<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697F540]);
  v109 = v14;
  v16 = type metadata accessor for ModifiedContent();
  v111 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v110 = v103 - v17;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>(255);
  v112 = v16;
  v107 = v18;
  v19 = type metadata accessor for ModifiedContent();
  v114 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v130 = v103 - v20;
  type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, &unk_1EFFCD428);
  v115 = v19;
  v113 = v21;
  v22 = type metadata accessor for ModifiedContent();
  v121 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v118 = v103 - v23;
  type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier>, &type metadata for SpringLoadingBehavior.HasCustomSpringLoadedBehavior, &unk_1EFFCD3A8);
  v122 = v22;
  v117 = v24;
  v25 = type metadata accessor for ModifiedContent();
  v123 = *(v25 - 8);
  v124 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v119 = v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v120 = v103 - v28;
  v134 = v13;
  v116 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v133 = v103 - v30;
  type metadata accessor for <<opaque return type of Gesture.debugLabel(_:)>>.0(0);
  v131 = *(v31 - 8);
  v132 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v136 = v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 8) == 1)
  {
    v33 = static ImprovedButtonGestureFeature.isEnabled.getter();
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0x3FB999999999999ALL;
    }
  }

  else
  {
    v33 = 0;
    v34 = *v3;
  }

  v35 = implicit closure #1 in ButtonBehavior.body.getter(v3, v11, v10);
  v36 = v11;
  v38 = v37;
  v39 = implicit closure #3 in ButtonBehavior.body.getter(v3, v36, v10);
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  *(v42 + 24) = v10;
  v43 = *(v3 + 48);
  *(v42 + 64) = *(v3 + 32);
  *(v42 + 80) = v43;
  v44 = *(v3 + 80);
  *(v42 + 96) = *(v3 + 64);
  *(v42 + 112) = v44;
  v45 = *(v3 + 16);
  *(v42 + 32) = *v3;
  *(v42 + 48) = v45;
  LOBYTE(v140) = v33 & 1;
  *&v143 = v35;
  *(&v143 + 1) = v38;
  *&v144 = v39;
  *(&v144 + 1) = v41;
  *&v145 = v34;
  BYTE8(v145) = v33 & 1;
  *&v146[0] = partial apply for closure #1 in ButtonBehavior.body.getter;
  *(&v146[0] + 1) = v42;
  *&v155[0] = 0x3C6E6F74747542;
  *(&v155[0] + 1) = 0xE700000000000000;
  v46 = *(v137 - 8);
  v104 = *(v46 + 16);
  v105 = v46 + 16;
  v104(&v150, v3, v137);
  v47 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v47);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>(0);
  lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>, MEMORY[0x1E697E860]);
  Gesture.debugLabel(_:)();

  v155[0] = v143;
  v155[1] = v144;
  v155[2] = v145;
  v155[3] = v146[0];
  v48 = outlined destroy of LinkDestination.Configuration(v155, type metadata accessor for ModifierGesture<CallbacksGesture<FailedCallbacks<()>>, _ButtonGesture>);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v50);
  v103[0] = v36;
  v51 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981870], v127);
  StaticIf<>.init(_:then:else:)();
  v53 = *(v3 + 24);
  v127 = *(v3 + 16);
  v52 = v127;
  v54 = v128;
  (*(v131 + 16))(v128, v136, v132);
  v55 = v129;
  v56 = &v54[*(v129 + 36)];
  *v56 = v52;
  *(v56 + 1) = v53;
  v135 = v53;
  v149[0] = v51;
  v149[1] = WitnessTable;
  v57 = v49;
  v126 = v49;
  v149[2] = v49;
  swift_retain_n();
  v58 = v134;
  v59 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v134, v149);
  v60 = v106;
  MEMORY[0x18D00A570](v54, v58, v55, v59);
  sub_18BDCB8E4(v54);
  ButtonBehavior.animation.getter(v137, v61, v62, v63);
  v154 = *(v3 + 80);
  v150 = *(v3 + 80);
  v64 = v103[0];
  v103[1] = type metadata accessor for ButtonBehavior.StateType(255, v103[0], v57, v65);
  v129 = type metadata accessor for State();
  State.wrappedValue.getter();
  LOWORD(v150) = v143;
  v148[0] = v59;
  v148[1] = &protocol witness table for ButtonActionModifier<A>;
  v66 = MEMORY[0x1E697E858];
  v128 = MEMORY[0x1E697E858];
  v67 = v109;
  v68 = swift_getWitnessTable(MEMORY[0x1E697E858], v109, v148);
  lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase();
  v69 = v110;
  View.animation<A>(_:value:)();

  (*(v108 + 8))(v60, v67);
  v70 = swift_allocObject();
  v71 = v126;
  *(v70 + 16) = v64;
  *(v70 + 24) = v71;
  v72 = *(v3 + 48);
  *(v70 + 64) = *(v3 + 32);
  *(v70 + 80) = v72;
  v73 = *(v3 + 80);
  *(v70 + 96) = *(v3 + 64);
  *(v70 + 112) = v73;
  v74 = *(v3 + 16);
  *(v70 + 32) = *v3;
  *(v70 + 48) = v74;
  v75 = v127;
  *&v143 = v127;
  *(&v143 + 1) = v135;
  *&v144 = partial apply for closure #4 in ButtonBehavior.body.getter;
  *(&v144 + 1) = v70;
  v104(&v150, v3, v137);
  v76 = lazy protocol witness table accessor for type _AnimationModifier<ButtonInteractionPhase> and conformance _AnimationModifier<A>();
  v147[0] = v68;
  v147[1] = v76;
  v77 = v112;
  v78 = swift_getWitnessTable(v66, v112, v147);
  MEMORY[0x18D00A570](&v143, v77, v107, v78);

  (*(v111 + 8))(v69, v77);
  v143 = v154;
  v79 = State.projectedValue.getter();
  v80 = v150;
  v81 = v151;
  LOBYTE(v77) = BYTE2(v151);
  MEMORY[0x1EEE9AC00](v79);
  swift_getKeyPath();
  v150 = v80;
  LOWORD(v151) = v81;
  BYTE2(v151) = v77;
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v82 = v143;
  LOWORD(v66) = v144;

  KeyPath = swift_getKeyPath();
  LOBYTE(v140) = 0;
  v143 = v82;
  LOWORD(v144) = v66;
  *(&v144 + 1) = v75;
  v145 = v135;
  LOBYTE(v146[0]) = 0;
  *(&v146[0] + 1) = 0;
  *&v146[1] = KeyPath;
  BYTE8(v146[1]) = 0;
  v84 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v142[0] = v78;
  v142[1] = v84;
  v85 = v115;
  v86 = swift_getWitnessTable(v128, v115, v142);
  v87 = v118;
  v88 = v130;
  MEMORY[0x18D00A570](&v143, v85, v113, v86);
  v152 = v145;
  v153[0] = v146[0];
  *(v153 + 9) = *(v146 + 9);
  v150 = v143;
  v151 = v144;
  outlined destroy of StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>(&v150);
  (*(v114 + 8))(v88, v85);
  v140 = v154;
  v89 = State.projectedValue.getter();
  v90 = v143;
  LOWORD(v88) = v144;
  LOBYTE(v71) = BYTE2(v144);
  MEMORY[0x1EEE9AC00](v89);
  swift_getKeyPath();
  v143 = v90;
  LOWORD(v144) = v88;
  BYTE2(v144) = v71;
  Binding.subscript.getter();

  v91 = v140;
  LOWORD(v75) = v141;

  v143 = v91;
  LOWORD(v144) = v75;
  *(&v144 + 1) = v127;
  *&v145 = v135;
  HasCustomRepeat = lazy protocol witness table accessor for type StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v139[0] = v86;
  v139[1] = HasCustomRepeat;
  v93 = v128;
  v94 = v122;
  v95 = swift_getWitnessTable(v128, v122, v139);
  v96 = v119;
  MEMORY[0x18D00A570](&v143, v94, v117, v95);

  (*(v121 + 8))(v87, v94);
  (*(v116 + 8))(v133, v134);
  (*(v131 + 8))(v136, v132);
  HasCustomSpringLoaded = lazy protocol witness table accessor for type StaticIf<SpringLoadingBehavior.HasCustomSpringLoadedBehavior, ButtonSpringLoadedInteraction, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v138[0] = v95;
  v138[1] = HasCustomSpringLoaded;
  v98 = v124;
  swift_getWitnessTable(v93, v124, v138);
  v99 = v120;
  static ViewBuilder.buildExpression<A>(_:)();
  v100 = *(v123 + 8);
  v100(v96, v98);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v100)(v99, v98);
}

uint64_t sub_18BDCB8E4(uint64_t a1)
{
  type metadata accessor for ButtonActionModifier<<<opaque return type of Gesture.debugLabel(_:)>>.0>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18BDCB940(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.effectiveButtonRepeatTiming.getter(&v3);
  *a2 = v3;
}

uint64_t (*implicit closure #3 in ButtonBehavior.body.getter(_OWORD *a1, uint64_t a2, uint64_t a3))(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  v11 = type metadata accessor for ButtonBehavior(0, a2, a3, v10);
  (*(*(v11 - 8) + 16))(&v13, a1, v11);
  return partial apply for implicit closure #4 in implicit closure #3 in ButtonBehavior.body.getter;
}

uint64_t initializeWithCopy for _ButtonGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);

  if (v5)
  {
    v7 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  else
  {
    *(a1 + 16) = *v6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t closure #1 in closure #2 in ButtonBehavior.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v18 = *(v10 + 80);
  type metadata accessor for ButtonBehavior.StateType(255, v11, v12, v13);
  type metadata accessor for State();
  State.wrappedValue.getter();
  (*(a1 + 48))((v17 != 2) & v17);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, a2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v9, a2);
}

uint64_t closure #1 in WrappedButtonStyleBody.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = *(a2 + *(type metadata accessor for WrappedButtonStyleBody(0, a3, a4, a4) + 36));
  v10[1] = a1;
  return ButtonStyle.resolvedBody(configuration:)(v10, a3, a4, a5);
}

uint64_t outlined destroy of StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>(uint64_t a1)
{
  type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(0, &lazy cache variable for type metadata for StaticIf<ButtonRepeatBehavior.HasCustomRepeatBehavior, ButtonRepeatModifier, EmptyModifier>, &type metadata for ButtonRepeatBehavior.HasCustomRepeatBehavior, &unk_1EFFCD428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ResolvedButtonStyle.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v58 = type metadata accessor for ButtonAction(0);
  MEMORY[0x1EEE9AC00](v58);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v6 = v5 - 8;
  v59 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>(0);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>, StaticIf<(0);
  v64 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(v2, v11, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v15 = *v11;
  v24 = *(v6 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_1(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(&v11[v24], &v15[*(v25 + 36)], type metadata accessor for ButtonAction);
  v70 = v11;
  _s7SwiftUI12ButtonActionOWOhTm_0(v11, type metadata accessor for PrimitiveButtonStyleConfiguration);
  LOBYTE(v24) = *v2;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v61 = v13;
  v27 = *(v13 + 36);
  v63 = v15;
  v28 = &v15[v27];
  *v28 = partial apply for closure #1 in View.platformItemButtonRole(_:);
  v28[1] = v26;
  v68 = v2;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(v2, v8, type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(&v8[*(v6 + 32)], v4, type metadata accessor for ButtonAction);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v29 = *(v4 + 1);
    v55 = *v4;
    v30 = v4[16];
    v31 = *(v4 + 3);
    v32 = *(v4 + 4);
    v33 = *(v4 + 5);
  }

  else
  {
    _s7SwiftUI12ButtonActionOWOhTm_0(v4, type metadata accessor for ButtonAction);
    v55 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  v58 = type metadata accessor for PrimitiveButtonStyleConfiguration;
  v34 = v70;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(v8, v70, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v57 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v35 = v57;
  v36 = swift_allocObject();
  v59 = type metadata accessor for PrimitiveButtonStyleConfiguration;
  outlined init with take of PrimitiveButtonStyleConfiguration(v34, v36 + v35, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v37 = _s7SwiftUI12ButtonActionOWOhTm_0(v8, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v56 = &v54;
  *&v72 = partial apply for implicit closure #2 in implicit closure #1 in AccessibilityButtonModifier.init(_:);
  *(&v72 + 1) = v36;
  *&v73 = v55;
  *(&v73 + 1) = v29;
  *&v74 = v30;
  *(&v74 + 1) = v31;
  *&v75 = v32;
  *(&v75 + 1) = v33;
  v76 = v72;
  v77 = v73;
  v78 = v74;
  v79 = v75;
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v39 = MEMORY[0x1E6980C18];
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, v39);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityAttachmentModifier);
  v40 = v67;
  v41 = v63;
  View.staticIf<A, B, C>(_:then:else:)();
  _s7SwiftUI12ButtonActionOWOhTm_0(&v72, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Configuration);
  _s7SwiftUI12ButtonActionOWOhTm_0(v41, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
  v42 = v70;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(v68, v70, v58);
  v43 = v57;
  v44 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(v42, v44 + v43, v59);
  v45 = v65;
  outlined init with take of PrimitiveButtonStyleConfiguration(v40, v65, type metadata accessor for ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>);
  v46 = (v45 + *(v66 + 36));
  *v46 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v46[1] = v44;
  v47 = v62;
  outlined init with take of PrimitiveButtonStyleConfiguration(v45, v62, type metadata accessor for ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>);
  *(v47 + *(v64 + 36)) = 0;
  v48 = v60;
  outlined init with take of PrimitiveButtonStyleConfiguration(v47, v60, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.Label>>, StaticIf<);
  v49 = lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  v50 = v48;
  v51 = v69;
  outlined init with take of PrimitiveButtonStyleConfiguration(v50, v69, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyle(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<Primi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Representable>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>>, KeyboardShortcutBindingBehavior<PrimitiveButtonStyleConfiguration.La, type metadata accessor for StaticIf<VisualizeViewsEnabled, ButtonStyleDebugOverlayModifier, EmptyModifier>);
  v53 = (v51 + *(v52 + 36));
  *v53 = &type metadata for AnyButtonStyleType.Unknown;
  v53[1] = v49;
}

uint64_t outlined init with copy of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_6(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_7(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 24);
  type metadata accessor for ButtonAction(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));

LABEL_9:
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
  outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
  v4 = *(type metadata accessor for LinkDestination() + 24);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);

  return v6(v2 + v4, v5);
}

uint64_t outlined destroy of ButtonAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI12ButtonActionOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for ButtonAction(char *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*a1, *(a1 + 1), a1[16]);

LABEL_9:
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  outlined consume of Environment<OpenURLAction>.Content(*a1, *(a1 + 1), *(a1 + 2), *(a1 + 3), *(a1 + 16), a1[34]);
  outlined consume of Environment<OpenURLAction>.Content(*(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 36), a1[74]);
  v4 = *(type metadata accessor for LinkDestination() + 24);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t outlined init with take of PrimitiveButtonStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t WrappedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26[0] = a1;
  v26[1] = a3;
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v16 = type metadata accessor for WrappedButtonStyleBody(0, v9, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v26 - v22;
  (*(v10 + 16))(v13, v4, v9, v21);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v26[0], v8, type metadata accessor for PrimitiveButtonStyleConfiguration);
  WrappedButtonStyleBody.init(style:configuration:)(v13, v8, v9, v14, v19);
  swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyleBody<A>, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v17 + 8);
  v24(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v23, v16);
}

uint64_t initializeWithCopy for WrappedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = (v10 | 7) + v6;
  v12 = ((v11 + a1) & ~(v10 | 7));
  v13 = ((v11 + a2) & ~(v10 | 7));
  *v12 = *v13;
  v14 = (v10 | 7) + 1;
  v15 = &v12[v14] & ~(v10 | 7);
  v16 = (&v13[v14] & ~(v10 | 7));
  v17 = *(v8 + 64);
  v18 = v17 + ((v10 + 75) & ~v10);
  if ((v18 + 1) > 0x30)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 48;
  }

  v20 = v16[v19];
  v21 = v20 - 3;
  if (v20 >= 3)
  {
    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_18;
      }

      v23 = *v16;
    }

    else if (v22 == 2)
    {
      v23 = *v16;
    }

    else if (v22 == 3)
    {
      v23 = *v16 | (v16[2] << 16);
    }

    else
    {
      v23 = *v16;
    }

    v24 = (v23 | (v21 << (8 * v19))) + 3;
    v20 = v23 + 3;
    if (v19 < 4)
    {
      v20 = v24;
    }
  }

LABEL_18:
  if (v20 == 2)
  {
    v39 = *v16;
    v40 = *(v16 + 1);
    v41 = v16[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v16, v40, v41);
    *v15 = v39;
    *(v15 + 8) = v40;
    *(v15 + 16) = v41;
    v42 = *(v16 + 3);
    *(v15 + 24) = v42;
    v43 = *(v16 + 5);
    *(v15 + 32) = *(v16 + 4);
    *(v15 + 40) = v43;
    *(v15 + v19) = 2;
    v44 = v42;
LABEL_23:

    return a1;
  }

  if (v20 != 1)
  {
    v45 = *(v16 + 1);
    *v15 = *v16;
    *(v15 + 8) = v45;
    *(v15 + v19) = 0;
    goto LABEL_23;
  }

  v50 = v7;
  v25 = *v16;
  v26 = *(v16 + 1);
  v51 = a1;
  v27 = *(v16 + 2);
  v28 = *(v16 + 3);
  v29 = v16[34];
  v30 = *(v16 + 16);
  v48 = v9;
  v49 = v17;
  outlined copy of Environment<OpenURLAction>.Content(*v16, v26, v27, v28, v30, v29);
  *v15 = v25;
  *(v15 + 8) = v26;
  *(v15 + 16) = v27;
  *(v15 + 24) = v28;
  *(v15 + 32) = v30;
  *(v15 + 34) = v29;
  v31 = (v15 + 42) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v16 + 42) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  v36 = *(v32 + 24);
  v47 = *(v32 + 34);
  v37 = *(v32 + 32);
  v38 = outlined copy of Environment<OpenURLAction>.Content(*v32, v34, v35, v36, v37, v47);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  *(v31 + 24) = v36;
  a1 = v51;
  *(v31 + 32) = v37;
  *(v31 + 34) = v47;
  (*(v48 + 16))((v10 + 35 + v31) & ~v10, (v10 + 35 + v32) & ~v10, v50, v38);
  *(((v10 + 35 + v31) & ~v10) + v49) = *(((v10 + 35 + v32) & ~v10) + v49);
  *(v15 + v19) = 1;
  return a1;
}

uint64_t closure #2 in WrappedButtonStyleBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v6 = type metadata accessor for WrappedButtonStyleBody(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(a1 + *(v6 + 36), &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimitiveButtonStyleConfiguration);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PrimitiveButtonStyleConfiguration);
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v29;
  v18 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v18;
  (*(v7 + 32))(v16 + v15, v9, v6);
  v20 = type metadata accessor for ResolvedButtonStyleBody(0, v17, v18, v19);
  v22 = property wrapper backing initializer of ButtonBehavior.state(2, v20, &protocol witness table for ResolvedButtonStyleBody<A>, v21);
  *&v48 = 0;
  BYTE8(v48) = 1;
  *(&v48 + 9) = *v46;
  HIDWORD(v48) = *&v46[3];
  *&v49 = partial apply for implicit closure #4 in implicit closure #3 in PlatformItemListButtonStyle.makeBody(configuration:);
  *(&v49 + 1) = v14;
  *&v50 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(&v50 + 1) = 0;
  *&v51 = partial apply for closure #1 in closure #2 in WrappedButtonStyleBody.body.getter;
  *(&v51 + 1) = v16;
  *&v52 = closure #2 in closure #2 in WrappedButtonStyleBody.body.getter;
  *(&v52 + 1) = 0;
  LOWORD(v53) = v22;
  BYTE2(v53) = BYTE2(v22) & 1;
  BYTE7(v53) = v45;
  *(&v53 + 3) = v44;
  *(&v53 + 1) = v23;
  v25 = type metadata accessor for ButtonBehavior(0, v20, &protocol witness table for ResolvedButtonStyleBody<A>, v24);
  swift_getWitnessTable(protocol conformance descriptor for ButtonBehavior<A>, v25);
  static ViewBuilder.buildExpression<A>(_:)();
  v47[2] = v50;
  v47[3] = v51;
  v47[4] = v52;
  v47[5] = v53;
  v47[0] = v48;
  v47[1] = v49;
  v26 = *(*(v25 - 8) + 8);
  v26(v47, v25);
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32 = v38;
  v33 = v39;
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = v34;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v48 = v32;
  v49 = v33;
  return v26(&v48, v25);
}

uint64_t getEnumTagSinglePayload for LazyPageTabModifier(uint64_t a1, unsigned int a2)
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

uint64_t (*implicit closure #1 in ButtonBehavior.body.getter(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  v11 = type metadata accessor for ButtonBehavior(0, a2, a3, v10);
  (*(*(v11 - 8) + 16))(&v13, a1, v11);
  return partial apply for implicit closure #2 in implicit closure #1 in ButtonBehavior.body.getter;
}

uint64_t destroy for _ButtonGesture(void *a1)
{

  if (a1[2])
  {
  }

  return result;
}

uint64_t closure #2 in ButtonBehavior.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable(MEMORY[0x1E6981870], v6);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, v6);
}

uint64_t partial apply for closure #1 in WrappedButtonStyleBody.body.getter@<X0>(char a1@<W0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(type metadata accessor for WrappedButtonStyleBody(0, v8, v9, a4) - 8);
  return closure #1 in WrappedButtonStyleBody.body.getter(a1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v8, v9, x8_0);
}

uint64_t specialized closure #2 in AccessibilityButtonModifier.body(content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v10 = 1;
  outlined init with copy of AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>(a2, &v8);
  specialized AccessibilityButtonModifier.Attachment.body(content:)(a1, a3);
  return _s7SwiftUI12ButtonActionOWOhTm_0(v9, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Attachment<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>);
}

void type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>)
  {
    type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityVoidAction> and conformance AccessibilityActionStorage<A>();
    v6 = type metadata accessor for AnyAccessibilityAction.ConcreteBase(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>);
    }
  }
}

uint64_t protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.ActionsKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AccessibilityProperties.ActionsKey.defaultValue;
}

uint64_t initializeWithCopy for AnyAccessibilityAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityLargeContentViewBehaviorModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 16) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1, a2);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t protocol witness for static AccessibilityPropertiesKey.isDefault(_:) in conformance AccessibilityProperties.ActionsKey(uint64_t *a1)
{
  v2 = *a1;
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v3 = static AccessibilityProperties.ActionsKey.defaultValue;

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22AnyAccessibilityActionV_Tt1g5(v2, v3);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22AnyAccessibilityActionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        outlined init with copy of AnyAccessibilityAction(v3, v10);
        outlined init with copy of AnyAccessibilityAction(v4, v9);
        v5 = v11;
        v6 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v7 = (*(v6 + 88))(v9, v5, v6);
        outlined destroy of AnyAccessibilityAction(v9);
        outlined destroy of AnyAccessibilityAction(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t WrappedButtonStyleBody.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for WrappedButtonStyleBody(0, a3, a4, v9);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(a2, a5 + *(v10 + 36), type metadata accessor for PrimitiveButtonStyleConfiguration);
}

uint64_t property wrapper backing initializer of ButtonBehavior.state(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ButtonBehavior.StateType(0, a2, a3, a4);
  State.init(wrappedValue:)();
  return v5;
}

uint64_t initializeWithCopy for ButtonBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v4;
  v5 = (a2 + 64);
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 72);
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
  }

  else
  {
    *(a1 + 64) = *v5;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t destroy for ButtonBehavior(void *a1)
{

  if (a1[8])
  {
  }
}

uint64_t storeEnumTagSinglePayload for LazyPageTabModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ButtonStyle.resolvedBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = v12[1];
  (*(v8 + 16))(v11, v4, a2, v9);
  (*(v8 + 32))(a4, v11, a2);
  result = type metadata accessor for ResolvedButtonStyleBody(0, a2, a3, v15);
  v17 = (a4 + *(result + 36));
  *v17 = v13;
  v17[1] = v14;
  return result;
}

uint64_t outlined copy of ResolvedTableRowIDs.Storage(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t destroy for ButtonRepeatModifier(uint64_t a1)
{

  v2 = *(a1 + 64);
  v3 = *(a1 + 72);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v2, v3);
}

_BYTE *initializeWithCopy for PrimitiveButtonStyleConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v6;
    v25 = *(v6 + 1);
    v26 = v6[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v6, v25, v26);
    *v5 = v24;
    *(v5 + 1) = v25;
    v5[16] = v26;
    v27 = *(v6 + 5);
    v28 = *(v6 + 24);
    *(v5 + 24) = v28;
    *(v5 + 5) = v27;
    v29 = v28;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v30 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v30;
    goto LABEL_6;
  }

  v8 = *v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  v11 = *(v6 + 3);
  v12 = v6[34];
  v13 = *(v6 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v6, v9, v10, v11, v13, v12);
  *v5 = v8;
  *(v5 + 1) = v9;
  *(v5 + 2) = v10;
  *(v5 + 3) = v11;
  *(v5 + 16) = v13;
  v5[34] = v12;
  v14 = *(v6 + 5);
  v15 = *(v6 + 6);
  v16 = *(v6 + 7);
  v17 = *(v6 + 8);
  LOBYTE(v11) = v6[74];
  v18 = *(v6 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v14, v15, v16, v17, v18, v11);
  *(v5 + 5) = v14;
  *(v5 + 6) = v15;
  *(v5 + 7) = v16;
  *(v5 + 8) = v17;
  *(v5 + 36) = v18;
  v5[74] = v11;
  v19 = *(type metadata accessor for LinkDestination() + 24);
  v20 = &v5[v19];
  v21 = &v6[v19];
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 16))(v20, v21, v22);
  v23 = type metadata accessor for LinkDestination.Configuration();
  v20[*(v23 + 20)] = v21[*(v23 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for AccessibilityButtonModifier.Attachment(uint64_t a1)
{

  v3 = *(a1 + 40);
  if (v3)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  return result;
}

uint64_t specialized AccessibilityButtonModifier.Attachment.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v9 = swift_allocObject();
  *(v9 + 16) = 12;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v21);
  _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v10 = swift_allocObject();
  memcpy((v10 + 16), v20, 0x128uLL);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(a1, v8, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>);
  v11 = &v8[*(v6 + 44)];
  *v11 = v10;
  v11[1] = v9;
  AccessibilityTraitSet.init(traits:)();
  v12 = v19;
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v10 + 16, 0, v12);
  outlined init with take of PrimitiveButtonStyleConfiguration(v8, a2, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>, AccessibilityAttachmentModifier>);
  v13 = *(a2 + *(v6 + 44));
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v13 + 16, 0x4000000040uLL);
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v13 + 16, 1, 1);
  v14 = specialized AccessibilityButtonModifier.Attachment.accessibilityActions.getter();
  if (*(v2 + 64))
  {
    swift_beginAccess();
    v18 = v14;
    lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

    AccessibilityProperties.subscript.getter();
    specialized Array.append<A>(contentsOf:)(v17);
    v17 = v18;
    AccessibilityProperties.subscript.setter();
    swift_endAccess();
  }
}

uint64_t specialized AccessibilityButtonModifier.Attachment.accessibilityActions.getter()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v7 = v0 + 16;
    v5 = *(v0 + 16);
    v6 = *(v7 + 8);
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18CD63400;
    LOBYTE(v4) = v4 & 1;
    v20[0] = v4;
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    *(v8 + 56) = v9;
    *(v8 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v10 = swift_allocObject();
    *(v8 + 32) = v10;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = v5;
    *(v10 + 56) = v6;
    *(v10 + 64) = v4;
    *(v10 + 72) = v1;
    *(v10 + 80) = v3;
    *(v10 + 88) = v2;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    *(v10 + 120) = 2;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 153) = 0u;
    *(v8 + 72) = 1;
    outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v4);
    v11 = v1;

    return v8;
  }

  else
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_18CD63400;
    v14 = swift_allocObject();
    v15 = *(v0 + 48);
    *(v14 + 48) = *(v0 + 32);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(v0 + 64);
    v16 = *(v0 + 16);
    *(v14 + 16) = *v0;
    *(v14 + 32) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for specialized closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter;
    *(v17 + 24) = v14;
    LODWORD(v14) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    *(v13 + 56) = v18;
    *(v13 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v19 = swift_allocObject();
    *(v13 + 32) = v19;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0;
    *(v19 + 72) = 2;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0;
    *(v19 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
    *(v19 + 128) = v17;
    *(v19 + 136) = v14;
    *(v13 + 72) = 0;
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_2(v0, v20, type metadata accessor for AccessibilityButtonModifier<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>.Attachment<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, NavigationDisclosureEnvironmentModifier>, PlatformItemListTransformModifier<LayoutPlatformItemListFlags>>>);
    return v13;
  }
}

uint64_t sub_18BDCEC84()
{

  if (*(v0 + 56))
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_18BDCECE0()
{

  return swift_deallocObject();
}

uint64_t sub_18BDCED18()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18BDCEDB4()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 120) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 152))
  {
    outlined consume of Text.Storage(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  return swift_deallocObject();
}

uint64_t outlined destroy of LinkDestination.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI15LinkDestinationV13ConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for NavigationLinkLabel(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);

  return outlined consume of Environment<Bool>.Content(v5, v6);
}

uint64_t initializeWithCopy for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t destroy for AsOptional(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t getEnumTagSinglePayload for ButtonInteractionPhase(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
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

uint64_t ButtonStyleContainerModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v67 = a3;
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  v61 = v4;
  v6 = type metadata accessor for ButtonStyleAdaptorMenuStyle(255, v5, v4, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ButtonStyleAdaptorMenuStyle<A>, v6);
  v56 = type metadata accessor for CustomButtonMenuStyleWriter(0, v6, WitnessTable, v8);
  v66 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v65 = &v48 - v9;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedButtonStyle(255, v5, v4, v12);
  v14 = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v13);
  v53 = type metadata accessor for ButtonStyleModifier(0, v13, v14, v15);
  v60 = *(v53 - 8);
  v16 = MEMORY[0x1EEE9AC00](v53);
  v18 = &v48 - v17;
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleContainerModifier<A>, a1, v16);
  v50 = type metadata accessor for _ViewModifier_Content();
  v19 = type metadata accessor for ModifiedContent();
  v58 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v54 = type metadata accessor for ButtonStyleWriter(255, v13, v14, v22);
  v55 = type metadata accessor for ModifiedContent();
  v63 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v48 - v23;
  v24 = type metadata accessor for ModifiedContent();
  v64 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v52 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v57 = &v48 - v28;
  v29 = *(v68 + 16);
  v68 += 16;
  v49 = v29;
  v30 = v59;
  v31 = v62;
  (v29)(v59, v62, v5, v27);
  ButtonStyleModifier.init<A>(style:)(v30, v5, v61, v32, v18);
  v33 = v50;
  v34 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v50);
  v35 = v33;
  v36 = v53;
  MEMORY[0x18D00A570](v18, v35, v53, v34);
  (*(v60 + 8))(v18, v36);
  v71[0] = v34;
  v71[1] = &protocol witness table for ButtonStyleModifier<A>;
  v37 = MEMORY[0x1E697E858];
  v38 = swift_getWitnessTable(MEMORY[0x1E697E858], v19, v71);
  v39 = v51;
  MEMORY[0x18D00A570](v38, v19, v54, v38);
  (*(v58 + 8))(v21, v19);
  v49(v30, v31, v5);
  v40 = v65;
  CustomButtonMenuStyleWriter.init<A>(style:)();
  v70[0] = v38;
  v70[1] = &protocol witness table for ButtonStyleWriter<A>;
  v41 = v55;
  v42 = swift_getWitnessTable(v37, v55, v70);
  v43 = v52;
  v44 = v56;
  MEMORY[0x18D00A570](v40, v41, v56, v42);
  (*(v66 + 8))(v40, v44);
  (*(v63 + 8))(v39, v41);
  v69[0] = v42;
  v69[1] = &protocol witness table for CustomButtonMenuStyleWriter<A>;
  swift_getWitnessTable(v37, v24, v69);
  v45 = v57;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v64 + 8);
  v46(v43, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v45, v24);
}

uint64_t ButtonStyleModifier.init<A>(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for WrappedButtonStyle(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(*(a2 - 8) + 32))(&v13 - v10, a1, a2, v9);
  swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v8);
  return FormatInputToString.init(format:)(v11, v8, a5);
}

uint64_t ButtonStyleAdaptorMenuStyle.init(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  v8 = a4 + *(type metadata accessor for ButtonStyleAdaptorMenuStyle(0, a2, a3, v7) + 36);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown()
{
  result = lazy protocol witness table cache variable for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown;
  if (!lazy protocol witness table cache variable for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyButtonStyleType.Unknown, &type metadata for AnyButtonStyleType.Unknown, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown);
  }

  return result;
}

uint64_t ButtonBehavior.animation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 64);
  if (v5)
  {
    v6 = *(v4 + 72);
    type metadata accessor for ButtonBehavior.StateType(255, *(a1 + 16), *(a1 + 24), a4);
    type metadata accessor for State();

    State.wrappedValue.getter();
    v7 = v5(v9);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5, v6);
    return v7;
  }

  else
  {
    type metadata accessor for ButtonBehavior.StateType(255, *(a1 + 16), *(a1 + 24), a4);
    type metadata accessor for State();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    return static Animation.coreAnimationDefault(duration:)();
  }
}

uint64_t initializeWithCopy for ButtonRepeatModifier(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 8);
  v4 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v4;
  v5 = a2[5];
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = a2[8];
  *(a1 + 56) = a2[7];
  v7 = *(a2 + 72);

  v8 = v5;

  outlined copy of ResolvedTableRowIDs.Storage(v6, v7);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return a1;
}

uint64_t partial apply for closure #1 in ResolvedButtonStyleBody.StyleBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  v8 = (v7 + *(type metadata accessor for ResolvedButtonStyleBody(0, v5, v6, a4) + 36));
  v9 = *v8;
  LOBYTE(v8) = v8[1];
  v11[0] = v9;
  v11[1] = v8;
  return (*(v6 + 24))(v11, v5, v6);
}

uint64_t initializeWithCopy for ResolvedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

void type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for AccessibilityVoidAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for AccessibilityActionStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityActionStorage<AccessibilityVoidAction> and conformance AccessibilityActionStorage<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilityVoidAction> and conformance AccessibilityActionStorage<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilityVoidAction> and conformance AccessibilityActionStorage<A>)
  {
    type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(255, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionStorage<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityActionStorage<AccessibilityVoidAction> and conformance AccessibilityActionStorage<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AccessibilityActionStorage<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionStorage<A>, a2);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionStorage<A>, a2);
  *(a1 + 8) = result;
  return result;
}

id _UIHostingView.clipsToBounds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_clipsToBounds);
}

uint64_t *assignWithCopy for TableRowContextMenuTraitKey.Storage(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t @objc _UIHostingView.clipsToBounds.getter(void *a1)
{
  v1 = a1;
  v5 = _UIHostingView.clipsToBounds.getter(v1, v2, v3, v4);

  return v5 & 1;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void @objc _UIHostingView.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  _UIHostingView.frame.setter(&selRef_bounds, &selRef_setBounds_, a2, a3, a4, a5);
}

double @objc _UIHostingView._baselineOffsets(at:)(void *a1, double a2, double a3)
{
  v3 = a1;
  v4 = _UIHostingView._baselineOffsets(at:)();

  return v4;
}

double _UIHostingView._baselineOffsets(at:)()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._baselineOffsets(at:)();
  v2 = v1;

  return v2;
}

uint64_t one-time initialization function for contain()
{
  _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Contain>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain, &type metadata for AccessibilityChildBehavior.Contain);
  result = swift_allocObject();
  static AccessibilityChildBehavior.contain = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Contain, &type metadata for AccessibilityChildBehavior.Contain, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Contain, &type metadata for AccessibilityChildBehavior.Contain, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Contain, &type metadata for AccessibilityChildBehavior.Contain, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Contain(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Contain and conformance AccessibilityChildBehavior.Contain();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _ss23_ContiguousArrayStorageCy7SwiftUI4TextVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for closure #1 in ModifiedContent<>.accessibilityLabelStorage(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t View.accessibilityLabel(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v14[2] = v12;
  v15 = 2;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityLabelStorage(_:), v14, a5, a6);
}

void @objc _UIHostingView._geometryChanged(_:forAncestor:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  _UIHostingView._geometryChanged(_:forAncestor:)(a3, a4);
}

void _UIHostingView._geometryChanged(_:forAncestor:)(uint64_t a1, uint64_t a2)
{
  v2 = _UIHostingView.base.getter();
  UIHostingViewBase._geometryChanged(_:forAncestor:)();
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>, &type metadata for IgnoreInvertColorsFilterActiveKey, &protocol witness table for IgnoreInvertColorsFilterActiveKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier()
{
  result = lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier;
  if (!lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier, &unk_1EFFEF4E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect()
{
  result = lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect;
  if (!lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoreColorInvertEffect, &type metadata for IgnoreColorInvertEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect;
  if (!lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoreColorInvertEffect, &type metadata for IgnoreColorInvertEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect;
  if (!lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoreColorInvertEffect, &type metadata for IgnoreColorInvertEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect;
  if (!lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoreColorInvertEffect, &type metadata for IgnoreColorInvertEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect;
  if (!lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IgnoreColorInvertEffect, &type metadata for IgnoreColorInvertEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoreColorInvertEffect and conformance IgnoreColorInvertEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment, &unk_1EFFEF630, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment);
  }

  return result;
}

uint64_t static _AccessibilityIgnoresInvertColorsViewModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier();
  Attribute.init<A>(body:value:flags:update:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;

  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t sub_18BDD0C24()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static _AccessibilityIgnoresInvertColorsViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t, __int128 *))
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v6;
  v8 = *(a2 + 48);
  v28 = *(a2 + 64);
  v9 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v9;
  v21 = v26;
  v22 = v8;
  v23 = *(a2 + 64);
  v29 = *(a2 + 80);
  v24 = *(a2 + 80);
  v19 = v25[0];
  v20 = v7;
  v10 = v9;
  swift_beginAccess();
  *&v32[0] = __PAIR64__(*(v10 + 16), a3);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v25, v34);
  lazy protocol witness table accessor for type _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment and conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v30[2] = v21;
  v30[3] = v22;
  v30[4] = v23;
  v31 = v24;
  v30[0] = v19;
  v30[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v30, v34);
  a4(v11, &v13);
  v32[2] = v15;
  v32[3] = v16;
  v32[4] = v17;
  v33 = v18;
  v32[0] = v13;
  v32[1] = v14;
  outlined destroy of _ViewInputs(v32);
  v34[2] = v21;
  v34[3] = v22;
  v34[4] = v23;
  v35 = v24;
  v34[0] = v19;
  v34[1] = v20;
  return outlined destroy of _ViewInputs(v34);
}

uint64_t outlined copy of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of AccessibilityImageLabel(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t outlined copy of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t outlined consume of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t closure #1 in ModifiedContent<>.accessibilityIdentifier(_:placement:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a3;
  if (*(a1 + 8))
  {

    AccessibilityIdentifierStorage.merge(with:)();
    v6 = a2;
    v4 = a3;
    v7 = a4;
  }

  else
  {
    v7 = a4;
    v6 = a2;
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1819242306, 0xE400000000000000, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LOBYTE(a1) = v9;
  }

  return a1 & 1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F2E0, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEF3E726F6C6F433CLL, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);

    return v9[2];
  }

  return a1;
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, 1701605202, 0xE400000000000000, outlined consume of Environment<Bool>.Content);
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, 0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL, outlined consume of Environment<Bool>.Content);
}

{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018CD3F730, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LODWORD(a1) = v9 | (v10 << 16);
  }

  return a1 & 0xFFFFFF;
}

{
  if (a2)
  {
    LOWORD(v9) = a1 & 0x101;
    BYTE2(v9) = BYTE2(a1) & 1;
    HIBYTE(v9) = BYTE3(a1) & 1;
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C654374694B4955, 0xEE0065746174536CLL, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return v9;
}

{
  if (a2)
  {
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000018CD3F590, v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);

    return v8[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1953394502, 0xE400000000000000, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F420, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);

    return v9[2];
  }

  return a1;
}

{
  if (a2)
  {
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F8E0, v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);

    return v8[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018CD3F460, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);

    return v9[2];
  }

  return a1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6570616853796E41, 0xED0000656C797453, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

{
  if ((a2 & 1) == 0)
  {
    v2 = a1;

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F4D0, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v2, 0);

    LOBYTE(a1) = v9;
  }

  return a1 & 1;
}

{

  if ((a2 & 1) == 0)
  {
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F900, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return v9[2];
  }

  return a1;
}

void type metadata accessor for [UITraitBridgedEnvironmentKey.Type](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [UITraitBridgedEnvironmentKey.Type])
  {
    type metadata accessor for UITraitBridgedEnvironmentKey.Type();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [UITraitBridgedEnvironmentKey.Type]);
    }
  }
}

unint64_t type metadata accessor for UITraitBridgedEnvironmentKey.Type()
{
  result = lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type;
  if (!lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type)
  {
    type metadata accessor for UITraitBridgedEnvironmentKey();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitBridgedEnvironmentKey.Type);
  }

  return result;
}

uint64_t View.accessibilityHidden(_:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0x400000004;
  }

  else
  {
    v3 = 0x400000000;
  }

  v5[2] = v3;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v5, a2, a3);
}

{
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = 4 * (a1 != 2);
  if (a1)
  {
    v4 = 4;
  }

  v6[4] = v3;
  v6[5] = v4;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityVisibility(_:), v6, a2, a3);
}

uint64_t partial apply for closure #1 in View.accessibilityVisibility(_:)(uint64_t result)
{
  *(result + 112) = *(v1 + 16);
  *(result + 120) = 0;
  return result;
}

void storeEnumTagSinglePayload for Button(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + ((v9 + 75) & ~v9);
  v11 = 48;
  if ((v10 + 1) > 0x30)
  {
    v11 = v10 + 1;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= 0xFD)
  {
    v15 = 253;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = v9 | 7;
  v17 = v11 + 1;
  v18 = v11 + 1 + v14;
  v19 = ((v18 + ((v16 + 1) & ~v16)) & ~v14) + *(v12 + 64);
  if (a3 <= v15)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v15 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v15 < a2)
  {
    v21 = ~v15 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v19] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v20)
  {
    goto LABEL_32;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v26 = (&a1[v16 + 1] & ~v16);
  if (v13 > 0xFD)
  {
    v27 = *(v12 + 56);

    v27(&v26[v18] & ~v14, a2);
  }

  else if (a2 > 0xFD)
  {
    if (v17 <= 3)
    {
      v28 = ~(-1 << (8 * v17));
    }

    else
    {
      v28 = -1;
    }

    if (v11 != -1)
    {
      v29 = v28 & (a2 - 254);
      if (v17 <= 3)
      {
        v30 = v11 + 1;
      }

      else
      {
        v30 = 4;
      }

      bzero(v26, v17);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          *v26 = v29;
          v26[2] = BYTE2(v29);
        }

        else
        {
          *v26 = v29;
        }
      }

      else if (v30 == 1)
      {
        *v26 = v29;
      }

      else
      {
        *v26 = v29;
      }
    }
  }

  else
  {
    v26[v11] = -a2;
  }
}

uint64_t getEnumTagSinglePayload for Button(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + ((v7 + 75) & ~v7);
  v9 = *(*(a3 + 16) - 8);
  if ((v8 + 1) > 0x30)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = 48;
  }

  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v7 | 7;
  v16 = v10 + v12 + 1;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v17 = ((v16 + ((v15 + 1) & ~v15)) & ~v12) + v13;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      v25 = (a1 + v15 + 1) & ~v15;
      if (v11 > 0xFD)
      {
        v27 = *(*(*(a3 + 16) - 8) + 48);

        return v27((v16 + v25) & ~v12);
      }

      else
      {
        v26 = *(v25 + v10);
        if (v26 >= 3)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v14 + (v24 | v22) + 1;
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(unsigned int a1, __int128 *a2, uint64_t a3, int a4, unint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = a2 + 3;
  *&v41 = *(a2 + 6);
  DWORD2(v41) = *(a2 + 14);
  v15 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v15)
  {
    v38 = a7;
    *&v41 = *v14;
    DWORD2(v41) = *(v14 + 2);
    v36 = a5;
    v37 = a6;
    v31 = a4;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v41 = a3;
      DWORD2(v41) = a4;
      v16 = PreferencesOutputs.subscript.getter();
      v17 = *MEMORY[0x1E698D3F8];
      if ((v16 & 0x100000000) != 0)
      {
        v18 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v18 = v16;
      }

      v35 = v18;
    }

    else
    {
      v17 = *MEMORY[0x1E698D3F8];
      v35 = *MEMORY[0x1E698D3F8];
    }

    v34 = *(a2 + 18);
    v20 = a2[3];
    *&v42[16] = a2[2];
    v43 = v20;
    *v44 = a2[4];
    *&v44[16] = *(a2 + 20);
    v21 = a2[1];
    v41 = *a2;
    *v42 = v21;
    v32 = _ViewInputs.position.getter();
    v33 = *(a2 + 15);
    _ViewInputs.scrapeableParentID.getter();
    v22 = *(a2 + 2);
    v23 = *(a2 + 6);
    v24 = *(a2 + 9);
    _GraphInputs.interfaceIdiom.getter();
    swift_beginAccess();
    v25 = *(v22 + 16);
    *&v41 = a3;
    DWORD2(v41) = v31;
    v26 = PreferencesOutputs.subscript.getter();
    if ((v26 & 0x100000000) != 0)
    {
      v27 = v17;
    }

    else
    {
      v27 = v26;
    }

    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, v36, v37, v38, type metadata accessor for AccessibilityViewModifierAccessor);
    *&v41 = v28;
    *(&v41 + 1) = a1;
    *&v42[8] = v39;
    *v42 = v40;
    *&v42[24] = v32;
    *&v42[28] = v34;
    *&v43 = __PAIR64__(v25, v33);
    *(&v43 + 1) = __PAIR64__(v35, v23);
    *v44 = v27;
    *&v44[8] = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    v54 = (v24 & 0x20) == 0;
    v55 = 0;
    swift_unknownObjectWeakInit();
    v56 = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of PropertiesTransform(&v41);
    AGGraphSetFlags();
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

  return v19 | (((v15 & 1) == 0) << 32);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t destroy for AccessibilityScrollableModifier(void *a1)
{

  v2 = a1[12];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 9);
  }

LABEL_5:
  if (a1[31] != 1)
  {
  }
}

unint64_t _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(unsigned int a1, __int128 *a2, uint64_t a3, int a4)
{

  return _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(a1, a2, a3, a4, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableModifier>, lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier);
}

unint64_t lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static LazyContainerInputsProvider.configureContainer(inputs:) in conformance SwiftUILazyContainerInputsProvider()
{
  type metadata accessor for _SemanticFeature<Semantics_v6>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  if (result)
  {
    PreferenceKeys.remove(_:)();
    PreferenceKeys.remove(_:)();
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 96);

  if (v5)
  {
    if (v5 == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      goto LABEL_7;
    }

    v6 = *(a2 + 104);
    *(a1 + 96) = v5;
    *(a1 + 104) = v6;
    (**(v5 - 8))(a1 + 72, a2 + 72, v5);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 112) = *(a2 + 112);

LABEL_7:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v7 = (a1 + 136);
  v8 = (a2 + 136);
  v9 = *(a2 + 248);
  if (v9 == 1)
  {
    v10 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v10;
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    v11 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v11;
    v12 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v12;
    v13 = *(a2 + 152);
    *v7 = *v8;
    *(a1 + 152) = v13;
  }

  else
  {
    *v7 = *v8;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = v9;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t type metadata completion function for LazyHGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static LazyContainerInputsProvider.configureContainerContent(inputs:) in conformance SwiftUILazyContainerInputsProvider(uint64_t a1)
{
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t specialized static SwiftUILazyLayoutProvider.updateAccessibilityOutputs(_:inputs:placedSubviews:accessibilityRole:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v7;
  v32[4] = *(a2 + 64);
  v33 = *(a2 + 80);
  v8 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v8;
  v9 = *a4;
  v10 = *a1;
  v11 = *(a1 + 8);
  *&v22 = *a1;
  DWORD2(v22) = v11;
  v12 = PreferencesOutputs.subscript.getter();
  if ((v12 & 0x100000000) != 0 || (v13 = v12, *&v22 = v10, DWORD2(v22) = v11, v14 = PreferencesOutputs.subscript.getter(), (v14 & 0x100000000) != 0))
  {
    *&v22 = v10;
    DWORD2(v22) = v11;
    if ((PreferencesOutputs.subscript.getter() & 0x100000000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = v14;
    v16 = *(a2 + 48);
    v26 = *(a2 + 32);
    v27 = v16;
    v28 = *(a2 + 64);
    v29 = *(a2 + 80);
    v17 = *(a2 + 16);
    v22 = *a2;
    v24 = DWORD1(v17);
    LOBYTE(v22) = 1;
    BYTE1(v22) = v9;
    DWORD1(v22) = _ViewInputs.accessibilityEnabled.getter();
    *(&v22 + 1) = __PAIR64__(v13, v15);
    v23 = a3;
    v25 = MEMORY[0x1E69E7CC0];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform();
    Attribute.init<A>(body:value:flags:update:)();
  }

  LOBYTE(v22) = 0;
  PreferencesOutputs.subscript.setter();
LABEL_6:
  v18 = *(a1 + 8);
  *&v22 = *a1;
  DWORD2(v22) = v18;
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) == 0)
  {
    v20 = result;
    AccessibilityProperties.init()();
    v30[14] = 0x300000003;
    v31 = 0;
    outlined init with copy of AccessibilityProperties(v30, &v22 + 8);
    LOBYTE(v22) = 1;
    DWORD1(v22) = v20;
    v21 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AccessibilityScrollableModifier(&v22);
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v21, v32, *a1, *(a1 + 8));
    PreferencesOutputs.subscript.setter();
    return outlined destroy of AccessibilityProperties(v30);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutScrollableTransform and conformance LayoutScrollableTransform()
{
  result = lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform;
  if (!lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LayoutScrollableTransform, &type metadata for LayoutScrollableTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutScrollableTransform and conformance LayoutScrollableTransform);
  }

  return result;
}

uint64_t initializeWithCopy for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

id closure #1 in EditMenuBridge.hostRemovedFromWindow()(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (result)
  {
    return [result dismissMenu];
  }

  return result;
}

uint64_t AccessibilityRelationshipScope.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for ignore()
{
  _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Ignore>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore, &type metadata for AccessibilityChildBehavior.Ignore);
  result = swift_allocObject();
  static AccessibilityChildBehavior.ignore = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Ignore, &type metadata for AccessibilityChildBehavior.Ignore, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Ignore, &type metadata for AccessibilityChildBehavior.Ignore, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityChildBehavior.Ignore, &type metadata for AccessibilityChildBehavior.Ignore, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Ignore(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Ignore and conformance AccessibilityChildBehavior.Ignore();
  *(a1 + 8) = result;
  return result;
}

void closure #1 in closure #1 in closure #1 in _UIHostingView.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for _UIHostingView(0, a2, a3, v6);
    swift_getWitnessTable(protocol conformance descriptor for _UIHostingView<A>, v8);
    ViewGraphRootValueUpdater.updateGraph<A>(body:)();
  }
}

unint64_t lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child()
{
  result = lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child;
  if (!lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TaskModifier.Child, &unk_1EFFAFCA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier.Child and conformance _TaskModifier.Child);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>, type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<_TaskModifier.InnerModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<_TaskModifier.InnerModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier.InnerModifier>)
  {
    type metadata accessor for _TaskModifier.InnerModifier(255);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier, protocol conformance descriptor for _TaskModifier.InnerModifier);
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier.InnerModifier>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TaskModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier, protocol conformance descriptor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static UIViewRepresentable._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
  {
    _StringGuts.grow(_:)(44);

    v8 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v8);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for PlatformViewRepresentableAdaptor(0, a3, a4, v6);
    type metadata accessor for _GraphValue();
    _GraphValue.unsafeBitCast<A>(to:)();
    return static View.makeDebuggableView(view:inputs:)();
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a3);

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t *protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>);

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t *UIKitPlatformViewHost.makeEnvironmentWrapper(_:viewPhase:)(uint64_t *a1, int *a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for UIKitPlatformViewHost + 16);
  v4 = *v3;
  v5 = v3[8];
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = type metadata accessor for EnvironmentWrapper(0);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[direct field offset for EnvironmentWrapper.focusedValues];
  *v10 = v4;
  v10[8] = v5;
  *(v10 + 2) = v6;
  *(v10 + 3) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  v11 = objc_msgSendSuper2(&v13, sel_init);
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.setter();
  dispatch thunk of ViewGraphHostEnvironmentWrapper.phase.setter();

  return v11;
}

uint64_t type metadata accessor for EnvironmentWrapper(uint64_t a1)
{
  result = type metadata singleton initialization cache for EnvironmentWrapper;
  if (!type metadata singleton initialization cache for EnvironmentWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIKitPlatformViewHost.resolvedTraitCollection(baseTraitCollection:environment:wrapper:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a3;
  v4 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v5 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v6 = v5;
  v7 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  return v7;
}

uint64_t UIKitPlatformViewHost.__allocating_init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = specialized UIKitPlatformViewHost.init(_:host:environment:viewPhase:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v13;
}

uint64_t specialized UIKitPlatformViewHost.init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v17[1] = a2;
  v17[2] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v17 - v11;
  v14 = *a4;
  v13 = a4[1];
  LODWORD(a5) = *a5;
  swift_weakInit();
  v15 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + class metadata base offset for UIKitPlatformViewHost + 16);
  *v15 = 0;
  v15[8] = 0;
  *(v15 + 1) = xmmword_18CD76350;
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness);
  v19 = v14;
  v20 = v13;
  v18 = a5;
  return UICorePlatformViewHost.init(_:host:environment:viewPhase:)();
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance _UIHostingView<A>(uint64_t **a1))()
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
  v2[4] = _UIHostingView.externalUpdateCount.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _UIHostingView<A>;
}

uint64_t (*_UIHostingView.externalUpdateCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = _UIHostingView.externalUpdateCount.getter(a1);
  return _UIHostingView.externalUpdateCount.modify;
}

uint64_t _UIHostingView.externalUpdateCount.getter(uint64_t a1)
{
  v1 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  v2 = *(v1 + 120);

  return v2;
}

void protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t _UIHostingView.externalUpdateCount.setter(uint64_t a1)
{
  v2 = UIHostingViewBase.viewGraph.getter();
  swift_beginAccess();
  *(v2 + 120) = a1;
}

uint64_t outlined consume of RepresentableContextValues.EnvironmentStorage(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D15_activeEditMenu33_2554D9DFC599D14C3CD7485EE0274C2FLLV_Tt1B5(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[5];
  if (v8 == 1)
  {
    if (v11 == 1)
    {
      outlined init with copy of AnyAccessibilityValue?(a1, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
      outlined init with copy of AnyAccessibilityValue?(a2, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
      v12 = 1;
      v13 = v4;
      v14 = v3;
      v15 = v6;
      v16 = v5;
      v17 = v7;
      v18 = 1;
LABEL_9:
      outlined consume of ActiveEditMenu?(v13, v14, v15, v16, v17, v18, v9);
      return v12;
    }

    v20 = a2[6];
    v21 = a2[4];
    v22 = a2[3];
    v23 = a2[2];
    v24 = a2[1];
    outlined init with copy of AnyAccessibilityValue?(a1, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
    outlined init with copy of AnyAccessibilityValue?(a2, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
  }

  else
  {
    v20 = a2[6];
    v21 = a2[4];
    v22 = a2[3];
    v23 = a2[2];
    v24 = a2[1];
    if (v11 != 1)
    {
      outlined init with copy of AnyAccessibilityValue?(a1, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
      outlined init with copy of AnyAccessibilityValue?(a2, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
      outlined copy of ActiveEditMenu?(v4, v3, v6, v5, v7, v8, v9);
      outlined consume of ActiveEditMenu?(v10, v24, v23, v22, v21, v11, v20);
      v12 = v4 == v10;

      v13 = v4;
      v14 = v3;
      v15 = v6;
      v16 = v5;
      v17 = v7;
      v18 = v8;
      goto LABEL_9;
    }

    outlined init with copy of AnyAccessibilityValue?(a1, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
    outlined init with copy of AnyAccessibilityValue?(a2, v25, &lazy cache variable for type metadata for ActiveEditMenu?, &type metadata for ActiveEditMenu);
    outlined copy of ActiveEditMenu?(v4, v3, v6, v5, v7, v8, v9);
  }

  outlined consume of ActiveEditMenu?(v4, v3, v6, v5, v7, v8, v9);
  outlined consume of ActiveEditMenu?(v10, v24, v23, v22, v21, v11, v20);
  return 0;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_activeEditMenu(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D15_activeEditMenu33_2554D9DFC599D14C3CD7485EE0274C2FLLV_Tt1B5(v5, v7);
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance UndoManagerKey(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    type metadata accessor for NSUndoManager();
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance InheritedTraitCollectionKey(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    type metadata accessor for UITraitCollection();
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

void *assignWithCopy for AlertTransformModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for KeyboardShortcut?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16KeyboardShortcutVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18BDD3FEC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for WeakBox<UIWindowScene>?(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    type metadata accessor for WeakBox<UISceneConnectionOptions>(255, a3, a4, a5);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined consume of RepresentableContextValues?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 1)
  {

    return outlined consume of RepresentableContextValues.EnvironmentStorage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_9Tm_1(uint64_t a1)
{

  return swift_deallocObject();
}

unint64_t type metadata accessor for NSUndoManager()
{
  result = lazy cache variable for type metadata for NSUndoManager;
  if (!lazy cache variable for type metadata for NSUndoManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUndoManager);
  }

  return result;
}

uint64_t View.accessibilityElement(children:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  MEMORY[0x18D00A570](&v6, a2, &type metadata for AccessibilityContainerModifier, a3);
}

uint64_t assignWithCopy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ButtonOutsetKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t static _TaskValueModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _TaskValueModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v9 = type metadata accessor for _TaskValueModifier.InnerModifier(0, a5, a6, v8);
  v11 = type metadata accessor for _TaskValueModifier.Child(0, a5, a6, v10);
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.Child, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier<A>.InnerModifier, v9);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t UIKitPlatformViewHost.focusedValues.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIKitPlatformViewHost + 16);
  v4 = *v3;
  v5 = v3[8];
  *v3 = *a1;
  v3[8] = v2;
  v6 = *(a1 + 16);
  v9 = v4;
  v10 = v5;
  v7 = *(v3 + 1);
  *(v3 + 1) = v6;
  v11 = v7;
  UIKitPlatformViewHost.focusedValues.didset(&v9);
}

uint64_t UIKitPlatformViewHost.focusedValues.didset(uint64_t result)
{
  if (*(result + 24) != *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for UIKitPlatformViewHost + 16) + 24))
  {
    return MEMORY[0x1EEE4C620](256, 0);
  }

  return result;
}

uint64_t @objc EnvironmentWrapper.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = EnvironmentWrapper.isEqual(_:)(v8);

  _sypSgWOhTm_9(v8, type metadata accessor for Any?);
  return v6 & 1;
}

uint64_t EnvironmentWrapper.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for EnvironmentWrapper(0);
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_9;
  }

  outlined init with copy of Any?(a1, v18);
  if (!v19)
  {
    _sypSgWOhTm_9(v18, type metadata accessor for Any?);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v14 = 0;
    return v14 & 1;
  }

  v12 = v16[1];

  v13 = PropertyList.mayNotBeEqual(to:)();

  v14 = v13 ^ 1;
  return v14 & 1;
}

BOOL UIKitPlatformViewHost.isPlatformFocusContainerHost.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = v0;
  swift_unknownObjectWeakInit();

  v4 = type metadata accessor for UIKitPlatformViewHost.UnarySubtreeSequence(0, *(v1 + class metadata base offset for UIKitPlatformViewHost), *(v1 + class metadata base offset for UIKitPlatformViewHost + 8), v3);
  swift_getWitnessTable(protocol conformance descriptor for UIKitPlatformViewHost<A>.UnarySubtreeSequence, v4);
  Sequence.first(where:)();
  (*(*(v4 - 8) + 8))(v7, v4);
  v5 = v8;
  if (v8)
  {
  }

  return v5 != 0;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance UIKitPlatformViewHost<A>.UnarySubtreeSequence@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for _IteratorBox<_ClosureBasedIterator<UIView>>(0);
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator();
  *(result + 24) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_18BDD4BC4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void type metadata accessor for _IteratorBox<_ClosureBasedIterator<UIView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<UIView>>)
  {
    type metadata accessor for _ClosureBasedIterator<UIView>(255);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _ClosureBasedIterator<UIView> and conformance _ClosureBasedIterator<A>, type metadata accessor for _ClosureBasedIterator<UIView>, MEMORY[0x1E69E6F30]);
    v1 = type metadata accessor for _IteratorBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<UIView>>);
    }
  }
}

void closure #1 in UIKitPlatformViewHost.UnarySubtreeSequence.makeIterator()(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    goto LABEL_17;
  }

  v5 = [Strong subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != 1)
  {
    v11 = 0;
LABEL_16:
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

LABEL_17:
    *a2 = v4;
    return;
  }

  v8 = [v4 subviews];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x18D00E9C0](0, v9);
    goto LABEL_10;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_10:
    v11 = v10;
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t closure #1 in UIKitPlatformViewHost.isPlatformFocusContainerHost.getter(id *a1)
{
  v1 = *a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScrollView, 0x1E69DCEF8);
  v2 = v1;
  result = swift_dynamicCast();
  if (result)
  {
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance PlatformViewRepresentableAdaptor<A>@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = PlatformViewRepresentableAdaptor.makeViewProvider(context:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t PlatformViewRepresentableAdaptor.makeViewProvider(context:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>);
  v4 = type metadata accessor for PlatformViewRepresentableContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = type metadata accessor for UIViewRepresentableContext(0, v8, v9, v10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  (*(v5 + 16))(v7, a1, v4, v13);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a2);
  v16 = UIViewRepresentableContext.init<A>(_:)(v7, v8, v9, v15);
  v17 = (*(v9 + 32))(v15, v8, v9, v16);
  (*(v12 + 8))(v15, v11);
  return v17;
}

uint64_t type metadata completion function for UIViewRepresentableContext(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

__n128 UIViewRepresentableContext.init<A>(_:)@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  type metadata accessor for UIViewRepresentableContext(0, a2, a4, a4);
  v8 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  v9 = *a1;
  v10 = a1[1];

  PlatformViewRepresentableContext.values.getter();
  (*(*(v8 - 8) + 8))(a1, v8);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v12, *(&v12 + 1), v13);

  outlined consume of RepresentableContextValues.EnvironmentStorage(v12, *(&v12 + 1), v13);
  result.n128_u64[0] = v9;
  result.n128_u64[1] = v10;
  *a6 = result;
  *(a6 + 16) = v12;
  *(a6 + 32) = v13;
  return result;
}

uint64_t outlined copy of RepresentableContextValues.EnvironmentStorage(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

uint64_t protocol witness for static CoreViewRepresentable.isViewController.getter in conformance ListRepresentable<A, B>()
{
  return MEMORY[0x1EEDE1578]();
}

{
  return MEMORY[0x1EEDE1578]();
}

uint64_t protocol witness for static CoreViewRepresentable.platformView(for:) in conformance PlatformViewRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  return swift_unknownObjectRetain();
}

uint64_t destroy for UIViewRepresentableContext(uint64_t a1, uint64_t a2)
{

  outlined consume of RepresentableContextValues.EnvironmentStorage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 33) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

uint64_t PlatformViewRepresentableAdaptor.updateViewProvider(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a3);
  v5 = type metadata accessor for PlatformViewRepresentableContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - v7);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = type metadata accessor for UIViewRepresentableContext(0, v9, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v6 + 16))(v8, a2, v5, v14);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a3);
  v17 = UIViewRepresentableContext.init<A>(_:)(v8, v9, v10, v16);
  (*(v10 + 40))(v19, v16, v9, v10, v17);
  return (*(v13 + 8))(v16, v12);
}

uint64_t PlatformViewRepresentableAdaptor.sizeThatFits(_:provider:context:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v26 = a2;
  v27 = a4;
  v28 = a1;
  v29 = a3;
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a7);
  v9 = type metadata accessor for PlatformViewRepresentableContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v25 - v11);
  v14 = *(a7 + 16);
  v13 = *(a7 + 24);
  v16 = type metadata accessor for UIViewRepresentableContext(0, v14, v13, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  (*(v10 + 16))(v12, a6, v9, v18);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewRepresentableAdaptor<A>, a7);
  v21 = UIViewRepresentableContext.init<A>(_:)(v12, v14, v13, v20);
  v22 = *(v13 + 80);
  v32 = v26 & 1;
  v31 = v27 & 1;
  v23 = v22(v28, v21);
  (*(v17 + 8))(v20, v16);
  return v23;
}

void *static PlatformViewRepresentableAdaptor.layoutOptions(_:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = (*(a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t outlined destroy of _TaskModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of _TaskModifier.InnerModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SearchToolbarItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(type metadata accessor for _TaskModifier(0) + 20);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 20);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;

  return a1;
}

uint64_t destroy for _TaskModifier.InnerModifier(uint64_t a1, uint64_t a2)
{

  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance _TaskModifier.InnerModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  outlined init with copy of _TaskModifier.InnerModifier(v3, &v15 - v9, type metadata accessor for _TaskModifier.InnerModifier);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of _TaskModifier2(v10, v12 + v11, type metadata accessor for _TaskModifier.InnerModifier);
  outlined init with copy of _TaskModifier.InnerModifier(v3, v7, type metadata accessor for _TaskModifier.InnerModifier);
  v13 = swift_allocObject();
  result = outlined init with take of _TaskModifier2(v7, v13 + v11, type metadata accessor for _TaskModifier.InnerModifier);
  *a3 = partial apply for closure #1 in _TaskModifier.InnerModifier.body(content:);
  a3[1] = v12;
  a3[2] = partial apply for closure #2 in _TaskModifier.InnerModifier.body(content:);
  a3[3] = v13;
  return result;
}

uint64_t ModifiedContent<>.accessibilityLabel<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  ModifiedContent<>.accessibilityLabel(_:)(v10, v11, v13 & 1, v15, a2, x8_0);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityLabelStorage(_:), a5, a6);
}

char *assignWithCopy for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  return a1;
}

void @objc _UIHostingView.didAddSubview(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  _UIHostingView.didAddSubview(_:)(v4);
}

Swift::Void __swiftcall _UIHostingView.didAddSubview(_:)(UIView *a1)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for _UIHostingView(0, *((*MEMORY[0x1E69E7D40] & *v2) + 0x50), *((*MEMORY[0x1E69E7D40] & *v2) + 0x58), v1);
  v19.receiver = v2;
  v19.super_class = v5;
  [(UIView *)&v19 didAddSubview:a1];
  if (*(v2 + *((*v4 & *v2) + 0x200)))
  {
    return;
  }

  v6 = _UIHostingView.foreignSubviews.getter();
  [v6 addObject_];

  static Semantics.v7.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    return;
  }

  if (isAppleInternalBuild()())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v8 = 0xEE0077656956676ELL;
      v9 = 0x6974736F4849555FLL;
      goto LABEL_7;
    }
  }

  v8 = 0x800000018CD5A5C0;
  v9 = 0xD000000000000018;
LABEL_7:
  v10 = static os_log_type_t.fault.getter();
  v11 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315650;
    swift_getObjectType();
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v18);
    *(v12 + 22) = 2080;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v18);

    *(v12 + 24) = v17;
    _os_log_impl(&dword_18BD4A000, v11, v10, "Adding '%s' as a subview of %s is not supported and may result in a broken view hierarchy. Add your view above %s in a common superview or insert it into your SwiftUI content in a UIViewRepresentable instead.", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18D0110E0](v13, -1, -1);
    MEMORY[0x18D0110E0](v12, -1, -1);
  }

  else
  {
  }
}

void type metadata accessor for Task<(), Never>()
{
  if (!lazy cache variable for type metadata for Task<(), Never>)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Task<(), Never>);
    }
  }
}

uint64_t partial apply for closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void type metadata accessor for State<Task<(), Never>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v7();
}

uint64_t closure #1 in _TaskModifier.InnerModifier.body(content:)(char *a1, double a2)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &a1[*(type metadata accessor for _TaskModifier.InnerModifier(0) + 20)];
  v7 = *(v6 + 1);
  v17 = *v6;
  v18 = v7;
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (!v16[1])
  {
    v9 = *a1;
    v8 = *(a1 + 1);
    v10 = *(type metadata accessor for _TaskModifier(0) + 20);
    v11 = type metadata accessor for TaskPriority();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v5, &a1[v10], v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v9;
    v13[5] = v8;

    v14 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in _TaskModifier.InnerModifier.body(content:), v13);
    outlined destroy of _TaskModifier(v5, type metadata accessor for TaskPriority?);
    v17 = v14;
    if (v7)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void type metadata accessor for UTType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UTType();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for _ClosureBasedIterator<UIView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ClosureBasedIterator<UIView>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v1 = type metadata accessor for _ClosureBasedIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ClosureBasedIterator<UIView>);
    }
  }
}

void type metadata accessor for AnyIterator<UIView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyIterator<UIView>[0])
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v1 = type metadata accessor for AnyIterator();
    if (!v2)
    {
      atomic_store(v1, lazy cache variable for type metadata for AnyIterator<UIView>);
    }
  }
}

uint64_t Scene.environment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  Scene.environment<A>(_:_:)(KeyPath, &v9, a2, a4);
}

uint64_t sub_18BDD6EDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 24));
  *a3 = result;
  return result;
}

__n128 sub_18BDD6F48(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t project #1 <A>(_:) in AppSceneDelegate.scene(_:willConnectTo:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ObjectFallbackDelegateBox(0, a4, a3, a4);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UISceneDelegate, &protocolRef_UISceneDelegate);
  swift_unknownObjectRetain();
  swift_dynamicCast();
  *(a2 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox) = ObjectFallbackDelegateBox.__allocating_init(_:)(v6);
}

uint64_t ObjectFallbackDelegateBox.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Menu.init(content:label:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v10 = type metadata accessor for Menu(0, v15);
  v11 = (a7 + *(v10 + 56));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a7 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  v13 = a2();
  return a1(v13);
}

uint64_t initializeWithCopy for Menu(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    *v18 = *v19;
  }

  else
  {
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
  }

  return a1;
}

uint64_t destroy for Menu(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = ((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v10 >= 0xFFFFFFFFuLL)
  {
  }

  if (*((v10 + 23) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t destroy for SelectionEditMenuModifier.Child(id *a1)
{
}

uint64_t initializeWithCopy for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  v5 = v3;

  return a1;
}

id PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = *MEMORY[0x1E698D3F8];
    *&v10[4] = *a2;
    *&v10[20] = *(a2 + 16);
    *&v10[84] = *(a2 + 80);
    *&v10[68] = *(a2 + 64);
    *&v10[52] = *(a2 + 48);
    *&v10[36] = *(a2 + 32);
    *a4 = result;
    *(a4 + 8) = v6;
    *(a4 + 28) = *&v10[16];
    *(a4 + 12) = *v10;
    *(a4 + 92) = *&v10[80];
    *(a4 + 76) = *&v10[64];
    *(a4 + 60) = *&v10[48];
    *(a4 + 44) = *&v10[32];
    *(a4 + 100) = a3 & 1;
    *(a4 + 104) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CoreSheetPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CoreSheetPresentationModifier<A>, a5);

  return MEMORY[0x1EEDE1608](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for Attribute<AccessibilityNodeList>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for Attribute<PlatformItemList>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Attribute();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Attribute<EnvironmentValues>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature;
  if (!lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature)
  {
    result = swift_getWitnessTable("A\n\rb<U\t", &type metadata for SecureDrawingViewGraphFeature, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SecureDrawingViewGraphFeature and conformance SecureDrawingViewGraphFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for SheetPresentationModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  *a1 = *a2;

  *(a1 + 8) = *(v4 + 8);

  *(a1 + 16) = *(v4 + 16);
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = v4 & 0xFFFFFFFFFFFFFFF8;
  v4 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + 24);
  v9 = (v4 + 24);
  v8 = v10;
  if (*v6 < 0xFFFFFFFF)
  {
    if (v8 >= 0xFFFFFFFF)
    {
      v12 = v9[1];
      *v6 = v8;
      *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v12;

      goto LABEL_8;
    }

LABEL_7:
    *v6 = *v9;
    goto LABEL_8;
  }

  if (v8 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v11 = v9[1];
  *v6 = v8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 32) = v11;

LABEL_8:
  v13 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 8);
  *v13 = *v14;
  *(v13 + 8) = v15;

  *(v13 + 16) = *(v14 + 16);
  *(v13 + 17) = *(v14 + 17);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = (v18 + 18 + v13) & ~v18;
  v20 = (v18 + 18 + v14) & ~v18;
  (*(v16 + 24))(v19, v20);
  *(*(v17 + 40) + v19) = *(*(v17 + 40) + v20);
  return a1;
}

uint64_t View.sheet<A>(isPresented:onDismiss:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)(a1, a2, a3, a4, a5, a6, a7, a12, v23, 1, a9, a11);

  outlined copy of AppIntentExecutor?(a4, a5);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v16 = v15;
  v20 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v15, v17, v18, v19);

  *&v25 = a9;
  *(&v25 + 1) = v16;
  *&v26 = a11;
  *(&v26 + 1) = v20;
  v21 = type metadata accessor for SheetPresentationModifier(0, &v25);
  MEMORY[0x18D00A570](v23, a8, v21, a10);
  v25 = v23[0];
  v26 = v23[1];
  v27[0] = v24[0];
  *(v27 + 11) = *(v24 + 11);
  return (*(*(v21 - 8) + 8))(&v25, v21);
}

double SheetPresentationModifier<>.init(isPresented:onDismiss:sheetContent:placement:drawsBackground:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v19 = v18;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  LOBYTE(v30) = a3;
  *(&v30 + 1) = a4;
  *v31 = a5;
  *&v31[8] = a6;
  *&v31[16] = a7;
  v31[24] = a8;
  v31[25] = a10;
  v32[0] = a11;
  v32[1] = v18;
  v32[2] = a12;
  v32[3] = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v18, v20, v21, v22);
  v23 = type metadata accessor for SheetPresentationModifier(0, v32);
  (*(*(v19 - 8) + 32))(&v29 + *(v23 + 68));
  *(&v29 + *(v23 + 72)) = 2;
  *&v33[11] = *&v31[11];
  v24 = v30;
  *v33 = *v31;
  *a9 = v29;
  a9[1] = v24;
  a9[2] = *v33;
  result = *&v33[11];
  *(a9 + 43) = *&v33[11];
  return result;
}

uint64_t initializeWithCopy for SheetPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = a1 & 0xFFFFFFFFFFFFFFF8;
  v7 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v9 = *v8;

  if (v9 < 0xFFFFFFFF)
  {
    *(v6 + 24) = *v8;
  }

  else
  {
    v10 = v8[1];
    *(v6 + 24) = v9;
    *(v6 + 32) = v10;
  }

  v11 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 17) = *(v12 + 17);
  v14 = *(a3 + 24);
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = v15 + 16;
  v18 = *(v15 + 80);
  v19 = (v18 + 18 + v11) & ~v18;
  v20 = (v18 + 18 + v12) & ~v18;

  v16(v19, v20, v14);
  *(*(v17 + 48) + v19) = *(*(v17 + 48) + v20);
  return a1;
}

uint64_t destroy for SheetPresentationModifier(unint64_t a1, uint64_t a2)
{

  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
  }

  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 18) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransactionalPreferenceTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TransactionalPreferenceTransformModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for CoreSheetPresentationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BDD8120(uint64_t *a1)
{
  v1 = a1[3];
  v9 = *a1;
  v10 = *(a1 + 1);
  v7 = v10;
  v11 = v1;
  v2 = type metadata accessor for SheetPresentationModifier(255, &v9);
  swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, v2);
  v3 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CoreSheetPresentationModifier(255, v7, v1, v4);
  v5 = type metadata accessor for ModifiedContent();
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  v8[1] = &protocol witness table for CoreSheetPresentationModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v8);
}

uint64_t sub_18BDD8264(void *a1)
{
  swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for StaticIf();
  v3[0] = lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  v3[1] = swift_getAssociatedConformanceWitness();
  v3[2] = MEMORY[0x1E697E100];
  return swift_getWitnessTable(MEMORY[0x1E6981CE0], v1, v3);
}

uint64_t implicit closure #2 in static ContextMenuModifierCore._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

unint64_t lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate()
{
  result = lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate;
  if (!lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowPresentationPredicate, &type metadata for AllowPresentationPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowPresentationPredicate and conformance AllowPresentationPredicate);
  }

  return result;
}

uint64_t specialized static AllowPresentationPredicate.evaluate(inputs:)(uint64_t *a1)
{
  lazy protocol witness table accessor for type IsInImmersiveContext and conformance IsInImmersiveContext();
  PropertyList.subscript.getter();
  if ((v3 & 1) == 0)
  {
    lazy protocol witness table accessor for type IsInVolumetricContext and conformance IsInVolumetricContext();
    PropertyList.subscript.getter();
    if (v2 != 1)
    {
      return 1;
    }

    static Semantics.v7.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      return 1;
    }
  }

  MEMORY[0x18D009810](0xD000000000000040, 0x800000018CD3E970);
  return 0;
}

unint64_t lazy protocol witness table accessor for type IsInImmersiveContext and conformance IsInImmersiveContext()
{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInImmersiveContext, &type metadata for IsInImmersiveContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInImmersiveContext, &type metadata for IsInImmersiveContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInImmersiveContext, &type metadata for IsInImmersiveContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInImmersiveContext, &type metadata for IsInImmersiveContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext;
  if (!lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInImmersiveContext, &type metadata for IsInImmersiveContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInImmersiveContext and conformance IsInImmersiveContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInVolumetricContext and conformance IsInVolumetricContext()
{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInVolumetricContext, &type metadata for IsInVolumetricContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInVolumetricContext, &type metadata for IsInVolumetricContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInVolumetricContext, &type metadata for IsInVolumetricContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInVolumetricContext, &type metadata for IsInVolumetricContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext;
  if (!lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInVolumetricContext, &type metadata for IsInVolumetricContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInVolumetricContext and conformance IsInVolumetricContext);
  }

  return result;
}

uint64_t static TransactionalPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v32[0] = *a2;
  *(v32 + 12) = *(a2 + 12);
  v8 = *(a2 + 28);
  v19 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v17 = *(a2 + 60);
  v18 = *(a2 + 76);
  type metadata accessor for TransactionalPreferenceTransformModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  *v24 = _GraphValue.value.getter();
  *&v24[4] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  IsAnimated = type metadata accessor for IsAnimated(0, a5, a6, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IsAnimated<A>, IsAnimated);
  v12 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v20, IsAnimated, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v14 = AGGraphSetFlags();
  *v24 = v32[0];
  *&v24[12] = *(v32 + 12);
  v25 = v8;
  v26 = v19;
  v27 = v9;
  v28 = v10;
  v29 = v17;
  v30 = v18;
  a3(v14, v24);
  *v24 = v9;
  *&v24[8] = v10;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance IsAnimated<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for IsAnimated<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double static OnTestViewModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 28);
  v24 = *(a2 + 36);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v21 = *(a2 + 60);
  v22 = *(a2 + 76);
  v23 = v8;
  v12 = one-time initialization token for currentPPTTest;

  if (v12 != -1)
  {
    swift_once();
  }

  v19 = static CachedEnvironment.ID.currentPPTTest;
  swift_beginAccess();
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for PPTTestCase?, &type metadata for PPTTestCase, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnTestEffect and conformance OnTestEffect();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphGetFlags();
  v13 = AGGraphSetFlags();
  v25 = v5;
  v26 = v4;
  v27 = v6;
  v28 = v7;
  v29 = v23;
  v30 = v24;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v21;
  v35 = v22;
  a3(&v19, v13, &v25);
  v25 = v10;
  LODWORD(v26) = v11;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v25 = v19;
    LODWORD(v26) = LODWORD(v20);
    v14 = PreferencesOutputs.subscript.getter();
    if ((v14 & 0x100000000) != 0)
    {
      v15 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v15 = v14;
    }

    v25 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v15);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v25) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a4 = v19;
  result = v20;
  *(a4 + 1) = v20;
  return result;
}

void _s7SwiftUI11PPTTestCaseVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type OnTestEffect and conformance OnTestEffect()
{
  result = lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect;
  if (!lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnTestEffect, &unk_1EFFA8658, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnTestEffect and conformance OnTestEffect);
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t static SubscriptionView._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v33 = a2[2];
  v34 = v11;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v12 = a2[1];
  v31 = *a2;
  v32 = v12;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  type metadata accessor for SubscriptionView(255, &v27);
  type metadata accessor for _GraphValue();
  v13 = _GraphValue.value.getter();
  type metadata accessor for SubscriptionLifetime();
  v17 = v13;
  v18 = SubscriptionLifetime.__allocating_init()();
  v19 = default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(a3, a4, a5, a6);
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v25 = type metadata accessor for SubscriptionView.Subscriber(0, &v27);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SubscriptionView<A, B>.Subscriber, v25);
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v24, v25, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

  AGGraphSetFlags();
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  LODWORD(v27) = v10;
  _GraphValue.subscript.getter();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t initializeBufferWithCopyOfBuffer for SubscriptionView.Subscriber(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t closure #1 in static SubscriptionView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v12[2] = type metadata accessor for SubscriptionView(0, v13);
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t View.onReceive<A>(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a6;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);
  SubscriptionView.init(content:publisher:action:)(v21, v17, a2, a3, a5, a4, a7, v27, a8);
}

uint64_t SubscriptionView.init(content:publisher:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  v17 = type metadata accessor for SubscriptionView(0, v20);
  result = (*(*(a5 - 8) + 32))(a9 + *(v17 + 52), a2, a5);
  v19 = (a9 + *(v17 + 56));
  *v19 = a3;
  v19[1] = a4;
  return result;
}

uint64_t default argument 2 of SubscriptionView.Subscriber.init(view:subscriptionLifetime:actionBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for MutableBox();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v10[0] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v10[1] = v8;
  return MEMORY[0x18D002830](v10);
}

uint64_t initializeWithCopy for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

uint64_t destroy for SubscriptionView(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 16) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 16) - 8) + 80)) & ~*(*(*(a2 + 16) - 8) + 80));
}

void type metadata accessor for TextField<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>);
    }
  }
}

uint64_t initializeWithCopy for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 32);
  if (v9 != 1)
  {
  }

  *(a1 + 32) = v9;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t outlined destroy of NavigationTitleStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<Int>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Published<Visibility>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI22NavigationTitleStorageVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *destroy for _PresentationTransitionOutputs(void *a1)
{
  if (a1[3])
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t destroy for NavigationTitleStorage(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 32) != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier()
{
  result = lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier;
  if (!lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RefreshScopeModifier, &type metadata for RefreshScopeModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RefreshScopeModifier and conformance RefreshScopeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetScrollEnvironmentModifier, &type metadata for ResetScrollEnvironmentModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DefaultFocusSectionResponderFilter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t ToolbarBridge.willAppear<A>(hostingController:)(void *a1)
{
  ToolbarBridge.updateToolbarVisibility<A>(hostingController:)(a1);

  return ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(a1);
}

uint64_t ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t result)
{
  if (*(*(v1 + direct field offset for ToolbarBridge.navigationAdaptor) + 16))
  {
    MEMORY[0x1EEE9AC00](result);

    static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t BarAppearanceBridge.willAppear<A>(animated:hostingController:)(uint64_t a1, void *a2)
{
  v2 = a1;
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a2, v4);
  BarAppearanceBridge.willAppear(animated:updateContext:)(v2, v4);
  return outlined destroy of BarAppearanceBridge.UpdateContext(v4);
}

uint64_t BarAppearanceBridge.willAppear(animated:updateContext:)(char a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of BarAppearanceBridge.UpdateContext(a2, &v77);
  v4 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  v53 = v4;
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v77, v3 + v4, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_barConfigurations;
  swift_beginAccess();
  v6 = *(v3 + v5);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + v5) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v55 = *(v3 + v5);

  v14 = 0;
  while (v12)
  {
LABEL_11:
    outlined init with copy of ToolbarPlacement.Role(*(v55 + 48) + 40 * (__clz(__rbit64(v12)) | (v14 << 6)), v75);
    v73[0] = v75[0];
    v73[1] = v75[1];
    v74 = v76;
    swift_beginAccess();
    v24 = *(v3 + v5);
    if (!*(v24 + 16))
    {
      goto LABEL_32;
    }

    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v73);
    if ((v26 & 1) == 0)
    {
      goto LABEL_32;
    }

    v27 = (*(v24 + 56) + 80 * v25);
    v77 = *v27;
    v29 = v27[2];
    v28 = v27[3];
    v30 = *(v27 + 57);
    v78 = v27[1];
    v79 = v29;
    *(v80 + 9) = v30;
    v80[0] = v28;
    swift_endAccess();
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80[0];
    v31 = BYTE8(v80[1]);
    outlined init with copy of ToolbarAppearanceConfiguration(&v77, &v65);
    if (a1)
    {
      v32 = static Animation.default.getter();
    }

    else
    {

      v32 = 0;
    }

    outlined init with copy of ToolbarPlacement.Role(v73, v64);
    v65 = v69;
    v66 = v70;
    v67 = v71;
    *v68 = v72;
    v56 = v32;
    *&v68[16] = v32;
    v57 = v31;
    v68[24] = v31;
    swift_beginAccess();
    outlined init with copy of ToolbarAppearanceConfiguration(&v65, &v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v3 + v5);
    v34 = v59;
    *(v3 + v5) = 0x8000000000000000;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_endAccess();
      __break(1u);
LABEL_33:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v41 = v36;
    if (v34[3] < v40)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

LABEL_21:
      if (v41)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v50 = v35;
    specialized _NativeDictionary.copy()();
    v35 = v50;
    if (v41)
    {
LABEL_4:
      v15 = v59;
      v16 = (v59[7] + 80 * v35);
      v60 = *v16;
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      *&v63[9] = *(v16 + 57);
      v62 = v18;
      *v63 = v19;
      v61 = v17;
      v21 = v67;
      v20 = *v68;
      v22 = v66;
      *(v16 + 57) = *&v68[9];
      v16[2] = v21;
      v16[3] = v20;
      v16[1] = v22;
      *v16 = v65;
      outlined destroy of ToolbarAppearanceConfiguration(&v60);
      outlined destroy of ToolbarPlacement.Role(v64);
      goto LABEL_5;
    }

LABEL_22:
    v15 = v59;
    v59[(v35 >> 6) + 8] |= 1 << v35;
    v43 = v35;
    outlined init with copy of ToolbarPlacement.Role(v64, v15[6] + 40 * v35);
    v44 = (v15[7] + 80 * v43);
    v45 = *&v68[9];
    v47 = v67;
    v46 = *v68;
    v44[1] = v66;
    v44[2] = v47;
    v44[3] = v46;
    *(v44 + 57) = v45;
    *v44 = v65;
    outlined destroy of ToolbarPlacement.Role(v64);
    v48 = v15[2];
    v39 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v39)
    {
      goto LABEL_31;
    }

    v15[2] = v49;
LABEL_5:
    v12 &= v12 - 1;
    *(v3 + v5) = v15;
    swift_endAccess();
    outlined init with copy of ToolbarPlacement.Role(v73, v58);
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v60, v58);
    swift_endAccess();
    outlined destroy of ToolbarPlacement.Role(&v60);
    outlined destroy of ToolbarPlacement.Role(v73);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    *v63 = v72;
    *&v63[16] = v56;
    v63[24] = v57;
    outlined destroy of ToolbarAppearanceConfiguration(&v60);
  }

  while (1)
  {
    v23 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v23 >= v13)
    {
      break;
    }

    v12 = *(v8 + 8 * v23);
    ++v14;
    if (v12)
    {
      v14 = v23;
      goto LABEL_11;
    }
  }

  BarAppearanceBridge.updateBarsToConfiguration()();
  v51 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  if ((*(v3 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
  {
    BarAppearanceBridge.platformUpdateNavigationAdaptor()();
  }

  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(&v77, v3 + v53, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720], type metadata accessor for Published<Visibility>);
  result = swift_endAccess();
  *(v3 + v51) = 0;
  return result;
}

uint64_t IsAnimated.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 16);
  type metadata accessor for TransactionalPreferenceTransformModifier(0, v18, *(&v18 + 1), a4);
  Value = AGGraphGetValue();
  v7 = v6;
  v19 = *Value;
  v20[0] = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1E69E7CA8];
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  result = AGGraphGetOutputValue();
  if (result)
  {
    v11 = (v7 & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {

    AGGraphClearUpdate();
    v12 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v13 = swift_allocObject();
    v14 = v19;
    *(v13 + 16) = v18;
    *(v13 + 32) = v14;
    *(v13 + 48) = v12;
    v20[0] = partial apply for closure #2 in IsAnimated.updateValue();
    v20[1] = v13;
    v15 = MEMORY[0x1EEE9AC00](v13);
    v17[2] = a1;
    v17[3] = swift_getWitnessTable(protocol conformance descriptor for IsAnimated<A>, a1, v15);

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, partial apply for closure #1 in StatefulRule.value.setter, v17, FunctionTypeMetadata, MEMORY[0x1E69E73E0], v8 + 8, MEMORY[0x1E69E7410], v16);
  }

  return result;
}

uint64_t sub_18BDDA56C()
{

  return swift_deallocObject();
}

uint64_t BarAppearanceBridge.uiPreferredStatusBarStyle.getter()
{
  if (!BarAppearanceBridge.uiHasStatusBarOpinion.getter())
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_lastBarUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (!*(v2 + 16))
  {
LABEL_8:
    outlined destroy of ToolbarPlacement.Role(v10);
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  if ((v4 & 1) == 0)
  {

    goto LABEL_8;
  }

  v5 = *(*(v2 + 56) + 2 * v3 + 1);

  if (v5 == 2)
  {
    outlined destroy of ToolbarPlacement.Role(v10);
    return 0;
  }

  else
  {
    v9 = v5 & 1;
    closure #1 in BarAppearanceBridge.uiPreferredStatusBarStyle.getter(&v9, &v8);
    v6 = v8;
    outlined destroy of ToolbarPlacement.Role(v10);
    return v6;
  }
}

uint64_t _UIHostingView.preferredStatusBarStyle.getter()
{
  _UIHostingView.colorScheme.getter(&v5);
  v0 = v5;
  if (v5 == 2)
  {
    return 0;
  }

  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v3 = 3;
  if (v0)
  {
    v3 = 1;
  }

  v4 = 3;
  if ((v0 & 1) == 0)
  {
    v4 = 1;
  }

  if (IsInvertColorsEnabled)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

id @objc UIHostingController.childForScreenEdgesDeferringSystemGestures.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForScreenEdgesDeferringSystemGestures.getter();

  return v2;
}

unint64_t UIHostingController._childForScreenEdgesDeferringSystemGestures.getter()
{
  if ((UIHostingController.deferredEdges.getter() & 0x100) == 0 || (UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [v0 childViewControllers];
  v2 = type metadata accessor for UIViewController();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v3;
  v19[5] = v2;
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18D00E9C0](v6 - 1, v3);
      goto LABEL_11;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      v4 = __CocoaSet.count.getter();
      v5 = v4;
    }

    else
    {
      v7 = *(v3 + 32 + 8 * v5);
LABEL_11:
      v8 = v7;
      v9 = [v7 childViewControllerForScreenEdgesDeferringSystemGestures];

      if (v9)
      {

        break;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v4);
  v19[2] = &v20;
  v11 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_So16UIViewControllerCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v19, v5, v10);

  result = v11;
  if (v11)
  {
    return result;
  }

  v13 = [v0 childViewControllers];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_17:
    v16 = __OFSUB__(v15, 1);
    result = v15 - 1;
    if (v16)
    {
      __break(1u);
    }

    else if ((v14 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v14 + 8 * result + 32);
LABEL_22:
        v18 = v17;

        return v18;
      }

      __break(1u);
      return result;
    }

    v17 = MEMORY[0x18D00E9C0](result, v14);
    goto LABEL_22;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_28:

  return 0;
}

uint64_t @objc UIHostingController.preferredScreenEdgesDeferringSystemGestures.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.preferredScreenEdgesDeferringSystemGestures.getter();

  return v2;
}

uint64_t UIHostingController._preferredScreenEdgesDeferringSystemGestures.getter()
{
  v0 = UIHostingController.deferredEdges.getter();
  if ((v0 & 0x100) != 0)
  {
    v0 = static Edge.Set.horizontal.getter();
  }

  v2 = 0;
  return specialized UIRectEdge.init(_:layoutDirection:)(v0, &v2);
}

uint64_t specialized UIRectEdge.init(_:layoutDirection:)(uint64_t result, unsigned __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  if (result > 3u)
  {
    if (result == 4)
    {
      return 4;
    }

    if (result == 8)
    {
      v4 = v3 == 0;
      v5 = 8;
      v6 = 2;
LABEL_8:
      if (v4)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      v4 = v3 == 0;
      v5 = 2;
      v6 = 8;
      goto LABEL_8;
    }
  }

  if (static Edge.Set.vertical.getter() == result)
  {
    return 5;
  }

  if (static Edge.Set.horizontal.getter() == v2)
  {
    return 10;
  }

  if (static Edge.Set.all.getter() == v2)
  {
    return 15;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      result = 0;
      if ((v2 & 4) == 0)
      {
        if ((v2 & 8) != 0)
        {
          v7 = 8;
          if (v3)
          {
            return 2;
          }

          return v7;
        }

        return result;
      }

      goto LABEL_38;
    }

    v8 = 0;
    if (v3)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if ((v2 & 2) != 0)
  {
    v8 = 1;
    if (v3)
    {
LABEL_32:
      v9 = 8;
      goto LABEL_35;
    }

LABEL_34:
    v9 = 2;
LABEL_35:
    result = v8 | v9;
    if ((v2 & 4) == 0)
    {
LABEL_39:
      if ((v2 & 8) != 0)
      {
        if (v3)
        {
          if ((result & 2) == 0)
          {
            return result | 2;
          }
        }

        else if ((result & 8) == 0)
        {
          return result | 8;
        }
      }

      return result;
    }

LABEL_38:
    result |= 4uLL;
    goto LABEL_39;
  }

  if ((v2 & 4) != 0)
  {
    result = 1;
    goto LABEL_38;
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  v10 = 8;
  if (v3)
  {
    v10 = 2;
  }

  return v10 | 1;
}

uint64_t BarAppearanceBridge.didMoveToWindow<A>(hostingController:)(void *a1)
{
  BarAppearanceBridge.UpdateContext.init<A>(hostingController:)(a1, v7);
  outlined init with copy of BarAppearanceBridge.UpdateContext(v7, v5);
  v2 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_updateContext;
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v5, v1 + v2);
  swift_endAccess();
  BarAppearanceBridge.updateBarsToConfiguration()();
  v3 = OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates;
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI19BarAppearanceBridge_pendingUpdates) & 2) != 0)
  {
    BarAppearanceBridge.platformUpdateNavigationAdaptor()();
  }

  outlined destroy of BarAppearanceBridge.UpdateContext(v7);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  outlined assign with take of BarAppearanceBridge.UpdateContext?(v5, v1 + v2);
  result = swift_endAccess();
  *(v1 + v3) = 0;
  return result;
}

uint64_t outlined assign with take of BarAppearanceBridge.UpdateContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BarAppearanceBridge.UpdateContext?(0, &lazy cache variable for type metadata for BarAppearanceBridge.UpdateContext?, &type metadata for BarAppearanceBridge.UpdateContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics()
{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable("!F\rb4m\t", &type metadata for DisableNavigationSemantics, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable("I,\rbLp\t", &type metadata for DisableNavigationSemantics, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics;
  if (!lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DisableNavigationSemantics and conformance DisableNavigationSemantics);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

double static IsSearchImplementedModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[1];
  v25 = a1[2];
  v26 = v4;
  v6 = a1[3];
  v27 = a1[4];
  v7 = a1[1];
  v23 = *a1;
  v24 = v7;
  v17 = v25;
  v18 = v6;
  v19 = a1[4];
  v28 = *(a1 + 20);
  v20 = *(a1 + 20);
  v15 = v23;
  v16 = v5;
  a2(&v21);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 28) = 1;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  outlined init with copy of _GraphInputs(&v15, &v13);
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.getter();
  v9 = outlined destroy of _GraphInputs(&v15);
  if (v13 == 1)
  {
    v13 = v26;
    v14 = DWORD2(v26);
    v11[2] = v26;
    v12 = DWORD2(v26);
    MEMORY[0x1EEE9AC00](v9);
    outlined init with copy of PreferencesInputs(&v13, v11);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  else
  {
  }

  *a3 = v21;
  result = v22;
  a3[1] = v22;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisableNavigationSemantics(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.SeedInputs, &type metadata for NavigationAuthority.SeedInputs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.SeedInputs, &type metadata for NavigationAuthority.SeedInputs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds()
{
  result = lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds;
  if (!lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnsureNavigationStateSeeds, &type metadata for EnsureNavigationStateSeeds, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds;
  if (!lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnsureNavigationStateSeeds, &type metadata for EnsureNavigationStateSeeds, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers()
{
  result = lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers;
  if (!lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdateNavigationEventHandlers, &type metadata for UpdateNavigationEventHandlers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context()
{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInNavigationV4Context, &type metadata for IsInNavigationV4Context, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInNavigationV4Context, &type metadata for IsInNavigationV4Context, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInNavigationV4Context, &type metadata for IsInNavigationV4Context, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInNavigationV4Context, &type metadata for IsInNavigationV4Context, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context;
  if (!lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsInNavigationV4Context, &type metadata for IsInNavigationV4Context, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsInNavigationV4Context and conformance IsInNavigationV4Context);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ViewInputKey, &type metadata for NavigationAuthority.ViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.ViewInputKey, &type metadata for NavigationAuthority.ViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GraphInputs.NavigationPresentationAdaptorKey, &type metadata for _GraphInputs.NavigationPresentationAdaptorKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.StackKeyViewInputKey, &type metadata for NavigationAuthority.StackKeyViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.StackKeyViewInputKey, &type metadata for NavigationAuthority.StackKeyViewInputKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier()
{
  result = lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier;
  if (!lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationCommonModifier, &type metadata for NavigationCommonModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationCommonModifier and conformance NavigationCommonModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<DisableNavigationSemantics>, lazy protocol witness table accessor for type DisableNavigationSemantics and conformance DisableNavigationSemantics, &type metadata for DisableNavigationSemantics, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<DisableNavigationSemantics> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<NavigationCommonModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, a2, a3, a4, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Binding<AnyNavigationSplitVisibility>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues))
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues));
    }
  }
}

uint64_t type metadata completion function for NavigationSelectionHost(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<NavigationStateHost, NavigationSeedHost>)
  {
    type metadata accessor for NavigationStateHost();
    type metadata accessor for NavigationSeedHost(255);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<NavigationStateHost, NavigationSeedHost>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *a2;
  *&v49[8] = *(a2 + 1);
  v11 = *(a2 + 6);
  *&v49[28] = *(a2 + 28);
  v12 = *(a2 + 11);
  v51 = *(a2 + 76);
  v13 = a2[6];
  v14 = *(a2 + 14);
  *&v50[12] = *(a2 + 60);
  *v49 = v10;
  *&v49[44] = v12;
  *&v49[24] = v11;
  *v50 = v13;
  *&v50[8] = v14;
  a3(&v38);
  result = _ViewOutputs.subscript.getter();
  if ((result & 0x100000000) == 0)
  {
    v17 = result;
    *v49 = v9;
    type metadata accessor for PositionedNavigationDestinationProcessor(255, a4, a5, v16);
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    closure #1 in static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)(1, a4, a5, v18);
    AGGraphCreateOffsetAttribute2();
    v19 = AGCreateWeakAttribute();
    lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
    PropertyList.subscript.getter();
    v36 = v13;
    v20 = v49[0];
    v21 = (*(a5 + 8))(a4, a5);
    v23 = v22;
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(v49);
    v37 = a6;
    v24 = *&v49[8];
    v35 = v14;
    v25 = v49[12];
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC11VersionSeedVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34[1] = v34;
    LODWORD(v41) = v17;
    *(&v41 + 4) = v19;
    HIDWORD(v41) = v11;
    LOBYTE(v42) = v20;
    *(&v42 + 1) = *v48;
    DWORD1(v42) = *&v48[3];
    *(&v42 + 1) = v21;
    *&v43 = v23;
    *(&v43 + 1) = *v49;
    LODWORD(v44) = v24;
    BYTE4(v44) = v25;
    *(&v44 + 5) = v46;
    BYTE7(v44) = v47;
    DWORD2(v44) = 0;
    v45 = v26;
    MEMORY[0x1EEE9AC00](v26);
    v28 = type metadata accessor for PositionedNavigationDestinationProcessor.PollingRule(0, a4, a5, v27);
    v33[2] = v28;
    v33[3] = swift_getWitnessTable(protocol conformance descriptor for PositionedNavigationDestinationProcessor<A>.PollingRule, v28);
    a6 = v37;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v41, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v33, v28, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
    *&v49[16] = v42;
    *&v49[32] = v43;
    *v50 = v44;
    *&v50[16] = v45;
    *v49 = v41;
    (*(*(v28 - 8) + 8))(v49, v28);
    AGGraphSetFlags();
    *&v41 = v36;
    DWORD2(v41) = v35;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v31 = v39;
  v32 = v40;
  *a6 = v38;
  *(a6 + 8) = v31;
  *(a6 + 12) = v32;
  return result;
}

unint64_t lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations()
{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsExtractingNavigationDestinations, &type metadata for IsExtractingNavigationDestinations, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsExtractingNavigationDestinations, &type metadata for IsExtractingNavigationDestinations, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsExtractingNavigationDestinations, &type metadata for IsExtractingNavigationDestinations, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsExtractingNavigationDestinations, &type metadata for IsExtractingNavigationDestinations, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations;
  if (!lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsExtractingNavigationDestinations, &type metadata for IsExtractingNavigationDestinations, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations);
  }

  return result;
}

uint64_t type metadata completion function for ToolbarItem(uint64_t a1)
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

uint64_t @objc UIHostingController.prefersStatusBarHidden.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.prefersStatusBarHidden.getter();

  return v2 & 1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a3);

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t *protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>);

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for PlatformViewControllerRepresentableAdaptor<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ToolbarModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RootModifier@<X0>(uint64_t a1@<X8>)
{
  swift_weakLoadStrong();
  swift_weakLoadStrong();
  swift_weakLoadStrong();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 88);
  swift_weakInit();
  outlined copy of SceneID?(v4, v5, v7);
  v8 = v6;

  swift_weakInit();

  swift_weakInit();

  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  return _ss11AnyHashableVSgWOcTm_2(v1 + 24, a1 + 64, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
}

void destroy for RootEnvironmentModifier(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  v2 = *(a1 + 48);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 32), *(a1 + 40), v2 & 1);
  }

  v3 = *(a1 + 56);
}

uint64_t outlined init with copy of WeakBox<UISceneConnectionOptions>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for (value: RootEnvironmentModifier, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: RootEnvironmentModifier, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: RootEnvironmentModifier, changed: Bool));
    }
  }
}

uint64_t LazyView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t RootEnvironmentModifier.Child.updateValue()()
{
  v1 = v0;
  v30 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  outlined init with copy of RootEnvironmentModifier(Value, v29);
  v5 = v4 & 1;
  v29[64] = v5;
  v6 = AGGraphGetValue();
  v7 = v6[1];
  *&v27 = *v6;
  *(&v27 + 1) = v7;
  v28 = v8 & 1;
  if (v8)
  {
  }

  else
  {
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);

      v20 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23RootEnvironmentModifier33_4475FD12FD59DEBA453321BD91F6EA04LLV_s5NeverOSbTg5(partial apply for closure #1 in implicit closure #2 in implicit closure #1 in RootEnvironmentModifier.Child.updateValue());
      if (v20 == 2 || (v20 & 1) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {

      return outlined destroy of OpenURLContext(v29, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
    }
  }

LABEL_7:
  type metadata accessor for SceneBridge(0);
  lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type SceneBridge and conformance SceneBridge, type metadata accessor for SceneBridge, protocol conformance descriptor for SceneBridge);
  static ObservableObject.environmentStore.getter();
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  Strong = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  v22 = Strong;
  swift_setAtWritableKeyPath();

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v10 = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  specialized EnvironmentValues.sceneStorageValues.setter(v10);

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v11 = v25;
  outlined destroy of RootEnvironmentModifier(&v24);
  LOBYTE(v22) = v11;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScenePhaseKey>, &type metadata for ScenePhaseKey, &protocol witness table for ScenePhaseKey);

  PropertyList.subscript.setter();
  if (*(&v27 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v12 = v25;
  outlined destroy of RootEnvironmentModifier(&v24);
  if (v12 != 2)
  {
    v13 = EnvironmentValues.redactionReasons.modify();
    *v14 |= 2uLL;
    v13(&v24, 0);
  }

  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v15 = v26;
  outlined destroy of RootEnvironmentModifier(&v24);
  swift_unknownObjectWeakInit();
  v16 = swift_unknownObjectWeakAssign();
  v23 = 0;
  outlined init with copy of WeakBox<UISceneConnectionOptions>?(v16, v21, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>?, type metadata accessor for WeakBox<UISceneConnectionOptions>, MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ConnectionOptionsKey>, &type metadata for ConnectionOptionsKey, &protocol witness table for ConnectionOptionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ConnectionOptionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ConnectionOptionsKey>, &type metadata for ConnectionOptionsKey, &protocol witness table for ConnectionOptionsKey);

  PropertyList.subscript.setter();
  if (*(&v27 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of PPTTestHost?(&v22, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>?, type metadata accessor for WeakBox<UISceneConnectionOptions>, MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  v17 = swift_weakLoadStrong();
  outlined destroy of RootEnvironmentModifier(&v24);
  if (v17)
  {
    (*(*v17 + 88))(&v27);
  }

  if (static AppGraph.delegateBox)
  {
    v18 = *(*static AppGraph.delegateBox + 88);

    v18(&v27);
  }

  v24 = v27;
  AGGraphSetOutputValue();

  outlined destroy of RootEnvironmentModifier?(v1 + 8, &lazy cache variable for type metadata for RootEnvironmentModifier?, &type metadata for RootEnvironmentModifier);
  outlined init with copy of OpenURLContext(v29, &v24, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
  outlined init with take of RootEnvironmentModifier(&v24, v1 + 8);
  return outlined destroy of OpenURLContext(v29, type metadata accessor for (value: RootEnvironmentModifier, changed: Bool));
}

uint64_t initializeWithCopy for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  if (v4 == 255)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 40);
    v7 = v4 & 1;
    outlined copy of SceneID(v5, v6, v4 & 1);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = v8;
  return a1;
}

__n128 initializeWithCopy for _PresentationTransitionOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

void type metadata accessor for SceneStorage<URL>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for RootEnvironmentModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t initializeWithTake for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t specialized EnvironmentValues.sceneStorageValues.setter(uint64_t a1)
{
  if (a1)
  {
    swift_weakInit();
    swift_weakAssign();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 == 0;
  outlined init with copy of WeakBox<SceneStorageValues>?(&v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return outlined destroy of WeakBox<SceneStorageValues>?(&v5, type metadata accessor for WeakBox<SceneStorageValues>?);
}

uint64_t outlined init with copy of WeakBox<SceneStorageValues>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<SceneStorageValues>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<SceneStorageValues>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for RootEnvironmentModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t SceneBridgeReader.body.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v15 = specialized Environment.wrappedValue.getter(v14, v13 & 1);
  if (v15)
  {
    v16 = v15;
LABEL_6:
    a3(v16);

    static ViewBuilder.buildExpression<A>(_:)();
    v19 = *(v7 + 8);
    v19(v9, a5);
    static ViewBuilder.buildExpression<A>(_:)();
    return (v19)(v12, a5);
  }

  MEMORY[0x18D009810](0xD0000000000000E7, 0x800000018CD41CE0);
  v16 = static SceneBridge._devNullSceneBridge;
  if (static SceneBridge._devNullSceneBridge || (type metadata accessor for SceneBridge(0), v17 = swift_allocObject(), SceneBridge.init()(), static SceneBridge._devNullSceneBridge = v17, result = , (v16 = static SceneBridge._devNullSceneBridge) != 0))
  {

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in View.onOpenURL(perform:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void, void))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a2(a1, v2 + v4, *v5, v5[1]);
}

uint64_t closure #1 in View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v16 = type metadata accessor for OpenURLContext(0);
  v22 = specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(v16, 0x434C52556E65704FLL, 0xEE00747865746E6FLL, a1);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v19 = v18;
  v20 = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>, MEMORY[0x1E695BF88]);
  View.onReceive<A>(_:perform:)(&v22, a8, v17, a5, v19, a6, v20, x8_0);
}

uint64_t type metadata completion function for OpenURLContext(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a4 + 16);
  v16 = *(v15 + 16);
  v40 = v12;
  v38 = a1;
  if (v16 && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(v19 + 16);

    if (v20)
    {
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v22)
      {
        v23 = *(*(v19 + 56) + 8 * v21);

        goto LABEL_11;
      }
    }
  }

  else
  {
    swift_endAccess();
    v19 = 0;
  }

  v35 = v10;
  v36 = v11;
  type metadata accessor for PassthroughSubject<Any, Never>();
  swift_allocObject();
  v23 = PassthroughSubject.init()();
  v37 = v8;
  if (v19)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v19;
    v25 = a2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a2, a3, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
  }

  else
  {
    type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, PassthroughSubject<Any, Never>)>, 255, type metadata accessor for (String, PassthroughSubject<Any, Never>), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v25 = a2;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    *(inited + 48) = v23;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_nTm(inited, type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
    swift_setDeallocating();
    outlined destroy of Predicate<Pack{String}>?(inited + 32, type metadata accessor for (String, PassthroughSubject<Any, Never>));
  }

  swift_beginAccess();

  v28 = v38;
  specialized Dictionary.subscript.setter(v27, v38);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = v25;
  v30[4] = a3;
  v30[5] = v28;
  aBlock[4] = partial apply for closure #1 in static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  type metadata accessor for [DispatchWorkItemFlags](0);
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags], MEMORY[0x1E69E6328]);
  v32 = v35;
  v33 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x18D00DA20](0, v14, v32, v31);
  _Block_release(v31);

  (*(v37 + 8))(v32, v33);
  (*(v40 + 8))(v14, v36);
LABEL_11:

  return v23;
}

uint64_t sub_18BDDDC0C()
{

  return swift_deallocObject();
}

void type metadata accessor for (String, PassthroughSubject<Any, Never>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, PassthroughSubject<Any, Never>>)
  {
    type metadata accessor for PassthroughSubject<Any, Never>();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
    }
  }
}

void type metadata accessor for [DispatchWorkItemFlags](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [DispatchWorkItemFlags])
  {
    type metadata accessor for DispatchWorkItemFlags();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [DispatchWorkItemFlags]);
    }
  }
}

uint64_t closure #1 in View.onOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  return closure #1 in View.onOpenURL(perform:)(a1, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in View.onOpenURL(perform:), x8_0);
}

{
  return closure #1 in View.onOpenURL(perform:)(a1, a3, a4, a5, a6, partial apply for closure #1 in closure #1 in View.onOpenURL(perform:), x8_0);
}

uint64_t sub_18BDDE2CC()
{

  return swift_deallocObject();
}

__n128 initializeWithCopy for ToolbarItemPlacement(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 24) = v2;
    (**(v2 - 8))();
    *(a1 + 40) = 1;
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  return result;
}

void *destroy for ToolbarSearchFieldStyle(void *a1)
{
  if (*(a1 + 40) == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 24);
  if (v11 >= 2)
  {
    v11 = *v10 + 2;
  }

  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  if (v11 == 1)
  {
    *(v9 + 16) = *(v10 + 16);

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 24) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*v14, v16);
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  return a1;
}

uint64_t destroy for NavigationStack(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v5 + 24);
  if (v6 >= 2)
  {
    v6 = *v5 + 2;
  }

  if (v6 == 1)
  {
  }

  v7 = ((v4 + 47) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = v7[1];

  return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v8, v9);
}

uint64_t UIHostingController.sizingOptions.getter@<X0>(void *a1@<X8>)
{
  v3 = direct field offset for UIHostingController.sizingOptions;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id specialized static SceneBridge.applySizes(min:max:toRestrictions:)(id result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, id a7)
{
  if ((a3 & 1) == 0)
  {
    v11 = *&result;
    *&result = COERCE_DOUBLE([a7 minimumSize]);
    if (v14 != v11 || v13 != *&a2)
    {
      *&result = COERCE_DOUBLE([a7 setMinimumSize_]);
    }
  }

  if ((a6 & 1) == 0)
  {
    *&result = COERCE_DOUBLE([a7 maximumSize]);
    if (v17 != INFINITY || v16 != INFINITY)
    {
      v19 = *&a5;
      v20 = *&a4;
      if (*&a4 > 2777777.0)
      {
        v20 = 2777777.0;
      }

      if (*&a5 > 2777777.0)
      {
        v19 = 2777777.0;
      }

      *&result = COERCE_DOUBLE([a7 setMaximumSize_]);
    }
  }

  return result;
}

void type metadata accessor for LocationBox<UIKitNavigationBridgePresentationModeLocation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBox<UIKitNavigationBridgePresentationModeLocation>)
  {
    lazy protocol witness table accessor for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation();
    v1 = type metadata accessor for LocationBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBox<UIKitNavigationBridgePresentationModeLocation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation()
{
  result = lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation;
  if (!lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitNavigationBridgePresentationModeLocation, &unk_1EFFD6788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation;
  if (!lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitNavigationBridgePresentationModeLocation, &unk_1EFFD6788, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitNavigationBridgePresentationModeLocation and conformance UIKitNavigationBridgePresentationModeLocation);
  }

  return result;
}

id UIKitNavigationBridge.isBeingPresented.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v2 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v4)
    {
      return 0;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 24);
      v6 = swift_getObjectType();
      v7 = ViewGraphDelegate.uiContainingViewController.getter(v6, *(*(v5 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 splitViewController];

    if (v8)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      v9 = swift_dynamicCastClass();
      if (v9 || (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v9 = swift_dynamicCastClass()) != 0))
      {
        v10 = v9;
        goto LABEL_11;
      }
    }

    v15 = [v4 navigationController];
    if (!v15)
    {
      v8 = 0;
      v14 = v4;
      goto LABEL_15;
    }

    v14 = v15;
    if ([v15 childViewControllersCount] < 2)
    {
      v8 = 0;
      v10 = v4;
      goto LABEL_14;
    }

    v8 = [v14 topViewController];

    if (!v8)
    {
      v14 = v4;
      goto LABEL_15;
    }

    v10 = v8;
LABEL_11:
    v11 = v8;
    result = [v4 view];
    if (result)
    {
      v12 = result;
      result = [v10 view];
      if (result)
      {
        v13 = result;
        v8 = [v12 isDescendantOfView_];

        v14 = v10;
LABEL_14:

LABEL_15:
        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id ViewGraphDelegate.uiContainingViewController.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UICoreViewControllerProvider, MEMORY[0x1E69DC170]);
  (*(a2 + 16))(&v7, v4, v4, a1, a2);
  if (!v7)
  {
    return 0;
  }

  swift_getObjectType();
  v5 = UICoreViewControllerProvider.containingViewController.getter();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t UIKitNavigationBridge.presentationModeLocation.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    swift_weakInit();
    type metadata accessor for LocationBox<UIKitNavigationBridgePresentationModeLocation>(0);
    swift_allocObject();
    v1 = LocationBox.init(_:)();
    *(v0 + 32) = v1;
  }

  return v1;
}

void __swiftcall NavigationBridge_PhoneTV.pushTargetComponents(isDetail:)(Swift::tuple_navController_UINavigationController_optional_replaceRoot_Bool_column_UISplitViewControllerColumn_optional *__return_ptr retstr, Swift::Bool isDetail)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v4 = static SemanticFeature.isEnabled.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    if (!Strong || (v6 = *(v2 + 24), v7 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v7, *(*(v6 + 16) + 8), v31), swift_unknownObjectRelease(), v8 = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v31), !v8))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        v11 = ViewGraphDelegate.uiContainingViewController.getter(ObjectType, *(*(v9 + 16) + 8));
        swift_unknownObjectRelease();
        v8 = [v11 navigationController];
      }

      else
      {
        v8 = 0;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v2 + 24);
      v16 = swift_getObjectType();
      v17 = ViewGraphDelegate.uiContainingViewController.getter(v16, *(*(v15 + 16) + 8));
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 splitViewController];

    if (v18)
    {
      type metadata accessor for NotificationSendingSplitViewController();
      v19 = swift_dynamicCastClass();
      if (!v19 && (type metadata accessor for NotifyingMulticolumnSplitViewController(), (v19 = swift_dynamicCastClass()) == 0) || (v20 = v19, ![v19 style]) || !isDetail)
      {

        return;
      }

      v21 = v8;
      if ([v20 style])
      {
        v22 = [v20 viewControllerForColumn_];
        if (!v22)
        {
          v24 = 0;
          if (!v8)
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        v23 = v22;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (!v24)
        {

          if (!v8)
          {
LABEL_31:
            if (v24)
            {
              swift_unknownObjectRelease();
              goto LABEL_33;
            }

            goto LABEL_42;
          }

LABEL_27:

          if (!v24 || (swift_unknownObjectRelease(), v8 != v24))
          {
LABEL_33:
            v21 = v21;
            if ([v20 style] && (v25 = objc_msgSend(v20, sel_viewControllerForColumn_, 1)) != 0)
            {
              v26 = v25;
              objc_opt_self();
              v27 = swift_dynamicCastObjCClass();
              if (!v27)
              {
              }
            }

            else
            {
              v27 = 0;
            }

            if (v8)
            {

              if (!v27 || (swift_unknownObjectRelease(), v8 != v27))
              {

                return;
              }
            }

            else if (v27)
            {

              swift_unknownObjectRelease();
              return;
            }

            if ([v20 style])
            {
              goto LABEL_52;
            }

            goto LABEL_55;
          }

LABEL_42:
          if ([v20 style])
          {
            v28 = [v20 viewControllerForColumn_];
            if (v28)
            {
              v29 = v28;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

                return;
              }
            }
          }

          if ([v20 style])
          {
LABEL_52:
            v30 = [v20 viewControllerForColumn_];

            if (v30)
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
              }
            }

            return;
          }

LABEL_55:

          return;
        }
      }

      else
      {
        v24 = 0;
      }

      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if (!Strong || (v12 = *(v2 + 24), v13 = swift_getObjectType(), ViewGraphDelegate.hostingControllerOverrides.getter(v13, *(*(v12 + 16) + 8), v31), swift_unknownObjectRelease(), v14 = swift_unknownObjectWeakLoadStrong(), outlined destroy of HostingControllerOverrides(v31), !v14))
  {
    UIKitNavigationBridge.containingNavController.getter();
  }
}

uint64_t ViewGraphDelegate.hostingControllerOverrides.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingControllerProvider, &protocol descriptor for UIHostingControllerProvider);
  (*(a2 + 16))(v10, v6, v6, a1, a2);
  if (*&v10[0])
  {
    v7 = *(&v10[0] + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v10, ObjectType, v7);
    swift_unknownObjectRelease();
    return outlined init with take of HostingControllerOverrides(v10, a3);
  }

  else
  {
    v10[0] = xmmword_18CD874B0;
    memset(&v10[1], 0, 32);
    v11 = 0;
    *a3 = xmmword_18CD874C0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = swift_unknownObjectWeakInit();
    *(a3 + 48) = 2;
    if (BYTE8(v10[0]) != 3)
    {
      return outlined destroy of HostingControllerOverrides?(v10);
    }
  }

  return result;
}

uint64_t Toolbar.PlatformVended.uiSafeAreaTransitionState.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for ToolbarSafeAreaTransitionState();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t outlined init with copy of SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ExpandedSplitViewKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ExpandedSplitViewKey.defaultValue;
  return result;
}

uint64_t one-time initialization function for defaultValue()
{
  static Semantics.v4.getter();
  result = isLinkedOnOrAfter(_:)();
  static ExpandedSplitViewKey.defaultValue = (result & 1) == 0;
  return result;
}

{
  xmmword_1EAB09A00 = 0u;
  xmmword_1EAB09A10 = 0u;
  xmmword_1EAB09A20 = 0u;
  xmmword_1EAB09A30 = 0u;
  xmmword_1EAB09A40 = 0u;
  xmmword_1EAB09A50 = 0u;
  memset(v2, 0, sizeof(v2));
  static SwipeActions.Key.defaultValue = 0u;
  xmmword_1EAB09990 = 0u;
  xmmword_1EAB099A0 = 0u;
  xmmword_1EAB099B0 = 0u;
  xmmword_1EAB099C0 = 0u;
  xmmword_1EAB099D0 = 0u;
  xmmword_1EAB099E0 = 0u;
  xmmword_1EAB099F0 = 0u;
  v0 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVySbGWOhTm_1(v2, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  v3[4] = xmmword_1EAB09A30;
  v3[5] = xmmword_1EAB09A40;
  v3[6] = xmmword_1EAB09A50;
  v3[0] = xmmword_1EAB099F0;
  v3[1] = xmmword_1EAB09A00;
  v3[2] = xmmword_1EAB09A10;
  v3[3] = xmmword_1EAB09A20;
  xmmword_1EAB099F0 = 0u;
  xmmword_1EAB09A00 = 0u;
  xmmword_1EAB09A10 = 0u;
  xmmword_1EAB09A20 = 0u;
  xmmword_1EAB09A30 = 0u;
  xmmword_1EAB09A40 = 0u;
  xmmword_1EAB09A50 = 0u;
  return _s7SwiftUI7BindingVySbGWOhTm_1(v3, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v0);
}

{
  v13 = 257;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v19 = 4;
  v0 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v0);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  memset(v27, 0, 14);
  v27[14] = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  static EdgeInsets.zero.getter();
  v31 = v1;
  v32 = v2;
  v33 = v3;
  v34 = v4;
  static EdgeInsets.zero.getter();
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  type metadata accessor for ScrollEnvironmentStorage(0);
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9 = swift_allocObject();
  result = ScrollEnvironmentStorage.init(_:transform:)(&v13, v11);
  static EnvironmentValues.ScrollEnvironmentKey.defaultValue = v9;
  return result;
}

{
  return swift_weakInit();
}

{
  result = AXAssistiveAccessEnabled();
  static AssistiveAccessKey.defaultValue = result;
  return result;
}

{
  qword_1EAA14D60 = 0;
  return swift_unknownObjectWeakInit();
}

{
  return static Binding.constant(_:)();
}

{
  swift_weakInit();

  return swift_weakAssign();
}

{
  v0 = type metadata accessor for TableColumnAlignment(0);
  __swift_allocate_value_buffer(v0, static TableColumnAlignment.Key.defaultValue);
  v1 = __swift_project_value_buffer(v0, static TableColumnAlignment.Key.defaultValue);
  v2 = type metadata accessor for Locale.NumberingSystem();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 5, v2);
}

{
  result = specialized static SearchSuggestionsPlacement.Role.initial.getter();
  static EnvironmentValues.SearchSuggestionsPlacementKey.defaultValue = result & 1;
  return result;
}

{
  _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for DocumentConfiguration?, type metadata accessor for DocumentConfiguration);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static DocumentConfigurationEnvironmentKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static DocumentConfigurationEnvironmentKey.defaultValue);
  v3 = type metadata accessor for DocumentConfiguration(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  type metadata accessor for TabContextMenuKey.Storage?(0, &lazy cache variable for type metadata for TabContextMenuKey.Storage?, type metadata accessor for TabContextMenuKey.Storage);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static TabContextMenuKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static TabContextMenuKey.defaultValue);
  v3 = type metadata accessor for TabContextMenuKey.Storage(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata?, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  v2 = __swift_project_value_buffer(v1, static WidgetAuxiliaryCurvedContentKey.defaultValue);
  v3 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  type metadata accessor for SceneStorage<TabViewCustomization>(0, &lazy cache variable for type metadata for Binding<TabViewCustomization>?, type metadata accessor for Binding<TabViewCustomization>, MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static TabViewCustomization.Key.defaultValue);
  v2 = __swift_project_value_buffer(v1, static TabViewCustomization.Key.defaultValue);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for SearchFieldConfiguration.Data?, type metadata accessor for SearchFieldConfiguration.Data, MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static SearchFieldConfiguration.Key.defaultValue);
  v2 = __swift_project_value_buffer(v1, static SearchFieldConfiguration.Key.defaultValue);
  v3 = type metadata accessor for SearchFieldConfiguration.Data(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18BDDF52C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id @objc UIHostingController.childForStatusBarStyle.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingController.childForStatusBarStyle.getter();

  return v2;
}

unint64_t UIHostingController._childForStatusBarStyle.getter()
{
  v1 = v0;
  specialized UIHostingController.host.getter();
  _UIHostingView.colorScheme.getter(&v20);
  if (v20 != 2)
  {
    return 0;
  }

  v2 = specialized UIHostingController.barAppearanceBridge.getter();
  if (v2)
  {
    v3 = v2;
    HasStatusBar = BarAppearanceBridge.uiHasStatusBarOpinion.getter();

    if (HasStatusBar)
    {
      return 0;
    }
  }

  v5 = specialized UIHostingController.host.getter();
  v6 = _UIHostingView.shouldDeferToChildViewControllerForStatusBar.getter();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [v1 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
LABEL_7:
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
      }

      else if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v8 + 8 * v11 + 32);
LABEL_12:
          v13 = v12;
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_28;
      }

      v12 = MEMORY[0x18D00E9C0](v11, v8);
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_15:

  v14 = [v13 childViewControllerForStatusBarStyle];

  result = v14;
  if (v14)
  {
    return result;
  }

  v16 = [v1 childViewControllers];
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
LABEL_29:

    return 0;
  }

LABEL_18:
  v10 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v18 = MEMORY[0x18D00E9C0](result, v1);
    goto LABEL_23;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v1 + 8 * result + 32);
LABEL_23:
    v19 = v18;

    return v19;
  }

  __break(1u);
  return result;
}