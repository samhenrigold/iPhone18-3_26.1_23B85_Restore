uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for BackgroundTaskEntry(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v4[2];
  v16 = v4[3];
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in closure #1 in static BackgroundTaskProtocol.runTasks(actions:)(a1, v15, v16, v4 + v11, v4 + v14, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRTA(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(a1, v4);
}

uint64_t initializeWithCopy for BackgroundTaskModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t *assignWithCopy for BackgroundTaskModifier(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;

  return a1;
}

uint64_t assignWithTake for BackgroundTaskModifier(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t instantiation function for generic protocol witness table for TaskActionsContainer<A, B>.Key(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TaskActionsContainer<A, B>.Key);
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in static TaskActionsContainer.Key.reduce(value:nextValue:)@<X0>(uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for TaskActionsContainer.ContainerEntry(0, *(v4 + 16), *(v4 + 24), a3);
  result = static Array.+ infix(_:_:)();
  *a4 = result;
  return result;
}

uint64_t partial apply for closure #1 in BackgroundTaskModifier.Registration.updateValue()(uint64_t a1)
{
  v2 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = v2;
  v7 = v1 + 32;
  return static TaskActionsContainer.Key.reduce(value:nextValue:)(a1, partial apply for closure #1 in closure #1 in BackgroundTaskModifier.Registration.updateValue(), &v4, v5, v2);
}

uint64_t View.accessibilityAutomationType(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980050], &v4, 1, a2, MEMORY[0x1E6980050], a3, MEMORY[0x1E6980048]);
}

unint64_t lazy protocol witness table accessor for type AXAutomationType and conformance AXAutomationType()
{
  result = lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType;
  if (!lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType)
  {
    type metadata accessor for AXAutomationType(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AXAutomationType, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AXAutomationType and conformance AXAutomationType);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AXAutomationType(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t assignWithCopy for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for FocusItem.ViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for FocusItem(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of FocusItem.Base(a1);
    v4 = *(a2 + 32);
    if (v4 == 2)
    {
      swift_unknownObjectWeakTakeInit();
      v5 = 2;
    }

    else if (v4 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v5 = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      v5 = *(a2 + 32);
    }

    *(a1 + 32) = v5;
  }

  *(a1 + 33) = *(a2 + 33);
  swift_weakTakeAssign();
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  return a1;
}

uint64_t assignWithCopy for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2 || v4 == 1)
    {
      MEMORY[0x18D011290](a1);
    }

    else
    {
    }

    v5 = *(a2 + 32);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_unknownObjectWeakCopyInit();
      v6 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        *a1 = *a2;
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 8) = *(a2 + 8);
        v7 = *(a2 + 24);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v7;
        *(a1 + 32) = 0;

        return a1;
      }

      swift_unknownObjectWeakCopyInit();
      v6 = 1;
    }

    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t initializeWithTake for FocusItem.Base(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    result = swift_unknownObjectWeakTakeInit();
    v3 = 2;
  }

  else if (v2 == 1)
  {
    result = swift_unknownObjectWeakTakeInit();
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t assignWithTake for FocusItem.Base(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2 || v4 == 1)
    {
      MEMORY[0x18D011290](a1);
    }

    else
    {
    }

    v5 = *(a2 + 32);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 2;
    }

    else if (v5 == 1)
    {
      swift_unknownObjectWeakTakeInit();
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
    }

    *(a1 + 32) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for FocusItem.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusItem.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for FocusItem.Base(uint64_t a1)
{
  result = *(a1 + 32);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FocusItem.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

void specialized RangeReplaceableCollection.removeFirst()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

  if (!__CocoaSet.count.getter())
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v5 = MEMORY[0x18D00E9C0](0, v3);
    v4 = v5;
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);

LABEL_6:
    (*(*v4 + 112))(v6, v5);

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v6, a1);
    specialized RangeReplaceableCollection.removeFirst(_:)();
    return;
  }

  __break(1u);
}

{
  if (*(*v1 + 16))
  {
    outlined init with copy of FocusStoreList.Item(*v1 + 32, a1);

    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  }

  else
  {
    __break(1u);
  }
}

void type metadata accessor for (FocusItem.Base, FocusItem.Base)()
{
  if (!lazy cache variable for type metadata for (FocusItem.Base, FocusItem.Base))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (FocusItem.Base, FocusItem.Base));
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(&lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle, type metadata accessor for ResolvedTokenFieldStyle, protocol conformance descriptor for ResolvedTokenFieldStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(&lazy protocol witness table cache variable for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle, type metadata accessor for ResolvedTokenFieldStyle, protocol conformance descriptor for ResolvedTokenFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t TokenFieldStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TokenFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TokenFieldStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

char *initializeBufferWithCopyOfBuffer for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>(0);
    v8 = *(v7 + 32);
    v9 = type metadata accessor for AttributedString();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v8], &a2[v8], v9);
    v11 = *(v4 + 24);
    v12 = &a1[v11];
    v13 = &a2[v11];
    if (*&a2[v11 + 24])
    {
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = v13[16];
      outlined copy of Text.Storage(*v13, v15, v16);
      *v12 = v14;
      *(v12 + 1) = v15;
      v12[16] = v16;
      *(v12 + 3) = *(v13 + 3);
    }

    else
    {
      v17 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 1) = v17;
    }

    v18 = *(v4 + 28);
    v19 = &a1[v18];
    v20 = &a2[v18];
    v21 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v21;
  }

  return a1;
}

double destroy for ResolvedTokenFieldStyle(uint64_t a1)
{

  type metadata accessor for Binding<AttributedString>(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = a1 + *(type metadata accessor for TokenFieldConfiguration(0) + 24);
  if (*(v5 + 24))
  {
    outlined consume of Text.Storage(*v5, *(v5 + 8), *(v5 + 16));
  }

  return result;
}

char *initializeWithCopy for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>(0);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v9 = type metadata accessor for TokenFieldConfiguration(0);
  v10 = *(v9 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  if (*&a2[v10 + 24])
  {
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = v12[16];
    outlined copy of Text.Storage(*v12, v14, v15);
    *v11 = v13;
    *(v11 + 1) = v14;
    v11[16] = v15;
    *(v11 + 3) = *(v12 + 3);
  }

  else
  {
    v16 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v16;
  }

  v17 = *(v9 + 28);
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;

  return a1;
}

char *assignWithCopy for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = type metadata accessor for TokenFieldConfiguration(0);
  v8 = *(v7 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *&a1[v8 + 24];
  v12 = *&a2[v8 + 24];
  if (v11)
  {
    if (v12)
    {
      v13 = *v10;
      v14 = *(v10 + 1);
      v15 = v10[16];
      outlined copy of Text.Storage(*v10, v14, v15);
      v16 = *v9;
      v17 = *(v9 + 1);
      v18 = v9[16];
      *v9 = v13;
      *(v9 + 1) = v14;
      v9[16] = v15;
      outlined consume of Text.Storage(v16, v17, v18);
      *(v9 + 3) = *(v10 + 3);
    }

    else
    {
      outlined destroy of Text(v9);
      v22 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 1) = v22;
    }
  }

  else if (v12)
  {
    v19 = *v10;
    v20 = *(v10 + 1);
    v21 = v10[16];
    outlined copy of Text.Storage(*v10, v20, v21);
    *v9 = v19;
    *(v9 + 1) = v20;
    v9[16] = v21;
    *(v9 + 3) = *(v10 + 3);
  }

  else
  {
    v23 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v23;
  }

  v24 = *(v7 + 28);
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *(v26 + 1);
  *v25 = *v26;
  *(v25 + 1) = v27;

  return a1;
}

char *initializeWithTake for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  type metadata accessor for Binding<AttributedString>(0);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = type metadata accessor for TokenFieldConfiguration(0);
  v9 = *(v8 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  *&a1[*(v8 + 28)] = *&a2[*(v8 + 28)];
  return a1;
}

char *assignWithTake for ResolvedTokenFieldStyle(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = type metadata accessor for TokenFieldConfiguration(0);
  v8 = *(v7 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  if (!*&a1[v8 + 24])
  {
    goto LABEL_5;
  }

  if (!*(v10 + 3))
  {
    outlined destroy of Text(v9);
LABEL_5:
    v15 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v15;
    goto LABEL_6;
  }

  v11 = v10[16];
  v12 = *v9;
  v13 = *(v9 + 1);
  v14 = v9[16];
  *v9 = *v10;
  v9[16] = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(v9 + 3) = *(v10 + 3);

LABEL_6:
  *&a1[*(v7 + 28)] = *&a2[*(v7 + 28)];

  return a1;
}

uint64_t type metadata completion function for ResolvedTokenFieldStyle(uint64_t a1)
{
  result = type metadata accessor for TokenFieldConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
    type metadata accessor for Binding<AttributedString>(0);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(&a1[v9], &a2[v9], v10);
    v12 = *(a3 + 24);
    v13 = &a1[v12];
    v14 = &a2[v12];
    if (*&a2[v12 + 24])
    {
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = v14[16];
      outlined copy of Text.Storage(*v14, v16, v17);
      *v13 = v15;
      *(v13 + 1) = v16;
      v13[16] = v17;
      *(v13 + 3) = *(v14 + 3);
    }

    else
    {
      v18 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v18;
    }

    v19 = *(a3 + 28);
    v20 = &a1[v19];
    v21 = &a2[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
  }

  return a1;
}

double destroy for TokenFieldConfiguration(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Binding<AttributedString>(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + *(a2 + 24);
  if (*(v7 + 24))
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  return result;
}

char *initializeWithCopy for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 24);
  v12 = &a1[v11];
  v13 = &a2[v11];
  if (*&a2[v11 + 24])
  {
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 1) = v15;
    v12[16] = v16;
    *(v12 + 3) = *(v13 + 3);
  }

  else
  {
    v17 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v17;
  }

  v18 = *(a3 + 28);
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;

  return a1;
}

char *assignWithCopy for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a1[v9 + 24];
  v13 = *&a2[v9 + 24];
  if (v12)
  {
    if (v13)
    {
      v14 = *v11;
      v15 = *(v11 + 1);
      v16 = v11[16];
      outlined copy of Text.Storage(*v11, v15, v16);
      v17 = *v10;
      v18 = *(v10 + 1);
      v19 = v10[16];
      *v10 = v14;
      *(v10 + 1) = v15;
      v10[16] = v16;
      outlined consume of Text.Storage(v17, v18, v19);
      *(v10 + 3) = *(v11 + 3);
    }

    else
    {
      outlined destroy of Text(v10);
      v23 = *(v11 + 1);
      *v10 = *v11;
      *(v10 + 1) = v23;
    }
  }

  else if (v13)
  {
    v20 = *v11;
    v21 = *(v11 + 1);
    v22 = v11[16];
    outlined copy of Text.Storage(*v11, v21, v22);
    *v10 = v20;
    *(v10 + 1) = v21;
    v10[16] = v22;
    *(v10 + 3) = *(v11 + 3);
  }

  else
  {
    v24 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v24;
  }

  v25 = *(a3 + 28);
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;

  return a1;
}

char *initializeWithTake for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  type metadata accessor for Binding<AttributedString>(0);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = *(a3 + 28);
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *&a1[v11] = *&a2[v11];
  return a1;
}

char *assignWithTake for TokenFieldConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  if (!*&a1[v9 + 24])
  {
    goto LABEL_5;
  }

  if (!*(v11 + 3))
  {
    outlined destroy of Text(v10);
LABEL_5:
    v16 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v16;
    goto LABEL_6;
  }

  v12 = v11[16];
  v13 = *v10;
  v14 = *(v10 + 1);
  v15 = v10[16];
  *v10 = *v11;
  v10[16] = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(v10 + 3) = *(v11 + 3);

LABEL_6:
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

uint64_t lazy protocol witness table accessor for type ResolvedTokenFieldStyle and conformance ResolvedTokenFieldStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for TokenFieldStyleModifier<AutomaticTokenFieldStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TokenFieldStyleModifier<AutomaticTokenFieldStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle();
    v4 = type metadata accessor for TokenFieldStyleModifier(a1, &type metadata for AutomaticTokenFieldStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TokenFieldStyleModifier<AutomaticTokenFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle;
  if (!lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticTokenFieldStyle, &type metadata for AutomaticTokenFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticTokenFieldStyle and conformance AutomaticTokenFieldStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TokenFieldConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ResolvedTokenFieldStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

SwiftUI::NSHostingSceneBridgingOptions __swiftcall NSHostingSceneBridgingOptions.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions()
{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSHostingSceneBridgingOptions, &type metadata for NSHostingSceneBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSHostingSceneBridgingOptions, &type metadata for NSHostingSceneBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSHostingSceneBridgingOptions, &type metadata for NSHostingSceneBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions;
  if (!lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NSHostingSceneBridgingOptions, &type metadata for NSHostingSceneBridgingOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSHostingSceneBridgingOptions and conformance NSHostingSceneBridgingOptions);
  }

  return result;
}

void *assignWithCopy for AnimatedValueTrack<A>.PacedPathSource(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for AnimatedValueTrack<A>.PacedPathSource(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

double AnimatedValueTrackSource.keyPath<A>(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, a2, v9);
  v14 = type metadata accessor for PrependingKeyPathSource(0, *(v8 + *MEMORY[0x1E69E6CE8]), a2, a3);
  a4[3] = v14;
  a4[4] = swift_getWitnessTable(protocol conformance descriptor for PrependingKeyPathSource<A, B>, v14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  PrependingKeyPathSource.init(base:keyPath:)(v11, a1, a2, a3, boxed_opaque_existential_1);

  return result;
}

uint64_t PrependingKeyPathSource.init(base:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for PrependingKeyPathSource(0, *(v9 + *MEMORY[0x1E69E6CE8]), a3, a4);
  *(a5 + *(result + 44)) = a2;
  return result;
}

uint64_t PrependingKeyPathSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = swift_modifyAtWritableKeyPath();
  (*(*(a2 + 32) + 24))(v8, *(a2 + 24), a3, a4);
  return v7(&v10, 0);
}

uint64_t PrependingKeyPathSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = swift_modifyAtWritableKeyPath();
  (*(*(a2 + 32) + 32))(v8, *(a2 + 24), a3, a4);
  return v7(&v10, 0);
}

uint64_t static PrependingKeyPathSource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnyKeyPath();
  v10 = type metadata accessor for PrependingKeyPathSource(0, a3, a4, a5);
  return MEMORY[0x18D00E580](*(a1 + *(v10 + 44)), *(a2 + *(v10 + 44))) & 1;
}

uint64_t AnimatedValueTrack<A>.PacedPathSource.init(duration:keyframes:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = type metadata accessor for AnimatedValueKeyframe(255, a3, a3, a4);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = *(v8 - 8);
  v27 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *a2;
  v17 = MEMORY[0x1E69E63B0];
  swift_getTupleTypeMetadata2();
  v18 = static Array._allocateUninitialized(_:)();
  v19 = specialized Dictionary.init(dictionaryLiteral:)(v18, v17, v8, MEMORY[0x1E69E63D0]);

  v33 = v19;
  if (MEMORY[0x18D00CDE0](a1, v8))
  {
    v28 = v16;
    v29 = v5;
    v30 = v4;
    v20 = 0;
    v31 = (v12 + 16);
    v21 = 0.0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v12 + 16))(v15, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v8);
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v27 != 8)
        {
          __break(1u);
          return result;
        }

        v32 = result;
        (*v31)(v15, &v32, v8);
        swift_unknownObjectRelease();
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v25 = v33;
          v5 = v29;
          v4 = v30;
          LOBYTE(v16) = v28;
          goto LABEL_13;
        }
      }

      (*(v12 + 32))(v11, v15, v8);
      (*(v12 + 56))(v11, 0, 1, v8);
      v32 = *&v21;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      v21 = v21 + 1.0;
      ++v20;
      if (v23 == MEMORY[0x18D00CDE0](a1, v8))
      {
        goto LABEL_11;
      }
    }
  }

  v25 = v19;
LABEL_13:
  LOBYTE(v32) = v16;
  return AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(v25, &v32, v5, v4);
}

uint64_t AnimatedValueTrack<A>.PacedPathSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = type metadata accessor for Optional();
  v14 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v36 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v38 = &v36 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v36 - v27;
  AnimatedValueTrack<A>.VectorPath.arcLength.getter(a2, a3, a4);
  AnimatedValueTrack<A>.VectorPath.value(atArcLength:)(a2, a3, a4, v16, a6 / a7 * v29);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v16, v37);
  }

  v31 = *(v17 + 32);
  v36 = v28;
  v31(v28, v16, AssociatedTypeWitness);
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v33 = *(v17 + 8);
  v33(v20, AssociatedTypeWitness);
  v34 = v38;
  (*(v17 + 16))(v38, v23, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v33(v23, AssociatedTypeWitness);
  v35 = (*(a4 + 40))(v40, a3, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v33(v34, AssociatedTypeWitness);
  v35(v40, 0);
  return (v33)(v36, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.PacedPathSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v53 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = type metadata accessor for Optional();
  v14 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v44 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v44 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v31 = a6 / a7;
  AnimatedValueTrack<A>.VectorPath.arcLength.getter(a2, a3, a4);
  v33 = v32;
  AnimatedValueTrack<A>.VectorPath.unitVelocityTangent(atArcLength:)(a2, a3, a4, v16, v31 * v32);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v16, v50);
  }

  v35 = *(v17 + 32);
  v36 = v30;
  v48 = v30;
  v35(v30, v16, AssociatedTypeWitness);
  v49 = a3;
  v37 = v17;
  v38 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = *(v37 + 16);
  v46(v27, v36, AssociatedTypeWitness);
  v45 = *(AssociatedConformanceWitness + 16);
  v47 = v27;
  v45(AssociatedTypeWitness, AssociatedConformanceWitness, v33 / a7);
  v44 = a4;
  (*(a4 + 24))(v49, a4);
  v50 = *(AssociatedConformanceWitness + 8);
  v40 = v51;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v41 = *(v37 + 8);
  v41(v38, AssociatedTypeWitness);
  v42 = v52;
  v46(v52, v40, AssociatedTypeWitness);
  v45(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v41(v40, AssociatedTypeWitness);
  v43 = (*(v44 + 40))(v54, v49);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v41(v42, AssociatedTypeWitness);
  v43(v54, 0);
  v41(v47, AssociatedTypeWitness);
  return (v41)(v48, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for AnimatedValueTrack<A><A>.PacedPathSource(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.PacedPathSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t static CombinedSource.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a7;
    type metadata accessor for CombinedSource(0, v14);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t CombinedSource.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for CombinedSource(0, v17);
  return (*(*(a5 - 8) + 32))(a8 + *(v15 + 60), a2, a5);
}

uint64_t AnimatedValueTrackSource.combined<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = AssociatedTypeWitness;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v22 = type metadata accessor for CombinedSource(0, v26);
  a6[3] = v22;
  a6[4] = swift_getWitnessTable(protocol conformance descriptor for CombinedSource<A, B, C>, v22);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return CombinedSource.init(first:second:)(v18, v14, AssociatedTypeWitness, a2, a3, a4, a5, boxed_opaque_existential_1);
}

uint64_t type metadata completion function for PrependingKeyPathSource(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PrependingKeyPathSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for PrependingKeyPathSource(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PrependingKeyPathSource(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_DWORD *storeEnumTagSinglePayload for PrependingKeyPathSource(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CombinedSource<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for CombinedSource<A, B, C>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyAnimatedValueTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyAnimatedValueTrackSource<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PrependingKeyPathSource<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for PrependingKeyPathSource<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t View.contentToolbar<A>(for:content:)(_BYTE *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v22 = a4;
  v8 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContentToolbarModifier(0, v13, v14, v12);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  LOBYTE(v8) = *v8;
  a2(v17);
  *v19 = v8;
  (*(v9 + 32))(&v19[*(v15 + 36)], v11, a5);
  MEMORY[0x18D00A570](v19, v22, v15, v23);
  return (*(v16 + 8))(v19, v15);
}

uint64_t View.contentToolbar<A>(for:content:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *a1;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;
  v9 = type metadata accessor for ToolbarItemGroup(255, a5, a7, a4);
  v12 = type metadata accessor for TupleToolbarContent(0, v9, v10, v11);
  return View.contentToolbar<A>(for:content:)(&v15, partial apply for closure #1 in View.contentToolbar<A>(for:content:), v14, a4, v12, a6);
}

uint64_t closure #1 in View.contentToolbar<A>(for:content:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ToolbarItemGroup(0, a4, a6, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  default argument 0 of ToolbarItemGroup.init(placement:content:)(v18);
  ToolbarItemGroup.init(placement:content:)(v18, a1, a4, a6, v12);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v12, v9, &protocol witness table for ToolbarItemGroup<A>);
  v16 = *(v10 + 8);
  v16(v12, v9);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v16)(v15, v9);
}

Swift::Int ContentToolbarPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ContentToolbarPlacement and conformance ContentToolbarPlacement()
{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentToolbarPlacement, &type metadata for ContentToolbarPlacement, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement);
  }

  return result;
}

uint64_t type metadata completion function for ContentToolbarModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentToolbarModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ContentToolbarModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 2;
  }
}

