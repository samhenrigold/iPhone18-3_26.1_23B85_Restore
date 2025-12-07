double static PlatformNewDocumentButtonModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v17 = a2[2];
  v18 = v6;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v7 = a2[1];
  v15 = *a2;
  v16 = v7;
  a3(&v13);
  v8 = a2[3];
  v17 = a2[2];
  v18 = v8;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v9 = a2[1];
  v15 = *a2;
  v16 = v9;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    v10 = a2[3];
    v17 = a2[2];
    v18 = v10;
    v19 = a2[4];
    v20 = *(a2 + 20);
    v11 = a2[1];
    v15 = *a2;
    v16 = v11;
    AGGraphCreateOffsetAttribute2();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform();
    Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
    lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  *a4 = v13;
  result = v14;
  a4[1] = v14;
  return result;
}

uint64_t protocol witness for static PlatformItemsModifier.updateItems(modifier:items:) in conformance PlatformNewDocumentButtonTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();

  return MEMORY[0x1EEDE22A8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PlatformNewDocumentButtonTransform@<X0>(void *(*a3)(void *__return_ptr)@<X2>, void *a5@<X8>)
{
  a3(a5);
  lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

double DocumentPlatformItemAuxiliaryContent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_deallocClassInstance();
  return result;
}

id static _NewDocumentButton.defaultAction.getter()
{
  if (one-time initialization token for defaultAction != -1)
  {
    swift_once();
  }

  v1 = static _NewDocumentButton.defaultAction;

  return v1;
}

uint64_t _NewDocumentButton.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  *a4 = 4;
  type metadata accessor for Button<Text>(0, a1, a2, a3);
  v6 = v5;
  v7 = &a4[*(v5 + 36)];
  *v7 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v7[1] = 0;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v8 = &a4[*(v6 + 40)];
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *v8 = result;
  *(v8 + 1) = v10;
  v8[16] = v11 & 1;
  *(v8 + 3) = v12;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance _NewDocumentButton@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  *a4 = 4;
  type metadata accessor for Button<Text>(0, a1, a2, a3);
  v6 = v5;
  v7 = &a4[*(v5 + 36)];
  *v7 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v7[1] = 0;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v8 = &a4[*(v6 + 40)];
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *v8 = result;
  *(v8 + 1) = v10;
  v8[16] = v11 & 1;
  *(v8 + 3) = v12;
  return result;
}

uint64_t destroy for NewDocumentButton(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t initializeWithCopy for NewDocumentButton(uint64_t a1, uint64_t a2)
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

  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  (**(v9 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t assignWithCopy for NewDocumentButton(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  __swift_assign_boxed_opaque_existential_1((a1 + 32), (a2 + 32));
  return a1;
}

uint64_t assignWithTake for NewDocumentButton(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of Text(a1);
LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  outlined consume of Text.Storage(v6, v7, v8);
  *(a1 + 24) = v4;

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>)
  {
    v9[4] = v4;
    v9[5] = v5;
    type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>(255, a2, a3, a4);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, type metadata accessor for Button<Text>, protocol conformance descriptor for Button<A>);
    v9[1] = &protocol witness table for PlatformNewDocumentButtonModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform()
{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformNewDocumentButtonTransform.MakeTransform, &type metadata for PlatformNewDocumentButtonTransform.MakeTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform()
{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformNewDocumentButtonTransform, &type metadata for PlatformNewDocumentButtonTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformNewDocumentButtonTransform, &type metadata for PlatformNewDocumentButtonTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlatformNewDocumentButtonTransform, &type metadata for PlatformNewDocumentButtonTransform, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

double specialized static PlatformNewDocumentButtonTransform.updateItem(modifier:item:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for DocumentCreationStrategy();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v12);
  type metadata accessor for DocumentPlatformItemAuxiliaryContent();
  v4 = swift_allocObject();
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v4 + 16);
  if (a2[38] == 1)
  {
    LOBYTE(v12[0]) = 1;
    static PlatformItem.SelectionContent.selection(onSelect:onDeselect:options:auxiliaryContent:)();
    swift_unknownObjectRelease();
    outlined consume of PlatformItem.SelectionContent?(a2[35], a2[36], a2[37], a2[38]);
    result = *v12;
    v6 = v12[1];
    *(a2 + 35) = v12[0];
    *(a2 + 37) = v6;
  }

  else
  {
    v8 = PlatformItem.selection.modify();
    if (*(v7 + 24) != 1)
    {
      v9 = *(v7 + 16);
      if ((v9 & 8) == 0)
      {
        *(v7 + 16) = v9 | 8;
      }
    }

    v8(v12, 0);
    v11 = PlatformItem.selection.modify();
    if (*(v10 + 24) != 1)
    {
      *(v10 + 24) = v4;

      swift_unknownObjectRelease();
    }

    v11(v12, 0);
  }

  return result;
}

uint64_t assignWithCopy for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 8);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = *(a1 + 32);
  *(a1 + 25) = *(a2 + 25);
  v8 = *(a2 + 32);
  if (v7)
  {
    if (v8)
    {
      v9 = *(a2 + 40);
      *(a1 + 32) = v8;
      *(a1 + 40) = v9;

      goto LABEL_15;
    }
  }

  else if (v8)
  {
    v10 = *(a2 + 40);
    *(a1 + 32) = v8;
    *(a1 + 40) = v10;

    goto LABEL_15;
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_15:
  v11 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v11)
    {
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 48);
      v12 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v12;
    }
  }

  else if (v11)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v13;
  }

  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t outlined destroy of Binding<NavigationSplitViewColumn>(uint64_t a1)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<NavigationSplitViewColumn>()
{
  if (!lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>);
    }
  }
}

uint64_t assignWithTake for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 16))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);
      goto LABEL_6;
    }

    outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 25) = *(a2 + 25);
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;

      if (!*(a1 + 56))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v8;
    if (!*(a1 + 56))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 56))
  {
LABEL_18:
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(a2 + 56);
  if (!v9)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 48);
    goto LABEL_18;
  }

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = v9;

  *(a1 + 64) = *(a2 + 64);
LABEL_19:
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

void *NavigationSplitViewState.updateRequiredCompactColumn(_:newValue:)@<X0>(void *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v5 = result[1];
  v7 = *(result + 16);
  v8 = *a2;
  v9 = *(v3 + 56);
  if (!v9)
  {
    v13 = *(v3 + 48);

    result = outlined consume of Binding<NavigationSplitViewColumn>?(v13, 0);
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    v14 = v8 != 0;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    goto LABEL_11;
  }

  v10 = *(v3 + 65);
  if (v10 != 3)
  {
    if (v5 != v9)
    {
      v15 = *(v3 + 48);

      result = outlined consume of Binding<NavigationSplitViewColumn>?(v15, v9);
      *(v3 + 48) = v6;
      *(v3 + 56) = v5;
      *(v3 + 64) = v7;
    }

    if (v8 == v10)
    {
      v11 = 0uLL;
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      v12 = 0x1FFFFFFFCLL;
      goto LABEL_9;
    }

    *(v3 + 65) = v8;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    v14 = 1;
LABEL_11:
    *(a3 + 340) = v14;
    goto LABEL_12;
  }

  v11 = 0uLL;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v12 = 0x1FFFFFFFELL;
LABEL_9:
  *(a3 + 152) = 0;
  *(a3 + 160) = v12;
  *(a3 + 184) = v11;
  *(a3 + 200) = v11;
  *(a3 + 216) = v11;
  *(a3 + 232) = v11;
  *(a3 + 168) = v11;
  *(a3 + 248) = v11;
  *(a3 + 264) = v11;
  *(a3 + 280) = v11;
  *(a3 + 296) = v11;
  *(a3 + 312) = v11;
  *(a3 + 321) = v11;
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 0;
LABEL_12:
  *(a3 + 344) = 0;
  return result;
}

Swift::Bool __swiftcall NavigationSplitViewState.reduceCompactColumnBindingsIfGreaterThan(_:)(SwiftUI::NavigationSplitColumn_optional a1)
{
  if (a1.value <= SwiftUI_NavigationSplitColumn_detail)
  {
    if (*(v1 + 16))
    {
      v3 = *(v1 + 25);
      if (v3 != 3)
      {
        if (a1.value)
        {
          if (a1.value == SwiftUI_NavigationSplitColumn_content && v3 == 2)
          {
LABEL_7:
            *(v1 + 25) = a1;
            dispatch thunk of AnyLocation.set(_:transaction:)();
            v4 = 1;
            if (!*(v1 + 56))
            {
              goto LABEL_17;
            }

LABEL_12:
            v5 = *(v1 + 65);
            if (v5 == 3 || a1.value == SwiftUI_NavigationSplitColumn_detail)
            {
              goto LABEL_17;
            }

            if (a1.value == SwiftUI_NavigationSplitColumn_content)
            {
              if (v5 == 2)
              {
                goto LABEL_22;
              }
            }

            else if ((v5 - 1) < 2)
            {
LABEL_22:
              *(v1 + 65) = a1;
              dispatch thunk of AnyLocation.set(_:transaction:)();
              v4 = 1;
            }

LABEL_17:
            *v1 += v4;
            return v4;
          }
        }

        else if ((v3 - 1) < 2)
        {
          goto LABEL_7;
        }
      }
    }

    v4 = 0;
    if (!*(v1 + 56))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  LOBYTE(v4) = 0;
  return v4;
}

uint64_t ScrollEnvironmentStorage.baseProperties.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentProperties(v1 + 16, a1);
}

uint64_t closure #1 in ScrollEnvironmentStorage.baseProperties.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t ScrollEnvironmentStorage.transform.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentTransform?(v1 + 280, a1);
}

void specialized implicit closure #1 in _GraphInputs.scrollStorage.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

void default argument 3 of TransformScrollStorageEnvironment.init(environment:transform:storage:oldProperties:)(uint64_t a1@<X8>)
{
  *a1 = 257;
  *(a1 + 84) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 88) = 4;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 104) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 166) = 1;
  *(a1 + 167) = 0u;
  *(a1 + 183) = 0u;
  *(a1 + 199) = 0;
  static EdgeInsets.zero.getter();
  *(a1 + 200) = v3;
  *(a1 + 208) = v4;
  *(a1 + 216) = v5;
  *(a1 + 224) = v6;
  static EdgeInsets.zero.getter();
  *(a1 + 232) = v7;
  *(a1 + 240) = v8;
  *(a1 + 248) = v9;
  *(a1 + 256) = v10;
}