void ContentToolbarPlacement.Placement.adjustPlacements(storage:)(uint64_t a1, int a2)
{
  v37 = a1;
  v36 = a2;
  v2 = a2;
  v3 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10];
  v12 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v2)
  {
    v15 = *(v37 + 48);
    v16 = v15[2];
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v17 = 0;
        while (v17 < v15[2])
        {
          v22 = *(type metadata accessor for ToolbarStorage.Entry(0) - 8);
          v23 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17;
          _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v23, v11, type metadata accessor for ToolbarStorage.Entry.Kind);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of ToolbarStorage.Entry.Kind(v11, type metadata accessor for ToolbarStorage.Entry.Kind);
            _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v23, v8, type metadata accessor for ToolbarStorage.Entry.Kind);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v21 = type metadata accessor for ToolbarStorage.Entry.Kind;
              v20 = v8;
              goto LABEL_8;
            }

            v24 = v36;
            _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_1(v8, v5, type metadata accessor for ToolbarStorage.GroupItem);
            v25 = (v5 + 80);
            if (v24 == 1)
            {
              outlined init with copy of ToolbarItemPlacement.Role(v25, &v38);
              if (v41 == 2 && v38 == 13 && (v26 = vorrq_s8(v39, v40), !*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL))))
              {
                v27 = 31;
              }

              else
              {
                outlined destroy of ToolbarItemPlacement.Role(&v38);
                v27 = 30;
              }

              goto LABEL_40;
            }

            outlined init with copy of ToolbarItemPlacement.Role(v25, &v38);
            if (v41 != 2)
            {
              goto LABEL_38;
            }

            v33 = vorrq_s8(v39, v40);
            v34 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
            if (v38 == 9 && !*&v34)
            {
              v27 = 27;
LABEL_40:
              v42 = v27;
              v43 = 0u;
              v44 = 0u;
              v45 = 2;
              outlined assign with take of ToolbarItemPlacement.Role(&v42, (v5 + 80));
              outlined destroy of ToolbarStorage.Entry.Kind(v23, type metadata accessor for ToolbarStorage.Entry.Kind);
              v19 = type metadata accessor for ToolbarStorage.GroupItem;
              _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v5, v23, type metadata accessor for ToolbarStorage.GroupItem);
              swift_storeEnumTagMultiPayload();
              v20 = v5;
              goto LABEL_7;
            }

            if (v38 != 10 || *&v34)
            {
LABEL_38:
              outlined destroy of ToolbarItemPlacement.Role(&v38);
            }

            v27 = 28;
            goto LABEL_40;
          }

          v28 = v36;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_1(v11, v14, type metadata accessor for ToolbarStorage.Item);
          v29 = (v14 + 112);
          if (v28 == 1)
          {
            outlined init with copy of ToolbarItemPlacement.Role(v29, &v38);
            if (v41 == 2 && v38 == 13 && (v30 = vorrq_s8(v39, v40), !*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL))))
            {
              v18 = 31;
            }

            else
            {
              outlined destroy of ToolbarItemPlacement.Role(&v38);
              v18 = 30;
            }

            goto LABEL_6;
          }

          outlined init with copy of ToolbarItemPlacement.Role(v29, &v38);
          if (v41 != 2)
          {
            goto LABEL_34;
          }

          v31 = vorrq_s8(v39, v40);
          v32 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
          if (v38 != 9 || *&v32)
          {
            if (v38 != 10 || *&v32)
            {
LABEL_34:
              outlined destroy of ToolbarItemPlacement.Role(&v38);
            }

            v18 = 28;
            goto LABEL_6;
          }

          v18 = 27;
LABEL_6:
          v42 = v18;
          v43 = 0u;
          v44 = 0u;
          v45 = 2;
          outlined assign with take of ToolbarItemPlacement.Role(&v42, (v14 + 112));
          outlined destroy of ToolbarStorage.Entry.Kind(v23, type metadata accessor for ToolbarStorage.Entry.Kind);
          v19 = type metadata accessor for ToolbarStorage.Item;
          _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v14, v23, type metadata accessor for ToolbarStorage.Item);
          swift_storeEnumTagMultiPayload();
          v20 = v14;
LABEL_7:
          v21 = v19;
LABEL_8:
          outlined destroy of ToolbarStorage.Entry.Kind(v20, v21);
          ++v17;
          *(v37 + 48) = v15;
          if (v16 == v17)
          {
            return;
          }
        }

        __break(1u);
LABEL_43:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      }
    }
  }
}

uint64_t static ContentToolbarModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v96 = a2[2];
  v97 = v9;
  v11 = a2[3];
  v98 = a2[4];
  v12 = a2[1];
  v94 = *a2;
  v95 = v12;
  v90 = v96;
  v91 = v11;
  v92 = a2[4];
  v42 = *a1;
  v99 = *(a2 + 20);
  v93 = *(a2 + 20);
  v88 = v94;
  v89 = v10;
  outlined init with copy of _ViewInputs(&v94, v102);
  PreferenceKeys.add(_:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  *&v102[0] = MEMORY[0x1E69E7CC8];
  LOBYTE(v100[0]) = 0;
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](0);
  GraphHost.intern<A>(_:for:id:)();

  AGGraphCreateIndirectAttribute2();
  *&v102[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.setter();
  LOBYTE(v102[0]) = 1;
  lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
  PropertyList.subscript.setter();
  v100[2] = v90;
  v100[3] = v91;
  v100[4] = v92;
  v101 = v93;
  v100[0] = v88;
  v100[1] = v89;
  v85 = v90;
  *v86 = v91;
  *&v86[16] = v92;
  v87 = v93;
  v83 = v88;
  v84 = v89;
  v13 = outlined init with copy of _ViewInputs(v100, v102);
  a3(&v48, v13, &v83);
  v102[2] = v85;
  v102[3] = *v86;
  v102[4] = *&v86[16];
  v103 = v87;
  v102[0] = v83;
  v102[1] = v84;
  outlined destroy of _ViewInputs(v102);
  *&v83 = v48;
  DWORD2(v83) = v49;

  v14 = PreferencesOutputs.subscript.getter();

  v80 = v94;
  v81 = v95;
  v82 = v96;
  LOBYTE(v73[0]) = 1;
  outlined init with copy of _GraphInputs(&v94, &v83);
  outlined init with copy of _GraphInputs(&v94, &v83);
  PropertyList.subscript.setter();
  _GraphInputs.pushStyleContext<A>(_:)();
  outlined destroy of _GraphInputs(&v94);
  v15 = v95;
  swift_beginAccess();
  v16 = *MEMORY[0x1E698D3F8];
  if ((v14 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = v14;
  }

  *&v83 = __PAIR64__(v17, *(v15 + 16));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  static ToolbarGraphUtilities.makePreferenceInputs()();
  v18 = v83;
  v19 = DWORD2(v83);
  type metadata accessor for PreferenceBridge();
  swift_allocObject();
  *&v83 = PreferenceBridge.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *v79 = v18;
  v75[0] = v80;
  v75[1] = v81;
  v75[2] = v82;
  v76 = v80;
  v77 = v81;
  v78 = v82;
  *&v79[8] = v19;
  *&v79[16] = 0;
  *&v79[24] = v20;
  v56 = a4;
  v57 = a5;
  LODWORD(v67) = v42;
  outlined init with copy of _GraphInputs(v75, &v83);
  type metadata accessor for ContentToolbarModifier(255, a4, a5, v21);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v85 = v78;
  *v86 = *v79;
  *&v86[12] = *&v79[12];
  v83 = v76;
  v84 = v77;
  (*(a5 + 32))(v73, &v61, &v83, a4, a5);
  v22 = *&v73[0];
  LODWORD(v18) = DWORD2(v73[0]);
  *&v83 = *&v73[0];
  DWORD2(v83) = DWORD2(v73[0]);
  v23 = PreferencesOutputs.subscript.getter();
  *&v83 = v22;
  DWORD2(v83) = v18;
  v24 = PreferencesOutputs.subscript.getter();

  v54 = a4;
  v55 = a5;
  LODWORD(v83) = v42;
  _GraphValue.subscript.getter();
  v26 = v73[0];
  if ((v23 & 0x100000000) != 0)
  {
    v27 = v16;
  }

  else
  {
    v27 = v23;
  }

  *&v83 = __PAIR64__(HIDWORD(v95), v73[0]);
  DWORD2(v83) = v27;
  v28 = type metadata accessor for ContentToolbarModifier.AdjustedItemStorage(0, a4, a5, v25);
  v52 = v28;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContentToolbarModifier<A>.AdjustedItemStorage, v28);
  type metadata accessor for Attribute<ToolbarStorage?>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v83, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_32, v51, v28, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  v31 = v73[0];
  AGGraphGetFlags();
  AGGraphSetFlags();
  if ((v24 & 0x100000000) != 0)
  {
    v32 = v16;
  }

  else
  {
    v32 = v24;
  }

  PropertyList.subscript.getter();
  v33 = v83;
  *&v83 = __PAIR64__(v16, v26);
  *(&v83 + 1) = __PAIR64__(v31, v32);
  *&v84 = v33;
  DWORD2(v84) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetIndirectAttribute();
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v72 = v99;
  v67 = v94;
  v68 = v95;
  outlined init with copy of _ViewInputs(&v94, &v83);
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferencesOutputs.init()();
  v34 = v97;
  LODWORD(v83) = DWORD2(v97);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys();
  DWORD2(v70) = Attribute.init<A>(body:value:flags:update:)();
  v73[3] = v70;
  v73[4] = v71;
  v74 = v72;
  v73[0] = v67;
  v73[1] = v68;
  v73[2] = v69;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v61 = v67;
  v62 = v68;
  outlined init with copy of _ViewInputs(v73, &v83);
  PreferenceBridge.wrapOutputs(_:inputs:)();
  v85 = v63;
  *v86 = v64;
  *&v86[16] = v65;
  v87 = v66;
  v83 = v61;
  v84 = v62;
  outlined destroy of _ViewInputs(&v83);
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_18CD63410;
  v36 = v49;
  *(v35 + 32) = v48;
  *(v35 + 40) = v36;
  *(v35 + 48) = v46;
  *(v35 + 56) = v47;

  PreferencesOutputs.init()();
  v44 = v61;
  v45 = DWORD2(v61);
  v37 = *(v34 + 16);
  if (v37)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v38 = 1;
    do
    {
      v39 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v39(&v61, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v38;
    }

    while (v38 - v37 != 1);
    outlined destroy of _ToolbarInputs(&v76);
  }

  else
  {

    outlined destroy of _ToolbarInputs(&v76);
  }

  v58[2] = v69;
  v58[3] = v70;
  v58[4] = v71;
  v59 = v72;
  v58[0] = v67;
  v58[1] = v68;
  outlined destroy of _ViewInputs(v58);
  v60[0] = v80;
  v60[1] = v81;
  v60[2] = v82;
  outlined destroy of _GraphInputs(v60);
  v63 = v90;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  v61 = v88;
  v62 = v89;
  outlined destroy of _ViewInputs(&v61);

  v41 = v50;
  *a6 = v44;
  *(a6 + 8) = v45;
  *(a6 + 12) = v41;
  return result;
}

uint64_t closure #1 in static ContentToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ContentToolbarModifier(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t closure #2 in static ContentToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for ContentToolbarModifier(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_22, v8, &type metadata for ContentToolbarPlacement, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

void ContentToolbarModifier.AdjustedItemStorage.storage.getter(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v17 = *Value;
    v9 = *(Value + 64);
    v11 = *(Value + 32);
    v10 = *(Value + 48);
    v18 = *(Value + 16);
    v19 = v11;
    v20 = v10;
    v21 = v9;
    v14 = v18;
    v15 = v17;
    v12 = v10;
    v13 = v11;
    v3 = v9;
    outlined init with copy of ToolbarStorage(&v17, v16);
    v7 = v12;
    v6 = v13;
    v5 = v14;
    v4 = v15;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
}

__n128 ContentToolbarModifier.AdjustedItemStorage.value.getter@<Q0>(uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  ContentToolbarModifier.AdjustedItemStorage.storage.getter(a2, &v15);
  if (*v18)
  {
    v6 = BYTE8(v17);
    v11 = v15;
    v12 = v16;
    *&v13 = v17;
    *(&v13 + 9) = *(&v17 + 9);
    HIDWORD(v13) = HIDWORD(v17);
    *&v14[8] = *&v18[8];
    BYTE8(v13) = BYTE8(v17);
    *v14 = *v18;
    Value = AGGraphGetValue();
    ContentToolbarPlacement.Placement.adjustPlacements(storage:)(&v11, *Value);
    AGGraphClearUpdate();
    closure #1 in ContentToolbarModifier.AdjustedItemStorage.value.getter(&v10);
    AGGraphSetUpdate();
    BYTE8(v13) = (v10 | v6) & 1;
  }

  else
  {
    v13 = v17;
    *v14 = *v18;
    *&v14[16] = *&v18[16];
    v11 = v15;
    v12 = v16;
  }

  v8 = *v14;
  *(a5 + 32) = v13;
  *(a5 + 48) = v8;
  *(a5 + 64) = *&v14[16];
  result = v12;
  *a5 = v11;
  *(a5 + 16) = result;
  return result;
}

void closure #1 in ContentToolbarModifier.AdjustedItemStorage.value.getter(_BYTE *a2@<X8>)
{
  AGGraphGetValue();

  v3 = Transaction.isAnimated.getter();

  *a2 = v3 & 1;
}

double protocol witness for static Rule.initialValue.getter in conformance ContentToolbarModifier<A>.AdjustedItemStorage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 1;
  return result;
}

__n128 protocol witness for Rule.value.getter in conformance ContentToolbarModifier<A>.AdjustedItemStorage@<Q0>(uint64_t a2@<X8>)
{
  ContentToolbarModifier.AdjustedItemStorage.value.getter(*(v2 + 8), v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentToolbarModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContentToolbarModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasContentToolbar(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContentToolbarPlacement.Placement()
{
  v1 = 0x5377656956626154;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656D75636F44;
  }
}

void type metadata accessor for Attribute<ToolbarStorage?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<ToolbarStorage?>)
  {
    type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<ToolbarStorage?>);
    }
  }
}

uint64_t outlined destroy of ToolbarStorage.Entry.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int PencilPreferredAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PencilPreferredAction and conformance PencilPreferredAction()
{
  result = lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction;
  if (!lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilPreferredAction, &type metadata for PencilPreferredAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts()
{
  result = lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts;
  if (!lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PencilPreferredAction.Guts, &unk_1EFFF8B20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts);
  }

  return result;
}

uint64_t key path setter for _PreviewHost.environment : _PreviewHost(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v7[0] = v3;
  v7[1] = v2;
  v5 = *(*v4 + 112);

  return v5(v7);
}

double _PreviewHost.environment.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;

  return result;
}

double _PreviewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;

  return result;
}

uint64_t key path setter for _PreviewHost.focusedValues : _PreviewHost(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 1);
  v4 = *(*v3 + 136);

  return v4(&v6);
}

double _PreviewHost.focusedValues.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 56);

  return result;
}

double _PreviewHost.focusedValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;

  return result;
}

uint64_t static _PreviewHost.makeHost(providerType:)(uint64_t a1)
{
  lazy protocol witness table accessor for type PreviewDescriptor and conformance PreviewDescriptor();
  v1 = static ProtocolDescriptor.conformance(of:)();
  if (!v4)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for _PreviewHost?(0, &lazy cache variable for type metadata for _PreviewHost?, v2, type metadata accessor for _PreviewHost, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  return v4;
}

unint64_t lazy protocol witness table accessor for type PreviewDescriptor and conformance PreviewDescriptor()
{
  result = lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor;
  if (!lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewDescriptor, &type metadata for PreviewDescriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor);
  }

  return result;
}

uint64_t *partial apply for closure #1 in static _PreviewHost.makeHost(providerType:)@<X0>(uint64_t **a1@<X8>, uint64_t a2@<X3>)
{
  type metadata accessor for PreviewProviderHost(0, *(v2 + 16), *(v2 + 24), a2);
  swift_allocObject();
  result = PreviewProviderHost.init()();
  *a1 = result;
  return result;
}

uint64_t static _PreviewHost.makeHost<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  static Update.ensure<A>(_:)();
  return v4;
}

uint64_t closure #1 in static _PreviewHost.makeHost<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = AnyView.init<A>(_:)();
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  swift_allocObject();
  result = specialized PreviewHost.init(content:)(v8);
  *a4 = result;
  return result;
}

double _PreviewHost.updateContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v10 = v8;
    (*(v5 + 16))(v7, a1, a2);

    v11 = AnyView.init<A>(_:)();
    swift_beginAccess();
    *(v10 + 136) = v11;

    mainThreadPrecondition()();
    lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>()
{
  result = lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>;
  if (!lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>)
  {
    type metadata accessor for PreviewHost<AnyView>(255, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>);
  }

  return result;
}

uint64_t _PreviewHost.deinit()
{

  return v0;
}