uint64_t assignWithCopy for TransformScrollStorageEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 92) = *(a2 + 92);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(v5);
      *(a1 + 24) = *(a2 + 24);
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 88) = v8;
      *(a1 + 72) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v11;
    *(a1 + 56) = v10;
    *(a1 + 40) = v9;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for TransformScrollStorageEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  if (!*(a2 + 48))
  {
    outlined destroy of AccessibilityRelationshipScope.Key((a1 + 24));
LABEL_5:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
LABEL_6:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  v4 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformScrollStorageEnvironment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollStorageEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options()
{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEnvironmentProperties.Options, &type metadata for ScrollEnvironmentProperties.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEnvironmentProperties.Options, &type metadata for ScrollEnvironmentProperties.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEnvironmentProperties.Options, &type metadata for ScrollEnvironmentProperties.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollEnvironmentProperties.Options, &type metadata for ScrollEnvironmentProperties.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

uint64_t type metadata completion function for PopUpButton(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PickerStyleConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PopUpButton(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || (v8 & (v7 + 72)) + v10 + 39 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (v8 & (v7 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v16 = (a2 & 0xFFFFFFFFFFFFFFF8);
    v30 = v4;
    v17 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v15[4] = v17;
    v15[5] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    (**(v17 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 8, (a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v18 = v16[6];
    v15[6] = v18;
    v15[7] = v16[7];
    v15[8] = v16[8];
    v28 = v16 + 79;
    v29 = ((v16 + 79) & 0xFFFFFFFFFFFFFFF8);
    *((v15 + 79) & 0xFFFFFFFFFFFFFFF8) = *v29;
    v19 = ((((v15 + 79) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = *(v5 + 16);
    v21 = v18;

    v20(v19 + 1, ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v30);
    v22 = (v15 + v9 + 79) & 0xFFFFFFFFFFFFFFF8;
    v23 = &v28[v9] & 0xFFFFFFFFFFFFFFF8;
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    v24 = v10 + ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(v29 + v10 + 7);
    v26 = *(v29 + v10 + 15);

    outlined copy of Environment<Bool>.Content();
    *(v24 + 7) = v25;
    *(v24 + 15) = v26;
    *(v24 + 23) = *(v29 + v10 + 23);
  }

  return v3;
}

uint64_t destroy for PopUpButton(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(((a1 & 0xFFFFFFFFFFFFFFF8) + 8));

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + (v6 | 7) + 72) & ~(v6 | 7);

  (*(v5 + 8))((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v8 = *(v5 + 64) + ((v6 + 16) & ~v6) + 7;

  v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

unint64_t initializeWithCopy for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v5 = (a2 & 0xFFFFFFFFFFFFFFF8);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v4[4] = v6;
  v4[5] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  (**(v6 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 8, (a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = v5[6];
  v4[6] = v7;
  v4[7] = v5[7];
  v4[8] = v5[8];
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v29 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = *(v9 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v13 = ((v4 + v11 + 72) & v12);
  v14 = ((v5 + v11 + 72) & v12);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = v15 + v11 + 8;
  v18 = v16 + v11 + 8;
  v19 = v7;

  v29(v17 & ~v11, v18 & ~v11, v8);
  v20 = *(v10 + 48) + ((v11 + 16) & ~v11) + 7;
  v21 = (v13 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v13 + v23;
  v25 = v14 + v23;
  v26 = *(v14 + v23 + 7);
  v27 = *(v14 + v23 + 15);

  outlined copy of Environment<Bool>.Content();
  *(v24 + 7) = v26;
  v24[15] = v27;
  *(v24 + 23) = *(v25 + 23);
  return a1;
}

unint64_t assignWithCopy for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = (a2 & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(((a1 & 0xFFFFFFFFFFFFFFF8) + 8), ((a2 & 0xFFFFFFFFFFFFFFF8) + 8));
  v7 = v6[6];
  v8 = v5[6];
  v5[6] = v7;
  v9 = v7;

  v5[7] = v6[7];

  v5[8] = v6[8];
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v5 + v12 + 72) & v13);
  v15 = ((v6 + v12 + 72) & v13);
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 24))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  v24 = *(v23 + 7);
  LOBYTE(v18) = v23[15];
  outlined copy of Environment<Bool>.Content();
  v25 = *(v22 + 7);
  v26 = v22[15];
  *(v22 + 7) = v24;
  v22[15] = v18;
  outlined consume of Environment<Bool>.Content(v25, v26);
  *(v22 + 23) = *(v23 + 23);
  return a1;
}

unint64_t initializeWithTake for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v4 + 56) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v4 + 40) = v7;
  *(v4 + 24) = v6;
  *(v4 + 8) = v5;
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v11 = ((v9 + 72 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v10);
  v12 = ((v9 + 72 + (a2 & 0xFFFFFFFFFFFFFFF8)) & v10);
  *v11 = *v12;
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = v8 + 32;
  (*(v8 + 32))((v13 + v9 + 8) & ~v9, (v14 + v9 + 8) & ~v9);
  v16 = *(v15 + 32) + ((v9 + 16) & ~v9) + 7;
  v17 = (v11 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = v11 + v19;
  v21 = v12 + v19;
  LOBYTE(v18) = v21[15];
  *(v20 + 7) = *(v21 + 7);
  v20[15] = v18;
  *(v20 + 23) = *(v21 + 23);
  return a1;
}

unint64_t assignWithTake for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(((a1 & 0xFFFFFFFFFFFFFFF8) + 8));
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(v5 + 40) = *(v6 + 40);
  *(v5 + 24) = v8;
  *(v5 + 8) = v7;
  v9 = *(v5 + 48);
  *(v5 + 48) = *(v6 + 48);

  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + 72 + v5) & v13);
  v15 = ((v12 + 72 + v6) & v13);
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 40))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  v24 = *(v15 + v21 + 15);
  v25 = *(v22 + 7);
  v26 = v22[15];
  *(v22 + 7) = *(v15 + v21 + 7);
  v22[15] = v24;
  outlined consume of Environment<Bool>.Content(v25, v26);
  *(v22 + 23) = *(v23 + 23);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopUpButton(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + 72) & ~v9) + ((*(*(*(a3 + 16) - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    v19 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((v19 + v9 + 72) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v20 = *(v19 + 32);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

double storeEnumTagSinglePayload for PopUpButton(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = 46 - ((-73 - v8) | v8 | 7) - ((((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64) - 7) | 7);
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      v19 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 64) = 0;
          result = 0.0;
          *(v19 + 32) = 0u;
          *(v19 + 48) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 8) = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 32) = a2 - 1;
        }
      }

      else
      {
        v20 = *(v5 + 56);

        v20((v8 + ((((v19 + (v8 | 7) + 72) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
      }

      return result;
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

uint64_t PopUpButton.detailLabel.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + 24);
  v10 = type metadata accessor for PickerStyleConfiguration(0, v4, v8, v9);
  PickerStyleConfiguration.$selection.getter(v10);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v12 = type metadata accessor for PickerStyleConfiguration.Content(0, v4, v8, v11);
  return PickerCurrentValueLabel.init(selection:options:)(v7, v13, v12, v4, &protocol witness table for PickerStyleConfiguration<A>.Content, v8, a2);
}

uint64_t PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
  v64 = v3;
  v65 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for PickerStyleConfiguration.Label(255, v4, v5, v6);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  v69 = type metadata accessor for ModifiedContent();
  v90 = type metadata accessor for PickerStyleConfiguration.Content(255, v4, v5, v7);
  v91 = v4;
  v92 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v93 = v5;
  v8 = type metadata accessor for PickerCurrentValueLabel(255, &v90);
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for PickerContentView(255, v4, v5, v10);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v67 = v12;
  v13 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v8);
  v15 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v96[0] = WitnessTable;
  v96[1] = v15;
  v16 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v96);
  v53 = swift_getWitnessTable("Q%\rb\\R\t", v11);
  v18 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v95[0] = v53;
  v95[1] = v18;
  v94[0] = swift_getWitnessTable(v16, v12, v95);
  v94[1] = &protocol witness table for ToggleStyleModifier<A>;
  v19 = swift_getWitnessTable(v16, v13, v94);
  v90 = v9;
  v91 = v13;
  v92 = v17;
  v93 = v19;
  type metadata accessor for UIKitMenuButton(255, &v90);
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v57 = type metadata accessor for ModifiedContent();
  v58 = type metadata accessor for ModifiedContent();
  v56 = type metadata accessor for LabeledContent(255, v69, v58, v20);
  v21 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v54 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v21);
  v55 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v59 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v60 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier);
  v61 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  v22 = type metadata accessor for ModifiedContent();
  v23 = type metadata accessor for StaticIf();
  v64 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v62 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v63 = &v52 - v26;
  v27 = v66;
  v28 = v66 + *(v65 + 40);
  v30 = *(v28 + *(type metadata accessor for PickerStyleConfiguration(0, v4, v5, v29) + 36));
  outlined init with copy of SubviewsCollection(v27 + 8, &v90);
  PickerContentView.init(selection:items:)(v30, &v90, v89);

  View.styleContext<A>(_:)();
  (*(*(v11 - 8) + 8))(v89, v11);
  v74 = v4;
  v75 = v5;
  v76 = v27;
  v77 = &v90;
  v70 = v4;
  v71 = v5;
  v72 = v27;
  v73 = &v90;
  v31 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v88[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v88[1] = v31;
  v32 = swift_getWitnessTable(v16, v69, v88);
  v87[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v87[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v86[0] = swift_getWitnessTable(v16, v57, v87);
  v86[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v33 = swift_getWitnessTable(v16, v58, v86);
  v85[0] = v32;
  v85[1] = v33;
  v34 = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v56, v85);
  v35 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v84[0] = v34;
  v84[1] = v35;
  v36 = swift_getWitnessTable(v16, v54, v84);
  v37 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v83[0] = v36;
  v83[1] = v37;
  v38 = swift_getWitnessTable(v16, v55, v83);
  v39 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v82[0] = v38;
  v82[1] = v39;
  v40 = swift_getWitnessTable(v16, v59, v82);
  v41 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v81[0] = v40;
  v81[1] = v41;
  v42 = swift_getWitnessTable(v16, v60, v81);
  v43 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v80[0] = v42;
  v80[1] = v43;
  v44 = swift_getWitnessTable(v16, v61, v80);
  v45 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v79[0] = v44;
  v79[1] = v45;
  v51 = swift_getWitnessTable(v16, v22, v79);
  v46 = v62;
  StaticIf<>.init<A>(in:then:else:)();
  v78[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v78[1] = v51;
  v78[2] = v51;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v23, v78);
  v47 = v63;
  v48 = v46;
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = *(v64 + 8);
  v49(v48, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v49(v47, v23);
  return (*(*(v67 - 8) + 8))(&v90);
}

uint64_t closure #1 in PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v57 = a1;
  v59 = a5;
  type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  v48 = type metadata accessor for ModifiedContent();
  v73 = type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, v7);
  v74 = a3;
  v75 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v76 = a4;
  v8 = type metadata accessor for PickerCurrentValueLabel(255, &v73);
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for PickerContentView(255, a3, a4, v10);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v13 = type metadata accessor for ModifiedContent();
  v72[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v8);
  v72[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v14 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v72);
  v71[0] = swift_getWitnessTable("Q%\rb\\R\t", v11);
  v71[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v52 = swift_getWitnessTable(v14, v12, v71);
  v70[0] = v52;
  v70[1] = &protocol witness table for ToggleStyleModifier<A>;
  v16 = swift_getWitnessTable(v14, v13, v70);
  v73 = v9;
  v74 = v13;
  v75 = WitnessTable;
  v76 = v16;
  type metadata accessor for UIKitMenuButton(255, &v73);
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v17 = type metadata accessor for ModifiedContent();
  v53 = type metadata accessor for ModifiedContent();
  v51 = type metadata accessor for LabeledContent(255, v48, v53, v18);
  v19 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v49 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v19);
  v50 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v54 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v55 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier);
  v56 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v28 = type metadata accessor for PopUpButton(0, a3, a4, v27);
  if (specialized Environment.wrappedValue.getter(*(v57 + *(v28 + 44)), *(v57 + *(v28 + 44) + 8)) == 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(v58, 0, v29, v28, v12, v52, v23);
  v30 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v69[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v69[1] = v30;
  v31 = swift_getWitnessTable(v14, v48, v69);
  v68[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v68[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v67[0] = swift_getWitnessTable(v14, v17, v68);
  v67[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v32 = swift_getWitnessTable(v14, v53, v67);
  v66[0] = v31;
  v66[1] = v32;
  v33 = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v51, v66);
  v34 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v65[0] = v33;
  v65[1] = v34;
  v35 = swift_getWitnessTable(v14, v49, v65);
  v36 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v64[0] = v35;
  v64[1] = v36;
  v37 = swift_getWitnessTable(v14, v50, v64);
  v38 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v63[0] = v37;
  v63[1] = v38;
  v39 = swift_getWitnessTable(v14, v54, v63);
  v40 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v62[0] = v39;
  v62[1] = v40;
  v41 = swift_getWitnessTable(v14, v55, v62);
  v42 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v61[0] = v41;
  v61[1] = v42;
  v43 = swift_getWitnessTable(v14, v56, v61);
  v44 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v60[0] = v43;
  v60[1] = v44;
  swift_getWitnessTable(v14, v20, v60);
  static ViewBuilder.buildExpression<A>(_:)();
  v45 = *(v21 + 8);
  v45(v23, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v45)(v26, v20);
}

uint64_t PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a1;
  v62 = a6;
  v68 = a5;
  v78 = a2;
  v79 = a3;
  v82 = a7;
  v8 = *(a4 + 16);
  v74 = *(a4 + 24);
  type metadata accessor for PickerStyleConfiguration.Label(255, v8, v74, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  v9 = type metadata accessor for ModifiedContent();
  v99 = type metadata accessor for PickerStyleConfiguration.Content(255, v8, v74, v10);
  v100 = v8;
  v101 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v102 = v74;
  v11 = type metadata accessor for PickerCurrentValueLabel(255, &v99);
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v13 = type metadata accessor for ModifiedContent();
  v98[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v11);
  v98[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v14 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v12, v98);
  v97[0] = a6;
  v97[1] = &protocol witness table for ToggleStyleModifier<A>;
  v16 = swift_getWitnessTable(v14, v13, v97);
  v99 = v12;
  v100 = v13;
  v101 = WitnessTable;
  v102 = v16;
  type metadata accessor for UIKitMenuButton(255, &v99);
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v17 = type metadata accessor for ModifiedContent();
  v64 = type metadata accessor for ModifiedContent();
  v18 = v9;
  v20 = type metadata accessor for LabeledContent(0, v9, v64, v19);
  v72 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v58 - v21;
  v22 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v23 = type metadata accessor for ModifiedContent();
  v71 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v58 - v24;
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v22);
  v25 = type metadata accessor for ModifiedContent();
  v70 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v58 - v26;
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v67 = type metadata accessor for ModifiedContent();
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v58 - v27;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v69 = type metadata accessor for ModifiedContent();
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v58 - v28;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier);
  v29 = type metadata accessor for ModifiedContent();
  v30 = *(v29 - 8);
  v76 = v29;
  v77 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v66 = &v58 - v31;
  v83[10] = v8;
  v83[11] = v68;
  v83[12] = v74;
  v83[13] = v62;
  v84 = v78;
  v85 = v79;
  v86 = v81;
  v87 = v80;
  v83[2] = v8;
  v83[3] = v68;
  v83[4] = v74;
  v83[5] = v62;
  v83[6] = v81;
  v32 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v96[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v96[1] = v32;
  v33 = v18;
  v34 = swift_getWitnessTable(v14, v18, v96);
  v95[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v95[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v94[0] = swift_getWitnessTable(v14, v17, v95);
  v94[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v35 = v64;
  v36 = swift_getWitnessTable(v14, v64, v94);
  v37 = v63;
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), partial apply for closure #2 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), v83, v33, v35, v63);
  v93[0] = v34;
  v93[1] = v36;
  v38 = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v20, v93);
  v39 = v60;
  View.listLabeledContentAllowsOutsetting()(v20, v38);
  (*(v72 + 8))(v37, v20);
  v40 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v92[0] = v38;
  v92[1] = v40;
  v41 = swift_getWitnessTable(v14, v23, v92);
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  v42 = v59;
  View.input<A>(_:)();
  (*(v71 + 8))(v39, v23);
  v43 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v91[0] = v41;
  v91[1] = v43;
  v44 = swift_getWitnessTable(v14, v25, v91);
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v45 = v61;
  MEMORY[0x18D00A570](v46, v25, v46, v44);
  (*(v70 + 8))(v42, v25);
  v47 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v90[0] = v44;
  v90[1] = v47;
  v48 = v67;
  v49 = swift_getWitnessTable(v14, v67, v90);
  v50 = v65;
  View.allowsToolbarItemBridging(options:role:)(1, 2, v48, v49);
  (*(v73 + 8))(v45, v48);
  v51 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v89[0] = v49;
  v89[1] = v51;
  v52 = v69;
  v53 = swift_getWitnessTable(v14, v69, v89);
  v54 = v66;
  View.toolbarPlatformItemTint()(v52, v53);
  (*(v75 + 8))(v50, v52);
  swift_getKeyPath();
  v55 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v88[0] = v53;
  v88[1] = v55;
  v56 = v76;
  swift_getWitnessTable(v14, v76, v88);
  View.transformEnvironment<A>(_:transform:)();

  return (*(v77 + 8))(v54, v56);
}

uint64_t closure #2 in PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a1;
  v57 = a5;
  type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, a4);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  v47 = type metadata accessor for ModifiedContent();
  v71 = type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, v7);
  v72 = a3;
  v73 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v74 = a4;
  v8 = type metadata accessor for PickerCurrentValueLabel(255, &v71);
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for PickerContentView(255, a3, a4, v10);
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v13 = type metadata accessor for ModifiedContent();
  v70[0] = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v8);
  v70[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v14 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v70);
  v69[0] = swift_getWitnessTable("Q%\rb\\R\t", v11);
  v69[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v16 = swift_getWitnessTable(v14, v12, v69);
  v68[0] = v16;
  v68[1] = &protocol witness table for ToggleStyleModifier<A>;
  v17 = swift_getWitnessTable(v14, v13, v68);
  v71 = v9;
  v72 = v13;
  v73 = WitnessTable;
  v74 = v17;
  type metadata accessor for UIKitMenuButton(255, &v71);
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v18 = type metadata accessor for ModifiedContent();
  v51 = type metadata accessor for ModifiedContent();
  v50 = type metadata accessor for LabeledContent(255, v47, v51, v19);
  v20 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v48 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v20);
  v49 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v52 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v53 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier);
  v54 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v29 = type metadata accessor for PopUpButton(0, a3, a4, v28);
  PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(v55, 0, 3, v29, v12, v16, v24);
  v30 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v67[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v67[1] = v30;
  v31 = swift_getWitnessTable(v14, v47, v67);
  v66[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v66[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v65[0] = swift_getWitnessTable(v14, v18, v66);
  v65[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v32 = swift_getWitnessTable(v14, v51, v65);
  v64[0] = v31;
  v64[1] = v32;
  v33 = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v50, v64);
  v34 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v63[0] = v33;
  v63[1] = v34;
  v35 = swift_getWitnessTable(v14, v48, v63);
  v36 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v62[0] = v35;
  v62[1] = v36;
  v37 = swift_getWitnessTable(v14, v49, v62);
  v38 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v61[0] = v37;
  v61[1] = v38;
  v39 = swift_getWitnessTable(v14, v52, v61);
  v40 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v60[0] = v39;
  v60[1] = v40;
  v41 = swift_getWitnessTable(v14, v53, v60);
  v42 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v59[0] = v41;
  v59[1] = v42;
  v43 = swift_getWitnessTable(v14, v54, v59);
  v44 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v58[0] = v43;
  v58[1] = v44;
  swift_getWitnessTable(v14, v21, v58);
  static ViewBuilder.buildExpression<A>(_:)();
  v45 = *(v22 + 8);
  v45(v24, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v45)(v27, v21);
}

uint64_t closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(unsigned int a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a4;
  v65 = a3;
  v60 = a1;
  v63 = a9;
  v56 = a2;
  v13 = type metadata accessor for UIButton.Configuration();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PickerStyleConfiguration.Content(255, a5, a7, v15);
  v71 = a5;
  v64 = a5;
  v72 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v73 = a7;
  v16 = type metadata accessor for PickerCurrentValueLabel(255, &v70);
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v17 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v58 = a6;
  v18 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v16);
  v20 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v69[0] = WitnessTable;
  v69[1] = v20;
  v21 = MEMORY[0x1E697E858];
  v22 = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v69);
  v68[0] = a8;
  v68[1] = &protocol witness table for ToggleStyleModifier<A>;
  v23 = swift_getWitnessTable(v21, v18, v68);
  v55 = v17;
  v70 = v17;
  v71 = v18;
  v54 = v18;
  v51 = v22;
  v72 = v22;
  v73 = v23;
  v50 = v23;
  v24 = type metadata accessor for UIKitMenuButton(0, &v70);
  v52 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v27 = type metadata accessor for ModifiedContent();
  v53 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  v30 = type metadata accessor for ModifiedContent();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v49 - v37;
  if (v56 == 3)
  {
    v39 = type metadata accessor for PopUpButton(0, v64, a7, v36);
    v35 = specialized Environment.wrappedValue.getter(*(v65 + *(v39 + 44)), *(v65 + *(v39 + 44) + 8));
  }

  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v40);
  UIKitMenuButton.init(action:isPopUpButton:flexibleDimensions:menuTitleVisibility:menuIndicatorVisibility:onPresentationChanged:menuContent:label:)(0, 0, 1, v60, 2, v41, 0, 0, v26, partial apply for closure #1 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), v42, partial apply for closure #2 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), &v48, v55, v54, v51, v50);
  v43 = v59;
  static UIButton.Configuration.bordered()();
  View.uikitButtonConfiguration(_:)(v43, v24, &protocol witness table for UIKitMenuButton<A, B>);
  (*(v61 + 8))(v43, v62);
  (*(v52 + 8))(v26, v24);
  LOBYTE(v70) = 27;
  v67[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v67[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v44 = MEMORY[0x1E697E858];
  v45 = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v67);
  View.accessibilityAddTraits(_:)(&v70, v27, v45);
  (*(v53 + 8))(v29, v27);
  v66[0] = v45;
  v66[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(v44, v30, v66);
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v31 + 8);
  v46(v33, v30);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v38, v30);
}

uint64_t closure #1 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v18 = a1;
  v19 = a4;
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v14 = swift_getKeyPath();
  v32 = 0;
  v15 = swift_getKeyPath();
  v31 = 0;
  *&v21 = 0x4038000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v30 = BYTE8(v34);
  v29 = BYTE8(v35);
  *&v21 = KeyPath;
  BYTE8(v21) = v33;
  *&v22 = v14;
  BYTE8(v22) = v32;
  v23 = v15;
  v24 = 0uLL;
  LOBYTE(v25) = v31;
  *(&v25 + 1) = v34;
  LOBYTE(v26) = BYTE8(v34);
  *(&v26 + 1) = v35;
  LOBYTE(v27) = BYTE8(v35);
  *(&v27 + 1) = v36;
  v28 = BYTE8(v36);
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v21, a2, &type metadata for CheckmarkToggleStyle, a3);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  outlined destroy of CheckmarkToggleStyle(&v34);
  v20[0] = a3;
  v20[1] = &protocol witness table for ToggleStyleModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v20, v18, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v12, v6);
}

uint64_t closure #2 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v24[0] = type metadata accessor for PickerStyleConfiguration.Content(255, a1, a2, a2);
  v24[1] = a1;
  v24[2] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v24[3] = a2;
  v5 = type metadata accessor for PickerCurrentValueLabel(0, v24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v17 = type metadata accessor for PopUpButton(0, a1, a2, v16);
  PopUpButton.detailLabel.getter(v17, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PickerCurrentValueLabel<A, B>, v5);
  View.toolbarButtonLabel()(v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  v19 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v23[0] = WitnessTable;
  v23[1] = v19;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v15, v9);
}

uint64_t closure #2 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v7 = type metadata accessor for PickerStyleConfiguration.Label(0, a2, a4, v6);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  MEMORY[0x18D00A570](v8, v7, v8, &protocol witness table for PickerStyleConfiguration<A>.Label);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v11[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return static ViewBuilder.buildExpression<A>(_:)();
}

_BYTE *closure #3 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(_BYTE *result)
{
  if (!*result)
  {
    *result = 1;
  }

  return result;
}

unint64_t PopUpButton.init(children:configuration:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PickerStyleConfiguration.CurrentValueLabel(0, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for PickerStyleConfiguration<A>.CurrentValueLabel, v10);
  *a5 = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key() & 1;
  v11 = a1[1];
  *(a5 + 8) = *a1;
  *(a5 + 24) = v11;
  v12 = a1[3];
  *(a5 + 40) = a1[2];
  *(a5 + 56) = v12;
  v14 = type metadata accessor for PopUpButton(0, a3, a4, v13);
  v15 = v14[10];
  v17 = type metadata accessor for PickerStyleConfiguration(0, a3, a4, v16);
  (*(*(v17 - 8) + 32))(a5 + v15, a2, v17);
  v18 = a5 + v14[11];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = (a5 + v14[12]);
  result = lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  *v19 = &type metadata for AnyButtonStyleType.Unknown;
  v19[1] = result;
  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate()
{
  result = lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate;
  if (!lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HideLabelPredicate, &unk_1EFFC93D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance HideLabelPredicate(__int128 *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static HideLabelPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t specialized static HideLabelPredicate.evaluate(inputs:)(__int128 *a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (static Semantics.v4.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0) || (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 || (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v1 = 0;
  }

  else
  {
    v1 = static StyleContextAcceptsPredicate.evaluate(inputs:)() ^ 1;
  }

  return v1 & 1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI7ToolbarO11BarLocationOG_SSs5NeverOTg503_s7d9UI20UIKitf37StrategyV15updateLocationsShyAA0D0O11gH76OGyFSaySSGycfu35_SSAHcfu36_33_8c3cf78dad0b9b80499610c7de1a2d3dAHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v31;
    v5 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      outlined init with copy of Toolbar.BarLocation(*(v1 + 48) + 40 * v6, v30);
      v10 = Toolbar.BarLocation.description.getter();
      v12 = v11;
      result = outlined destroy of Toolbar.BarLocation(v30);
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t ToolbarBridge.toolbarInputContentDidChange<A>(_:hostingController:)(uint64_t a1, void *a2)
{
  v3 = a2;
  Toolbar.UpdateContext.init<A>(hostingController:)(v3, v7);
  v4 = ToolbarBridge.toolbarInputContentDidChange(_:context:)(a1, v7);
  ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v4, v5 & 0xFF010101, v3, v7);

  return outlined destroy of Toolbar.UpdateContext(v7);
}

uint64_t ToolbarBridge.uiTabViewSidebarBottomBarItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v4 = type metadata accessor for Toolbar.PlatformVended(0);
  return outlined init with copy of PlatformItemList.Item?(v3 + *(v4 + 44), a1, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
}

uint64_t static ToolbarBridge.update<A>(environment:toolbarBridge:hostingController:)(uint64_t *a1, void *a2, void *a3)
{
  v5 = a3;
  Toolbar.UpdateContext.init<A>(hostingController:)(v5, v12);
  if (a2)
  {
    v6 = a2;
    v7 = ToolbarBridge.update(environment:context:)(a1, v12);
    ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v7, v8 & 0xFF010101, v5, v12);
  }

  outlined init with copy of Toolbar.UpdateContext(v12, v11);
  outlined init with copy of PushTarget?(v11, &v10, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of PushTarget?(v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  return outlined destroy of Toolbar.UpdateContext(v12);
}

void ToolbarBridge.adoptSystemUpdates<A>(_:hostingController:context:)(uint64_t a1, int a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CDA90C0;
  v6 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v6 & 1) != 0 || (v12 = 0, v13 = 0, v14 = 0, v15 = xmmword_18CDA90D0, v7 = specialized Set.contains(_:)(&v12, a1), outlined destroy of Toolbar.BarLocation(&v12), (v7))
  {
    ToolbarBridge.updateSplitControllerItem<A>(hostingController:updates:)(a3, a1);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CD90760;
  v8 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v8)
  {
    swift_beginAccess();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 setToolbarItems_];
  }

  if ((a2 & 0x100) != 0)
  {
    ToolbarBridge.updateToolbarVisibility<A>(hostingController:)(a3);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CDA90E0;
  v10 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v10 & 1) != 0 || (v12 = 0, v13 = 0, v14 = 0, v15 = xmmword_18CDA90F0, v11 = specialized Set.contains(_:)(&v12, a1), outlined destroy of Toolbar.BarLocation(&v12), (v11))
  {
    ToolbarBridge.updateTabBarSidebar<A>(hostingController:updates:)(a3, a1, a2 & 0xFF010101);
  }
}

void ToolbarBridge.updateSplitControllerItem<A>(hostingController:updates:)(void *a1, uint64_t a2)
{
  v4 = [a1 splitViewController];
  if (v4)
  {
    v5 = v4;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CDA90C0;
    v6 = specialized Set.contains(_:)(&v14, a2);
    outlined destroy of Toolbar.BarLocation(&v14);
    if (v6)
    {
      v7 = v2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      isa = [*(v7 + *(type metadata accessor for Toolbar.PlatformVended(0) + 52)) leadingItemGroups];
      if (!isa)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v9 = [v5 navigationItem];
      [v9 setLeadingItemGroups_];
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CDA90D0;
    v10 = specialized Set.contains(_:)(&v14, a2);
    outlined destroy of Toolbar.BarLocation(&v14);
    if (v10)
    {
      v11 = v2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      v12 = [*(v11 + *(type metadata accessor for Toolbar.PlatformVended(0) + 52)) trailingItemGroups];
      if (!v12)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup, 0x1E69DC720);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = Array._bridgeToObjectiveC()().super.isa;
      }

      v13 = [v5 navigationItem];
      [v13 setTrailingItemGroups_];
    }
  }
}

void ToolbarBridge.updateTabBarSidebar<A>(hostingController:updates:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 tabBarController];
  if (v5)
  {
    v6 = v5;
    if (specialized ToolbarBridge.canUpdateTabBar<A>(_:hostingController:)(v5, a1))
    {
      ToolbarBridge.updateTabSidebar(tabBarController:updates:)(v6, a2);
    }
  }
}

void closure #1 in ToolbarBridge.updateNavigationItem<A>(hostingController:adaptor:)(uint64_t a1, id a2)
{
  v3 = [a2 navigationItem];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v5, v7);
      v6 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      (*(v6 + 16))(v3);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v5 += 48;
      --v4;
    }

    while (v4);
  }
}

void closure #1 in ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 8))(&v14, v8, v9);
      a1 = __swift_destroy_boxed_opaque_existential_1(v11);
      v6 |= v14;
      v7 += 48;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = a3;
  v10[3] = a2;
  v10[4] = v6;
}

uint64_t closure #1 in closure #1 in ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + direct field offset for ToolbarBridge.navigationAdaptor);
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = v5 + 32;

    v10 = 1;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v9, v17);
      outlined init with copy of _Benchmark(v17, v14);
      outlined destroy of UINavigationItemAdaptorStorage.Adaptor(v17);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 &= (*(v12 + 24))(a3, a1, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v9 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return ((a4 & 1) == 0) | ((v10 & 1) == 0);
}