double _PreviewHost.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughSubject<(), Never>();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PassthroughSubject<(), Never>()
{
  if (!lazy cache variable for type metadata for PassthroughSubject<(), Never>)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PassthroughSubject<(), Never>);
    }
  }
}

uint64_t type metadata completion function for PreviewHost(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t PreviewHost.content.didset()
{
  v1 = *v0;
  mainThreadPrecondition()();
  v3 = type metadata accessor for PreviewHost(0, *(v1 + 184), *(v1 + 192), v2);
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, v3);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t PreviewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;

  return PreviewHost.environment.didset(2, v4, v5, v6);
}

uint64_t (*PreviewHost.environment.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance TypeSelectHost<A>(v3);
  return PreviewHost.environment.modify;
}

uint64_t PreviewHost.environment.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PreviewHost(0, *(*v4 + 184), *(*v4 + 192), a4);
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, v5);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t PreviewHost.focusedValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;

  return PreviewHost.environment.didset(256, v6, v7, v8);
}

uint64_t (*PreviewHost.focusedValues.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance TypeSelectHost<A>(v3);
  return PreviewHost.focusedValues.modify;
}

void PreviewHost.environment.modify(void *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    PreviewHost.environment.didset(a3, v6, v7, v8);
  }

  free(v5);
}

uint64_t specialized PreviewHost.init(content:)(unint64_t a1)
{
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  type metadata accessor for EventBindingManager();
  *(v1 + 88) = EventBindingManager.__allocating_init()();
  *(v1 + 96) = 0;
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v6 = swift_allocObject();
  v6[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v4);
  v6[6] = 0;
  swift_unknownObjectWeakInit();
  v6[2] = v5;
  v6[4] = *(v5 + 16);
  *(v2 + 120) = v6;
  *(v2 + 128) = 0;
  *(v2 + 148) = *MEMORY[0x1E698D3F8];
  type metadata accessor for ViewGraph();
  swift_allocObject();
  *(v2 + 72) = ViewGraph.init<A>(rootViewType:requestedOutputs:)();
  v7 = swift_retain_n();
  v24 = specialized FocusViewGraph.init(graph:)(v7);
  v25 = v8;
  v26 = v9;
  v27 = v10 & 1;
  v28 = v11 & 1;
  v29 = v12 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();

  AGGraphSetValue();
  v13 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  v14 = *(v2 + 72);
  swift_beginAccess();
  v15 = *(v14 + 32);
  type metadata accessor for _ViewList_Subgraph();
  v16 = swift_allocObject();
  *(v16 + 24) = 1;
  *(v16 + 16) = v15;
  *(v2 + 80) = v16;
  *(v2 + 136) = a1;
  v24 = a1;
  v17 = v15;

  v18 = MEMORY[0x1E6981910];
  LODWORD(v15) = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 144) = v15;
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  *(v2 + 16) = PassthroughSubject.init()();
  EnvironmentValues.init()();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = xmmword_18CD76350;
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, v18, MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>();

  ViewGraphRootValueUpdater.initializeViewGraph()();
  v19 = *(v2 + 72);
  swift_beginAccess();
  v31[0] = *(v19 + 72);
  v31[1] = *(v19 + 88);
  v31[2] = *(v19 + 104);
  v20 = *(v19 + 88);
  v23[0] = *(v19 + 72);
  v23[1] = v20;
  v23[2] = *(v19 + 104);
  outlined init with copy of _GraphInputs(v31, &v24);
  _ViewListInputs.init(_:)();
  if ((v30 & 0x400) == 0)
  {
    v30 |= 0x400uLL;
  }

  static View.makeDebuggableViewList(view:inputs:)();
  v21 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v23);
  outlined destroy of _ViewListInputs(&v24);
  *(v2 + 148) = v21;
  AGSubgraphSetCurrent();

  return v2;
}

uint64_t PreviewHost.invalidateEverything()()
{
  mainThreadPrecondition()();
  static Update.ensure<A>(_:)();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return AGGraphInvalidateAllValues();
  }

  __break(1u);
  return result;
}

uint64_t PreviewHost.previews.getter()
{
  mainThreadPrecondition()();
  MEMORY[0x18D00ABE0]();
  if (*(v0 + *(*v0 + 296)) == *MEMORY[0x1E698D3F8])
  {
    *&v29 = MEMORY[0x1E697E118];
    *(&v29 + 1) = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  }

  else
  {
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewList, MEMORY[0x1E6981D10], 1);
    Value = AGGraphGetValue();
    outlined init with copy of _Benchmark(Value, v35);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v35, &v27);
  }

  _ViewList_Subgraph.wrapping(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v27);
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 32);
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v4 = v27;
  v5 = v28;
  v6 = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v35, v40);
  v41 = v3;
  v42 = v4;
  v43 = v5;
  PreviewHost.renderUntilStable()(v6);
  outlined init with copy of _VariadicView_Children(v40, v39);
  v7 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v7 < 0 || result < v7)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = 0;
    v10 = v38;
    while (1)
    {
      result = _VariadicView_Children.endIndex.getter();
      if (v9 >= result)
      {
        break;
      }

      _VariadicView_Children.subscript.getter();
      v24 = v9;
      v25[3] = v31;
      v25[4] = v32;
      v25[5] = v33;
      v26 = v34;
      v25[0] = v28;
      v25[1] = v29;
      v25[2] = v30;
      outlined init with copy of _VariadicView_Children.Element(v25, v23);
      outlined init with copy of _VariadicView_Children.Element(v23, v35);
      *(&v36 + 1) = v9;
      type metadata accessor for _VariadicView_Children.Element.Type();
      v11 = String.init<A>(describing:)();
      v13 = v12;
      outlined destroy of _VariadicView_Children.Element(v23);
      *&v37 = v11;
      *(&v37 + 1) = v13;
      _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(&v24, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      v38 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v10 = v38;
      }

      *(v10 + 16) = v15 + 1;
      v16 = (v10 + (v15 << 7));
      v17 = v35[0];
      v18 = v35[1];
      v19 = v35[3];
      v16[4] = v35[2];
      v16[5] = v19;
      v16[2] = v17;
      v16[3] = v18;
      v20 = v35[4];
      v21 = v35[5];
      v22 = v37;
      v16[8] = v36;
      v16[9] = v22;
      v16[6] = v20;
      v16[7] = v21;
      result = _VariadicView_Children.endIndex.getter();
      if (v9 >= result)
      {
        goto LABEL_18;
      }

      if (v7 == ++v9)
      {
        _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(v39, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
        outlined destroy of _VariadicView_Children(v40);
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(v39, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
  outlined destroy of _VariadicView_Children(v40);
  v10 = MEMORY[0x1E69E7CC0];
LABEL_16:
  static Update.end()();
  return v10;
}

void PreviewHost.renderUntilStable()(uint64_t a1)
{
  v2 = 32;
  while (1)
  {
    *(v1 + 128) = 1;
    AGGraphClearUpdate();
    closure #1 in PreviewHost.renderUntilStable()(v1, v3, v4, v5);
    AGGraphSetUpdate();
    if (*(v1 + 129) != 1)
    {
      break;
    }

    *(v1 + 128) = 0;
    if (!--v2)
    {
      return;
    }
  }

  *(v1 + 128) = 0;
}

uint64_t closure #1 in PreviewHost.renderUntilStable()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 1;
  v4 = type metadata accessor for PreviewHost(0, *(*a1 + 184), *(*a1 + 192), a4);
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, v4, 0, v6);
  return ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t PreviewHost.updateRootView()(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 184);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-v4];
  v7 = *(v6 + 280);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  v8 = *(v1 + *(*v1 + 288));
  v13 = v2;
  v14 = v8;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.setValue(_:), v12, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v9);
  return (*(v3 + 8))(v5, v2);
}

double PreviewHost.updateEnvironment()()
{
  _PreviewHost.environment.getter(&v5);
  swift_weakInit();
  swift_weakAssign();
  LOBYTE(v3) = 0;
  outlined init with copy of WeakBox<SceneStorageValues>?(&v2, v4);
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    v0 = v6;
  }

  else
  {

    v0 = 0;
  }

  _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(&v2, type metadata accessor for WeakBox<SceneStorageValues>?);
  v2 = v5;
  v3 = v0;

  GraphHost.setEnvironment(_:)();

  return result;
}

double PreviewHost.updateFocusedValues()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v6 = v1;
  v7 = v3;
  v8 = v2;
  ViewGraph.setFocusedValues(_:)(&v5);

  return result;
}

uint64_t PreviewHost.__ivar_destroyer()
{
  v1 = *v0;

  v2 = *(*(*(v1 + 184) - 8) + 8);
  v3 = v0 + *(*v0 + 280);

  return v2(v3);
}

uint64_t *PreviewHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 184) - 8) + 8))(v0 + *(*v0 + 280));
  return v0;
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance PreviewHost<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, a1);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

double protocol witness for ViewGraphOwner.currentTimestamp.getter in conformance PreviewHost<A>@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

void protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance PreviewHost<A>(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 104) = v2;
}

void protocol witness for ViewGraphOwner.renderingPhase.setter in conformance PreviewHost<A>(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 98) = v2;
}

uint64_t protocol witness for ViewGraphDelegate.as<A>(_:) in conformance PreviewHost<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, a3);

  return MEMORY[0x1EEDDF960](a1, a3, a2, WitnessTable);
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance PreviewHost<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, a4);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance PreviewHost<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, a1);

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t *PreviewProviderHost.init()()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v1 + 32))(v2, v1, v5);
  v8 = specialized PreviewHost.init(content:)(v7);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t PreviewProviderHost.invalidatePreviews()()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 32))(v2, v1, v5);
  specialized PreviewHost.content.setter(v7);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

double PreviewHost.__deallocating_deinit()
{
  PreviewHost.deinit();

  swift_deallocClassInstance();
  return result;
}

void type metadata accessor for _PreviewHost?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

void type metadata accessor for PreviewHost<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for PreviewHost<AnyView>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double specialized PreviewHost.requestUpdate(after:)()
{
  if (*(v0 + 128))
  {
    *(v0 + 129) = 1;
  }

  else
  {

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in PreviewHost.requestUpdate(after:)()
{
  v1 = *v0;
  v2 = lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, MEMORY[0x1E695BF80]);

  return MEMORY[0x1EEDB5E18](v1, v2);
}

uint64_t *specialized PreviewHost.init(content:)(uint64_t a1)
{
  v2 = v1;
  v38 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  type metadata accessor for EventBindingManager();
  v1[11] = EventBindingManager.__allocating_init()();
  *(v1 + 48) = 0;
  *(v1 + 98) = 0;
  v1[13] = 0;
  v1[14] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v7 = swift_allocObject();
  v7[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v5);
  v7[6] = 0;
  swift_unknownObjectWeakInit();
  v7[2] = v6;
  v7[4] = *(v6 + 16);
  v2[15] = v7;
  *(v2 + 64) = 0;
  *(v2 + *(*v2 + 296)) = *MEMORY[0x1E698D3F8];
  type metadata accessor for ViewGraph();
  swift_allocObject();
  v2[9] = ViewGraph.init<A>(rootViewType:requestedOutputs:)();
  v8 = swift_retain_n();
  v30 = specialized FocusViewGraph.init(graph:)(v8);
  v31 = v9;
  v32 = v10;
  v33 = v11 & 1;
  v34 = v12 & 1;
  v35 = v13 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();

  AGGraphSetValue();
  v14 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  v15 = v2[9];
  swift_beginAccess();
  v16 = *(v15 + 32);
  type metadata accessor for _ViewList_Subgraph();
  v17 = swift_allocObject();
  *(v17 + 24) = 1;
  *(v17 + 16) = v16;
  v2[10] = v17;
  v18 = *(v4 + 184);
  (*(*(v18 - 8) + 16))(v2 + *(*v2 + 280), a1, v18);
  v28 = v18;
  v19 = type metadata accessor for Attribute();
  v20 = v16;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v27, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v21);
  *(v2 + *(*v2 + 288)) = v30;
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  v2[2] = PassthroughSubject.init()();
  EnvironmentValues.init()();
  v2[5] = 0;
  *(v2 + 48) = 0;
  *(v2 + 7) = xmmword_18CD76350;
  v23 = type metadata accessor for PreviewHost(0, v18, *(v4 + 192), v22);

  swift_getWitnessTable(protocol conformance descriptor for PreviewHost<A>, v23);
  ViewGraphRootValueUpdater.initializeViewGraph()();
  v24 = v2[9];
  swift_beginAccess();
  v37[0] = *(v24 + 72);
  v37[1] = *(v24 + 88);
  v37[2] = *(v24 + 104);
  v25 = *(v24 + 88);
  v29[0] = *(v24 + 72);
  v29[1] = v25;
  v29[2] = *(v24 + 104);
  outlined init with copy of _GraphInputs(v37, &v30);
  _ViewListInputs.init(_:)();
  if ((v36 & 0x400) == 0)
  {
    v36 |= 0x400uLL;
  }

  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  *(v2 + *(*v2 + 296)) = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v29);
  outlined destroy of _ViewListInputs(&v30);
  AGSubgraphSetCurrent();

  return v2;
}

uint64_t specialized PreviewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  swift_beginAccess();
  (*(*(*(v3 + 184) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return PreviewHost.content.didset();
}

unint64_t lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList()
{
  result = lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList;
  if (!lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E110], MEMORY[0x1E697E118], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList);
  }

  return result;
}

double ToolbarControlGroupStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t static ToolbarControlGroupStyle.CollapsedViewModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _DWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v30 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v34 = a5;
  v35 = a6;
  v36[0] = v9;
  type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  static View.makeDebuggableViewList(view:inputs:)();
  v10 = _ViewListOutputs.makeAttribute(inputs:)();
  v11 = _ViewListInputs.traits.getter();
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v14 = *MEMORY[0x1E698D3F8];
  v15 = outlined init with copy of _ViewListInputs(a2, v36);
  if (v37)
  {
    v32 = v37;
    LOBYTE(v33) = v38 & 1;
    v37 = 0;
    v38 = 0;
    specialized Set._Variant.insert(_:)(&v31, &type metadata for ControlGroupCollapsedViewKey);
    v16 = v32;
    v17 = v33;

    v37 = v16;
    v38 = v17;
  }

  if ((v11 & 0x100000000) != 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = v11;
  }

  v32 = __PAIR64__(v18, v10);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v27 = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait(0, a5, a6, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ToolbarControlGroupStyle.CollapsedViewModifier<A>.AddTrait, v27);
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  v21 = v20;
  v22 = v13;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, &v26, v27, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v23);

  LOBYTE(v32) = 0;
  v24 = _ViewListInputs.traits.setter();
  v30(v24, v36);

  outlined destroy of _ViewListOutputs(v39);
  return outlined destroy of _ViewListInputs(v36);
}

uint64_t closure #1 in static ToolbarControlGroupStyle.CollapsedViewModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait.value.getter@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  TableRow.MakeList.traits.getter(a1, v8);
  if (v8[0])
  {
    v14 = v8[0];
  }

  else
  {
    ViewTraitCollection.init()();
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v10);
  v6 = a2;
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v11 = v6;
  v12 = v8[0];
  v13 = v8[1];
  if (_VariadicView_Children.endIndex.getter())
  {
    _VariadicView_Children.subscript.getter();
    outlined init with copy of _ViewList_View(v8, v9);
    outlined destroy of _VariadicView_Children.Element(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  outlined init with copy of _ViewList_View?(v9, v8);
  ViewTraitCollection.subscript.setter();
  outlined destroy of _ViewList_View?(v9);
  result = outlined destroy of _VariadicView_Children(v10);
  *a3 = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>();
    v5[1] = &protocol witness table for ToolbarControlGroupStyle.CollapsedViewModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>)
  {
    type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>();
    type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>);
    }
  }
}

void type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>()
{
  if (!lazy cache variable for type metadata for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>)
  {
    v0 = type metadata accessor for Section(0, MEMORY[0x1E6981E70], &type metadata for ControlGroupStyleConfiguration.Content, MEMORY[0x1E6981E70]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>);
    }
  }
}

void type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>)
  {
    type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>();
    v3 = v2;
    v4 = lazy protocol witness table accessor for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>();
    v6 = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>);
    }
  }
}

void type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for ControlGroupStyleConfiguration.Label;
    v4[1] = &type metadata for ControlGroupStyleConfiguration.Content;
    v4[2] = &protocol witness table for ControlGroupStyleConfiguration.Label;
    v4[3] = &protocol witness table for ControlGroupStyleConfiguration.Content;
    v2 = type metadata accessor for Menu(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>()
{
  result = lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>;
  if (!lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>)
  {
    type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>();
    result = swift_getWitnessTable(protocol conformance descriptor for Menu<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>)
  {
    v4[3] = v0;
    v4[4] = v1;
    type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>();
    v4[0] = MEMORY[0x1E6981E60];
    v4[1] = &protocol witness table for ControlGroupStyleConfiguration.Content;
    v4[2] = MEMORY[0x1E6981E60];
    result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ControlGroupCollapsedViewKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _ViewList_View?(&static ControlGroupCollapsedViewKey.defaultValue, v2);
}

uint64_t outlined init with copy of _ViewList_View?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithCopy for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

void *assignWithTake for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t outlined destroy of _ViewList_View?(uint64_t a1)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Gesture<>.callbacks(pressing:pressed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27[5] = a8;
  v27[1] = a5;
  v27[2] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for PressableGestureCallbacks(255, AssociatedTypeWitness, a7, v16);
  v27[3] = swift_getWitnessTable(protocol conformance descriptor for PressableGestureCallbacks<A>, v17);
  v28 = type metadata accessor for CallbacksGesture();
  v29 = a5;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E958], v28);
  v31 = a6;
  v18 = type metadata accessor for ModifierGesture();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v27 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = a1;
  v28 = a1;
  v29 = a2;
  v24 = a2;
  WitnessTable = partial apply for closure #1 in static UIView.animate(_:changes:completion:);
  v31 = v22;
  v25 = v23;
  outlined copy of AppIntentExecutor?(v23, v24);
  outlined copy of AppIntentExecutor?(a3, a4);
  Gesture.callbacks<A>(_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v25, v24);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(partial apply for closure #1 in static UIView.animate(_:changes:completion:), v22);
  swift_getWitnessTable(MEMORY[0x1E697E860], v18);
  Gesture.cancellable()();
  return (*(v19 + 8))(v21, v18);
}

uint64_t (*PressableGestureCallbacks.dispatch(phase:state:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v62 = a4;
  v63 = a8;
  v60 = a6;
  v61 = a5;
  v64 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for GesturePhase();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v58 - v20;
  (*(v18 + 16))(&v58 - v20, a1, v17, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *a2;
      *a2 = 0;
      if (v23 == 1)
      {
        v24 = v64;
        if (v64)
        {
          v25 = swift_allocObject();
          v26 = v62;
          *(v25 + 16) = v24;
          *(v25 + 24) = v26;
          v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        }

        else
        {
          v27 = 0;
          v25 = 0;
          v26 = v62;
        }

        LOBYTE(v65) = 0;
        outlined copy of AppIntentExecutor?(v24, v26);
        v49 = bind<A>(_:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27, v25);
        return v49;
      }
    }

    else
    {
      v39 = (*(v63 + 24))(a1, a7) & 1;
      if (v39 != *a2)
      {
        *a2 = v39;
        v40 = v64;
        if (v64)
        {
          v41 = swift_allocObject();
          v42 = v62;
          *(v41 + 16) = v40;
          *(v41 + 24) = v42;
          v43 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        }

        else
        {
          v43 = 0;
          v41 = 0;
          v42 = v62;
        }

        LOBYTE(v65) = v39;
        outlined copy of AppIntentExecutor?(v40, v42);
        v49 = bind<A>(_:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v43, v41);
        (*(v18 + 8))(v21, v17);
        return v49;
      }

      (*(v18 + 8))(v21, v17);
    }

    return 0;
  }

  v28 = v61;
  v59 = v11;
  v29 = *(v11 + 32);
  v29(v16, v21, a7);
  v30 = *a2;
  *a2 = 0;
  v31 = v64;
  if (v30 == 1 && v64)
  {
    if (v28)
    {
      v32 = v28;
      v29(v13, v16, a7);
      v33 = (*(v59 + 80) + 64) & ~*(v59 + 80);
      v34 = swift_allocObject();
      v36 = v62;
      v35 = v63;
      *(v34 + 2) = a7;
      *(v34 + 3) = v35;
      *(v34 + 4) = v31;
      *(v34 + 5) = v36;
      *(v34 + 6) = v28;
      v37 = v60;
      *(v34 + 7) = v60;
      v29(&v34[v33], v13, a7);
      outlined copy of AppIntentExecutor?(v31, v36);
      outlined copy of AppIntentExecutor?(v32, v37);
      return partial apply for closure #1 in PressableGestureCallbacks.dispatch(phase:state:);
    }

    else
    {
      v55 = *(v59 + 8);
      v56 = v62;

      v55(v16, a7);
      v57 = swift_allocObject();
      *(v57 + 16) = v31;
      *(v57 + 24) = v56;
      return partial apply for closure #1 in OnFocusObserver.lostFocus();
    }
  }

  else
  {
    v44 = v28;
    if (v28)
    {
      v45 = swift_allocObject();
      v47 = v59;
      v46 = v60;
      *(v45 + 16) = v28;
      *(v45 + 24) = v46;
      v48 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGPoint?) -> ();
    }

    else
    {
      v48 = 0;
      v45 = 0;
      v47 = v59;
      v46 = v60;
    }

    v50 = v63;
    v51 = *(v63 + 16);
    outlined copy of AppIntentExecutor?(v44, v46);
    v65 = v51(a7, v50);
    v66 = v52;
    v67 = v53 & 1;
    type metadata accessor for CGPoint?(0);
    v54 = bind<A>(_:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v48, v45);
    (*(v47 + 8))(v16, a7);
    return v54;
  }
}

uint64_t PressableGestureCallbacks.cancel(state:)(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v3 = a2;
    v4 = a3;
    v5 = swift_allocObject();
    a2 = v3;
    a3 = v4;
    v6 = v5;
    *(v5 + 16) = a2;
    *(v5 + 24) = v4;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  outlined copy of AppIntentExecutor?(a2, a3);
  v9 = bind<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v6);
  return v9;
}

unint64_t instantiation function for generic protocol witness table for CGPoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CGPoint and conformance CGPoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGPoint and conformance CGPoint()
{
  result = lazy protocol witness table cache variable for type CGPoint and conformance CGPoint;
  if (!lazy protocol witness table cache variable for type CGPoint and conformance CGPoint)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable(MEMORY[0x1E695EFB8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicalButtonEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicalButtonEvent and conformance PhysicalButtonEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonEvent and conformance PhysicalButtonEvent()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent;
  if (!lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697F770], MEMORY[0x1E697F768], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpatialEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialEvent and conformance SpatialEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEvent and conformance SpatialEvent()
{
  result = lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent;
  if (!lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DF88], MEMORY[0x1E697DF80], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TappableEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TappableEvent and conformance TappableEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TappableEvent and conformance TappableEvent()
{
  result = lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent;
  if (!lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E1D8], MEMORY[0x1E697E1D0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TappableSpatialEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TappableSpatialEvent and conformance TappableSpatialEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TappableSpatialEvent and conformance TappableSpatialEvent()
{
  result = lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent;
  if (!lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FA98], MEMORY[0x1E697FA90], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpatialLongPressGesture.Value(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for CGPoint?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CGPoint?)
  {
    type metadata accessor for CGPoint(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CGPoint?);
    }
  }
}

uint64_t partial apply for closure #1 in PressableGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  (*(v0 + 32))(0);
  v4 = (*(v2 + 16))(v1, v2);
  return v3(v4);
}

uint64_t closure #1 in Gesture<>.callbacks(pressing:pressed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    return a4(a1, a2, a3);
  }

  return a1;
}

uint64_t closure #1 in DoubleColumnNavigationView.body(children:)@<X0>(uint64_t a2@<X8>)
{
  v3 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v3 < 0 || result < v3)
  {
    goto LABEL_13;
  }

  if (v3 >= 2)
  {
    result = _VariadicView_Children.endIndex.getter();
    if (result)
    {
      result = _VariadicView_Children.endIndex.getter();
      v5 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        result = _VariadicView_Children.endIndex.getter();
        if ((v5 & 0x8000000000000000) == 0 && v5 < result)
        {
          result = _VariadicView_Children.subscript.getter();
          *(a2 + 64) = v10;
          *(a2 + 80) = v11;
          *(a2 + 96) = v12;
          *a2 = v6;
          *(a2 + 16) = v7;
          *(a2 + 32) = v8;
          *(a2 + 48) = v9;
          *(a2 + 104) = 0;
          return result;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a2 + 104) = 1;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance DoubleColumnNavigationView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

void protocol witness for _VariadicView_ViewRoot.body(children:) in conformance DoubleColumnNavigationView(uint64_t a2@<X8>)
{
  if (_VariadicView_Children.endIndex.getter())
  {
    _VariadicView_Children.subscript.getter();
    closure #1 in DoubleColumnNavigationView.body(children:)(a2 + 104);
    v3 = static Edge.Set.all.getter();
    *(a2 + 216) = -1;
    *(a2 + 224) = v3;
  }

  else
  {
    __break(1u);
  }
}

id BridgedSplitView.makeCoordinator()(uint64_t a1)
{
  v3 = *(a1 + 40);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v13 = v15;
  v16 = v3;
  v4 = type metadata accessor for BridgedSplitView.Coordinator(0, &v14);
  v6 = type metadata accessor for UIHostingController(0, v13, v3, v5);
  v9 = specialized UIHostingController.__allocating_init(rootView:)(v1 + *(a1 + 52), v6, v7, v8);
  v10 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

  v11 = objc_allocWithZone(v4);
  return BridgedSplitView.Coordinator.init(_:)(v10);
}

id BridgedSplitView.makeUIViewController(context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = type metadata accessor for UIHostingController(0, *(a2 + 16), *(a2 + 32), a4);
  v9 = specialized UIHostingController.__allocating_init(rootView:)(v4, v6, v7, v8);
  v10 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
  v11 = specialized UIHostingController.host.getter();
  _UIHostingView.renderForPreferences(updateDisplayList:)(0);

  v12 = [objc_allocWithZone(type metadata accessor for NotificationSendingSplitViewController()) initWithNibName:0 bundle:0];
  [v12 setDelegate_];
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CDDAC20;
  *(v13 + 32) = v10;
  v14 = *(v5 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController);
  *(v13 + 40) = v14;
  type metadata accessor for UIViewController();
  v15 = v14;
  v16 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setViewControllers_];

  [v12 setPreferredDisplayMode_];
  BridgedSplitView.Coordinator.placeholderHost.getter();
  v19 = v18;
  v20 = [v18 navigationItem];

  v21 = [v12 displayModeButtonItem];
  [v20 setLeftBarButtonItem_];

  return v12;
}

void BridgedSplitView.updateUIViewController(_:context:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = [a1 viewControllers];
  type metadata accessor for UIViewController();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v11 = MEMORY[0x18D00E9C0](0, v10);
    goto LABEL_6;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v10 + 32);
LABEL_6:
  v9 = v11;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_14:

    __break(1u);
    return;
  }

  v16[0] = v8;
  v16[1] = v7;
  v12 = *(a3 + 16);
  v13 = *(a3 + 32);

  UINavigationController.updateRootHost<A>(root:environment:transaction:)(v4, v16, v6, v12, v13);

  BridgedSplitView.Coordinator.placeholderHost.getter();
  v15 = v14;
  specialized UIHostingController.rootView.setter(v4 + *(a3 + 52));
}

void BridgedSplitView.Coordinator.placeholderHost.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = [*(v0 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController) viewControllers];
  type metadata accessor for UIViewController();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x18D00E9C0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  type metadata accessor for UIHostingController(0, *(v1 + 88), *(v1 + 104), v5);

  swift_dynamicCastClassUnconditional();
}

id BridgedSplitView.Coordinator.init(_:)(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  *(v1 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController) = a1;
  v3 = *(v2 + 96);
  v6[0] = *(v2 + 80);
  v6[1] = v3;
  v4 = type metadata accessor for BridgedSplitView.Coordinator(0, v6);
  v7.receiver = v1;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id @objc BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)(v7);

  return v9;
}

id BridgedSplitView.Coordinator.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for BridgedSplitView.Coordinator(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance BridgedSplitView<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BridgedSplitView.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

double NotificationSendingSplitViewController.showDetailViewController(_:sender:)(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willShowDetailNotification != -1)
  {
    swift_once();
  }

  v6 = static DoubleColumnNavigationViewStyle.willShowDetailNotification;
  type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>, type metadata accessor for (AnyHashable, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v21[0] = 0xD000000000000017;
  v21[1] = 0x800000018CD3F000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = type metadata accessor for UIViewController();
  *(inited + 72) = a1;
  v8 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 postNotificationName:v6 object:v2 userInfo:isa];

  outlined init with copy of Any?(a2, v21);
  v10 = v22;
  if (v22)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for NotificationSendingSplitViewController();
  v20.receiver = v2;
  v20.super_class = v17;
  objc_msgSendSuper2(&v20, sel_showDetailViewController_sender_, v8, v16);
  swift_unknownObjectRelease();
  return result;
}

id NotificationSendingSplitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSendingSplitViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(255, &lazy cache variable for type metadata for NavigationView<_NavigationViewStyleConfiguration.Content>, &type metadata for _NavigationViewStyleConfiguration.Content, &protocol witness table for _NavigationViewStyleConfiguration.Content, type metadata accessor for NavigationView);
    type metadata accessor for NavigationViewStyleModifier<ColumnNavigationViewStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>);
    }
  }
}

void type metadata accessor for NavigationViewStyleModifier<ColumnNavigationViewStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NavigationViewStyleModifier<ColumnNavigationViewStyle>)
  {
    v2 = lazy protocol witness table accessor for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle();
    v4 = type metadata accessor for NavigationViewStyleModifier(a1, &type metadata for ColumnNavigationViewStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for NavigationViewStyleModifier<ColumnNavigationViewStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for DoubleColumnNavigationView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView();
  *(a1 + 8) = result;
  return result;
}

void *specialized BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 topViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(v1 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController);
  v7 = v6;
  return v6;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3;
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>)
  {
    type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(255, &lazy cache variable for type metadata for Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>, type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>, MEMORY[0x1E69815F8]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>();
    v7[0] = MEMORY[0x1E697FFB8];
    v7[1] = v3;
    v7[2] = MEMORY[0x1E697FFB0];
    v7[3] = v4;
    v5 = type metadata accessor for BridgedSplitView(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(255, &lazy cache variable for type metadata for Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>, type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>, MEMORY[0x1E69815F8]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6981600], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    v6[0] = MEMORY[0x1E697FFB0];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t Optional<A>.apply<A>(as:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a7;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a4, v19);
  v22 = swift_dynamicCast();
  (*(*(a5 - 8) + 56))(v17, v22 ^ 1u, 1, a5);
  v28 = *(a4 + 16);
  v29 = a5;
  v30 = a6;
  v31 = v26;
  v32 = a2;
  v33 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(_sqd__Ign_qd__yts5NeverOIegnrzr_SHRzSHRd__r__lTRTA_0, v27, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v23, &v34);
  return (*(v15 + 8))(v17, v14);
}

uint64_t Set.apply<A>(as:operation:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  v30 = a3;
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  result = _setDownCastConditional<A, B>(_:)();
  if (!result)
  {
    v15 = static Array._allocateUninitialized(_:)();
    if (MEMORY[0x18D00CDF0](v15, a6))
    {
      v14 = specialized Set.init(_nonEmptyArrayLiteral:)(v15, a6, a8);

      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v14 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v18 = 0;
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);
    goto LABEL_12;
  }

  v14 = result;
  if ((result & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  __CocoaSet.makeIterator()();
  result = Set.Iterator.init(_cocoa:)();
  v14 = v31;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
LABEL_12:
  v28 = v17;
  v23 = (v17 + 64) >> 6;
  while (v14 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_25:
      (*(*(a6 - 8) + 56))(v12, 1, 1, a6);
      return outlined consume of Set<UIPress>.Iterator._Variant(v14);
    }

    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v26 = *(a6 - 8);
LABEL_15:
    (*(v26 + 56))(v12, 0, 1, a6);
    v29(v12);
    result = (*(v26 + 8))(v12, a6);
  }

  if (v19)
  {
    v24 = v18;
LABEL_14:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(a6 - 8);
    (*(v26 + 16))(v12, *(v14 + 48) + *(v26 + 72) * (v25 | (v24 << 6)), a6);
    goto LABEL_15;
  }

  v27 = v18;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      goto LABEL_25;
    }

    v19 = *(v16 + 8 * v24);
    ++v27;
    if (v19)
    {
      v18 = v24;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29[0] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v29 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  (*(v6 + 56))(v29 - v16, 1, 1, v5, v15);
  v31 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *(v11 + 16);
  v19(v10, v3, a1);
  v19(&v10[v18], v17, a1);
  v32 = v6;
  v20 = *(v6 + 48);
  if (v20(v10, 1, v5) != 1)
  {
    v19(v33, v10, a1);
    if (v20(&v10[v18], 1, v5) != 1)
    {
      v23 = v32;
      v24 = v29[0];
      (*(v32 + 32))(v29[0], &v10[v18], v5);
      v25 = v33;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v23 + 8);
      v26(v24, v5);
      v27 = *(v11 + 8);
      v27(v17, a1);
      v26(v25, v5);
      v27(v10, a1);
      return v22 & 1;
    }

    (*(v11 + 8))(v17, a1);
    (*(v32 + 8))(v33, v5);
    goto LABEL_6;
  }

  v21 = *(v11 + 8);
  v21(v17, a1);
  if (v20(&v10[v18], 1, v5) != 1)
  {
LABEL_6:
    (*(v30 + 8))(v10, v31);
    v22 = 0;
    return v22 & 1;
  }

  v21(v10, a1);
  v22 = 1;
  return v22 & 1;
}

uint64_t Optional<A>.contains<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v44[1] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44[0] = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v48 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v44 - v11;
  v50 = *(v9 - 8);
  v13 = v50;
  MEMORY[0x1EEE9AC00](v14);
  v49 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v51, a2, v23);
  v26 = swift_dynamicCast();
  v27 = *(v7 + 56);
  v27(v21, v26 ^ 1u, 1, a3);
  (*(v7 + 16))(v18, v52, a3);
  v27(v18, 0, 1, a3);
  v46 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v51 = v21;
  v52 = v13;
  v29 = *(v13 + 16);
  v30 = v21;
  v31 = v18;
  v32 = v48;
  v29(v12, v30, v48);
  v29(&v12[v28], v31, v32);
  v33 = v7;
  v34 = v12;
  v47 = v33;
  v35 = *(v33 + 48);
  if (v35(v12, 1, a3) != 1)
  {
    v29(v49, v12, v32);
    if (v35(&v12[v28], 1, a3) != 1)
    {
      v38 = v31;
      v39 = v47;
      v40 = v44[0];
      (*(v47 + 32))(v44[0], &v34[v28], a3);
      v41 = v49;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v39 + 8);
      v42(v40, a3);
      v36 = *(v50 + 8);
      v36(v38, v32);
      v42(v41, a3);
      v36(v34, v32);
      goto LABEL_8;
    }

    v36 = *(v50 + 8);
    v36(v31, v32);
    (*(v47 + 8))(v49, a3);
    goto LABEL_6;
  }

  v36 = *(v50 + 8);
  v36(v31, v32);
  if (v35(&v12[v28], 1, a3) != 1)
  {
LABEL_6:
    (*(v45 + 8))(v12, v46);
    v37 = 0;
    goto LABEL_8;
  }

  v36(v12, v32);
  v37 = 1;
LABEL_8:
  v36(v51, v32);
  return v37 & 1;
}

uint64_t Set.contains<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  result = _setDownCastConditional<A, B>(_:)();
  if (result)
  {
    v11 = MEMORY[0x18D00D1E0](a1, result, a4, a6);

    return v11 & 1;
  }

  return result;
}

uint64_t specialized AsAnySelection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  outlined init with copy of _Benchmark(a2, v19);
  type metadata accessor for Selection();
  v12 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v11, v12 ^ 1u, 1, a3);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AsAnySelection.set(base:newValue:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, &v20);
  return (*(v9 + 8))(v11, v8);
}

unint64_t type metadata accessor for Selection()
{
  result = lazy cache variable for type metadata for Selection;
  if (!lazy cache variable for type metadata for Selection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Selection);
  }

  return result;
}

void HelpLink.init(action:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void HelpButton.init(action:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t *initializeBufferWithCopyOfBuffer for HelpLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
    }

    swift_storeEnumTagMultiPayload();
    v10 = *(a3 + 20);
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(v12 + 3);
    v17 = v12[34];
    v18 = *(v12 + 16);
    outlined copy of Environment<OpenURLAction>.Content(*v12, v14, v15, v16, v18, v17);
    *v11 = v13;
    *(v11 + 1) = v14;
    *(v11 + 2) = v15;
    *(v11 + 3) = v16;
    *(v11 + 16) = v18;
    v11[34] = v17;
  }

  return a1;
}

double destroy for HelpLink(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = a1 + *(a2 + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 34);
  v11 = *(v5 + 32);

  return outlined consume of Environment<OpenURLAction>.Content(v6, v7, v8, v9, v11, v10);
}

void *initializeWithCopy for HelpLink(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
  }

  swift_storeEnumTagMultiPayload();
  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = v10[34];
  v16 = *(v10 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v12, v13, v14, v16, v15);
  *v9 = v11;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  *(v9 + 3) = v14;
  *(v9 + 16) = v16;
  v9[34] = v15;
  return a1;
}

void *assignWithCopy for HelpLink(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = v10[34];
  v16 = *(v10 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v12, v13, v14, v16, v15);
  v17 = *v9;
  v18 = *(v9 + 1);
  v19 = *(v9 + 2);
  v20 = *(v9 + 3);
  v21 = v9[34];
  *v9 = v11;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  *(v9 + 3) = v14;
  v22 = *(v9 + 16);
  *(v9 + 16) = v16;
  v9[34] = v15;
  outlined consume of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v22, v21);
  return a1;
}