void closure #1 in ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v9, v14);
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 8))(&v17, v10, v11);
      a1 = __swift_destroy_boxed_opaque_existential_1(v14);
      v8 |= v17;
      v9 += 48;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v12[2] = a3;
  v12[3] = v13;
  v12[4] = v6;
  v12[5] = a2;
  v12[6] = v8;
}

uint64_t closure #1 in closure #1 in ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = -v4;
    v9 = a2 + 32;
    v10 = 1;
    do
    {
      for (i = v9 + 48 * v7++; ; i += 48)
      {
        outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(i, v18);
        v12 = v19;
        v13 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v14 = (*(v13 + 32))(a3, a1, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v18);
        if ((v14 & 1) == 0)
        {
          break;
        }

        ++v7;
        if (v8 + v7 == 1)
        {
          v15 = v10;
          return ((a4 & 1) == 0) | ((v15 & 1) == 0);
        }
      }

      v15 = 0;
      v10 = 0;
    }

    while (v8 + v7);
  }

  else
  {
    v15 = 1;
  }

  return ((a4 & 1) == 0) | ((v15 & 1) == 0);
}

void ToolbarBridge.updateTabSidebar(tabBarController:updates:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  v46 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &selRef_bundleIdentifier;
  v14 = [a1 sidebar];
  aBlock = 0;
  v48 = 0;
  v49 = 0;
  v50 = xmmword_18CDA90E0;
  v15 = specialized Set.contains(_:)(&aBlock, a2);
  outlined destroy of Toolbar.BarLocation(&aBlock);
  if (v15)
  {
    v16 = v2 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v17 = *(v16 + 6);
    if (v17 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = *(v5 + 80);
      v19[3] = *(v5 + 88);
      v19[4] = v18;
      *(&v50 + 1) = partial apply for closure #1 in ToolbarBridge.updateTabSidebar(tabBarController:updates:);
      v51 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
      *&v50 = &block_descriptor_182;
      v20 = _Block_copy(&aBlock);
      v21 = v12;
      v22 = v14;
      v23 = objc_opt_self();

      v24 = [v23 elementWithProvider_];
      _Block_release(v20);

      [v22 setNavigationOverflowItems_];

      v14 = v22;
      v12 = v21;
      v13 = 0x1FBA79000;
      goto LABEL_7;
    }

    [v14 setNavigationOverflowItems_];
  }

LABEL_7:
  aBlock = 0;
  v48 = 0;
  v49 = 0;
  v50 = xmmword_18CDA90F0;
  v25 = specialized Set.contains(_:)(&aBlock, a2);
  outlined destroy of Toolbar.BarLocation(&aBlock);
  if ((v25 & 1) != 0 && (type metadata accessor for UIKitTabBarController(), (v26 = swift_dynamicCastClass()) != 0))
  {
    v27 = v26;
    v28 = v13;
    ToolbarBridge.uiTabViewSidebarBottomBarItem.getter(v8);
    if ((*(v46 + 48))(v8, 1, v9) == 1)
    {
      v29 = a1;
      outlined destroy of ToolbarStorage.NavigationProperties?(v8, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v30 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost;
      v31 = *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost];
      *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost] = 0;

      v32 = [v27 v28 + 1802];
      [v32 setBottomBarView_];
    }

    else
    {
      outlined init with take of ToolbarStorage.NavigationProperties(v8, v12, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of _ViewList_View((v12 + 184), &aBlock);
      v33 = a1;
      v34 = AnyView.init<A>(_:)();
      v35 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost;
      v36 = *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost];
      if (v36)
      {
        v37 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x60);
        swift_beginAccess();
        *(v36 + v37) = v34;
        v38 = v36;

        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }

      else
      {
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        v40 = objc_allocWithZone(v39);

        v42 = specialized _UIHostingView.init(rootView:)(v41);
        v43 = *&v27[v35];
        *&v27[v35] = v42;
        v44 = v42;

        v45 = [v27 v28 + 1802];
        v38 = *&v27[v35];
        [v45 setBottomBarView_];

        v33 = v45;
      }

      outlined destroy of ToolbarStorage.NavigationProperties(v12, type metadata accessor for ToolbarStorage.Item);
    }
  }

  else
  {
  }
}

uint64_t closure #1 in ToolbarBridge.updateTabSidebar(tabBarController:updates:)(void (*a1)(), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a1)(MEMORY[0x1E69E7CC0]);
  }

  v5 = Strong;
  v6 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for [UIMenuElement](0);

  static Update.ensure<A>(_:)();

  a1();
}

uint64_t implicit closure #36 in implicit closure #35 in UIKitToolbarStrategy.updateLocations()()
{
  memset(v2, 0, sizeof(v2));
  v3 = xmmword_18CDA90F0;
  v0 = specialized ToolbarStrategy.withUpdate<A>(_:)(partial apply for closure #1 in UIKitToolbarStrategy.updateTabBottomBarEntry(placement:));
  outlined destroy of Toolbar.BarLocation(v2);
  return v0 & 1;
}

void UIKitToolbarStrategy.updateInferredToolbarIfNeeded()()
{
  v1 = UIKitToolbarStrategy.makeBarItems()();
  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__CocoaSet.count.getter())
  {
LABEL_3:
    UIKitToolbarStrategy.createToolbarIfNeeded()();
  }

LABEL_4:
  v2 = *v0;
  if (!*v0)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  outlined init with copy of PushTarget?((v0 + 1), v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v9)
  {
    outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    goto LABEL_13;
  }

  v3 = v2;
  outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  v4 = &v3[direct field offset for ToolbarBridge.platformVended];
  swift_beginAccess();
  v5 = *(v4 + 3);
  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v6 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setItems_];
  }

  else
  {
  }
}

void closure #1 in closure #1 in UIKitToolbarStrategy.barButtonItems(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v33 = a3;
  v13 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34[-1] - v20;
  memset(v34, 0, sizeof(v34));
  v35 = xmmword_18CD7DD20;
  LOBYTE(a5) = specialized static Toolbar.BarLocation.== infix(_:_:)(a5, v34);
  outlined destroy of Toolbar.BarLocation(v34);
  if ((a5 & 1) != 0 && *a4 == a6)
  {
    *(v33 + 8) = 1;
  }

  v22 = *a2;
  v23 = *(a2 + 8);
  if (v23 == 1)
  {
    v24 = v22;
  }

  else
  {
    outlined init with copy of ToolbarStorage.Entry.Kind(a1, v15, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Entry.Kind);
      goto LABEL_11;
    }

    outlined init with take of ToolbarStorage.NavigationProperties(v15, v18, type metadata accessor for ToolbarStorage.Item);
    outlined consume of OpenURLOptions?(v22, v23);
    outlined init with take of ToolbarStorage.NavigationProperties(v18, v21, type metadata accessor for ToolbarStorage.Item);
    v26 = *(v33 + 8);
    v27 = *v33;
    v28 = specialized static UIKitBarButtonItem.makeVended(item:context:)(v21, v27, v26);
    v30 = v29;
    v32 = v31;

    outlined destroy of ToolbarStorage.NavigationProperties(v21, type metadata accessor for ToolbarStorage.Item);
    *a2 = v28;
    *(a2 + 8) = v30;
    if (!v32)
    {
      goto LABEL_11;
    }

    v24 = v32;
  }

  v25 = v24;
  MEMORY[0x18D00CC30]();
  if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_11:
  *(v33 + 8) = 2;
  ++*a4;
}

uint64_t closure #3 in closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v46 = a4;
  v45 = a3;
  v47 = a5;
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v18, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v18[1];
    v50[0] = *v18;
    v50[1] = v19;
    v20 = v18[3];
    v50[2] = v18[2];
    v50[3] = v20;
    v50[4] = v18[4];
    v21 = LOBYTE(v50[0]);
    v22 = objc_opt_self();
    if (v21 == 1)
    {
      v23 = [v22 flexibleSpaceItem];
    }

    else
    {
      v23 = [v22 fixedSpaceItemOfWidth_];
    }

    v25 = v23;
    result = outlined destroy of ToolbarStorage.SpacerItem(v50);
  }

  else
  {
    outlined init with copy of ToolbarStorage.Entry.Kind(v18, v15, type metadata accessor for ToolbarStorage.Item);
    if (v15[153] == 3)
    {
      v24 = a2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      v25 = [*(v24 + 8) searchBarPlacementBarButtonItem];
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Item);
      v26 = v18;
    }

    else
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Item);
      outlined init with take of ToolbarStorage.NavigationProperties(v18, v12, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of _ViewList_View((v12 + 184), v50);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v28 = v46;
      v51 = v46;
      outlined init with copy of BarItemView(v50, v49);
      v29 = *(v12 + 35);
      v43 = type metadata accessor for UIKitBarItemHost;
      type metadata accessor for UIKitBarItemHost<BarItemView>(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, type metadata accessor for UIKitBarItemHost);
      v44 = v30;
      v31 = objc_allocWithZone(v30);
      v32 = MEMORY[0x1E69E7D40];
      v33 = &v31[*((*MEMORY[0x1E69E7D40] & *v31) + 0x710)];
      *v33 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
      v33[1] = 0;
      v34 = &v31[*((*v32 & *v31) + 0x720)];
      *v34 = 0;
      *(v34 + 1) = 0;
      v34[16] = 1;
      *&v31[*((*v32 & *v31) + 0x718)] = v29;
      outlined init with copy of BarItemView(v49, v48);
      v35 = v29;
      v36 = specialized _UIHostingView.init(rootView:)(v48);
      v37 = specialized _UIHostingView.base.getter();
      UIHostingViewBase.safeAreaRegions.setter();

      outlined destroy of BarItemView(v49);
      UIHostingViewBase.viewGraph.getter();

      swift_weakLoadStrong();
      ViewGraph.preferenceBridge.setter();

      outlined init with copy of ToolbarStorage.Entry.Kind(v12, v9, type metadata accessor for ToolbarStorage.Item);
      v38 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
      v39 = v36;
      v40 = v45;
      v25 = specialized UIKitBarButtonItem.init(item:context:host:)(v9, v40, v28, v39);

      lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, v43, protocol conformance descriptor for _UIHostingView<A>);
      v41 = ViewRendererHost.idealSize()();
      [v39 setBounds_];
      UIKitBarButtonItem.initializePlatformItem(_:)(0);

      outlined destroy of BarItemView(v50);
      v26 = v12;
    }

    result = outlined destroy of ToolbarStorage.NavigationProperties(v26, type metadata accessor for ToolbarStorage.Item);
  }

  *v47 = v25;
  return result;
}

id thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (@autoreleased UIMenu?)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = (*(a2 + 16))(a2, isa);

  return v4;
}

void closure #1 in closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = ~a3;
  v7 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v8);
    LOBYTE(v23._rawValue) = a3 & 1;
    type metadata accessor for [UIMenuElement](0);
    static Update.ensure<A>(_:)();
    v11 = v25;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v14 = MEMORY[0x1E69E7CC8];
    v10[8] = 0;
    *(v10 + 2) = v14;
    *(v10 + 3) = v13;
    *(v10 + 4) = v12;
    *(v10 + 5) = v14;
    v10[48] = 0;
    type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
    v15 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
    v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD63400;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v15, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of ToolbarStorage.Entry.Kind(v18, v17 + v16, type metadata accessor for MenuVisitor.MenuStackGroup);
    *(v10 + 7) = v17;
    v19 = *(v7 + 32);
    v20 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
    (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
    *v10 = 0;
    MenuVisitor.visit(_:uniqueNames:)(a4, &v25);

    v11 = *(v10 + 4);

    outlined destroy of ToolbarStorage.NavigationProperties(v10, type metadata accessor for MenuVisitor);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, v21, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v11, v23);
}

uint64_t closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    goto LABEL_4;
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    a1 = *WeakValue;
LABEL_4:

    goto LABEL_5;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v22 = v9;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v9);
  v12 = MEMORY[0x1E69E7CC8];
  v8[8] = 0;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  *(v8 + 4) = v9;
  *(v8 + 5) = v12;
  v8[48] = 0;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v13 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ToolbarStorage.Entry.Kind(v16, v15 + v14, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v8 + 7) = v15;
  v17 = *(v6 + 32);
  v18 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  *v8 = 0;
  MenuVisitor.visit(_:uniqueNames:)(a1, &v22);

  v19 = *(v8 + 4);

  result = outlined destroy of ToolbarStorage.NavigationProperties(v8, type metadata accessor for MenuVisitor);
  *a3 = v19;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

double closure #1 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  outlined init with copy of PushTarget?(a1 + 8, v17, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
  if (v18)
  {
    v7 = v19;
    *(a4 + 32) = v18;
    *(a4 + 48) = v7;
    v8 = v21;
    *(a4 + 64) = v20;
    *(a4 + 80) = v8;
    result = *v17;
    v10 = v17[1];
    *a4 = v17[0];
    *(a4 + 16) = v10;
  }

  else
  {
    outlined destroy of PushTarget?(v17, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
    if (a3)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    if (a3)
    {
      v12 = a3;
    }

    *&v17[0] = v11;
    *(&v17[0] + 1) = v12;
    lazy protocol witness table accessor for type String and conformance String();

    v13 = Text.init<A>(_:)();
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *a4 = v13;
    *(a4 + 8) = v15;
    *(a4 + 16) = v14 & 1;
    *(a4 + 24) = v16;
    *(a4 + 32) = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    *(a4 + 40) = 0;
    *(a4 + 48) = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    *(a4 + 56) = 0;
  }

  return result;
}

uint64_t closure #2 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD69590;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  return v3;
}

Class thunk for @escaping @callee_guaranteed (@guaranteed UIDragSession) -> (@owned [UIDragItem])(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

id closure #3 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityViewController, 0x1E69CD9F8);
  v11[0] = a2;
  v11[1] = a3;
  outlined init with copy of AnyShareConfiguration(a1, v10);

  result = UIActivityViewController.init(configuration:env:)(a1, v11);
  if (!result)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithActivityItems:isa applicationActivities:0];

    return v9;
  }

  return result;
}

void UIKitToolbarStrategy.createToolbarIfNeeded()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_12;
  }

  outlined init with copy of PushTarget?((v0 + 1), v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v9)
  {
    outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  outlined init with take of Toolbar.UpdateContext(v8, v10);
  outlined init with copy of HostingControllerOverrides(v10, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  outlined destroy of HostingControllerOverrides(v8);
  if (Strong)
  {
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
    }

    else
    {
      v5 = &v3[direct field offset for ToolbarBridge.platformVended];
      swift_beginAccess();
      if (!*(v5 + 3))
      {
        v6 = [objc_allocWithZone(type metadata accessor for UIKitToolbar()) initWithFrame_];
        outlined destroy of Toolbar.UpdateContext(v10);
        v7 = *(v5 + 3);
        *(v5 + 3) = v6;

        return;
      }
    }
  }

  outlined destroy of Toolbar.UpdateContext(v10);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.InputAccessoryKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of PlatformItemList.Item?(&static EnvironmentValues.InputAccessoryKey.defaultValue, v1, &lazy cache variable for type metadata for WeakBox<InputAccessoryGenerator>, type metadata accessor for InputAccessoryGenerator, MEMORY[0x1E6981A78]);
}

uint64_t specialized closure #1 in Collection<>.menuItems.getter(unint64_t a1)
{
  v32 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v38 = type metadata accessor for PlatformItemList.Item(0);
  v34 = *(v38 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v10 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v11 = (v34 + 48);
    while (1)
    {
      if (v36)
      {
        v12 = MEMORY[0x18D00E9C0](v10, a1, v6);
      }

      else
      {
        if (v10 >= *(v35 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = a1;
      v16 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
      swift_beginAccess();
      outlined init with copy of PlatformItemList.Item?(v13 + v16, v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);

      if ((*v11)(v5, 1, v38) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties?(v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v5, v37, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
        }

        v9[2] = v18 + 1;
        outlined init with take of ToolbarStorage.NavigationProperties(v37, v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, type metadata accessor for PlatformItemList.Item);
      }

      a1 = v15;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_18:
  v19 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v21 = MEMORY[0x1E69E7CC8];
  v22 = v33;
  v33[8] = 0;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v23 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v23, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ToolbarStorage.Entry.Kind(v26, v25 + v24, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v22 + 56) = v25;
  v27 = *(v32 + 32);
  v28 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  *v22 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v9, &v39);

  v29 = *(v22 + 32);

  outlined destroy of ToolbarStorage.NavigationProperties(v22, type metadata accessor for MenuVisitor);
  return v29;
}

uint64_t assignWithCopy for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v7)
    {
      v8 = *(a2 + 16);
      if (*(a1 + 16) == 2)
      {
        if (v8 == 2)
        {
          v9 = *(a2 + 8);
          *(a1 + 17) = *(a2 + 17);
          *(a1 + 8) = v9;
LABEL_18:
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          *(a1 + 56) = *(a2 + 56);
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          *(a1 + 96) = *(a2 + 96);

          return a1;
        }

        swift_unknownObjectWeakCopyInit();
      }

      else
      {
        if (v8 == 2)
        {
          outlined destroy of PushTarget(a1 + 8);
          v15 = *(a2 + 17);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 17) = v15;
          goto LABEL_18;
        }

        swift_unknownObjectWeakCopyAssign();
      }

      *(a1 + 16) = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 24) = v21;
      goto LABEL_18;
    }

    outlined destroy of Toolbar.UpdateContext(a1 + 8);
    v11 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v11;
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    v14 = *(a2 + 88);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    *(a1 + 56) = v12;
  }

  else if (v7)
  {
    if (*(a2 + 16) == 2)
    {
      v10 = *(a2 + 8);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 8) = v10;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 16) = *(a2 + 16);
      v20 = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 24) = v20;
    }

    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 56) = *(a2 + 56);
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 89) = *(a2 + 89);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v16 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v16;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v19;
    *(a1 + 56) = v18;
    *(a1 + 40) = v17;
  }

  return a1;
}