uint64_t outlined destroy of HelpLink.Payload(uint64_t a1)
{
  v2 = type metadata accessor for HelpLink.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for HelpLink(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v11;
  *(v9 + 31) = *(v10 + 31);
  return a1;
}

char *assignWithTake for HelpLink(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    v6 = type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 16);
  v12 = v10[34];
  v13 = *v9;
  v14 = *(v9 + 1);
  v15 = *(v9 + 2);
  v16 = *(v9 + 3);
  v17 = v9[34];
  v18 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v18;
  v19 = *(v9 + 16);
  *(v9 + 16) = v11;
  v9[34] = v12;
  outlined consume of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v19, v17);
  return a1;
}

uint64_t type metadata completion function for HelpLink(uint64_t a1)
{
  result = type metadata accessor for HelpLink.Payload(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HelpLink and conformance HelpLink()
{
  result = lazy protocol witness table cache variable for type HelpLink and conformance HelpLink;
  if (!lazy protocol witness table cache variable for type HelpLink and conformance HelpLink)
  {
    v3 = type metadata accessor for HelpLink(255);
    result = swift_getWitnessTable(protocol conformance descriptor for HelpLink, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HelpLink and conformance HelpLink);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for HelpLink.Payload(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for HelpLink.Payload(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }

  else
  {
  }

  return result;
}

void *initializeWithCopy for HelpLink.Payload(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for HelpLink.Payload(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for HelpLink.Payload(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for HelpLink.Payload(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of HelpLink.Payload(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for HelpLink.Payload(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    v7 = a2[1];
    if (v7)
    {
      v8 = a2[2];
      *(v4 + 8) = v7;
      *(v4 + 16) = v8;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    v10 = a2[7];
    *(v4 + 24) = *(a2 + 12);
    *(v4 + 28) = *(a2 + 28);
    *(v4 + 36) = *(a2 + 36);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 40) = a2[5];
    *(v4 + 48) = *(a2 + 24);
    if (v10)
    {
      v11 = a2[8];
      *(v4 + 56) = v10;
      *(v4 + 64) = v11;
    }

    else
    {
      *(v4 + 56) = *(a2 + 7);
    }

    *(v4 + 72) = a2[9];
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 88) = *(a2 + 11);
    v12 = a3[7];
    v13 = type metadata accessor for UIButton.Configuration();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
      memcpy((v4 + v12), a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }

    v16 = a3[8];
    v17 = v4 + v16;
    v18 = a2 + v16;
    v19 = *(v18 + 1);
    if (v19)
    {
      *v17 = *v18;
      *(v17 + 8) = v19;
      *(v17 + 16) = v18[16];
    }

    else
    {
      *v17 = *v18;
      *(v17 + 16) = v18[16];
    }

    v20 = a3[9];
    v21 = v4 + v20;
    v22 = a2 + v20;
    v23 = *(v22 + 1);
    if (v23)
    {
      *v21 = *v22;
      *(v21 + 8) = v23;
      *(v21 + 16) = v22[16];
    }

    else
    {
      *v21 = *v22;
      *(v21 + 16) = v22[16];
    }
  }

  return v4;
}

uint64_t assignWithCopy for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v11 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v11;
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  v12 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 49) = *(a2 + 49);
  v13 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v13)
    {
      v14 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v14;

      goto LABEL_15;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 64);
    *(a1 + 56) = v13;
    *(a1 + 64) = v15;

    goto LABEL_15;
  }

  *(a1 + 56) = *(a2 + 56);
LABEL_15:
  v16 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v16;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v17 = a3[7];
  v18 = type metadata accessor for UIButton.Configuration();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(a1 + v17, 1, v18);
  v22 = v20(a2 + v17, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      (*(v19 + 16))(a1 + v17, a2 + v17, v18);
      (*(v19 + 56))(a1 + v17, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v22)
  {
    (*(v19 + 8))(a1 + v17, v18);
LABEL_20:
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v17), (a2 + v17), *(*(v23 - 8) + 64));
    goto LABEL_21;
  }

  (*(v19 + 24))(a1 + v17, a2 + v17, v18);
LABEL_21:
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = (a2 + v24);
  v27 = *(a1 + v24 + 8);
  v28 = *(a2 + v24 + 8);
  if (v27)
  {
    if (v28)
    {
      *v25 = *v26;

      *(v25 + 8) = *(v26 + 1);

      *(v25 + 16) = *(v26 + 16);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_2(v25, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v29 = *(v26 + 16);
      *v25 = *v26;
      *(v25 + 16) = v29;
    }
  }

  else if (v28)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 1);
    *(v25 + 16) = *(v26 + 16);
  }

  else
  {
    v30 = *v26;
    *(v25 + 16) = *(v26 + 16);
    *v25 = v30;
  }

  v31 = a3[9];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *(a1 + v31 + 8);
  v35 = *(a2 + v31 + 8);
  if (v34)
  {
    if (v35)
    {
      *v32 = *v33;

      *(v32 + 8) = *(v33 + 1);

      *(v32 + 16) = *(v33 + 16);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_2(v32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v36 = *(v33 + 16);
      *v32 = *v33;
      *(v32 + 16) = v36;
    }
  }

  else if (v35)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 1);
    *(v32 + 16) = *(v33 + 16);
  }

  else
  {
    v37 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v37;
  }

  return a1;
}

uint64_t initializeWithTake for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 88) = *(a2 + 88);
  v8 = a3[7];
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[8];
  v13 = a3[9];
  v14 = a1 + v12;
  v15 = a2 + v12;
  *v14 = *v15;
  *(v14 + 16) = *(v15 + 16);
  v16 = a1 + v13;
  v17 = a2 + v13;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t assignWithTake for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;
    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  v11 = *(a2 + 56);
  v12 = *(a1 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  if (v12)
  {
    if (v11)
    {
      v13 = *(a2 + 64);
      *(a1 + 56) = v11;
      *(a1 + 64) = v13;

      goto LABEL_15;
    }
  }

  else if (v11)
  {
    v14 = *(a2 + 64);
    *(a1 + 56) = v11;
    *(a1 + 64) = v14;
    goto LABEL_15;
  }

  *(a1 + 56) = *(a2 + 56);
LABEL_15:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v15 = a3[7];
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(a1 + v15, 1, v16);
  v20 = v18(a2 + v15, 1, v16);
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 32))(a1 + v15, a2 + v15, v16);
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v17 + 8))(a1 + v15, v16);
LABEL_20:
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v15), (a2 + v15), *(*(v21 - 8) + 64));
    goto LABEL_21;
  }

  (*(v17 + 40))(a1 + v15, a2 + v15, v16);
LABEL_21:
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  if (*(a1 + v22 + 8))
  {
    if (*(v24 + 8))
    {
      *v23 = *v24;

      *(v23 + 8) = *(v24 + 8);

      goto LABEL_26;
    }

    _s7SwiftUI7BindingVySbGWOhTm_2(v23, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  }

  *v23 = *v24;
LABEL_26:
  *(v23 + 16) = *(v24 + 16);
  v25 = a3[9];
  v26 = a1 + v25;
  v27 = a2 + v25;
  if (!*(a1 + v25 + 8))
  {
LABEL_30:
    *v26 = *v27;
    goto LABEL_31;
  }

  if (!*(v27 + 8))
  {
    _s7SwiftUI7BindingVySbGWOhTm_2(v26, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    goto LABEL_30;
  }

  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

LABEL_31:
  *(v26 + 16) = *(v27 + 16);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitFlattenedButtonAdaptor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v10 | 7 | *(v6 + 80);
  if (v12 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((((-105 - v10) | v10) - v11 - 31) | 7) - (((v10 | 7) + v7) & ~(v10 | 7)) - 17 >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v17 = a1 + v7;
    v18 = a2 + v7;
    v19 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    v21 = *(v20 + 8);
    if (v21)
    {
      v22 = *(v20 + 16);
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
    }

    else
    {
      *(v19 + 8) = *(v20 + 8);
    }

    v23 = ~v10;
    *(v19 + 24) = *(v20 + 24);
    *(v19 + 25) = *(v20 + 25);
    v24 = *(v20 + 28);
    *(v19 + 36) = *(v20 + 36);
    *(v19 + 28) = v24;
    *(v19 + 37) = *(v20 + 37);
    *(v19 + 38) = *(v20 + 38);
    v25 = *(v20 + 40);
    *(v19 + 48) = *(v20 + 48);
    *(v19 + 40) = v25;
    *(v19 + 49) = *(v20 + 49);
    v26 = *(v20 + 56);
    if (v26)
    {
      v27 = *(v20 + 64);
      *(v19 + 56) = v26;
      *(v19 + 64) = v27;
    }

    else
    {
      *(v19 + 56) = *(v20 + 56);
    }

    v28 = *(v20 + 72);
    *(v19 + 80) = *(v20 + 80);
    *(v19 + 72) = v28;
    v29 = ((v17 + 95) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v18 + 95) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + v10 + 8) & v23);
    v34 = ((v32 + v10 + 8) & v23);
    if ((*(v9 + 48))(v34, 1, v16))
    {
      memcpy(v33, v34, v11);
    }

    else
    {
      (*(v9 + 16))(v33, v34, v16);
      (*(v9 + 56))(v33, 0, 1, v16);
    }

    v35 = &v33[v11];
    v36 = &v34[v11];
    v37 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v38 + 8) < 0xFFFFFFFFuLL)
    {
      v39 = *v38;
      *(v37 + 16) = *(v38 + 16);
      *v37 = v39;
    }

    else
    {
      *v37 = *v38;
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 16) = *(v38 + 16);
    }

    v40 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v36 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*(v41 + 8) < 0xFFFFFFFFuLL)
    {
      v42 = *v41;
      *(v40 + 16) = *(v41 + 16);
      *v40 = v42;
      return a1;
    }

    *v40 = *v41;
    *(v40 + 8) = *(v41 + 8);
    *(v40 + 16) = *(v41 + 16);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  return a1;
}

uint64_t assignWithCopy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (*(v11 + 8))
  {
    if (v13)
    {
      v14 = *(((v10 + a2) & ~(v9 | 7)) + 0x10);
      *(((v10 + a1) & ~(v9 | 7)) + 8) = v13;
      *(((v10 + a1) & ~(v9 | 7)) + 0x10) = v14;

      goto LABEL_8;
    }
  }

  else if (v13)
  {
    v15 = *(((v10 + a2) & ~(v9 | 7)) + 0x10);
    *(((v10 + a1) & ~(v9 | 7)) + 8) = v13;
    *(((v10 + a1) & ~(v9 | 7)) + 0x10) = v15;

    goto LABEL_8;
  }

  *(v11 + 8) = *(v12 + 8);
LABEL_8:
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v16 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v16;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v17 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v17;
  *(v11 + 49) = *(v12 + 49);
  v18 = *(v12 + 56);
  if (*(v11 + 56))
  {
    if (v18)
    {
      v19 = *(v12 + 64);
      *(v11 + 56) = v18;
      *(v11 + 64) = v19;

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(v12 + 64);
    *(v11 + 56) = v18;
    *(v11 + 64) = v20;

    goto LABEL_15;
  }

  *(v11 + 56) = *(v12 + 56);
LABEL_15:
  v21 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v21;
  *(v11 + 88) = *(v12 + 88);
  v22 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + v9 + 8) & ~v9);
  v25 = ((v23 + v9 + 8) & ~v9);
  v26 = *(v8 + 48);
  v27 = v26(v24, 1, v7);
  v28 = v26(v25, 1, v7);
  if (v27)
  {
    if (!v28)
    {
      (*(v8 + 16))(v24, v25, v7);
      (*(v8 + 56))(v24, 0, 1, v7);
      goto LABEL_26;
    }

    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  else
  {
    if (!v28)
    {
      (*(v8 + 24))(v24, v25, v7);
      goto LABEL_26;
    }

    (*(v8 + 8))(v24, v7);
    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + 1;
  }

  memcpy(v24, v25, v31);
LABEL_26:
  if (*(v8 + 84))
  {
    v32 = *(v8 + 64);
  }

  else
  {
    v32 = *(v8 + 64) + 1;
  }

  v33 = &v24[v32];
  v34 = &v25[v32];
  v35 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v36 + 8);
  if (*(v35 + 8) < 0xFFFFFFFFuLL)
  {
    if (v37 >= 0xFFFFFFFF)
    {
      *v35 = *v36;
      *(v35 + 8) = *(v36 + 8);
      *(v35 + 16) = *(v36 + 16);

      goto LABEL_36;
    }
  }

  else
  {
    if (v37 >= 0xFFFFFFFF)
    {
      *v35 = *v36;

      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);
      goto LABEL_36;
    }
  }

  v38 = *v36;
  *(v35 + 16) = *(v36 + 16);
  *v35 = v38;
LABEL_36:
  v39 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v40 + 8);
  if (*(v39 + 8) < 0xFFFFFFFFuLL)
  {
    if (v41 >= 0xFFFFFFFF)
    {
      *v39 = *v40;
      *(v39 + 8) = *(v40 + 8);
      *(v39 + 16) = *(v40 + 16);

      return a1;
    }

LABEL_42:
    v42 = *v40;
    *(v39 + 16) = *(v40 + 16);
    *v39 = v42;
    return a1;
  }

  if (v41 < 0xFFFFFFFF)
  {

    goto LABEL_42;
  }

  *v39 = *v40;

  *(v39 + 8) = *(v40 + 8);

  *(v39 + 16) = *(v40 + 16);
  return a1;
}

uint64_t initializeWithTake for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  v13 = *(v12 + 0x10);
  *v11 = *v12;
  *(v11 + 16) = v13;
  v15 = *(v12 + 0x30);
  v14 = *(v12 + 0x40);
  v16 = *(v12 + 0x20);
  *(v11 + 80) = *(v12 + 0x50);
  *(v11 + 48) = v15;
  *(v11 + 64) = v14;
  *(v11 + 32) = v16;
  *(v11 + 88) = *(v12 + 0x58);
  v17 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + v9 + 8) & ~v9);
  v20 = ((v18 + v9 + 8) & ~v9);
  if ((*(v8 + 48))(v20, 1, v7))
  {
    v21 = *(v8 + 84);
    v22 = *(v8 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v8 + 32))(v19, v20, v7);
    v25 = *(v8 + 56);
    v24 = v8 + 56;
    v25(v19, 0, 1, v7);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = &v19[v26];
  v28 = &v20[v26];
  v29 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  *(v29 + 16) = *(v30 + 16);
  *v29 = v31;
  v32 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
  *(v34 + 16) = *(v32 + 16);
  *v34 = v33;
  return a1;
}

uint64_t assignWithTake for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (*(v11 + 8))
  {
    if (v13)
    {
      v14 = *(v12 + 16);
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;

      goto LABEL_8;
    }
  }

  else if (v13)
  {
    v15 = *(v12 + 16);
    *(v11 + 8) = v13;
    *(v11 + 16) = v15;
    goto LABEL_8;
  }

  *(v11 + 8) = *(v12 + 8);