uint64_t assignWithTake for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v5)
    {
      v6 = *(a2 + 16);
      if (*(a1 + 16) == 2)
      {
        if (v6 != 2)
        {
          swift_unknownObjectWeakTakeInit();
LABEL_17:
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 != 2)
        {
          swift_unknownObjectWeakTakeAssign();
          goto LABEL_17;
        }

        outlined destroy of PushTarget(a1 + 8);
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 17) = *(a2 + 17);
LABEL_18:
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 56) = *(a2 + 56);
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of Toolbar.UpdateContext(a1 + 8);
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_10:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (*(a2 + 16) == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 17) = *(a2 + 17);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 56) = *(a2 + 56);
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitToolbarStrategy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for UIKitToolbarStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void specialized _NativeSet.update(with:isUnique:)(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)(v37);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v36 = a3;
    v12 = v3;
    v13 = ~v10;
    v14 = 1;
    while (1)
    {
      outlined init with copy of ToolbarItemPlacement.Role(*(v8 + 48) + 48 * v11, v37);
      v15 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v37, a1);
      outlined destroy of ToolbarItemPlacement.Role(v37);
      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v13;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
    v16 = v15 ^ 1;
    v4 = v12;
    a3 = v36;
  }

  else
  {
    v16 = 1;
    v14 = 1;
  }

  v17 = *(v8 + 16);
  v18 = v17 + v14;
  if (__OFADD__(v17, v14))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = *(v8 + 24);
  if (v19 < v18 || (a2 & 1) == 0)
  {
    if (a2)
    {
      specialized _NativeSet.resize(capacity:)(v18);
    }

    else
    {
      if (v19 >= v18)
      {
        specialized _NativeSet.copy()();
        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v18);
    }

    v21 = *v4;
    Hasher.init(_seed:)();
    ToolbarItemPlacement.Role.hash(into:)(v37);
    v22 = Hasher._finalize()();
    v23 = -1 << *(v21 + 32);
    v11 = v22 & ~v23;
    if ((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v24 = ~v23;
      while (1)
      {
        v20 = 48 * v11;
        outlined init with copy of ToolbarItemPlacement.Role(*(v21 + 48) + 48 * v11, v37);
        v25 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v37, a1);
        outlined destroy of ToolbarItemPlacement.Role(v37);
        if (v25)
        {
          break;
        }

        v11 = (v11 + 1) & v24;
        if (((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      if (v16)
      {
LABEL_25:
        v26 = *v4;
        *(*v4 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        v27 = (*(v26 + 48) + 48 * v11);
        v28 = a1[1];
        *v27 = *a1;
        v27[1] = v28;
        *(v27 + 25) = *(a1 + 25);
        v29 = *(v26 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (!v30)
        {
          *(v26 + 16) = v31;
          *a3 = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0;
          *(a3 + 40) = -1;
          return;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  if (v16)
  {
    goto LABEL_25;
  }

LABEL_13:
  v20 = 48 * v11;
LABEL_28:
  v32 = (*(*v4 + 48) + v20);
  v33 = v32[1];
  *a3 = *v32;
  *(a3 + 16) = v33;
  *(a3 + 25) = *(v32 + 25);
  v34 = *(a1 + 25);
  v35 = a1[1];
  *v32 = *a1;
  v32[1] = v35;
  *(v32 + 25) = v34;
}

uint64_t specialized ToolbarBridge.canUpdateTabBar<A>(_:hostingController:)(void *a1, void *a2)
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() _isFromSwiftUI])
  {
    v4 = [a2 _appearState];
    v5 = v4 == 1;
    v6 = [a1 selectedViewController];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
      v8 = v7;
      v9 = a2;
      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      v5 = v7 | (v4 == 1);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t specialized ToolbarPlatformDelegate.navigationItem(_:didEndRenamingWith:)(uint64_t a1, void *a2)
{
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for PlatformItemList.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + OBJC_IVAR____TtC7SwiftUI23ToolbarPlatformDelegate_provider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
    specialized ToolbarBridge.navigationProperties.getter(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return outlined destroy of ToolbarStorage.NavigationProperties?(v13, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
    }

    else
    {
      outlined init with take of ToolbarStorage.NavigationProperties(v13, v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      outlined init with copy of PlatformItemList.Item?(&v17[*(v14 + 32)], v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.NavigationProperties);

        return outlined destroy of ToolbarStorage.NavigationProperties?(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v6, v10, type metadata accessor for PlatformItemList.Item);
        v23 = *(v10 + 22);
        v29 = *(v10 + 21);
        v30 = v23;
        v24 = *(v10 + 24);
        v31 = *(v10 + 23);
        v32 = v24;
        v33 = *(v10 + 50);
        v25 = *(v10 + 20);
        v27 = *(v10 + 19);
        v28 = v25;
        if (v29 >> 2 == 0xFFFFFFFF || v29 >> 62 != 1)
        {
        }

        else
        {
          outlined copy of PlatformItemList.Item.SystemItem(v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SBYTE8(v30), v31, *(&v31 + 1), v32, SBYTE8(v32), v33);
          PlatformTextFieldCoordinator.updateText(_:)(v26);

          outlined destroy of PushTarget?(&v27, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        }

        outlined destroy of ToolbarStorage.NavigationProperties(v10, type metadata accessor for PlatformItemList.Item);
        return outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate()
{
  result = lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate;
  if (!lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate)
  {
    v3 = type metadata accessor for ToolbarPlatformDelegate();
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarPlatformDelegate, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate);
  }

  return result;
}

double outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties?(void *a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(a1, a2 & 1);
  }

  return result;
}

double outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(void *a1, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of ResolvableCLKTextProvider.FontStorage(a1, a2 & 1);
  }

  return result;
}

double outlined copy of ToolbarStorage.NavigationProperties.Actions?(uint64_t result, char a2)
{
  if (a2 != 254)
  {
    return outlined copy of PlatformItemCollection?(result, a2);
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIKitBarItemHost<BarItemView>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in UINavigationItem.adoptNavigationItem(_:updates:forceUpdate:isFromSwiftUI:)()
{
  if (*(v0 + 41))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 40);
  if (*(v0 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  closure #1 in UINavigationItem.adoptNavigationItem(_:updates:forceUpdate:isFromSwiftUI:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v2 | v3 | (*(v0 + 43) << 24), *(v0 + 44), *(v0 + 45));
}

void partial apply for closure #2 in ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 32);
  if (*(v0 + 34))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  ToolbarBridge.adoptSystemUpdates<A>(_:hostingController:context:)(*(v0 + 24), v2 | v3 | (*(v0 + 35) << 24), *(v0 + 40));
}

uint64_t partial apply for specialized closure #1 in Collection<>.menuItems.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in Collection<>.menuItems.getter(**(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void partial apply for closure #1 in ToolbarBridge.safeAreaDidChange<A>(hostingController:)()
{
  v1 = *(v0 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

unint64_t lazy protocol witness table accessor for type SubmitTriggers and conformance SubmitTriggers()
{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubmitTriggers, &type metadata for SubmitTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable("5", &type metadata for SubmitTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubmitTriggers, &type metadata for SubmitTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubmitTriggers, &type metadata for SubmitTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

uint64_t ScrollableHStack.init(_:width:padding:alignment:spacing:content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11)
{
  *a8 = *a1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3 & 1;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6 & 1;
  v16[0] = a10;
  v16[1] = MEMORY[0x1E697E108];
  v16[2] = a11;
  v16[3] = MEMORY[0x1E697E100];
  v13 = type metadata accessor for ScrollableHStackBase(0, v16);
  result = a7();
  v15 = (a8 + *(v13 + 72));
  *v15 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v15[1] = 0;
  return result;
}

uint64_t ScrollableHStack.body.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v8[0] = *(a1 + 16);
  v8[1] = MEMORY[0x1E697E108];
  v8[2] = v1;
  v8[3] = MEMORY[0x1E697E100];
  v2 = type metadata accessor for ScrollableHStackBase(0, v8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  swift_getWitnessTable(protocol conformance descriptor for ScrollableHStackBase<A, B>, v2, v4);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t type metadata completion function for ScrollableHStack(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = MEMORY[0x1E697E108];
  v4[2] = v1;
  v4[3] = MEMORY[0x1E697E100];
  result = type metadata accessor for ScrollableHStackBase(319, v4);
  if (v3 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollableHStack(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

uint64_t storeEnumTagSinglePayload for ScrollableHStack(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((((((result & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((v9 + result) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t type metadata completion function for ScrollableHStackBase(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollableHStack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 49) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v10 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v11 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    v14 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *v15 = v17;
    v18 = (v15 + v5 + 9) & ~v5;
    v19 = (v16 + v5 + 9) & ~v5;
    (*(v4 + 16))(v18, v19);
    v20 = ((v6 + v19) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    v22 = ((v6 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v20;
    v22[1] = v21;
  }

  return v3;
}

double destroy for ScrollableHStack(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 9) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

unint64_t initializeWithCopy for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 16;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 16))(v15, v16);
  v17 = *(v13 + 48) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

unint64_t assignWithCopy for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 24))(v15, v16);
  v17 = *(v13 + 40) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

unint64_t initializeWithTake for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 32))(v15, v16);
  *((*(v13 + 32) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 32) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t assignWithTake for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 40))(v15, v16);
  *((*(v13 + 24) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 24) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t ScrollableHStackBase.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = a1[4];
  v72 = a1[2];
  v73 = v5;
  v6 = type metadata accessor for LazyFixedSizeHStack(255, v72, v5, a2);
  v8 = type metadata accessor for ScrollView(0, v6, &protocol witness table for LazyFixedSizeHStack<A>, v7);
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v64 - v9;
  v81 = v10;
  v11 = type metadata accessor for ModifiedContent();
  v71 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - v15;
  v17 = type metadata accessor for PagingScrollView(0, v6, &protocol witness table for LazyFixedSizeHStack<A>, v16);
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v78 = v20;
  v21 = type metadata accessor for ModifiedContent();
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, v24, v25, v26);
  v77 = v21;
  v27 = type metadata accessor for ModifiedContent();
  v69 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v64 - v31;
  v74 = v11;
  v76 = type metadata accessor for _ConditionalContent();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v80 = &v64 - v34;
  if (*v3 == 3)
  {
    MEMORY[0x1EEE9AC00](v33);
    v35 = a1[3];
    *(&v64 - 6) = v72;
    *(&v64 - 5) = v35;
    v36 = a1[5];
    *(&v64 - 4) = v73;
    *(&v64 - 3) = v36;
    *(&v64 - 2) = v3;
    v37 = v67;
    ScrollView.init(_:content:)(1, partial apply for closure #2 in ScrollableHStackBase.body.getter, (&v64 - 8), v6, &protocol witness table for LazyFixedSizeHStack<A>, v67);
    static Edge.Set.horizontal.getter();
    ScrollableHStackBase.actualPadding.getter(a1);
    v38 = v81;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollView<A>, v81);
    View.scrollContentPadding(_:_:)();
    (*(v68 + 8))(v37, v38);
    v92[0] = WitnessTable;
    v92[1] = &protocol witness table for ContentMarginModifier;
    v40 = MEMORY[0x1E697E858];
    v41 = v74;
    v42 = swift_getWitnessTable(MEMORY[0x1E697E858], v74, v92);
    v43 = v27;
    v44 = v70;
    static ViewBuilder.buildExpression<A>(_:)();
    v45 = *(v71 + 8);
    v45(v13, v41);
    static ViewBuilder.buildExpression<A>(_:)();
    v46 = v78;
    v91[0] = swift_getWitnessTable(protocol conformance descriptor for PagingScrollView<A>, v78);
    v91[1] = &protocol witness table for ContentMarginModifier;
    v47 = v77;
    v90[0] = swift_getWitnessTable(v40, v77, v91);
    v90[1] = &protocol witness table for TransformScrollStorageModifier<A>;
    v48 = swift_getWitnessTable(v40, v43, v90);
    static ViewBuilder.buildEither<A, B>(second:)(v13, v43, v41, v48, v42);
    v45(v13, v41);
    v49 = v44;
    v27 = v43;
    v45(v49, v41);
  }

  else
  {
    v85 = *v3;
    MEMORY[0x1EEE9AC00](v33);
    v50 = a1[3];
    *(&v64 - 6) = v72;
    *(&v64 - 5) = v50;
    v51 = a1[5];
    *(&v64 - 4) = v73;
    *(&v64 - 3) = v51;
    *(&v64 - 2) = v3;
    PagingScrollView.init(behavior:axis:content:)(&v85, 0, partial apply for closure #1 in ScrollableHStackBase.body.getter, (&v64 - 8), v6, &protocol witness table for LazyFixedSizeHStack<A>, v19);
    static Edge.Set.horizontal.getter();
    ScrollableHStackBase.actualPadding.getter(a1);
    v46 = v78;
    v52 = swift_getWitnessTable(protocol conformance descriptor for PagingScrollView<A>, v78);
    View.scrollContentPadding(_:_:)();
    (*(v65 + 8))(v19, v46);
    v85 = 3;
    v84[0] = v52;
    v84[1] = &protocol witness table for ContentMarginModifier;
    v53 = MEMORY[0x1E697E858];
    v47 = v77;
    v54 = swift_getWitnessTable(MEMORY[0x1E697E858], v77, v84);
    View.scrollIndicators(_:axes:)(&v85, 3, v47, v54);
    (*(v66 + 8))(v23, v47);
    v83[0] = v54;
    v83[1] = &protocol witness table for TransformScrollStorageModifier<A>;
    v55 = swift_getWitnessTable(v53, v27, v83);
    static ViewBuilder.buildExpression<A>(_:)();
    v56 = *(v69 + 8);
    v56(v29, v27);
    static ViewBuilder.buildExpression<A>(_:)();
    v82[0] = swift_getWitnessTable(protocol conformance descriptor for ScrollView<A>, v81);
    v82[1] = &protocol witness table for ContentMarginModifier;
    v41 = v74;
    v57 = swift_getWitnessTable(v53, v74, v82);
    static ViewBuilder.buildEither<A, B>(first:)(v29, v27, v41, v55, v57);
    v56(v29, v27);
    v56(v32, v27);
  }

  v89[0] = swift_getWitnessTable(protocol conformance descriptor for PagingScrollView<A>, v46);
  v89[1] = &protocol witness table for ContentMarginModifier;
  v58 = MEMORY[0x1E697E858];
  v88[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v47, v89);
  v88[1] = &protocol witness table for TransformScrollStorageModifier<A>;
  v59 = swift_getWitnessTable(v58, v27, v88);
  v87[0] = swift_getWitnessTable(protocol conformance descriptor for ScrollView<A>, v81);
  v87[1] = &protocol witness table for ContentMarginModifier;
  v60 = swift_getWitnessTable(v58, v41, v87);
  v86[0] = v59;
  v86[1] = v60;
  v61 = v76;
  swift_getWitnessTable(MEMORY[0x1E697F968], v76, v86);
  v62 = v80;
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v75 + 8))(v62, v61);
}

uint64_t ScrollableHStackBase.scrollContent.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 32);
  if (*(v1 + 48))
  {
    a1 = static Spacing.defaultValue.getter();
  }

  MEMORY[0x1EEE9AC00](a1);
  v4 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = v4;
  v10 = v1;
  return LazyFixedSizeHStack.init(width:alignment:spacing:content:)(v3, v5, 0, partial apply for closure #1 in ScrollableHStackBase.scrollContent.getter, &v7, v8, v4);
}

double ScrollableHStackBase.actualPadding.getter(uint64_t a1)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  EnvironmentValues.init()();
  EnvironmentValues.defaultPadding.getter();
  v3 = v2;

  return v3;
}

uint64_t closure #1 in ScrollableHStackBase.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LazyFixedSizeHStack(0, a2, a4, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v16 = type metadata accessor for ScrollableHStackBase(0, v19);
  ScrollableHStackBase.scrollContent.getter(v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v9);
}

uint64_t closure #1 in ScrollableHStackBase.scrollContent.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for ScrollableHStackBase(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

void type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>)
  {
    v4 = type metadata accessor for TransformScrollStorageModifier(0, &type metadata for TransformScrollIndicators, &protocol witness table for TransformScrollIndicators, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>);
    }
  }
}

Swift::Int ToolbarLegibility.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ToolbarLegibility and conformance ToolbarLegibility()
{
  result = lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility;
  if (!lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarLegibility, &type metadata for ToolbarLegibility, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility);
  }

  return result;
}

uint64_t assignWithCopy for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarAppearanceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarAppearanceModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role;
  if (!lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarLegibility.Role, &type metadata for ToolbarLegibility.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role);
  }

  return result;
}

void (*ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if ((*(a3 + 24))(a2, a3))
  {
    goto LABEL_4;
  }

  v6 = ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a1);
  result = (*(a3 + 16))(&v120, a2, a3);
  if (*(&v121 + 1) != 7)
  {
    v8 = specialized Sequence<>.contains(_:)(&v120, v6);

    outlined destroy of ToolbarPlacement.Role(&v120);
    v9 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    if ((v8 & 1) == 0)
    {
      return v9;
    }

LABEL_4:
    AGGraphClearUpdate();
    closure #2 in ToolbarAppearanceModifier.PreferenceValue.value.getter(&v120);
    AGGraphSetUpdate();
    v72 = v120;
    Value = AGGraphGetValue();
    v120 = *Value;
    v12 = *(Value + 32);
    v11 = *(Value + 48);
    v13 = *(Value + 16);
    *&v122[25] = *(Value + 57);
    *v122 = v12;
    *&v122[16] = v11;
    v121 = v13;
    v14 = *Value;
    v71 = *Value;
    v116 = *(Value + 1);
    v15 = *(Value + 17);
    v16 = *(Value + 33);
    v17 = *(Value + 49);
    *&v118[32] = *(Value + 65);
    *v118 = v16;
    *&v118[16] = v17;
    v117 = v15;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v80 = v14;
    v82 = v117;
    v83 = *v118;
    v84 = *&v118[16];
    v85 = *&v118[32];
    v81 = v116;
    outlined destroy of ToolbarAppearanceModifier(&v80);
    v18 = AGGraphGetValue();
    v120 = *v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    *&v122[25] = *(v18 + 57);
    *v122 = v20;
    *&v122[16] = v21;
    v121 = v19;
    v111 = *v18;
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    v24 = *(v18 + 40);
    v25 = *(v18 + 56);
    v118[16] = *(v18 + 72);
    v117 = v24;
    *v118 = v25;
    v116 = v23;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v86 = v111;
    v70 = v22;
    v87 = v22;
    v88 = v116;
    v89 = v117;
    v90 = *v118;
    v91 = v118[16];

    outlined destroy of ToolbarAppearanceModifier(&v86);
    v26 = AGGraphGetValue();
    v120 = *v26;
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v29 = *(v26 + 48);
    *&v122[25] = *(v26 + 57);
    *v122 = v28;
    *&v122[16] = v29;
    v121 = v27;
    v111 = *v26;
    *&v112 = *(v26 + 16);
    LOBYTE(v22) = *(v26 + 24);
    v69 = v22;
    v30 = *(v26 + 25);
    v31 = *(v26 + 57);
    v117 = *(v26 + 41);
    *v118 = v31;
    v116 = v30;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v92 = v111;
    v93 = v112;
    v94 = v22;
    v95 = v116;
    v96 = v117;
    v97 = *v118;
    outlined destroy of ToolbarAppearanceModifier(&v92);
    v32 = AGGraphGetValue();
    v120 = *v32;
    v34 = *(v32 + 32);
    v33 = *(v32 + 48);
    v35 = *(v32 + 16);
    *&v122[25] = *(v32 + 57);
    *v122 = v34;
    *&v122[16] = v33;
    v121 = v35;
    v116 = *v32;
    v117 = *(v32 + 16);
    v36 = *(v32 + 32);
    v68 = v36;
    LOBYTE(v22) = *(v32 + 40);
    v67 = v22;
    v37 = *(v32 + 57);
    v111 = *(v32 + 41);
    v112 = v37;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v98[0] = v116;
    v98[1] = v117;
    v99 = v36;
    v100 = v22;
    v101 = v111;
    v102 = v112;
    outlined destroy of ToolbarAppearanceModifier(v98);
    v38 = AGGraphGetValue();
    v40 = *(v38 + 32);
    v39 = *(v38 + 48);
    v41 = *(v38 + 57);
    v121 = *(v38 + 16);
    *v122 = v40;
    v42 = *v38;
    *&v122[25] = v41;
    v120 = v42;
    *&v122[16] = v39;
    v116 = *v38;
    v117 = *(v38 + 16);
    *v118 = *(v38 + 32);
    v43 = *(v38 + 48);
    v66 = v43;
    LOBYTE(v22) = *(v38 + 56);
    v65 = v22;
    v111 = *(v38 + 57);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v103[0] = v116;
    v103[1] = v117;
    v103[2] = *v118;
    v104 = v43;
    v105 = v22;
    v106 = v111;
    outlined destroy of ToolbarAppearanceModifier(v103);
    v44 = AGGraphGetValue();
    v120 = *v44;
    v46 = *(v44 + 32);
    v45 = *(v44 + 48);
    v47 = *(v44 + 16);
    *&v122[25] = *(v44 + 57);
    *v122 = v46;
    *&v122[16] = v45;
    v121 = v47;
    v116 = *v44;
    v117 = *(v44 + 16);
    *v118 = *(v44 + 32);
    *&v118[9] = *(v44 + 41);
    LOBYTE(v43) = *(v44 + 57);
    v48 = *(v44 + 58);
    *(&v111 + 7) = *(v44 + 65);
    *&v111 = v48;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v107[0] = v116;
    v107[1] = v117;
    *v108 = *v118;
    *&v108[9] = *&v118[9];
    v109 = v43;
    v110[0] = v111;
    *(v110 + 7) = *(&v111 + 7);
    outlined destroy of ToolbarAppearanceModifier(v107);
    v49 = AGGraphGetValue();
    v120 = *v49;
    v51 = *(v49 + 32);
    v50 = *(v49 + 48);
    v52 = *(v49 + 16);
    *&v122[25] = *(v49 + 57);
    *v122 = v51;
    *&v122[16] = v50;
    v121 = v52;
    v116 = *v49;
    v117 = *(v49 + 16);
    *v118 = *(v49 + 32);
    *&v118[10] = *(v49 + 42);
    LOBYTE(v22) = *(v49 + 58);
    *(&v74 + 6) = *(v49 + 65);
    *&v74 = *(v49 + 59);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v111 = v116;
    v112 = v117;
    *v113 = *v118;
    *&v113[10] = *&v118[10];
    v114 = v22;
    v115[0] = v74;
    *(v115 + 6) = *(&v74 + 6);
    outlined destroy of ToolbarAppearanceModifier(&v111);
    v53 = AGGraphGetValue();
    v120 = *v53;
    v54 = *(v53 + 16);
    v55 = *(v53 + 32);
    v56 = *(v53 + 48);
    *&v122[25] = *(v53 + 57);
    *v122 = v55;
    *&v122[16] = v56;
    v121 = v54;
    v58 = *v53;
    v57 = *(v53 + 8);
    *&v79[9] = *(v53 + 57);
    v77 = *(v53 + 32);
    *v79 = *(v53 + 48);
    v75 = *(v53 + 16);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    *&v116 = v58;
    *(&v116 + 1) = v57;
    v117 = v75;
    *v118 = v77;
    *&v118[16] = *v79;
    *&v118[25] = *&v79[9];

    outlined destroy of ToolbarAppearanceModifier(&v116);
    v59 = AGGraphGetValue();
    v120 = *v59;
    v61 = *(v59 + 32);
    v60 = *(v59 + 48);
    v62 = *(v59 + 16);
    *&v122[25] = *(v59 + 57);
    *v122 = v61;
    *&v122[16] = v60;
    v121 = v62;
    v76 = *v59;
    v78 = *(v59 + 16);
    *v79 = *(v59 + 32);
    *&v79[11] = *(v59 + 43);
    v63 = *(v59 + 59);
    *(&v73 + 5) = *(v59 + 65);
    *&v73 = *(v59 + 60);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v120 = v76;
    v121 = v78;
    *v122 = *v79;
    *&v122[11] = *&v79[11];
    v122[27] = v63;
    *&v122[28] = v73;
    *&v122[33] = *(&v73 + 5);
    outlined destroy of ToolbarAppearanceModifier(&v120);
    v64 = swift_allocObject();
    *(v64 + 16) = a2;
    *(v64 + 24) = a3;
    *(v64 + 32) = a1;
    *(v64 + 40) = v71;
    *(v64 + 48) = v70;
    *(v64 + 56) = v69;
    *(v64 + 64) = v68;
    *(v64 + 72) = v67 & 1;
    *(v64 + 80) = v66;
    *(v64 + 88) = v65 & 1;
    *(v64 + 89) = v43;
    *(v64 + 90) = v22;
    *(v64 + 96) = v57;
    *(v64 + 104) = v72;
    *(v64 + 112) = v63;
    return partial apply for closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  __break(1u);
  return result;
}

char *ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(uint64_t a1)
{
  Value = AGGraphGetValue();
  v38 = *Value;
  v3 = *(Value + 32);
  v2 = *(Value + 48);
  v4 = *(Value + 16);
  *(v41 + 9) = *(Value + 57);
  v40 = v3;
  v41[0] = v2;
  v39 = v4;
  v26 = *Value;
  v27 = *(Value + 16);
  v28 = *(Value + 32);
  v29[0] = *(Value + 48);
  v5 = *(Value + 64);
  v6 = *(Value + 72);
  outlined init with copy of ToolbarAppearanceModifier(&v38, &v35);
  v32[0] = v26;
  v32[1] = v27;
  v32[2] = v28;
  v32[3] = v29[0];
  v33 = v5;
  v34 = v6;

  outlined destroy of ToolbarAppearanceModifier(v32);
  v7 = *(v5 + 2);
  if (v7)
  {
    goto LABEL_10;
  }

  v30 = 0uLL;
  *v31 = 0;
  *&v31[8] = xmmword_18CD9F780;
  v8 = AGGraphGetValue();
  v38 = *v8;
  v10 = v8[2];
  v9 = v8[3];
  v11 = v8[1];
  *(v41 + 9) = *(v8 + 57);
  v40 = v10;
  v41[0] = v9;
  v39 = v11;
  v27 = v8[1];
  v28 = v8[2];
  v29[0] = v8[3];
  *(v29 + 9) = *(v8 + 57);
  v26 = *v8;
  outlined init with copy of ToolbarAppearanceModifier(&v38, &v35);
  v40 = v28;
  v41[0] = v29[0];
  *(v41 + 9) = *(v29 + 9);
  v38 = v26;
  v39 = v27;
  outlined destroy of ToolbarAppearanceModifier(&v38);
  outlined init with copy of ToolbarPlacement.Storage(&v30, &v35);
  if (*(&v36 + 1) == 7)
  {
    outlined destroy of ToolbarPlacement(&v30);
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    outlined destroy of ToolbarPlacement.Storage(&v35);
    v24 = *v31;
    v25 = v30;
    v12 = *&v31[16];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[40 * v14];
  *(v15 + 2) = v25;
  *(v15 + 3) = v24;
  *(v15 + 8) = v12;
  v7 = v14 + 1;
  if (v14 == -1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
LABEL_10:
    v16 = (v5 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarPlacement(v16, &v38);
      v26 = v38;
      v27 = v39;
      *&v28 = v40;
      if (*(&v39 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement.Storage(&v26);
      }

      else
      {
        v35 = v38;
        v36 = v39;
        v37 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v20 = &v17[40 * v19];
        v21 = v35;
        v22 = v36;
        *(v20 + 8) = v37;
        *(v20 + 2) = v21;
        *(v20 + 3) = v22;
      }

      v16 += 40;
      --v7;
    }

    while (v7);
  }

  return v17;
}

void closure #2 in ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t *a2@<X8>)
{
  AGGraphGetValue();

  v3 = Transaction.animation.getter();

  *a2 = v3;
}

uint64_t closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(void *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  (*(a16 + 16))(&v97, a15, a16);
  outlined init with copy of ToolbarPlacement.Role?(&v97, &v92);
  if (*(&v93 + 1) == 7)
  {
    outlined destroy of ToolbarPlacement.Role?(&v97);
    v18 = ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter(a2);
    v19 = *(v18 + 2);
    if (!v19)
    {
    }
  }

  else
  {
    type metadata accessor for ToolbarPlacement.Role?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    v21 = v92;
    v22 = v93;
    *(v20 + 16) = xmmword_18CD63400;
    *(v20 + 32) = v21;
    *(v20 + 48) = v22;
    *(v20 + 64) = v94;
    outlined destroy of ToolbarPlacement.Role?(&v97);
    v18 = v20;
    v19 = *(v20 + 16);
    if (!v19)
    {
    }
  }

  v23 = 0;
  v24 = (v18 + 32);
  v76 = v19 - 1;
  v78 = a4;
  v77 = v18;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(v24, v109);
    v25 = *a1;
    if (*(*a1 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v109), (v27 & 1) != 0))
    {
      v28 = *(v25 + 56) + 80 * v26;
      v30 = *(v28 + 32);
      v29 = *(v28 + 48);
      v31 = *(v28 + 16);
      *&v100[9] = *(v28 + 57);
      v97 = *v28;
      v98 = v31;
      v99 = v30;
      *v100 = v29;
      v32 = *&v100[16];
      v33 = *(&v97 + 1);
      v91 = v31;
      v85 = v97;
      v34 = BYTE1(v97);
      v35 = *(v28 + 2);
      v108 = *(v28 + 6);
      v107 = v35;
      v36 = BYTE8(v31);
      v37 = *(v28 + 25);
      *(v106 + 3) = *(v28 + 28);
      v106[0] = v37;
      v105 = BYTE8(v30);
      v38 = *(v28 + 41);
      *(v104 + 3) = *(v28 + 44);
      v104[0] = v38;
      v87 = v29;
      v88 = v30;
      v103 = BYTE8(v29);
      v39 = BYTE9(v29);
      v40 = BYTE10(v29);
      v41 = *(v28 + 59);
      v102 = *(v28 + 63);
      v101 = v41;
      v42 = v100[24];
      outlined init with copy of ToolbarAppearanceConfiguration(&v97, &v92);
      v89 = v33;
      v90 = v32;
    }

    else
    {
      v42 = 0;
      v90 = 0;
      v91 = 0;
      v40 = 0;
      v87 = 0;
      v88 = 0;
      v36 = 0;
      v89 = 0;
      v34 = 0;
      v105 = 1;
      v85 = 1;
      v103 = 1;
      v39 = 2;
    }

    if (a3 == 3)
    {
      v43 = v34;
    }

    else
    {
      v43 = a3;
    }

    v84 = v43;
    if (v78)
    {

      v91 = v78;
    }

    if (a5 == 4)
    {
      v44 = v36;
    }

    else
    {
      v44 = a5;
    }

    v83 = v44;
    if ((a7 & 1) == 0)
    {
      v105 = 0;
      v88 = a6;
    }

    if ((a9 & 1) == 0)
    {
      v103 = 0;
      v87 = a8;
    }

    if (a10 == 2)
    {
      v45 = v39;
    }

    else
    {
      v45 = a10;
    }

    v82 = v45;
    if (a11 != 3)
    {
      v40 = a11;
    }

    if (a12)
    {

      v89 = a12;
    }

    if (a13)
    {

      v90 = a13;
    }

    if (a14 != 3)
    {
      v42 = a14;
    }

    outlined init with copy of ToolbarPlacement.Role(v109, v96);
    LOBYTE(v97) = v85;
    BYTE1(v97) = v84;
    *(&v97 + 2) = v107;
    WORD3(v97) = v108;
    *(&v97 + 1) = v89;
    *&v98 = v91;
    BYTE8(v98) = v83;
    *(&v98 + 9) = v106[0];
    HIDWORD(v98) = *(v106 + 3);
    *&v99 = v88;
    v46 = v105;
    BYTE8(v99) = v105;
    HIDWORD(v99) = *(v104 + 3);
    *(&v99 + 9) = v104[0];
    *v100 = v87;
    v47 = v103;
    v100[8] = v103;
    v100[9] = v82;
    v100[10] = v40;
    *&v100[11] = v101;
    v100[15] = v102;
    *&v100[16] = v90;
    v100[24] = v42;
    outlined init with copy of ToolbarAppearanceConfiguration(&v97, &v92);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *a1;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
    v52 = v49[2];
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      break;
    }

    v56 = v51;
    if (v49[3] < v55)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, isUniquelyReferenced_nonNull_native);
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_49;
      }

LABEL_38:
      if (v56)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v65 = v50;
    specialized _NativeDictionary.copy()();
    v50 = v65;
    if (v56)
    {
LABEL_39:
      v58 = (v49[7] + 80 * v50);
      v92 = *v58;
      v59 = v58[1];
      v60 = v58[2];
      v61 = v58[3];
      *&v95[9] = *(v58 + 57);
      v94 = v60;
      *v95 = v61;
      v93 = v59;
      v63 = v99;
      v62 = *v100;
      v64 = v98;
      *(v58 + 57) = *&v100[9];
      v58[2] = v63;
      v58[3] = v62;
      v58[1] = v64;
      *v58 = v97;
      outlined destroy of ToolbarAppearanceConfiguration(&v92);
      outlined destroy of ToolbarPlacement.Role(v96);
      outlined destroy of ToolbarPlacement.Role(v109);
      goto LABEL_43;
    }

LABEL_41:
    v49[(v50 >> 6) + 8] |= 1 << v50;
    v66 = v50;
    outlined init with copy of ToolbarPlacement.Role(v96, v49[6] + 40 * v50);
    v67 = (v49[7] + 80 * v66);
    v68 = *&v100[9];
    v70 = v99;
    v69 = *v100;
    v67[1] = v98;
    v67[2] = v70;
    v67[3] = v69;
    *(v67 + 57) = v68;
    *v67 = v97;
    outlined destroy of ToolbarPlacement.Role(v96);
    outlined destroy of ToolbarPlacement.Role(v109);
    v71 = v49[2];
    v54 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v54)
    {
      goto LABEL_48;
    }

    v49[2] = v72;
LABEL_43:
    *a1 = v49;
    LOBYTE(v92) = v85;
    BYTE1(v92) = v84;
    *(&v92 + 2) = v107;
    WORD3(v92) = v108;
    *(&v92 + 1) = v89;
    *&v93 = v91;
    BYTE8(v93) = v83;
    *(&v93 + 9) = v106[0];
    HIDWORD(v93) = *(v106 + 3);
    *&v94 = v88;
    BYTE8(v94) = v46;
    HIDWORD(v94) = *(v104 + 3);
    *(&v94 + 9) = v104[0];
    *v95 = v87;
    v95[8] = v47;
    v95[9] = v82;
    v95[10] = v40;
    v95[15] = v102;
    *&v95[11] = v101;
    *&v95[16] = v90;
    v95[24] = v42;
    outlined destroy of ToolbarAppearanceConfiguration(&v92);
    if (v76 == v23)
    {
    }

    ++v23;
    v24 += 40;
    if (v23 >= *(v77 + 2))
    {
      __break(1u);
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarAppearanceModifier.PreferenceValue<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ToolbarAppearanceModifier.PreferenceValue.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance TabBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 5;
  *(a1 + 24) = xmmword_18CD79540;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance BottomBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 3;
  *(a1 + 24) = xmmword_18CD7DD20;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance WindowToolbarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_18CD79D60;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance AccessoryBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 7;
  *(a1 + 24) = xmmword_18CD9F780;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance BottomOrnamentAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 6;
  *(a1 + 24) = xmmword_18CD90770;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationBarAppearanceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext()
{
  result = lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext;
  if (!lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToolbarAppearanceModificationContext, &type metadata for ToolbarAppearanceModificationContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext);
  }

  return result;
}

uint64_t AnimatedValueKeyframe.interpolation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 28);
  v7 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, *(a1 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v4 + v6, v7);
}

uint64_t AnimatedValueKeyframe.interpolation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 28);
  v7 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, *(a2 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

__n128 AnimatedValueKeyframe.timingCurve.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 AnimatedValueKeyframe.timingCurve.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v2 + *(a2 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.automatic.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return static AnimatedValueKeyframe.InterpolationParameters.automatic.getter(a1, a3, a4, a5);
}

{
  v7 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a1, a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v12, v9, a1, v13, a5);
}

uint64_t AnimatedValueKeyframe.init(value:interpolation:incomingTimingCurve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 + 32);
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v12 = type metadata accessor for AnimatedValueKeyframe(0, a4, v10, v11);
  v13 = a5 + *(v12 + 32);
  v14 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v14;
  *(v13 + 32) = v9;
  v15 = *(v12 + 28);
  v18 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a4, v16, v17);
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v15, a2, v18);
}

uint64_t AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a3, a3, a4);
  v14 = *(*(v9 - 8) + 32);
  (v14)((v9 - 8), a5, a1, v9);
  v12 = a5 + *(type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a3, v10, v11) + 28);

  return v14(v12, a2, v9);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.kochanekBartels(tension:continuity:bias:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v12 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a1, a2, a3);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v24 - v20);
  *v21 = a5;
  v21[1] = a6;
  v21[2] = a7;
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v18, v21, v12);
  (*(v13 + 32))(v15, v21, v12);
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v18, v15, a1, v22, a4);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.catmullRom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a1, a2, a3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v14 - v10);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v11, v8, a1, v12, a4);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.asymmetric(incomingControlPoint:outgoingControlPoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a3, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(*(a3 - 8) + 16);
  v16(&v19 - v14, a1, a3, v13);
  swift_storeEnumTagMultiPayload();
  (v16)(v11, a2, a3);
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v15, v11, a3, v17, a5);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v49 = a2;
  v4 = *(a3 - 8);
  v44 = a4;
  v45 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v46 = v9;
  v11 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v42 - v23;
  v26 = (&v42 + *(v25 + 48) - v23);
  v47 = v12;
  v27 = *(v12 + 16);
  v27(&v42 - v23, v48, v11, v22);
  (v27)(v26, v49, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_14:
        v31 = 1;
        v21 = v47;
        goto LABEL_19;
      }

LABEL_18:
      v31 = 0;
      v11 = TupleTypeMetadata2;
      goto LABEL_19;
    }

    v16 = v43;
    (v27)(v43, v24, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = v45;
      v32 = v46;
      v34 = v42;
      (*(v45 + 32))(v42, v26, v46);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v33 + 8);
      v35(v34, v32);
      v35(v16, v32);
      v21 = v47;
      goto LABEL_19;
    }

LABEL_17:
    (*(v45 + 8))(v16, v46);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    (v27)(v16, v24, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v45;
      v37 = v8;
      v38 = v8;
      v39 = v46;
      (*(v45 + 32))(v38, v26, v46);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v37, v39);
      v40(v16, v39);
      v21 = v47;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  (v27)(v19, v24, v11);
  v30 = v19[1];
  v29 = v19[2];
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_18;
  }

  if (*v19 == *v26 && v30 == v26[1])
  {
    v31 = v29 == v26[2];
    v21 = v47;
  }

  else
  {
    v31 = 0;
    v21 = v47;
  }

LABEL_19:
  (*(v21 + 8))(v24, v11);
  return v31 & 1;
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(a1, a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a3, v8, v9) + 28);

  return static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(a1 + v10, a2 + v10, a3, a4);
}

uint64_t static AnimatedValueKeyframe<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v10 = type metadata accessor for AnimatedValueKeyframe(0, a3, v8, v9), (static AnimatedValueKeyframe.InterpolationParameters<A>.== infix(_:_:)(a1 + *(v10 + 28), a2 + *(v10 + 28), a3, a4)))
  {
    v11 = static UnitCurve.== infix(_:_:)();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t type metadata completion function for AnimatedValueKeyframe(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7 & 0xF8 | 7;
  if (v6 <= 0x18)
  {
    v9 = 24;
  }

  else
  {
    v9 = *(v5 + 64);
  }

  v10 = v9 + 8;
  if ((v7 & 0x1000F8) != 0 || ((v9 + 8 + ((v9 + 1 + v8) & ~v8) + ((v6 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v8 + 16) & ~v8));

    return v3;
  }

  v39 = 8 * v9;
  v13 = *(v5 + 16);
  v13(a1, a2, v4);
  v40 = v3 + v6 + 7;
  v15 = v40 & 0xFFFFFFFFFFFFFFF8;
  v16 = a2 + v6 + 7;
  v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
  v18 = *((v16 & 0xFFFFFFFFFFFFFFF8) + v9);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_24;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
    {
      v21 = *v17;
    }

    else if (v20 == 3)
    {
      v21 = *v17 | (v17[2] << 16);
    }

    else
    {
      v21 = *v17;
    }

    v22 = (v21 | (v19 << v39)) + 3;
    v18 = v21 + 3;
    if (v9 < 4)
    {
      v18 = v22;
    }
  }

LABEL_24:
  if (v18 == 2)
  {
    v13((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v4);
    *(v15 + v9) = 2;
  }

  else if (v18 == 1)
  {
    v13((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v4);
    *(v15 + v9) = 1;
  }

  else if (v18)
  {
    memcpy((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v9 + 1);
  }

  else
  {
    v23 = *v17;
    *(v15 + 16) = *(v17 + 2);
    *v15 = v23;
    *(v15 + v9) = 0;
  }

  v24 = v10 + v15;
  v25 = (&v17[v10] & 0xFFFFFFFFFFFFFFF8);
  v26 = *(v25 + v9);
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v9 <= 3)
    {
      v28 = v9;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *v25;
      }

      else if (v28 == 3)
      {
        v29 = *v25 | (*(v25 + 2) << 16);
      }

      else
      {
        v29 = *v25;
      }

LABEL_43:
      v30 = (v29 | (v27 << v39)) + 3;
      v26 = v29 + 3;
      if (v9 < 4)
      {
        v26 = v30;
      }

      goto LABEL_45;
    }

    if (v28)
    {
      v29 = *v25;
      goto LABEL_43;
    }
  }

LABEL_45:
  v31 = v24 & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 2)
  {
    (v13)(v24 & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 2;
  }

  else if (v26 == 1)
  {
    (v13)(v24 & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 1;
  }

  else if (v26)
  {
    memcpy((v24 & 0xFFFFFFFFFFFFFFF8), v25, v9 + 1);
  }

  else
  {
    v32 = *v25;
    *(v31 + 16) = v25[2];
    *v31 = v32;
    *(v31 + v9) = 0;
  }

  v33 = (v9 & 0xFFFFFFFFFFFFFFF8) + v9 + 1 + 8;
  v34 = (v40 | 7) + v33;
  v35 = ((v16 | 7) + v33) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  v37 = *(v35 + 16);
  v34 &= 0xFFFFFFFFFFFFFFF8;
  *(v34 + 32) = *(v35 + 32);
  *v34 = v36;
  *(v34 + 16) = v37;
  return v3;
}

unsigned __int8 *destroy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v21 = *(v4 + 8);
  v22 = v4 + 8;
  (v21)(a1, v3);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xF8 | 7;
  v7 = ((v5 + a1 + v6) & ~v6);
  if (v5 <= 0x18)
  {
    v8 = 24;
  }

  else
  {
    v8 = *(v22 + 56);
  }

  v9 = 8 * v8;
  v10 = v7[v8];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v8 <= 3)
    {
      v12 = v8;
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

    v14 = (v13 | (v11 << v9)) + 3;
    v10 = v13 + 3;
    if (v8 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 - 1 <= 1)
  {
    (v21)(v7, v3);
  }

  result = (&v7[v8 + 1 + v6] & ~v6);
  v16 = result[v8];
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v8 <= 3)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = *result;
    }

    else if (v18 == 2)
    {
      v19 = *result;
    }

    else if (v18 == 3)
    {
      v19 = *result | (*((&v7[v8 + 1 + v6] & ~v6) + 2) << 16);
    }

    else
    {
      v19 = *result;
    }

    v20 = (v19 | (v17 << v9)) + 3;
    v16 = v19 + 3;
    if (v8 < 4)
    {
      v16 = v20;
    }
  }