LABEL_8:
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v16 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v16;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v17 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v17;
  *(v11 + 49) = *(v12 + 49);
  v18 = *(v12 + 56);
  if (*(v11 + 56))
  {
    if (v18)
    {
      v19 = *(v12 + 64);
      *(v11 + 56) = v18;
      *(v11 + 64) = v19;

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(v12 + 64);
    *(v11 + 56) = v18;
    *(v11 + 64) = v20;
    goto LABEL_15;
  }

  *(v11 + 56) = *(v12 + 56);
LABEL_15:
  v21 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v21;
  *(v11 + 88) = *(v12 + 88);
  v22 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + v9 + 8) & ~v9);
  v25 = ((v23 + v9 + 8) & ~v9);
  v26 = *(v8 + 48);
  v27 = v26(v24, 1, v7);
  v28 = v26(v25, 1, v7);
  if (v27)
  {
    if (!v28)
    {
      (*(v8 + 32))(v24, v25, v7);
      (*(v8 + 56))(v24, 0, 1, v7);
      goto LABEL_26;
    }

    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  else
  {
    if (!v28)
    {
      (*(v8 + 40))(v24, v25, v7);
      goto LABEL_26;
    }

    (*(v8 + 8))(v24, v7);
    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + 1;
  }

  memcpy(v24, v25, v31);
LABEL_26:
  if (*(v8 + 84))
  {
    v32 = *(v8 + 64);
  }

  else
  {
    v32 = *(v8 + 64) + 1;
  }

  v33 = &v24[v32];
  v34 = &v25[v32];
  v35 = &v24[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
  v36 = &v25[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (*(v35 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v36 + 8) >= 0xFFFFFFFFuLL)
    {
      *v35 = *v36;

      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);
      goto LABEL_34;
    }
  }

  v37 = *v36;
  *(v35 + 16) = *(v36 + 16);
  *v35 = v37;
LABEL_34:
  v38 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v38 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_38:
    v40 = *v39;
    *(v38 + 16) = *(v39 + 16);
    *v38 = v40;
    return a1;
  }

  if (*(v39 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_38;
  }

  *v38 = *v39;

  *(v38 + 8) = *(v39 + 8);

  *(v38 + 16) = *(v39 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitFlattenedButtonAdaptor(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = 31;
  }

  else
  {
    v16 = 32;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  if (v14 < a2)
  {
    v19 = (v18 & ~v17) + ((v16 + *(*(v8 - 8) + 64) + ((v15 + 104) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = *&a1[v19];
        if (v23)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v22)
    {
      v23 = a1[v19];
      if (a1[v19])
      {
LABEL_29:
        v24 = (v23 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v25 = *a1;
        }

        else
        {
          v24 = 0;
          v25 = *a1;
        }

        v29 = v14 + (v25 | v24);
        return (v29 + 1);
      }
    }
  }

  if (v7 >= v13)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v27 = &a1[v18] & ~v17;
    if (v12 <= 0x7FFFFFFE)
    {
      v28 = *(v27 + 8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = v28 - 1;
      if (v29 < 0)
      {
        v29 = -1;
      }

      return (v29 + 1);
    }

    v31 = (*(v10 + 48))((v15 + ((v27 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for UIKitFlattenedButtonAdaptor(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(type metadata accessor for UIButton.Configuration() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  v15 = *(v11 + 80);
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v15 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v15 + 104) & ~v15) + v19;
  v21 = (v18 & ~(v15 | 7)) + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v17 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v17 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      *&a1[v21] = 0;
    }

    else if (v10)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!a2)
    {
      return;
    }

LABEL_42:
    if (v9 >= v16)
    {
      v29 = *(v33 + 56);

      v29(a1, a2, v9, v7);
      return;
    }

    v26 = (&a1[v18] & ~(v15 | 7));
    if (v16 >= a2)
    {
      if (v14 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFE)
        {
          *(v26 + 9) = 0;
          *(v26 + 56) = 0u;
          *(v26 + 40) = 0u;
          *(v26 + 24) = 0u;
          *(v26 + 8) = 0u;
          v26[80] = 0;
          *v26 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *(v26 + 1) = a2;
        }

        return;
      }

      v26 = ((v15 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
      if (v14 >= a2)
      {
        v32 = *(v12 + 56);

        v32(v26, (a2 + 1));
        return;
      }

      if (v19 <= 3)
      {
        v30 = ~(-1 << (8 * v19));
      }

      else
      {
        v30 = -1;
      }

      if (!v19)
      {
        return;
      }

      v28 = v30 & (~v14 + a2);
      if (v19 <= 3)
      {
        v31 = v19;
      }

      else
      {
        v31 = 4;
      }

      bzero(v26, v19);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *v26 = v28;
          v26[2] = BYTE2(v28);
          return;
        }

LABEL_45:
        *v26 = v28;
        return;
      }

      if (v31 != 1)
      {
        *v26 = v28;
        return;
      }
    }

    else
    {
      v27 = ((v20 + 31) & 0xFFFFFFF8) + 17;
      v28 = ~v16 + a2;
      bzero(v26, v27);
      if (v27 > 3)
      {
        goto LABEL_45;
      }
    }

    *v26 = v28;
    return;
  }

  v24 = ~v17 + a2;
  bzero(a1, (v18 & ~(v15 | 7)) + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v21 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v24;
    if (v10 > 1)
    {
LABEL_30:
      if (v10 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v10)
  {
    a1[v21] = v25;
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitFlattenedButtonAdaptor<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable("y\nbpz\b", a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

void protocol witness for Rule.value.getter in conformance UIKitFlattenedButtonHostProvider()
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  else
  {
    type metadata accessor for HostingUIButton();
    v2 = *AGGraphGetValue();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t UIKitFlattenedButtonChildTransform.value.getter@<X0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  v5 = *(Value + 32);
  *(a2 + 16) = *(Value + 16);
  *(a2 + 32) = v5;
  type metadata accessor for CGPoint(0);

  v6 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v6);
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  return ViewTransform.appendCoordinateSpace(id:)();
}

uint64_t closure #1 in UpdateUIButton.updateButton(environment:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0);
  if (*(a2 + *(result + 36) + 8))
  {
    result = dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

uint64_t closure #2 in UpdateUIButton.updateButton(environment:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIPointerShape?, MEMORY[0x1E69DBEE0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v40 = type metadata accessor for UIPointerEffect();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UIPointerShape();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v41 = a4;
  v21 = ToolbarButtonHoverShape.adjustedRect(in:)(a4 & 0x1FF, v17, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v28 = static Solarium.isEnabled(for:)();
  v29 = 8.0;
  if (v28)
  {
    v42.origin.x = v21;
    v42.origin.y = v23;
    v42.size.width = v25;
    v42.size.height = v27;
    v29 = CGRectGetHeight(v42) * 0.5;
  }

  *v16 = v21;
  *(v16 + 1) = v23;
  *(v16 + 2) = v25;
  *(v16 + 3) = v27;
  *(v16 + 4) = v29;
  (*(v13 + 104))(v16, *MEMORY[0x1E69DBED0], v12);
  v30 = UIPointerEffect.preview.getter();
  v31 = [v30 view];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v33 = UIPointerEffect.preview.getter();
  v34 = [v33 target];

  v35 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v31 parameters:v32 target:v34];
  v36 = *(v9 + 104);
  v37 = MEMORY[0x1E69DBF98];
  *v11 = v35;
  if ((v41 & 0x10100) != 0)
  {
    v37 = MEMORY[0x1E69DBF70];
  }

  v36(v11, *v37, v40);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle, 0x1E69DCDD0);
  (*(v13 + 16))(v8, v16, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v38 = UIPointerStyle.init(effect:shape:)();
  (*(v13 + 8))(v16, v12);
  return v38;
}

void ButtonDisplayList.contentList.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = v3;
}

uint64_t ButtonDisplayList.value.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  type metadata accessor for CGPoint(0);
  v18 = *(v1 + 2);
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v9 = Value[1];
  v37 = *Value;
  v38 = v9;
  MEMORY[0x18D00B390]();
  v10 = *(a1 + 16);
  [*AGGraphGetValue() alignmentRectInsets];
  AGGraphGetValue();
  CGRect.outset(by:)();
  v11 = swift_allocObject();
  v12 = *AGGraphGetValue();
  v11[5] = v10;
  v11[6] = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonBase, v10);
  v11[2] = v12;
  v28 = v4;
  v29 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v18;
  v33 = v7;
  v13 = v12;
  ButtonDisplayList.contentList.getter(&v25);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    v16 = v27;
  }

  else
  {
    DisplayList.init()();
    v14 = v34;
    v15 = v35;
    v16 = v36;
  }

  *&v21 = v11;
  *(&v21 + 1) = 0x300000000;
  *&v22 = v14;
  *(&v22 + 1) = v15 | (v16 << 32) | 0x40000000;
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v21) = 0;
  DisplayList.Item.canonicalize(options:)();
  v19[2] = v39;
  v20[0] = v40[0];
  *(v20 + 12) = *(v40 + 12);
  v19[0] = v37;
  v19[1] = v38;
  outlined init with copy of DisplayList.Item(v19, &v21);
  DisplayList.init(_:)();
  v23 = v39;
  v24[0] = v40[0];
  *(v24 + 12) = *(v40 + 12);
  v21 = v37;
  v22 = v38;
  return outlined destroy of DisplayList.Item(&v21);
}

void *protocol witness for Rule.value.getter in conformance ButtonAccessibilityModifier@<X0>(void *a1@<X8>)
{
  type metadata accessor for HostingUIButton();
  v4 = *AGGraphGetValue();
  lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
  v2 = v4;
  result = AccessibilityProperties.init<A>(_:_:)();
  *a1 = v2;
  return result;
}

void type metadata accessor for WeakBox<UIView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WeakBox<UIView>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
    v1 = type metadata accessor for WeakBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WeakBox<UIView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider()
{
  result = lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider;
  if (!lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitFlattenedButtonHostProvider, &unk_1EFFF95F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider);
  }

  return result;
}

uint64_t specialized static ViewGraph.eventGraphHost.getter()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  v0 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 208);

    ObjectType = swift_getObjectType();
    v3 = type metadata accessor for EventGraphHost();
    (*(v1 + 16))(&v5, v3, v3, ObjectType, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform()
{
  result = lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform;
  if (!lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitFlattenedButtonChildTransform, &unk_1EFFF9418, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform);
  }

  return result;
}

uint64_t partial apply for closure #1 in UpdateUIButton.updateButton(environment:)(char a1)
{
  v3 = *(type metadata accessor for UIKitFlattenedButtonAdaptorStorage(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UpdateUIButton.updateButton(environment:)(a1, v1 + v4, v5);
}

uint64_t outlined destroy of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #2 in UpdateUIButton.updateButton(environment:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (v3[18])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return closure #2 in UpdateUIButton.updateButton(environment:)(a1, a2, a3, v5 | v3[16] | v4);
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double destroy for ButtonResponder()
{

  return result;
}

uint64_t assignWithCopy for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  v6 = v5;

  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  v9 = v8;

  return a1;
}

uint64_t initializeWithTake for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for ButtonAccessibilityModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonAccessibilityModifier and conformance ButtonAccessibilityModifier();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for URLDocumentHostingController(uint64_t a1)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(319, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *DocumentGroupsIntroRootViewHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of DocumentGroupsIntroRootView(a1, v6);
  v4 = specialized UIHostingController.init(rootView:)(v6);
  outlined destroy of DocumentGroupsIntroRootView(a1);
  *(*&v4[direct field offset for UIHostingController.host] + *((*MEMORY[0x1E69E7D40] & **&v4[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for DocumentGroupsIntroRootViewHostingController;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t DocumentHostingController.updateRootView(with:rootModifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10 + 16;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13 + 16;
  outlined init with copy of RootModifier(a2, v24);
  v15 = direct field offset for DocumentHostingController.rootModifier;
  swift_beginAccess();
  outlined assign with copy of RootModifier(v24, v2 + v15);
  swift_endAccess();
  DocumentHostingController.scenesDidChange(phaseChanged:)(1);
  outlined destroy of RootModifier(v24);
  v16 = direct field offset for DocumentHostingController.configuration;
  swift_beginAccess();
  outlined assign with copy of IdentifiedDocumentGroupConfiguration(a1, v2 + v16);
  swift_endAccess();
  v17 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined init with copy of NavigationItemDescription?(v2 + v17, &v14[*(v6 + 44)]);
  v18 = *(a1 + 64);
  v23 = *(*(v2 + direct field offset for DocumentHostingController.document) + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
  outlined init with copy of RootModifier(a2, (v14 + 8));
  *(v14 + 120) = v23;
  *v14 = v18;
  v19 = *(v2 + direct field offset for UIHostingController.host);
  outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v14, v11);
  outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v11, v8);
  v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x60);
  swift_beginAccess();
  swift_unknownObjectRetain();

  v21 = v19;
  outlined assign with take of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v8, v19 + v20);
  swift_endAccess();
  type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
  lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, protocol conformance descriptor for _UIHostingView<A>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  _s7SwiftUI16CommandOperationVWOhTm_2(v11, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  return _s7SwiftUI16CommandOperationVWOhTm_2(v14, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
}

uint64_t DocumentBaseModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v25 - v7);
  v26 = v1;
  outlined init with copy of NavigationItemDescription?(v1, &v25 - v7);
  v9 = type metadata accessor for NavigationItemDescription(0);
  v25 = *(*(v9 - 8) + 48);
  if (v25(v8, 1, v9) == 1)
  {
    outlined destroy of NavigationItemDescription?(v8);
LABEL_4:

    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_5;
  }

  v11 = *v8;
  v10 = v8[1];

  _s7SwiftUI16CommandOperationVWOhTm_2(v8, type metadata accessor for NavigationItemDescription);
  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v27 = v11;
  v28 = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  *(v19 + 32) = v18;
  *(v19 + 40) = v16;
  *(v19 + 48) = 1;
  *(v19 + 56) = 5;
  *(v19 + 64) = 0;
  *(v19 + 72) = 3;

  v20 = swift_allocObject();
  *(v20 + 16) = 3;
  v21 = v26;
  outlined init with copy of NavigationItemDescription?(v26, v5);
  v22 = v25(v5, 1, v9) != 1;
  outlined destroy of NavigationItemDescription?(v5);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>, StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>>(0);
  result = outlined init with copy of NavigationItemDescription?(v21, a1 + *(v23 + 36));
  *a1 = partial apply for closure #1 in View.navigationTitlePreferenceTransform(adding:);
  *(a1 + 8) = v19;
  *(a1 + 16) = closure #2 in View.navigationTitlePreferenceTransform(adding:);
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #1 in View.toolbarTitleDisplayMode(_:);
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = closure #1 in variable initialization expression of DocumentToolbarTransformModifier.toolbarKindTransform;
  *(a1 + 64) = 0;
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance DocumentSceneRootBoxModifier@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 112);
  outlined init with copy of RootModifier(v1, (a1 + 1));
  *a1 = v4;

  swift_unknownObjectRetain();
  return result;
}

uint64_t closure #1 in variable initialization expression of DocumentToolbarTransformModifier.toolbarKindTransform(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarStorage.Entry(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  swift_storeEnumTagMultiPayload();
  v6[*(v3 + 28)] = 2;
  v7 = *(a1 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  result = outlined init with take of ToolbarStorage.Entry(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
  *(a1 + 48) = v7;
  return result;
}

double static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v6;
  v8 = *(a2 + 48);
  v30 = *(a2 + 64);
  v9 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v9;
  v23 = v28;
  v24 = v8;
  v25 = *(a2 + 64);
  v31 = *(a2 + 80);
  v26 = *(a2 + 80);
  v21 = v27[0];
  v22 = v7;
  outlined init with copy of _ViewInputs(v27, v34);
  PreferenceKeys.add(_:)();
  v32[2] = v23;
  v32[3] = v24;
  v32[4] = v25;
  v33 = v26;
  v32[0] = v21;
  v32[1] = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v13 = v21;
  v14 = v22;
  v10 = outlined init with copy of _ViewInputs(v32, v34);
  a3(&v19, v10, &v13);
  v34[2] = v15;
  v34[3] = v16;
  v34[4] = v17;
  v35 = v18;
  v34[0] = v13;
  v34[1] = v14;
  outlined destroy of _ViewInputs(v34);
  AGGraphCreateOffsetAttribute2();
  if (*AGGraphGetValue() == 1)
  {
    *&v13 = v29;
    DWORD2(v13) = DWORD2(v29);
    MEMORY[0x1EEE9AC00](v29);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_4>, MEMORY[0x1E697E528], MEMORY[0x1E697E520], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {

    v11 = PreferencesOutputs.subscript.getter();

    if ((v11 & 0x100000000) == 0)
    {
      MEMORY[0x1EEE9AC00](v24);

      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }
  }

  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v13 = v21;
  v14 = v22;
  outlined destroy of _ViewInputs(&v13);
  *a4 = v19;
  result = v20;
  a4[1] = v20;
  return result;
}

uint64_t implicit closure #1 in static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)(int a1)
{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for Map<DocumentToolbarTransformModifier, (_:)>(0);
  lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>, type metadata accessor for Map<DocumentToolbarTransformModifier, (_:)>, MEMORY[0x1E698D3A0]);

  v1 = Attribute.init<A>(body:value:flags:update:)();

  return v1;
}

uint64_t implicit closure #2 in static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar();
  return Attribute.init<A>(body:value:flags:update:)();
}

_BYTE *closure #1 in DocumentToolbarTransformModifier.HideNestedNavigationBar.value.getter(void *a1, uint64_t a2)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v4 = *a1;
    v29 = a1;
    if (*(*a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v6 & 1) != 0))
    {
      v7 = (*(v4 + 56) + 80 * v5);
      v56 = *v7;
      v9 = v7[2];
      v8 = v7[3];
      v10 = *(v7 + 57);
      v57 = v7[1];
      v58 = v9;
      *&v59[9] = v10;
      *v59 = v8;
      outlined init with copy of ToolbarAppearanceConfiguration(&v56, v32);
      outlined destroy of ToolbarPlacement.Role(v46);
      v11 = v56;
      v54 = *(&v56 + 2);
      v55 = WORD3(v56);
      v13 = *(&v56 + 1);
      v12 = v57;
      v14 = BYTE8(v57);
      v53[0] = *(&v57 + 9);
      *(v53 + 3) = HIDWORD(v57);
      v15 = v58;
      v16 = BYTE8(v58);
      v51[0] = *(&v58 + 9);
      *(v51 + 3) = HIDWORD(v58);
      v17 = *v59;
      v18 = v59[8];
      v19 = v59[9];
      v20 = v59[10];
      v49 = v59[15];
      v48 = *&v59[11];
      v21 = *&v59[16];
      v22 = v59[24];
    }

    else
    {
      outlined destroy of ToolbarPlacement.Role(v46);
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v17 = 0;
      v15 = 0;
      v14 = 0;
      v12 = 0;
      v13 = 0;
      v18 = 1;
      v52 = 1;
      v50 = 1;
      v19 = 2;
      v16 = 1;
      v11 = 1;
    }

    v25 = v18;
    v26 = v21;
    v27 = v22;
    v28 = v15;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    LOBYTE(v56) = v11;
    BYTE1(v56) = 2;
    *(&v56 + 2) = v54;
    WORD3(v56) = v55;
    *(&v56 + 1) = v13;
    *&v57 = v12;
    BYTE8(v57) = v14;
    *(&v57 + 9) = v53[0];
    HIDWORD(v57) = *(v53 + 3);
    *&v58 = v15;
    BYTE8(v58) = v16;
    HIDWORD(v58) = *(v51 + 3);
    *(&v58 + 9) = v51[0];
    *v59 = v17;
    v59[8] = v18;
    v59[9] = v19;
    v59[10] = v20;
    v59[15] = v49;
    *&v59[11] = v48;
    *&v59[16] = v21;
    v59[24] = v22;
    v23 = v16;
    outlined init with copy of ToolbarAppearanceConfiguration(&v56, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v29;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v56, v30, isUniquelyReferenced_nonNull_native);
    outlined destroy of ToolbarPlacement.Role(v30);
    *v29 = v32[0];
    LOBYTE(v32[0]) = v11;
    BYTE1(v32[0]) = 2;
    *(v32 + 2) = v54;
    HIWORD(v32[0]) = v55;
    v32[1] = v13;
    v32[2] = v12;
    v33 = v14;
    *v34 = v53[0];
    *&v34[3] = *(v53 + 3);
    v35 = v28;
    v36 = v23;
    *&v37[3] = *(v51 + 3);
    *v37 = v51[0];
    v38 = v17;
    v39 = v25;
    v40 = v19;
    v41 = v20;
    v43 = v49;
    v42 = v48;
    v44 = v26;
    v45 = v27;
    return outlined destroy of ToolbarAppearanceConfiguration(v32);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DocumentToolbarTransformModifier.HideNestedNavigationBar@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in DocumentToolbarTransformModifier.HideNestedNavigationBar.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t URLDocumentHostingController.navigationItemDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  return outlined init with copy of NavigationItemDescription?(v1 + v3, a1);
}

uint64_t URLDocumentHostingController.navigationItemDescription.setter(uint64_t a1)
{
  v3 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined assign with take of NavigationItemDescription?(a1, v1 + v3);
  return swift_endAccess();
}

double URLDocumentHostingController.presentationMode.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode + 8);
  v3 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode + 16);
  *a1 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

id @objc URLDocumentHostingController.undoManager.getter()
{
  v0 = specialized URLDocumentHostingController.undoManager.getter();

  return v0;
}

uint64_t static URLDocumentHostingController.makeRootView(navigationItemDescription:_:)(uint64_t a1, double (*a2)(double))
{
  v5 = type metadata accessor for DocumentBaseModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 1000);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  outlined init with copy of NavigationItemDescription?(a1, v7);
  MEMORY[0x18D00A570](v7, v8, v5, *(v2 + 1008));
  _s7SwiftUI16CommandOperationVWOhTm_2(v7, type metadata accessor for DocumentBaseModifier);
  return (*(v9 + 8))(v13, v8);
}

id @objc URLDocumentHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = URLDocumentHostingController.navigationItem.getter();

  return v2;
}

id URLDocumentHostingController.navigationItem.getter()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v5 = objc_allocWithZone(MEMORY[0x1E69DCCE0]);

  return [v5 init];
}

double URLDocumentHostingController.update(_:)(uint64_t *a1)
{
  UIHostingController.update(_:)(a1);

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

Swift::Void __swiftcall URLDocumentHostingController.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  swift_getObjectType();
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for DocumentBaseModifier(255);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  MEMORY[0x18D00ABE0](v7);
  v10 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined init with copy of NavigationItemDescription?(v1 + v10, v4);
  v11 = *(v1 + direct field offset for URLDocumentHostingController.content);

  static URLDocumentHostingController.makeRootView(navigationItemDescription:_:)(v4, v11);
  outlined destroy of NavigationItemDescription?(v4);

  specialized UIHostingController.rootView.setter(v9);
  (*(v6 + 8))(v9, v5);
  static Update.end()();
}