LABEL_34:
  if (v16 - 1 <= 1)
  {

    return v21();
  }

  return result;
}

uint64_t initializeWithCopy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = ((v9 + v10 + a1) & ~v10);
  v12 = ((v9 + v10 + a2) & ~v10);
  if (v9 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(v8 + 48);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v10;
  if (v14 == 2)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v10;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30 + 7;
  v32 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 16);
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *(v31 + 32) = *(v32 + 32);
  *v31 = v33;
  *(v31 + 16) = v34;
  return a1;
}

uint64_t assignWithCopy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  (*(v6 + 24))(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((v7 + v8 + a1) & ~v8);
  v11 = ((v7 + v8 + a2) & ~v8);
  if (v7 <= 0x18)
  {
    v12 = 24;
  }

  else
  {
    v12 = *(v6 + 64);
  }

  v46 = v6;
  if (v10 == v11)
  {
    v45 = 8 * v12;
    goto LABEL_6;
  }

  v22 = 8 * v12;
  v23 = *(v10 + v12);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v12 <= 3)
    {
      v25 = v12;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *v10;
    }

    else if (v25 == 2)
    {
      v26 = *v10;
    }

    else if (v25 == 3)
    {
      v26 = *v10 | (*(v10 + 2) << 16);
    }

    else
    {
      v26 = *v10;
    }

    v31 = (v26 | (v24 << v22)) + 3;
    v23 = v26 + 3;
    if (v12 < 4)
    {
      v23 = v31;
    }
  }

LABEL_33:
  if (v23 - 1 <= 1)
  {
    (*(v6 + 8))(v10, v5);
  }

  v32 = *(v11 + v12);
  v33 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_65;
  }

  if (v12 <= 3)
  {
    v34 = v12;
  }

  else
  {
    v34 = 4;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = *v11;
    }

    else if (v34 == 3)
    {
      v35 = *v11 | (*(v11 + 2) << 16);
    }

    else
    {
      v35 = *v11;
    }

LABEL_63:
    v41 = (v35 | (v33 << v22)) + 3;
    v32 = v35 + 3;
    if (v12 < 4)
    {
      v32 = v41;
    }

    goto LABEL_65;
  }

  if (v34)
  {
    v35 = *v11;
    goto LABEL_63;
  }

LABEL_65:
  v45 = 8 * v12;
  if (v32 == 2)
  {
    (*(v6 + 16))(v10, v11, v5);
    *(v10 + v12) = 2;
  }

  else if (v32 == 1)
  {
    (*(v6 + 16))(v10, v11, v5);
    *(v10 + v12) = 1;
  }

  else if (v32)
  {
    memcpy(v10, v11, v12 + 1);
  }

  else
  {
    v42 = *v11;
    v10[2] = v11[2];
    *v10 = v42;
    *(v10 + v12) = 0;
  }

LABEL_6:
  v13 = v12 + 1 + v8;
  v14 = ((v10 + v13) & v9);
  v15 = ((v11 + v13) & v9);
  if (v14 == v15)
  {
    goto LABEL_7;
  }

  v27 = v14[v12];
  v28 = v27 - 3;
  if (v27 >= 3)
  {
    if (v12 <= 3)
    {
      v29 = v12;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_49;
      }

      v30 = *v14;
    }

    else if (v29 == 2)
    {
      v30 = *v14;
    }

    else if (v29 == 3)
    {
      v30 = *v14 | (*(((v10 + v13) & v9) + 2) << 16);
    }

    else
    {
      v30 = *v14;
    }

    v36 = (v30 | (v28 << v45)) + 3;
    v27 = v30 + 3;
    if (v12 < 4)
    {
      v27 = v36;
    }
  }

LABEL_49:
  if (v27 - 1 <= 1)
  {
    (*(v46 + 8))((v10 + v13) & v9, v5);
  }

  v37 = v15[v12];
  v38 = v37 - 3;
  if (v37 < 3)
  {
    goto LABEL_75;
  }

  if (v12 <= 3)
  {
    v39 = v12;
  }

  else
  {
    v39 = 4;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v40 = *v15;
    }

    else if (v39 == 3)
    {
      v40 = *v15 | (*(((v11 + v13) & v9) + 2) << 16);
    }

    else
    {
      v40 = *v15;
    }

LABEL_73:
    v43 = (v40 | (v38 << v45)) + 3;
    v37 = v40 + 3;
    if (v12 < 4)
    {
      v37 = v43;
    }

    goto LABEL_75;
  }

  if (v39)
  {
    v40 = *v15;
    goto LABEL_73;
  }

LABEL_75:
  if (v37 == 2)
  {
    (*(v46 + 16))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 2;
  }

  else if (v37 == 1)
  {
    (*(v46 + 16))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 1;
  }

  else if (v37)
  {
    memcpy(((v10 + v13) & v9), ((v11 + v13) & v9), v12 + 1);
  }

  else
  {
    v44 = *v15;
    *(((v10 + v13) & v9) + 0x10) = *(((v11 + v13) & v9) + 0x10);
    *v14 = v44;
    v14[v12] = 0;
  }

LABEL_7:
  v16 = (v13 & v9) + v12 + 1;
  v17 = v10 + v16 + 7;
  v18 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  v17 &= 0xFFFFFFFFFFFFFFF8;
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  return a1;
}

uint64_t initializeWithTake for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = ((v9 + v10 + a1) & ~v10);
  v12 = ((v9 + v10 + a2) & ~v10);
  if (v9 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(v8 + 32);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v10;
  if (v14 == 2)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v10;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30 + 7;
  v32 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 16);
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *(v31 + 32) = *(v32 + 32);
  *v31 = v33;
  *(v31 + 16) = v34;
  return a1;
}

uint64_t assignWithTake for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  (*(v6 + 40))(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((v7 + v8 + a1) & ~v8);
  v11 = ((v7 + v8 + a2) & ~v8);
  if (v7 <= 0x18)
  {
    v12 = 24;
  }

  else
  {
    v12 = *(v6 + 64);
  }

  v46 = v6;
  if (v10 == v11)
  {
    v45 = 8 * v12;
    goto LABEL_6;
  }

  v22 = 8 * v12;
  v23 = *(v10 + v12);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v12 <= 3)
    {
      v25 = v12;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *v10;
    }

    else if (v25 == 2)
    {
      v26 = *v10;
    }

    else if (v25 == 3)
    {
      v26 = *v10 | (*(v10 + 2) << 16);
    }

    else
    {
      v26 = *v10;
    }

    v31 = (v26 | (v24 << v22)) + 3;
    v23 = v26 + 3;
    if (v12 < 4)
    {
      v23 = v31;
    }
  }

LABEL_33:
  if (v23 - 1 <= 1)
  {
    (*(v6 + 8))(v10, v5);
  }

  v32 = *(v11 + v12);
  v33 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_65;
  }

  if (v12 <= 3)
  {
    v34 = v12;
  }

  else
  {
    v34 = 4;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = *v11;
    }

    else if (v34 == 3)
    {
      v35 = *v11 | (*(v11 + 2) << 16);
    }

    else
    {
      v35 = *v11;
    }

LABEL_63:
    v41 = (v35 | (v33 << v22)) + 3;
    v32 = v35 + 3;
    if (v12 < 4)
    {
      v32 = v41;
    }

    goto LABEL_65;
  }

  if (v34)
  {
    v35 = *v11;
    goto LABEL_63;
  }

LABEL_65:
  v45 = 8 * v12;
  if (v32 == 2)
  {
    (*(v6 + 32))(v10, v11, v5);
    *(v10 + v12) = 2;
  }

  else if (v32 == 1)
  {
    (*(v6 + 32))(v10, v11, v5);
    *(v10 + v12) = 1;
  }

  else if (v32)
  {
    memcpy(v10, v11, v12 + 1);
  }

  else
  {
    v42 = *v11;
    v10[2] = v11[2];
    *v10 = v42;
    *(v10 + v12) = 0;
  }

LABEL_6:
  v13 = v12 + 1 + v8;
  v14 = ((v10 + v13) & v9);
  v15 = ((v11 + v13) & v9);
  if (v14 == v15)
  {
    goto LABEL_7;
  }

  v27 = v14[v12];
  v28 = v27 - 3;
  if (v27 >= 3)
  {
    if (v12 <= 3)
    {
      v29 = v12;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_49;
      }

      v30 = *v14;
    }

    else if (v29 == 2)
    {
      v30 = *v14;
    }

    else if (v29 == 3)
    {
      v30 = *v14 | (*(((v10 + v13) & v9) + 2) << 16);
    }

    else
    {
      v30 = *v14;
    }

    v36 = (v30 | (v28 << v45)) + 3;
    v27 = v30 + 3;
    if (v12 < 4)
    {
      v27 = v36;
    }
  }

LABEL_49:
  if (v27 - 1 <= 1)
  {
    (*(v46 + 8))((v10 + v13) & v9, v5);
  }

  v37 = v15[v12];
  v38 = v37 - 3;
  if (v37 < 3)
  {
    goto LABEL_75;
  }

  if (v12 <= 3)
  {
    v39 = v12;
  }

  else
  {
    v39 = 4;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v40 = *v15;
    }

    else if (v39 == 3)
    {
      v40 = *v15 | (*(((v11 + v13) & v9) + 2) << 16);
    }

    else
    {
      v40 = *v15;
    }

LABEL_73:
    v43 = (v40 | (v38 << v45)) + 3;
    v37 = v40 + 3;
    if (v12 < 4)
    {
      v37 = v43;
    }

    goto LABEL_75;
  }

  if (v39)
  {
    v40 = *v15;
    goto LABEL_73;
  }

LABEL_75:
  if (v37 == 2)
  {
    (*(v46 + 32))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 2;
  }

  else if (v37 == 1)
  {
    (*(v46 + 32))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 1;
  }

  else if (v37)
  {
    memcpy(((v10 + v13) & v9), ((v11 + v13) & v9), v12 + 1);
  }

  else
  {
    v44 = *v15;
    *(((v10 + v13) & v9) + 0x10) = *(((v11 + v13) & v9) + 0x10);
    *v14 = v44;
    v14[v12] = 0;
  }

LABEL_7:
  v16 = (v13 & v9) + v12 + 1;
  v17 = v10 + v16 + 7;
  v18 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  v17 &= 0xFFFFFFFFFFFFFFF8;
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v6 <= 0x18)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v7 >= 4)
  {
    v8 = 252;
  }

  else
  {
    v8 = 252 - (1u >> (8 * v7));
  }

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80) & 0xF8 | 7;
  v11 = v6 + v10;
  if (v9 >= a2)
  {
    goto LABEL_34;
  }

  v12 = ((v7 + (v11 & ~v10) + ((v7 + v10 + 1) & ~v10) + 8) & 0xFFFFFFFFFFFFFFF8) + 33;
  v13 = (a2 - v9 + 255) >> 8;
  if (v12 <= 3)
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
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v12];
      if (*&a1[v12])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *&a1[v12];
      if (v17)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    if (v5 >= v8)
    {
      return (*(v4 + 48))(a1);
    }

    v21 = *((&a1[v11] & ~v10) + v7);
    if (v8 <= (v21 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v21);
    }
  }

  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = a1[v12];
  if (!a1[v12])
  {
    goto LABEL_34;
  }