void URLDocumentHostingController.__ivar_destroyer()
{
  outlined destroy of NavigationItemDescription?(v0 + direct field offset for URLDocumentHostingController.navigationItemDescription);

  v1 = *(v0 + direct field offset for URLDocumentHostingController._undoManager);
}

id URLDocumentHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for URLDocumentHostingController(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x3E8), *((*MEMORY[0x1E69E7D40] & *v4) + 0x3F0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void @objc URLDocumentHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of NavigationItemDescription?(a1 + direct field offset for URLDocumentHostingController.navigationItemDescription);

  v2 = *(a1 + direct field offset for URLDocumentHostingController._undoManager);
}

uint64_t protocol witness for UIHostingViewDelegate.hostingView<A>(_:willUpdate:) in conformance URLDocumentHostingController<A>(uint64_t a1, void *a2)
{
  a2[1] = *a2 & 0x95;
  v3 = a2[2];

  a2[3] = v3;
  return result;
}

Swift::Void __swiftcall DocumentHostingController.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  v2 = v1;
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  MEMORY[0x18D00ABE0](v11);
  v14 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    v32 = v14;
    AppGraph.sceneList(namespace:)(0, 0, 2, v36);
    v33 = *&v36[0];
    v34 = *(v36 + 8);
    v15 = v2 + direct field offset for DocumentHostingController.configuration;
    swift_beginAccess();
    v17 = *(v15 + 104);
    v16 = *(v15 + 112);
    v18 = *(v15 + 120);
    outlined copy of SceneID(v17, v16, *(v15 + 120));
    SceneList.item(id:where:)(v17, v16, v18, 0, v38);
    outlined consume of SceneID(v17, v16, v18);

    if (*&v38[544])
    {
      memcpy(v39, v38, 0x231uLL);
      if (!phaseChanged && v39[20] == *(v2 + direct field offset for DocumentHostingController.lastVersion))
      {
        outlined destroy of SceneList.Item(v39);

LABEL_8:
        static Update.end()();
        return;
      }

      outlined init with copy of SceneList.Item.Value(v39, v38);
      if (v38[128] == 2)
      {
        v36[4] = *&v38[64];
        v36[5] = *&v38[80];
        v37[0] = *&v38[96];
        *(v37 + 9) = *&v38[105];
        v36[0] = *v38;
        v36[1] = *&v38[16];
        v36[2] = *&v38[32];
        v36[3] = *&v38[48];
        outlined init with copy of DocumentGroupConfiguration(v36, &v33);
        outlined destroy of IdentifiedDocumentGroupConfiguration(v36);
        v19 = v35;

        outlined destroy of DocumentGroupConfiguration(&v33);
        v20 = direct field offset for DocumentHostingController.rootModifier;
        swift_beginAccess();
        outlined init with copy of RootModifier(v2 + v20, (v13 + 8));
        v21 = direct field offset for URLDocumentHostingController.navigationItemDescription;
        swift_beginAccess();
        outlined init with copy of NavigationItemDescription?(v2 + v21, &v13[*(v5 + 36)]);
        v30 = *(*(v2 + direct field offset for DocumentHostingController.document) + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
        *(v13 + 120) = v30;
        *v13 = v19;
        v22 = direct field offset for UIHostingController.host;
        v23 = *(v2 + direct field offset for UIHostingController.host);
        outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v13, v9);
        v24 = v31;
        outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v9, v31);
        v25 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x60);
        swift_beginAccess();

        swift_unknownObjectRetain();
        v26 = v23;
        outlined assign with take of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v24, v23 + v25);
        swift_endAccess();
        type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
        lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>, protocol conformance descriptor for _UIHostingView<A>);
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

        _s7SwiftUI16CommandOperationVWOhTm_2(v9, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
        _s7SwiftUI16CommandOperationVWOhTm_2(v13, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
        v27 = *(v2 + v22);
        v33 = v39[21];
        *&v34 = v39[22];

        v28 = v27;

        UIHostingViewBase.inheritedEnvironment.setter();

        v29 = v39[20];
        outlined destroy of SceneList.Item(v39);
        *(v2 + direct field offset for DocumentHostingController.lastVersion) = v29;
        goto LABEL_8;
      }
    }

    else
    {

      _s7SwiftUI16CommandOperationVWOhTm_2(v38, type metadata accessor for SceneList.Item?);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double closure #1 in DocumentHostingController.init(document:configuration:rootModifier:navigationItemDescription:presentationMode:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 64);
  outlined init with copy of RootModifier(a2, a4 + 8);
  *(a4 + 120) = *(a3 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
  *a4 = v6;
  swift_unknownObjectRetain();

  return result;
}

void @objc DocumentHostingController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for DocumentHostingController.lastVersion) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id @objc DocumentHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 parentViewController];
  if (!v2 || (v3 = v2, v4 = [v2 navigationItem], v3, !v4))
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  }

  return v4;
}

uint64_t DocumentHostingController.__ivar_destroyer()
{
  outlined destroy of IdentifiedDocumentGroupConfiguration(v0 + direct field offset for DocumentHostingController.configuration);
  v1 = v0 + direct field offset for DocumentHostingController.rootModifier;

  return outlined destroy of RootModifier(v1);
}

uint64_t @objc DocumentHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of IdentifiedDocumentGroupConfiguration(a1 + direct field offset for DocumentHostingController.configuration);
  v2 = a1 + direct field offset for DocumentHostingController.rootModifier;

  return outlined destroy of RootModifier(v2);
}

id @objc DocumentGroupsIntroRootViewHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = DocumentGroupsIntroRootViewHostingController.navigationItem.getter();

  return v2;
}

id DocumentGroupsIntroRootViewHostingController.navigationItem.getter()
{
  v1 = [v0 childViewControllers];
  type metadata accessor for UIViewController();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 navigationItem];

  if (v6)
  {
    return v6;
  }

LABEL_10:
  v7 = objc_allocWithZone(MEMORY[0x1E69DCCE0]);

  return [v7 init];
}

id DocumentGroupsIntroRootViewHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentGroupsIntroRootViewHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double destroy for DocumentSceneRootBoxModifier(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  }

  v2 = *(a1 + 88);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 72), *(a1 + 80), v2 & 1);
  }

  swift_unknownObjectRelease();
  return result;
}

uint64_t initializeWithCopy for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 88);
  if (v6 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    v9 = v6 & 1;
    outlined copy of SceneID(v7, v8, v6 & 1);
    *(a1 + 72) = v7;
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = *(a2 + 112);
  v12 = v10;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v21 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v21;
    }

    else
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = v10 & 1;
      outlined copy of SceneID(v17, v18, v10 & 1);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
    }
  }

  else if (v10 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
    v20 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v20;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = v10 & 1;
    outlined copy of SceneID(v11, v12, v10 & 1);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    outlined consume of SceneID(v14, v15, v16);
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  *(a1 + 96) = v23;
  v24 = v23;

  *(a1 + 104) = *(a2 + 104);
  v25 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 120) = v25;
  return a1;
}

uint64_t initializeWithTake for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
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
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  return a1;
}