LABEL_30:
  v19 = (v17 - 1) << (8 * v12);
  if (v12 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v9 + (v20 | v19) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 24;
  if (v8 > 0x18)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v6 + 80) & 0xF8 | 7;
  v13 = v8 + v12;
  v14 = ((v9 + 1 + v12) & ~v12) + v9 + 1;
  v15 = ((v14 + (v13 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v11 >= a3)
  {
    v19 = 0;
    if (v11 >= a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v11 >= a2)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v7 >= v10)
        {
          v24 = *(v6 + 56);

          v24();
        }

        else
        {
          v22 = (&a1[v13] & ~v12);
          if (v10 >= a2)
          {
            v22[v9] = -a2;
          }

          else
          {
            v23 = ~v10 + a2;
            if (v14 < 4)
            {
              if (v14)
              {
                v25 = v23 & ~(-1 << (8 * v14));
                bzero(v22, v14);
                if (v14 == 3)
                {
                  *v22 = v25;
                  v22[2] = BYTE2(v25);
                }

                else if (v14 == 2)
                {
                  *v22 = v25;
                }

                else
                {
                  *v22 = v23;
                }
              }
            }

            else
            {
              bzero(v22, v14);
              *v22 = v23;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  v20 = ~v11 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_31:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t type metadata completion function for AnimatedValueKeyframe.InterpolationParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe.InterpolationParameters(_OWORD *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = v7 + 1;
  v9 = *(v6 + 80);
  v10 = v9 & 0xF8 | 7;
  if ((v9 & 0x1000F8) != 0 || ((v7 + 1 + v10) & ~v10) + v7 + 1 > 0x18)
  {
    v12 = *__src;
    *v4 = *__src;
    v4 = (v12 + ((v10 + 16) & ~v10));

    return v4;
  }

  v14 = 8 * v7;
  v15 = __src[v7];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v7 <= 3)
    {
      v17 = v7;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = *__src;
      if (v7 < 4)
      {
LABEL_32:
        v20 = v18 | (v16 << v14);
        v15 = v20 + 3;
        if (v20 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }

    else if (v17 == 2)
    {
      v18 = *__src;
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = *__src;
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    v15 = v18 + 3;
  }

LABEL_25:
  if (v15 == 2)
  {
LABEL_33:
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 2;
    goto LABEL_34;
  }

LABEL_26:
  if (v15 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 1;
LABEL_34:
    *(v4 + v7) = v19;
    goto LABEL_35;
  }

  if (v15)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + v7) = 0;
  }

LABEL_35:
  v21 = v4 + v8 + 7;
  v22 = (&__src[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
  v23 = *(v22 + v7);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v7 <= 3)
    {
      v25 = v7;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *v22;
      }

      else if (v25 == 3)
      {
        v26 = *v22 | (*(v22 + 2) << 16);
      }

      else
      {
        v26 = *v22;
      }

LABEL_47:
      v27 = (v26 | (v24 << v14)) + 3;
      v23 = v26 + 3;
      if (v7 < 4)
      {
        v23 = v27;
      }

      goto LABEL_49;
    }

    if (v25)
    {
      v26 = *v22;
      goto LABEL_47;
    }
  }

LABEL_49:
  v28 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (v23 == 2)
  {
    (*(v6 + 16))(v28);
    *(v28 + v7) = 2;
  }

  else if (v23 == 1)
  {
    (*(v6 + 16))(v28);
    *(v28 + v7) = 1;
  }

  else if (v23)
  {
    memcpy((v21 & 0xFFFFFFFFFFFFFFF8), v22, v7 + 1);
  }

  else
  {
    v29 = *v22;
    *(v28 + 16) = v22[2];
    *v28 = v29;
    *(v28 + v7) = 0;
  }

  return v4;
}

unsigned __int8 *destroy for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = a1[v4];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_18:
  if (v6 - 1 <= 1)
  {
    v19 = *(*(a2 + 16) - 8);
    (*(v3 + 8))(a1, *(a2 + 16));
    v3 = v19;
  }

  v11 = *(v3 + 80) & 0xF8 | 7;
  result = (&a1[v4 + 1 + v11] & ~v11);
  v13 = result[v4];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = *result;
    }

    else if (v15 == 2)
    {
      v16 = *result;
    }

    else if (v15 == 3)
    {
      v16 = *result | (result[2] << 16);
    }

    else
    {
      v16 = *result;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_34:
  if (v13 - 1 <= 1)
  {
    v18 = *(v3 + 8);

    return v18();
  }

  return result;
}

_BYTE *initializeWithCopy for AnimatedValueKeyframe.InterpolationParameters(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __src[v7];
  v10 = v9 - 3;
  if (v9 < 3)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *__src;
  }

  else if (v11 == 2)
  {
    v12 = *__src;
  }

  else if (v11 == 3)
  {
    v12 = *__src | (__src[2] << 16);
  }

  else
  {
    v12 = *__src;
  }

  v13 = (v12 | (v10 << v8)) + 3;
  v9 = v12 + 3;
  if (v7 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 2)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = 1;
  }

  else if (v9)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    __dst[v7] = 0;
  }

  v14 = *(v6 + 80) & 0xF8 | 7;
  v15 = v7 + 1 + v14;
  v16 = (&__dst[v15] & ~v14);
  v17 = (&__src[v15] & ~v14);
  v18 = *(v17 + v7);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v7 <= 3)
    {
      v20 = v7;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
    {
      v21 = *v17;
    }

    else if (v20 == 3)
    {
      v21 = *v17 | (*(v17 + 2) << 16);
    }

    else
    {
      v21 = *v17;
    }

    v22 = (v21 | (v19 << v8)) + 3;
    v18 = v21 + 3;
    if (v7 < 4)
    {
      v18 = v22;
    }
  }

LABEL_39:
  if (v18 == 2)
  {
    (*(v6 + 16))(v16);
    *(v16 + v7) = 2;
  }

  else if (v18 == 1)
  {
    (*(v6 + 16))(v16);
    *(v16 + v7) = 1;
  }

  else if (v18)
  {
    memcpy(v16, v17, v7 + 1);
  }

  else
  {
    v23 = *v17;
    v16[2] = v17[2];
    *v16 = v23;
    *(v16 + v7) = 0;
  }

  return __dst;
}

unsigned __int8 *assignWithCopy for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst == __src)
  {
    goto LABEL_47;
  }

  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __dst[v7];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = *__dst | (__dst[2] << 16);
          if (v7 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v9 = v12 + 3;
          goto LABEL_21;
        }

        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v9 = (v12 | (v10 << v8)) + 3;
      goto LABEL_21;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *__dst;
    if (v7 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (v9 - 1 <= 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v13 = __src[v7];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
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
        goto LABEL_37;
      }

      v16 = *__src;
      if (v7 < 4)
      {
LABEL_44:
        v19 = v16 | (v14 << v8);
        v13 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }
    }

    else if (v15 == 2)
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else if (v15 == 3)
    {
      v16 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    v13 = v16 + 3;
  }

LABEL_37:
  if (v13 == 2)
  {
LABEL_45:
    (*(v6 + 16))(__dst, __src, v5);
    v18 = 2;
    goto LABEL_46;
  }

LABEL_38:
  if (v13 != 1)
  {
    if (v13)
    {
      memcpy(__dst, __src, v7 + 1);
    }

    else
    {
      v17 = *__src;
      *(__dst + 2) = *(__src + 2);
      *__dst = v17;
      __dst[v7] = 0;
    }

    goto LABEL_47;
  }

  (*(v6 + 16))(__dst, __src, v5);
  v18 = 1;
LABEL_46:
  __dst[v7] = v18;
LABEL_47:
  v20 = v6;
  if (*(v6 + 64) <= 0x18uLL)
  {
    v21 = 24;
  }

  else
  {
    v21 = *(v6 + 64);
  }

  v22 = *(v6 + 80) & 0xF8 | 7;
  v23 = v21 + 1 + v22;
  v24 = (&__dst[v23] & ~v22);
  v25 = (&__src[v23] & ~v22);
  if (v24 != v25)
  {
    v27 = 8 * v21;
    v28 = *(v24 + v21);
    v29 = v28 - 3;
    if (v28 < 3)
    {
      goto LABEL_66;
    }

    if (v21 <= 3)
    {
      v30 = v21;
    }

    else
    {
      v30 = 4;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        goto LABEL_66;
      }

      v31 = *v24;
    }

    else if (v30 == 2)
    {
      v31 = *v24;
    }

    else if (v30 == 3)
    {
      v31 = *v24 | (*(v24 + 2) << 16);
    }

    else
    {
      v31 = *v24;
    }

    v32 = (v31 | (v29 << v27)) + 3;
    v28 = v31 + 3;
    if (v21 < 4)
    {
      v28 = v32;
    }

LABEL_66:
    if (v28 - 1 <= 1)
    {
      (*(v20 + 8))(v24, v5);
    }

    v33 = v25[v21];
    v34 = v33 - 3;
    if (v33 < 3)
    {
      goto LABEL_82;
    }

    if (v21 <= 3)
    {
      v35 = v21;
    }

    else
    {
      v35 = 4;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
LABEL_82:
        if (v33 == 2)
        {
          (*(v20 + 16))(v24, v25, v5);
          *(v24 + v21) = 2;
        }

        else if (v33 == 1)
        {
          (*(v20 + 16))(v24, v25, v5);
          *(v24 + v21) = 1;
        }

        else if (v33)
        {
          memcpy(v24, v25, v21 + 1);
        }

        else
        {
          v38 = *v25;
          v24[2] = *(v25 + 2);
          *v24 = v38;
          *(v24 + v21) = 0;
        }

        return __dst;
      }

      v36 = *v25;
    }

    else if (v35 == 2)
    {
      v36 = *v25;
    }

    else if (v35 == 3)
    {
      v36 = *v25 | (v25[2] << 16);
    }

    else
    {
      v36 = *v25;
    }

    v37 = (v36 | (v34 << v27)) + 3;
    v33 = v36 + 3;
    if (v21 < 4)
    {
      v33 = v37;
    }

    goto LABEL_82;
  }

  return __dst;
}

_BYTE *initializeWithTake for AnimatedValueKeyframe.InterpolationParameters(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __src[v7];
  v10 = v9 - 3;
  if (v9 < 3)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *__src;
  }

  else if (v11 == 2)
  {
    v12 = *__src;
  }

  else if (v11 == 3)
  {
    v12 = *__src | (__src[2] << 16);
  }

  else
  {
    v12 = *__src;
  }

  v13 = (v12 | (v10 << v8)) + 3;
  v9 = v12 + 3;
  if (v7 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 2)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = 1;
  }

  else if (v9)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    __dst[v7] = 0;
  }

  v14 = *(v6 + 80) & 0xF8 | 7;
  v15 = v7 + 1 + v14;
  v16 = (&__dst[v15] & ~v14);
  v17 = (&__src[v15] & ~v14);
  v18 = *(v17 + v7);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v7 <= 3)
    {
      v20 = v7;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
    {
      v21 = *v17;
    }

    else if (v20 == 3)
    {
      v21 = *v17 | (*(v17 + 2) << 16);
    }

    else
    {
      v21 = *v17;
    }

    v22 = (v21 | (v19 << v8)) + 3;
    v18 = v21 + 3;
    if (v7 < 4)
    {
      v18 = v22;
    }
  }

LABEL_39:
  if (v18 == 2)
  {
    (*(v6 + 32))(v16);
    *(v16 + v7) = 2;
  }

  else if (v18 == 1)
  {
    (*(v6 + 32))(v16);
    *(v16 + v7) = 1;
  }

  else if (v18)
  {
    memcpy(v16, v17, v7 + 1);
  }

  else
  {
    v23 = *v17;
    v16[2] = v17[2];
    *v16 = v23;
    *(v16 + v7) = 0;
  }

  return __dst;
}

unsigned __int8 *assignWithTake for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst == __src)
  {
    goto LABEL_47;
  }

  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __dst[v7];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = *__dst | (__dst[2] << 16);
          if (v7 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v9 = v12 + 3;
          goto LABEL_21;
        }

        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v9 = (v12 | (v10 << v8)) + 3;
      goto LABEL_21;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *__dst;
    if (v7 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (v9 - 1 <= 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v13 = __src[v7];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
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
        goto LABEL_37;
      }

      v16 = *__src;
      if (v7 < 4)
      {
LABEL_44:
        v18 = v16 | (v14 << v8);
        v13 = v18 + 3;
        if (v18 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }
    }

    else if (v15 == 2)
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else if (v15 == 3)
    {
      v16 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    v13 = v16 + 3;
  }

LABEL_37:
  if (v13 == 2)
  {
LABEL_45:
    (*(v6 + 32))(__dst, __src, v5);
    v17 = 2;
    goto LABEL_46;
  }

LABEL_38:
  if (v13 != 1)
  {
    if (v13)
    {
      memcpy(__dst, __src, v7 + 1);
    }

    else
    {
      *__dst = *__src;
      *(__dst + 2) = *(__src + 2);
      __dst[v7] = 0;
    }

    goto LABEL_47;
  }

  (*(v6 + 32))(__dst, __src, v5);
  v17 = 1;
LABEL_46:
  __dst[v7] = v17;
LABEL_47:
  v19 = v6;
  if (*(v6 + 64) <= 0x18uLL)
  {
    v20 = 24;
  }

  else
  {
    v20 = *(v6 + 64);
  }

  v21 = *(v6 + 80) & 0xF8 | 7;
  v22 = v20 + 1 + v21;
  v23 = (&__dst[v22] & ~v21);
  v24 = (&__src[v22] & ~v21);
  if (v23 != v24)
  {
    v26 = 8 * v20;
    v27 = *(v23 + v20);
    v28 = v27 - 3;
    if (v27 < 3)
    {
      goto LABEL_66;
    }

    if (v20 <= 3)
    {
      v29 = v20;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_66;
      }

      v30 = *v23;
    }

    else if (v29 == 2)
    {
      v30 = *v23;
    }

    else if (v29 == 3)
    {
      v30 = *v23 | (*(v23 + 2) << 16);
    }

    else
    {
      v30 = *v23;
    }

    v31 = (v30 | (v28 << v26)) + 3;
    v27 = v30 + 3;
    if (v20 < 4)
    {
      v27 = v31;
    }

LABEL_66:
    if (v27 - 1 <= 1)
    {
      (*(v19 + 8))(v23, v5);
    }

    v32 = v24[v20];
    v33 = v32 - 3;
    if (v32 < 3)
    {
      goto LABEL_82;
    }

    if (v20 <= 3)
    {
      v34 = v20;
    }

    else
    {
      v34 = 4;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
LABEL_82:
        if (v32 == 2)
        {
          (*(v19 + 32))(v23, v24, v5);
          *(v23 + v20) = 2;
        }

        else if (v32 == 1)
        {
          (*(v19 + 32))(v23, v24, v5);
          *(v23 + v20) = 1;
        }

        else if (v32)
        {
          memcpy(v23, v24, v20 + 1);
        }

        else
        {
          v37 = *v24;
          v23[2] = *(v24 + 2);
          *v23 = v37;
          *(v23 + v20) = 0;
        }

        return __dst;
      }

      v35 = *v24;
    }

    else if (v34 == 2)
    {
      v35 = *v24;
    }

    else if (v34 == 3)
    {
      v35 = *v24 | (v24[2] << 16);
    }

    else
    {
      v35 = *v24;
    }

    v36 = (v35 | (v33 << v26)) + 3;
    v32 = v35 + 3;
    if (v20 < 4)
    {
      v32 = v36;
    }

    goto LABEL_82;
  }

  return __dst;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
    goto LABEL_27;
  }

  v6 = *(v3 + 80) & 0xF8 | 7;
  v7 = ((v4 + 1 + v6) & ~v6) + v4 + 1;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v11 = ((a2 - v5 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v4);
      if (v5 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v5 + (v7 | v12) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = 252 - (1u >> (8 * v6));
  if (v6 >= 4)
  {
    v7 = 252;
  }

  v8 = *(v5 + 80) & 0xF8 | 7;
  v9 = ((v6 + 1 + v8) & ~v8) + v6 + 1;
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v7 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_32:
        a1[v6] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v11 = ~v7 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v11;
    v12 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v12 = (v11 >> (8 * v9)) + 1;
  if (!v9)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v11 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v15;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v12;
      }

      else
      {
        *&a1[v9] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v12;
  }
}