uint64_t assignWithTake for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 88);
  if (v4 == 255)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 88);
  if (v5 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_10;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v5 & 1;
  outlined consume of SceneID(v6, v7, v4 & 1);
LABEL_10:
  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v9 = *(a2 + 104);
  v10 = *(a2 + 112);
  v11 = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  swift_unknownObjectRelease();
  *(a1 + 120) = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for DocumentSceneRootBoxModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for DocumentSceneRootBoxModifier(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentBaseModifier(void *a1, char *a2)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for NavigationItemDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 5);

    if (v13)
    {
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = a2[32];
      outlined copy of Text.Storage(v14, v15, v16);
      a1[2] = v14;
      a1[3] = v15;
      *(a1 + 32) = v16;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v17 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v17;
    }

    v18 = *(a2 + 6);
    if (v18 != 1)
    {
    }

    a1[6] = v18;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = &a2[v19];
    v22 = a2[v19 + 8];

    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v21, v24);
      *v20 = v23;
      v20[8] = v24;
    }

    v25 = v21[24];
    v140 = a2;
    if (v25 == 254 || v25 == 255)
    {
      *(v20 + 2) = *(v21 + 2);
      v20[24] = v21[24];
    }

    else
    {
      v26 = *(v21 + 2);
      v27 = v25 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v25 & 1);
      *(v20 + 2) = v26;
      v20[24] = v27;
    }

    swift_unknownObjectWeakCopyInit();
    v28 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v28;
    v29 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v30 = &v20[v29];
    v31 = &v21[v29];
    v32 = type metadata accessor for PlatformItemList.Item(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v28;
    if (v34(v31, 1, v32))
    {
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v30, v31, *(*(v36 - 8) + 64));
LABEL_79:
      *(a1 + *(v7 + 28)) = *&v140[*(v7 + 28)];
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }

    v134 = v33;
    v135 = v8;
    v136 = v7;
    v37 = *v31;
    v38 = *(v31 + 1);
    *v30 = *v31;
    *(v30 + 1) = v38;
    v39 = *(v31 + 3);
    *(v30 + 2) = *(v31 + 2);
    *(v30 + 3) = v39;
    v30[32] = v31[32];
    v40 = *(v31 + 6);
    *(v30 + 5) = *(v31 + 5);
    *(v30 + 6) = v40;
    v30[56] = v31[56];
    v41 = *(v31 + 24);
    v42 = v37;
    v43 = v38;

    v139 = v32;
    if (v41 >> 1 == 4294967294)
    {
      v44 = *(v31 + 13);
      *(v30 + 12) = *(v31 + 12);
      *(v30 + 13) = v44;
      *(v30 + 14) = *(v31 + 14);
      *(v30 + 235) = *(v31 + 235);
      v45 = *(v31 + 9);
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = v45;
      v46 = *(v31 + 11);
      *(v30 + 10) = *(v31 + 10);
      *(v30 + 11) = v46;
      v47 = *(v31 + 5);
      *(v30 + 4) = *(v31 + 4);
      *(v30 + 5) = v47;
      v48 = *(v31 + 7);
      *(v30 + 6) = *(v31 + 6);
      *(v30 + 7) = v48;
      v49 = *(v31 + 33);
      if (v49)
      {
LABEL_23:
        *(v30 + 32) = *(v31 + 32);
        *(v30 + 33) = v49;
        v50 = *(v31 + 34);

        if (v50 >= 2)
        {
          v51 = v50;
        }

        *(v30 + 34) = v50;
        *(v30 + 70) = *(v31 + 70);
        v30[284] = v31[284];
        *(v30 + 285) = *(v31 + 285);
        v52 = *(v31 + 37);
        *(v30 + 36) = *(v31 + 36);
        *(v30 + 37) = v52;

LABEL_34:
        v63 = *(v31 + 42);
        if (v63 >> 2 == 0xFFFFFFFF)
        {
          v64 = *(v31 + 24);
          *(v30 + 23) = *(v31 + 23);
          *(v30 + 24) = v64;
          *(v30 + 50) = *(v31 + 50);
          v65 = *(v31 + 20);
          *(v30 + 19) = *(v31 + 19);
          *(v30 + 20) = v65;
          v66 = *(v31 + 22);
          *(v30 + 21) = *(v31 + 21);
          *(v30 + 22) = v66;
        }

        else
        {
          v67 = *(v31 + 38);
          v68 = *(v31 + 39);
          v69 = *(v31 + 41);
          v71 = *(v31 + 43);
          v70 = *(v31 + 44);
          v72 = *(v31 + 45);
          v124 = *(v31 + 40);
          v125 = *(v31 + 46);
          v127 = *(v31 + 47);
          v129 = *(v31 + 48);
          __dsta = *(v31 + 49);
          v137 = *(v31 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v67, v68, v124, v69, v63, v71, v70, v72, v125, v127, v129, __dsta, v137);
          *(v30 + 38) = v67;
          *(v30 + 39) = v68;
          *(v30 + 40) = v124;
          *(v30 + 41) = v69;
          *(v30 + 42) = v63;
          *(v30 + 43) = v71;
          *(v30 + 44) = v70;
          *(v30 + 45) = v72;
          *(v30 + 46) = v125;
          *(v30 + 47) = v127;
          *(v30 + 48) = v129;
          *(v30 + 49) = __dsta;
          *(v30 + 50) = v137;
        }

        v73 = *(v31 + 52);
        if (v73 == 1)
        {
          v74 = *(v31 + 456);
          *(v30 + 440) = *(v31 + 440);
          *(v30 + 456) = v74;
          v30[472] = v31[472];
          v75 = *(v31 + 424);
          *(v30 + 408) = *(v31 + 408);
          *(v30 + 424) = v75;
        }

        else
        {
          *(v30 + 102) = *(v31 + 102);
          v30[412] = v31[412];
          if (v73)
          {
            v76 = *(v31 + 53);
            *(v30 + 52) = v73;
            *(v30 + 53) = v76;
          }

          else
          {
            *(v30 + 26) = *(v31 + 26);
          }

          v77 = *(v31 + 54);
          if (v77)
          {
            v78 = *(v31 + 55);
            *(v30 + 54) = v77;
            *(v30 + 55) = v78;
          }

          else
          {
            *(v30 + 27) = *(v31 + 27);
          }

          v79 = *(v31 + 56);
          if (v79)
          {
            v80 = *(v31 + 57);
            *(v30 + 56) = v79;
            *(v30 + 57) = v80;
          }

          else
          {
            *(v30 + 28) = *(v31 + 28);
          }

          *(v30 + 58) = *(v31 + 58);
          v30[472] = v31[472];
        }

        v81 = *(v31 + 61);
        *(v30 + 60) = *(v31 + 60);
        *(v30 + 61) = v81;
        *(v30 + 62) = *(v31 + 62);
        v30[504] = v31[504];
        v82 = *(v31 + 64);

        if (v82)
        {
          v83 = *(v31 + 65);
          *(v30 + 64) = v82;
          *(v30 + 65) = v83;
        }

        else
        {
          *(v30 + 32) = *(v31 + 32);
        }

        v30[528] = v31[528];
        if (!*(v31 + 102))
        {
          memcpy(v30 + 536, v31 + 536, 0x130uLL);
          goto LABEL_64;
        }

        *(v30 + 67) = *(v31 + 67);
        *(v30 + 68) = *(v31 + 68);
        v30[552] = v31[552];
        *(v30 + 70) = *(v31 + 70);
        v30[568] = v31[568];
        *(v30 + 36) = *(v31 + 36);
        v30[592] = v31[592];
        v84 = v30 + 600;
        v85 = v31 + 600;
        v86 = *(v31 + 78);

        if (v86)
        {
          if (v86 == 1)
          {
            v87 = *(v31 + 616);
            *v84 = *v85;
            *(v30 + 616) = v87;
            *(v30 + 632) = *(v31 + 632);
LABEL_60:
            *(v30 + 81) = *(v31 + 81);
            v30[656] = v31[656];
            v89 = v30 + 664;
            v90 = v31 + 664;
            v91 = *(v31 + 97);
            if (v91 == 1)
            {
              v92 = *(v31 + 776);
              *(v30 + 760) = *(v31 + 760);
              *(v30 + 776) = v92;
              *(v30 + 792) = *(v31 + 792);
              v30[808] = v31[808];
              v93 = *(v31 + 712);
              *(v30 + 696) = *(v31 + 696);
              *(v30 + 712) = v93;
              v94 = *(v31 + 744);
              *(v30 + 728) = *(v31 + 728);
              *(v30 + 744) = v94;
              v95 = *(v31 + 680);
              *v89 = *v90;
              *(v30 + 680) = v95;
            }

            else
            {
              *v89 = *v90;
              v30[672] = v31[672];
              *(v30 + 85) = *(v31 + 85);
              v30[688] = v31[688];
              *(v30 + 689) = *(v31 + 689);
              v30[691] = v31[691];
              v30[692] = v31[692];
              *(v30 + 87) = *(v31 + 87);
              v96 = *(v31 + 45);
              *(v30 + 44) = *(v31 + 44);
              *(v30 + 45) = v96;
              *(v30 + 92) = *(v31 + 92);
              *(v30 + 372) = *(v31 + 372);
              *(v30 + 47) = *(v31 + 47);
              v30[768] = v31[768];
              *(v30 + 97) = v91;
              *(v30 + 49) = *(v31 + 49);
              *(v30 + 100) = *(v31 + 100);
              v30[808] = v31[808];
            }

            *(v30 + 102) = *(v31 + 102);
            *(v30 + 103) = *(v31 + 103);
            *(v30 + 104) = *(v31 + 104);

LABEL_64:
            v97 = v30 + 840;
            v98 = v31 + 840;
            v99 = *(v31 + 108);
            if (v99)
            {
              if (v99 == 1)
              {
                v100 = *(v31 + 856);
                *v97 = *v98;
                *(v30 + 856) = v100;
                *(v30 + 872) = *(v31 + 872);
                *(v30 + 111) = *(v31 + 111);
LABEL_72:
                v104 = *(v31 + 112);
                *(v30 + 112) = v104;
                *(v30 + 113) = *(v31 + 113);
                *(v30 + 114) = *(v31 + 114);
                *(v30 + 115) = *(v31 + 115);
                *(v30 + 116) = *(v31 + 116);
                *(v30 + 117) = *(v31 + 117);
                *(v30 + 118) = *(v31 + 118);
                *(v30 + 476) = *(v31 + 476);
                v30[954] = v31[954];
                v105 = v139[28];
                __dst = &v30[v105];
                v138 = &v31[v105];
                v106 = type metadata accessor for CommandOperation(0);
                v128 = *(v106 - 8);
                v130 = *(v128 + 48);
                v107 = v104;

                if (v130(v138, 1, v106))
                {
                  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(__dst, v138, *(*(v108 - 8) + 64));
                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                }

                else
                {
                  *__dst = *v138;
                  v111 = *(v106 + 20);
                  v112 = &__dst[v111];
                  v113 = &v138[v111];
                  v114 = *&v138[v111];
                  v115 = *&v138[v111 + 8];
                  v131 = v106;
                  v116 = v138[v111 + 16];
                  outlined copy of Text.Storage(v114, *(v113 + 1), v113[16]);
                  *v112 = v114;
                  *(v112 + 1) = v115;
                  v112[16] = v116;
                  *(v112 + 3) = *(v113 + 3);
                  v117 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v118 = type metadata accessor for UUID();
                  v126 = *(*(v118 - 8) + 16);

                  v126(&v112[v117], &v113[v117], v118);
                  v119 = *(v131 + 24);
                  v120 = &__dst[v119];
                  v121 = &v138[v119];
                  if (*v121)
                  {
                    v122 = *(v121 + 1);
                    *v120 = *v121;
                    *(v120 + 1) = v122;
                  }

                  else
                  {
                    *v120 = *v121;
                  }

                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                  (*(v128 + 56))(__dst, 0, 1, v131);
                }

                v30[v109[29]] = v31[v109[29]];
                v30[v109[30]] = v31[v109[30]];
                v30[v109[31]] = v31[v109[31]];
                v30[v109[32]] = v31[v109[32]];
                v30[v109[33]] = v31[v109[33]];
                *&v30[v109[34]] = *&v31[v109[34]];
                v123 = *(v110 + 56);

                v123(v30, 0, 1, v109);
                goto LABEL_79;
              }

              *(v30 + 108) = v99;
              *(v30 + 109) = *(v31 + 109);
              (**(v99 - 8))(v97, v98);
            }

            else
            {
              v101 = *(v31 + 856);
              *v97 = *v98;
              *(v30 + 856) = v101;
              *(v30 + 109) = *(v31 + 109);
            }

            v102 = *(v31 + 110);
            if (v102)
            {
              v103 = *(v31 + 111);
              *(v30 + 110) = v102;
              *(v30 + 111) = v103;
            }

            else
            {
              *(v30 + 55) = *(v31 + 55);
            }

            goto LABEL_72;
          }

          *(v30 + 78) = v86;
          *(v30 + 79) = *(v31 + 79);
          (**(v86 - 8))((v30 + 600), (v31 + 600), v86);
        }

        else
        {
          v88 = *(v31 + 616);
          *v84 = *v85;
          *(v30 + 616) = v88;
          *(v30 + 79) = *(v31 + 79);
        }

        *(v30 + 80) = *(v31 + 80);

        goto LABEL_60;
      }
    }

    else
    {
      v53 = v31[72];
      if (v53 == 255)
      {
        *(v30 + 8) = *(v31 + 8);
        v30[72] = v31[72];
      }

      else
      {
        v54 = *(v31 + 8);
        outlined copy of GraphicsImage.Contents(v54, v31[72]);
        *(v30 + 8) = v54;
        v30[72] = v53;
        v41 = *(v31 + 24);
      }

      *(v30 + 10) = *(v31 + 10);
      *(v30 + 88) = *(v31 + 88);
      v30[104] = v31[104];
      *(v30 + 108) = *(v31 + 108);
      *(v30 + 121) = *(v31 + 121);
      *(v30 + 136) = *(v31 + 136);
      *(v30 + 152) = *(v31 + 152);
      *(v30 + 84) = *(v31 + 84);
      v30[170] = v31[170];
      v30[171] = v31[171];
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v55 = *(v31 + 12);
        *(v30 + 11) = *(v31 + 11);
        *(v30 + 12) = v55;
      }

      else
      {
        v56 = *(v31 + 22);
        v57 = *(v31 + 23);
        v58 = *(v31 + 25);
        outlined copy of AccessibilityImageLabel(v56, v57, v41, v58);
        *(v30 + 22) = v56;
        *(v30 + 23) = v57;
        *(v30 + 24) = v41;
        *(v30 + 25) = v58;
      }

      v59 = *(v31 + 27);
      *(v30 + 26) = *(v31 + 26);
      *(v30 + 27) = v59;
      *(v30 + 112) = *(v31 + 112);
      *(v30 + 57) = *(v31 + 57);
      v30[232] = v31[232];
      v60 = *(v31 + 30);
      *(v30 + 30) = v60;
      *(v30 + 124) = *(v31 + 124);
      v30[250] = v31[250];
      swift_unknownObjectRetain();

      v61 = v60;
      v49 = *(v31 + 33);
      if (v49)
      {
        goto LABEL_23;
      }
    }

    v62 = *(v31 + 17);
    *(v30 + 16) = *(v31 + 16);
    *(v30 + 17) = v62;
    *(v30 + 18) = *(v31 + 18);
    goto LABEL_34;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *initializeWithCopy for DocumentBaseModifier(void *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a2, 1, v4))
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v9;
    v10 = *(a2 + 5);

    if (v10)
    {
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      v13 = a2[32];
      outlined copy of Text.Storage(v11, v12, v13);
      a1[2] = v11;
      a1[3] = v12;
      *(a1 + 32) = v13;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v14 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v14;
    }

    v15 = *(a2 + 6);
    if (v15 != 1)
    {
    }

    a1[6] = v15;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v16 = *(v4 + 24);
    v17 = a1 + v16;
    v18 = &a2[v16];
    v19 = a2[v16 + 8];

    if (v19 == 255)
    {
      *v17 = *v18;
      v17[8] = v18[8];
    }

    else
    {
      v20 = *v18;
      v21 = v19 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v18, v21);
      *v17 = v20;
      v17[8] = v21;
    }

    v22 = v18[24];
    v137 = a1;
    if (v22 == 254 || v22 == 255)
    {
      *(v17 + 2) = *(v18 + 2);
      v17[24] = v18[24];
    }

    else
    {
      v23 = *(v18 + 2);
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
      *(v17 + 2) = v23;
      v17[24] = v24;
    }

    swift_unknownObjectWeakCopyInit();
    v25 = *(v18 + 6);
    *(v17 + 5) = *(v18 + 5);
    *(v17 + 6) = v25;
    v26 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v27 = &v17[v26];
    v28 = &v18[v26];
    v29 = type metadata accessor for PlatformItemList.Item(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v25;
    if (v31(v28, 1, v29))
    {
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v27, v28, *(*(v33 - 8) + 64));
LABEL_74:
      *(v137 + *(v4 + 28)) = *&a2[*(v4 + 28)];
      (*(v5 + 56))(v137, 0, 1, v4);
      return v137;
    }

    v131 = v30;
    v132 = v5;
    v133 = v4;
    v34 = *v28;
    v35 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v35;
    v36 = *(v28 + 3);
    *(v27 + 2) = *(v28 + 2);
    *(v27 + 3) = v36;
    v27[32] = v28[32];
    v37 = *(v28 + 6);
    *(v27 + 5) = *(v28 + 5);
    *(v27 + 6) = v37;
    v27[56] = v28[56];
    v38 = *(v28 + 24);
    v39 = v34;
    v40 = v35;

    v136 = v29;
    if (v38 >> 1 == 4294967294)
    {
      v41 = *(v28 + 13);
      *(v27 + 12) = *(v28 + 12);
      *(v27 + 13) = v41;
      *(v27 + 14) = *(v28 + 14);
      *(v27 + 235) = *(v28 + 235);
      v42 = *(v28 + 9);
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 9) = v42;
      v43 = *(v28 + 11);
      *(v27 + 10) = *(v28 + 10);
      *(v27 + 11) = v43;
      v44 = *(v28 + 5);
      *(v27 + 4) = *(v28 + 4);
      *(v27 + 5) = v44;
      v45 = *(v28 + 7);
      *(v27 + 6) = *(v28 + 6);
      *(v27 + 7) = v45;
      v46 = *(v28 + 33);
      if (v46)
      {
LABEL_21:
        *(v27 + 32) = *(v28 + 32);
        *(v27 + 33) = v46;
        v47 = *(v28 + 34);

        if (v47 >= 2)
        {
          v48 = v47;
        }

        *(v27 + 34) = v47;
        *(v27 + 70) = *(v28 + 70);
        v27[284] = v28[284];
        *(v27 + 285) = *(v28 + 285);
        v49 = *(v28 + 37);
        *(v27 + 36) = *(v28 + 36);
        *(v27 + 37) = v49;

LABEL_32:
        v60 = *(v28 + 42);
        if (v60 >> 2 == 0xFFFFFFFF)
        {
          v61 = *(v28 + 24);
          *(v27 + 23) = *(v28 + 23);
          *(v27 + 24) = v61;
          *(v27 + 50) = *(v28 + 50);
          v62 = *(v28 + 20);
          *(v27 + 19) = *(v28 + 19);
          *(v27 + 20) = v62;
          v63 = *(v28 + 22);
          *(v27 + 21) = *(v28 + 21);
          *(v27 + 22) = v63;
        }

        else
        {
          v64 = *(v28 + 38);
          v65 = *(v28 + 39);
          v66 = *(v28 + 41);
          v68 = *(v28 + 43);
          v67 = *(v28 + 44);
          v69 = *(v28 + 45);
          v121 = *(v28 + 40);
          v122 = *(v28 + 46);
          v124 = *(v28 + 47);
          v126 = *(v28 + 48);
          __dsta = *(v28 + 49);
          v134 = *(v28 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v64, v65, v121, v66, v60, v68, v67, v69, v122, v124, v126, __dsta, v134);
          *(v27 + 38) = v64;
          *(v27 + 39) = v65;
          *(v27 + 40) = v121;
          *(v27 + 41) = v66;
          *(v27 + 42) = v60;
          *(v27 + 43) = v68;
          *(v27 + 44) = v67;
          *(v27 + 45) = v69;
          *(v27 + 46) = v122;
          *(v27 + 47) = v124;
          *(v27 + 48) = v126;
          *(v27 + 49) = __dsta;
          *(v27 + 50) = v134;
        }

        v70 = *(v28 + 52);
        if (v70 == 1)
        {
          v71 = *(v28 + 456);
          *(v27 + 440) = *(v28 + 440);
          *(v27 + 456) = v71;
          v27[472] = v28[472];
          v72 = *(v28 + 424);
          *(v27 + 408) = *(v28 + 408);
          *(v27 + 424) = v72;
          goto LABEL_45;
        }

        *(v27 + 102) = *(v28 + 102);
        v27[412] = v28[412];
        if (v70)
        {
          v73 = *(v28 + 53);
          *(v27 + 52) = v70;
          *(v27 + 53) = v73;

          v74 = *(v28 + 54);
          if (v74)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *(v27 + 26) = *(v28 + 26);
          v74 = *(v28 + 54);
          if (v74)
          {
LABEL_39:
            v75 = *(v28 + 55);
            *(v27 + 54) = v74;
            *(v27 + 55) = v75;

            v76 = *(v28 + 56);
            if (v76)
            {
LABEL_40:
              v77 = *(v28 + 57);
              *(v27 + 56) = v76;
              *(v27 + 57) = v77;

LABEL_44:
              *(v27 + 58) = *(v28 + 58);
              v27[472] = v28[472];
LABEL_45:
              v78 = *(v28 + 61);
              *(v27 + 60) = *(v28 + 60);
              *(v27 + 61) = v78;
              *(v27 + 62) = *(v28 + 62);
              v27[504] = v28[504];
              v79 = *(v28 + 64);

              if (v79)
              {
                v80 = *(v28 + 65);
                *(v27 + 64) = v79;
                *(v27 + 65) = v80;
              }

              else
              {
                *(v27 + 32) = *(v28 + 32);
              }

              v27[528] = v28[528];
              if (!*(v28 + 102))
              {
                memcpy(v27 + 536, v28 + 536, 0x130uLL);
                goto LABEL_60;
              }

              *(v27 + 67) = *(v28 + 67);
              *(v27 + 68) = *(v28 + 68);
              v27[552] = v28[552];
              *(v27 + 70) = *(v28 + 70);
              v27[568] = v28[568];
              *(v27 + 36) = *(v28 + 36);
              v27[592] = v28[592];
              v81 = v27 + 600;
              v82 = v28 + 600;
              v83 = *(v28 + 78);

              if (v83)
              {
                if (v83 == 1)
                {
                  v84 = *(v28 + 616);
                  *v81 = *v82;
                  *(v27 + 616) = v84;
                  *(v27 + 632) = *(v28 + 632);
LABEL_56:
                  *(v27 + 81) = *(v28 + 81);
                  v27[656] = v28[656];
                  v86 = v27 + 664;
                  v87 = v28 + 664;
                  v88 = *(v28 + 97);
                  if (v88 == 1)
                  {
                    v89 = *(v28 + 776);
                    *(v27 + 760) = *(v28 + 760);
                    *(v27 + 776) = v89;
                    *(v27 + 792) = *(v28 + 792);
                    v27[808] = v28[808];
                    v90 = *(v28 + 712);
                    *(v27 + 696) = *(v28 + 696);
                    *(v27 + 712) = v90;
                    v91 = *(v28 + 744);
                    *(v27 + 728) = *(v28 + 728);
                    *(v27 + 744) = v91;
                    v92 = *(v28 + 680);
                    *v86 = *v87;
                    *(v27 + 680) = v92;
                  }

                  else
                  {
                    *v86 = *v87;
                    v27[672] = v28[672];
                    *(v27 + 85) = *(v28 + 85);
                    v27[688] = v28[688];
                    *(v27 + 689) = *(v28 + 689);
                    v27[691] = v28[691];
                    v27[692] = v28[692];
                    *(v27 + 87) = *(v28 + 87);
                    v93 = *(v28 + 45);
                    *(v27 + 44) = *(v28 + 44);
                    *(v27 + 45) = v93;
                    *(v27 + 92) = *(v28 + 92);
                    *(v27 + 372) = *(v28 + 372);
                    *(v27 + 47) = *(v28 + 47);
                    v27[768] = v28[768];
                    *(v27 + 97) = v88;
                    *(v27 + 49) = *(v28 + 49);
                    *(v27 + 100) = *(v28 + 100);
                    v27[808] = v28[808];
                  }

                  *(v27 + 102) = *(v28 + 102);
                  *(v27 + 103) = *(v28 + 103);
                  *(v27 + 104) = *(v28 + 104);

LABEL_60:
                  v94 = v27 + 840;
                  v95 = v28 + 840;
                  v96 = *(v28 + 108);
                  if (v96)
                  {
                    if (v96 == 1)
                    {
                      v97 = *(v28 + 856);
                      *v94 = *v95;
                      *(v27 + 856) = v97;
                      *(v27 + 872) = *(v28 + 872);
                      *(v27 + 111) = *(v28 + 111);
LABEL_67:
                      v101 = *(v28 + 112);
                      *(v27 + 112) = v101;
                      *(v27 + 113) = *(v28 + 113);
                      *(v27 + 114) = *(v28 + 114);
                      *(v27 + 115) = *(v28 + 115);
                      *(v27 + 116) = *(v28 + 116);
                      *(v27 + 117) = *(v28 + 117);
                      *(v27 + 118) = *(v28 + 118);
                      *(v27 + 476) = *(v28 + 476);
                      v27[954] = v28[954];
                      v102 = v136[28];
                      __dst = &v27[v102];
                      v135 = &v28[v102];
                      v103 = type metadata accessor for CommandOperation(0);
                      v125 = *(v103 - 8);
                      v127 = *(v125 + 48);
                      v104 = v101;

                      if (v127(v135, 1, v103))
                      {
                        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v135, *(*(v105 - 8) + 64));
                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                      }

                      else
                      {
                        *__dst = *v135;
                        v108 = *(v103 + 20);
                        v109 = &__dst[v108];
                        v110 = &v135[v108];
                        v111 = *&v135[v108];
                        v112 = *&v135[v108 + 8];
                        v128 = v103;
                        v113 = v135[v108 + 16];
                        outlined copy of Text.Storage(v111, *(v110 + 1), v110[16]);
                        *v109 = v111;
                        *(v109 + 1) = v112;
                        v109[16] = v113;
                        *(v109 + 3) = *(v110 + 3);
                        v114 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v115 = type metadata accessor for UUID();
                        v123 = *(*(v115 - 8) + 16);

                        v123(&v109[v114], &v110[v114], v115);
                        v116 = *(v128 + 24);
                        v117 = &__dst[v116];
                        v118 = &v135[v116];
                        if (*v118)
                        {
                          v119 = *(v118 + 1);
                          *v117 = *v118;
                          *(v117 + 1) = v119;
                        }

                        else
                        {
                          *v117 = *v118;
                        }

                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                        (*(v125 + 56))(__dst, 0, 1, v128);
                      }

                      v27[v106[29]] = v28[v106[29]];
                      v27[v106[30]] = v28[v106[30]];
                      v27[v106[31]] = v28[v106[31]];
                      v27[v106[32]] = v28[v106[32]];
                      v27[v106[33]] = v28[v106[33]];
                      *&v27[v106[34]] = *&v28[v106[34]];
                      v120 = *(v107 + 56);

                      v120(v27, 0, 1, v106);
                      goto LABEL_74;
                    }

                    *(v27 + 108) = v96;
                    *(v27 + 109) = *(v28 + 109);
                    (**(v96 - 8))(v94, v95);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
LABEL_66:
                      *(v27 + 55) = *(v28 + 55);
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    v98 = *(v28 + 856);
                    *v94 = *v95;
                    *(v27 + 856) = v98;
                    *(v27 + 109) = *(v28 + 109);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
                      goto LABEL_66;
                    }
                  }

                  v100 = *(v28 + 111);
                  *(v27 + 110) = v99;
                  *(v27 + 111) = v100;

                  goto LABEL_67;
                }

                *(v27 + 78) = v83;
                *(v27 + 79) = *(v28 + 79);
                (**(v83 - 8))((v27 + 600), (v28 + 600), v83);
              }

              else
              {
                v85 = *(v28 + 616);
                *v81 = *v82;
                *(v27 + 616) = v85;
                *(v27 + 79) = *(v28 + 79);
              }

              *(v27 + 80) = *(v28 + 80);

              goto LABEL_56;
            }

LABEL_43:
            *(v27 + 28) = *(v28 + 28);
            goto LABEL_44;
          }
        }

        *(v27 + 27) = *(v28 + 27);
        v76 = *(v28 + 56);
        if (v76)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v50 = v28[72];
      if (v50 == 255)
      {
        *(v27 + 8) = *(v28 + 8);
        v27[72] = v28[72];
      }

      else
      {
        v51 = *(v28 + 8);
        outlined copy of GraphicsImage.Contents(v51, v28[72]);
        *(v27 + 8) = v51;
        v27[72] = v50;
        v38 = *(v28 + 24);
      }

      *(v27 + 10) = *(v28 + 10);
      *(v27 + 88) = *(v28 + 88);
      v27[104] = v28[104];
      *(v27 + 108) = *(v28 + 108);
      *(v27 + 121) = *(v28 + 121);
      *(v27 + 136) = *(v28 + 136);
      *(v27 + 152) = *(v28 + 152);
      *(v27 + 84) = *(v28 + 84);
      v27[170] = v28[170];
      v27[171] = v28[171];
      if (v38 >> 1 == 0xFFFFFFFF)
      {
        v52 = *(v28 + 12);
        *(v27 + 11) = *(v28 + 11);
        *(v27 + 12) = v52;
      }

      else
      {
        v53 = *(v28 + 22);
        v54 = *(v28 + 23);
        v55 = *(v28 + 25);
        outlined copy of AccessibilityImageLabel(v53, v54, v38, v55);
        *(v27 + 22) = v53;
        *(v27 + 23) = v54;
        *(v27 + 24) = v38;
        *(v27 + 25) = v55;
      }

      v56 = *(v28 + 27);
      *(v27 + 26) = *(v28 + 26);
      *(v27 + 27) = v56;
      *(v27 + 112) = *(v28 + 112);
      *(v27 + 57) = *(v28 + 57);
      v27[232] = v28[232];
      v57 = *(v28 + 30);
      *(v27 + 30) = v57;
      *(v27 + 124) = *(v28 + 124);
      v27[250] = v28[250];
      swift_unknownObjectRetain();

      v58 = v57;
      v46 = *(v28 + 33);
      if (v46)
      {
        goto LABEL_21;
      }
    }

    v59 = *(v28 + 17);
    *(v27 + 16) = *(v28 + 16);
    *(v27 + 17) = v59;
    *(v27 + 18) = *(v28 + 18);
    goto LABEL_32;
  }

  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v7 = *(*(v6 - 8) + 64);

  return memcpy(a1, a2, v7);
}