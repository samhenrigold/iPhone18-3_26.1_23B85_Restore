uint64_t (*Table.ChildSelectionEnabled.base.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v13 = *Value;
  v12 = Value[1];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = v12;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Identifiable.ID) -> (@out Bool);
}

uint64_t (*protocol witness for Rule.value.getter in conformance Table<A, B, C>.ChildSelectionAction@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = Table.ChildSelectionAction.value.getter(*v2, a1[2], a1[3], a1[4], a1[5], a1[6]);
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 2) = v6;
    *(result + 3) = v7;
    v8 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<AnyHashable>) -> ();
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t (*Table.ChildSelectionEnabled.value.getter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  return partial apply for closure #1 in Table.ChildSelectionEnabled.value.getter;
}

uint64_t closure #1 in Table.ChildSelectionEnabled.value.getter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a7;
  v26 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-v14];
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25[-v18];
  outlined init with copy of AnyHashable(a1, v29);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    Table.ChildSelectionEnabled.base.getter(v26, a3, a4, v27, a6, v28);
    (*(v22 + 56))(v29, v19);
    v23 = LOBYTE(v29[0]);

    (*(v16 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v21(v15, 1, 1, AssociatedTypeWitness);
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  return v23;
}

uint64_t protocol witness for Rule.value.getter in conformance Table<A, B, C>.ChildSelectionMenu@<X0>(void *a1@<X0>, void (*a2)(void, void, void, void, void, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  a2(*v6, a1[2], a1[3], a1[4], a1[5], a1[6]);
  v11 = v10;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = v11;
  *a6 = a5;
  a6[1] = result;
  return result;
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v32 = a4[1];
  v34 = a9;
  v35 = a10;
  v36 = a12;
  v37 = a13;
  v16 = type metadata accessor for Table(0, &v34);
  v17 = a6 + v16[16];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = a6 + v16[17];
  outlined assign with copy of Binding<AnySelectionManager>?(a1, v17);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  v20 = type metadata accessor for ToAnyComparatorArray(0, a11, a14, v19);
  swift_getWitnessTable(protocol conformance descriptor for ToAnyComparatorArray<A>, v20);
  v21 = Binding.projecting<A>(_:)();
  v22 = v32;
  *v18 = v34;
  *(v18 + 8) = v35;
  if (v32)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for TableColumnCustomization(255, a9, AssociatedConformanceWitness, v24);
    type metadata accessor for Binding();
    v26 = type metadata accessor for TableColumnCustomization.ToAnyCustomization(0, a9, AssociatedConformanceWitness, v25);
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.ToAnyCustomization, v26);
    Binding.projecting<A>(_:)();

    v27 = v34;
    v28 = v35;
    v22 = v36;
  }

  else
  {
    v27 = 0;
    v28 = 0uLL;
  }

  v29 = a6 + v16[18];
  *v29 = v27;
  *(v29 + 8) = v28;
  *(v29 + 24) = v22;
  v30 = a7(v21);
  a5(v30);

  return outlined destroy of Binding<AnySelectionManager>?(a1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Table<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Table<A, B, C>, a3);

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t closure #1 in ToAnyComparatorArray.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  return SwiftUIAnySortComparator.init<A>(_:)(v9, a2, a3, a4);
}

uint64_t protocol witness for Projection.get(base:) in conformance ToAnyComparatorArray<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ToAnyComparatorArray.get(base:)(*a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t Table.init<A>(sortOrder:columns:rows:)@<X0>(void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(void *)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  return Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v14, v13, a3, a7, a4, a5, a6, a8, a9, a10, a11, a12);
}

uint64_t Table.init<A>(selection:sortOrder:columns:rows:)@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X4>, uint64_t (*a5)(void *)@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  v18 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v18);
  Binding.projecting<A>(_:)();
  memset(v24, 0, sizeof(v24));
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v25, v24, a4, a7, a5, a6, a8, a9, a10, a11, a12, a13);
  return (*(*(v16 - 8) + 8))(a1, v16);
}

double Table.init<A>(selection:sortOrder:columns:rows:)@<D0>(void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v17 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v17);
  Binding.projecting<A>(_:)();
  memset(v21, 0, sizeof(v21));
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v22, v21, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);

  return result;
}

uint64_t Table.init<A>(_:columns:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for TableForEachContent(0, a5, a7, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v17);
  *&v20 = v17;
  *(&v20 + 1) = a4;
  Table.init(of:selection:columnCustomization:columns:rows:)(v22, v21, a2, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a3, a8, v20, WitnessTable, a6);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t Table.init<A>(_:selection:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  v19 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v16, v18);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v19);
  Binding.projecting<A>(_:)();
  memset(v27, 0, sizeof(v27));
  v20 = type metadata accessor for TableForEachContent(0, a6, a9, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v20);
  *&v23 = v20;
  *(&v23 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v28, v27, a3, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a4, a8, v23, WitnessTable, a7);
  (*(*(v17 - 8) + 8))(a2, v17);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A>(_:selection:columns:)@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v16 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v16);
  Binding.projecting<A>(_:)();
  memset(v24, 0, sizeof(v24));
  v17 = type metadata accessor for TableForEachContent(0, a8, a10, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v17);
  *&v20 = v17;
  *(&v20 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v25, v24, a4, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a5, a7, v20, WitnessTable, a9);

  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t Table.init<A, B>(_:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  v23 = a5;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for TableForEachContent(0, a8, a11, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v17);
  *&v20 = v17;
  *(&v20 + 1) = a6;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v32, v31, a4, a7, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v22, a5, v20, a9, WitnessTable, a10, a12);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  v19 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v16, v18);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v19);
  Binding.projecting<A>(_:)();
  memset(v37, 0, sizeof(v37));
  v29 = a6;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a1;
  v20 = type metadata accessor for TableForEachContent(0, a9, a12, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v20);
  *&v23 = v20;
  *(&v23 + 1) = a8;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v38, v37, a5, a7, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v28, a6, v23, a10, WitnessTable, a11, a13);
  (*(*(v17 - 8) + 8))(a2, v17);
  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columns:)@<X0>(uint64_t a1@<X0>, void (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v19 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v17, v18);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v19);
  Binding.projecting<A>(_:)();
  memset(v36, 0, sizeof(v36));
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a1;
  v20 = type metadata accessor for TableForEachContent(0, a11, a14, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v20);
  *&v23 = v20;
  *(&v23 + 1) = a10;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v37, v36, a6, a7, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v27, a9, v23, a12, WitnessTable, a13, a15);

  return (*(*(a11 - 8) + 8))(a1, a11);
}

uint64_t Table.init(of:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = *(a1 + 24);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = *(a1 + 8);
  v15 = v10;
  v13 = v9;
  *(&v12 + 1) = a7;
  *&v12 = a5;
  return Table.init(of:selection:columnCustomization:columns:rows:)(v16, &v13, a2, a3, a4, a6, v12, a8, a9);
}

uint64_t Table.init(of:selection:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9)
{
  v12 = *a2;
  v13 = *(a2 + 24);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(a2 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  v18 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v18);
  Binding.projecting<A>(_:)();
  v24 = v12;
  v25 = v20;
  v26 = v13;
  Table.init(of:selection:columnCustomization:columns:rows:)(v27, &v24, a3, a4, a5, a6, a7, a8, a9);
  return (*(*(v16 - 8) + 8))(a1, v16);
}

double Table.init(of:selection:columnCustomization:columns:rows:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v19 = *a4;
  v20 = *(a4 + 24);
  v24 = a1;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(a4 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v16 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v16);
  Binding.projecting<A>(_:)();
  v24 = v19;
  v25 = v18;
  v26 = v20;
  Table.init(of:selection:columnCustomization:columns:rows:)(v27, &v24, a5, a6, a9, a7, a10, a11, a12);

  return result;
}

uint64_t Table.init<A>(of:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a3@<X4>, void (*a4)(uint64_t)@<X5>, uint64_t (*a5)(void *)@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a3;
  v14 = *(a3 + 24);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = v13;
  v17 = *(a3 + 8);
  v18 = v14;
  return Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v19, &v16, a4, a6, a5, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *a4;
  v17 = *(a4 + 24);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(a4 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v20 = type metadata accessor for Binding();
  v22 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v22);
  Binding.projecting<A>(_:)();
  v27 = v16;
  v28 = v24;
  v29 = v17;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v30, &v27, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  return (*(*(v20 - 8) + 8))(a1, v20);
}

double Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a6@<X7>, uint64_t a7@<X8>, void (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(void *), uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = *a6;
  v25 = *(a6 + 24);
  v27 = a1;
  *&v28 = a2;
  *(&v28 + 1) = a3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(a6 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v21 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v21);
  Binding.projecting<A>(_:)();
  v27 = v24;
  v28 = v23;
  v29 = v25;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v30, &v27, a8, a7, a10, a11, a12, a13, a14, a15, a16, a17);

  return result;
}

uint64_t Table.init<A>(_:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v16 = *a2;
  v17 = *(a2 + 24);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v23 = v16;
  v24 = *(a2 + 8);
  v25 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for TableForEachContent(0, a6, a9, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v19);
  *&v22 = v19;
  *(&v22 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v26, &v23, a3, partial apply for closure #1 in Table.init<A>(_:columnCustomization:columns:), a4, a8, v22, WitnessTable, a7);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t Table.init<A>(_:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = *a3;
  v27 = *(a3 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v25 = *(a3 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v20 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v17, v19);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v20);
  Binding.projecting<A>(_:)();
  v32 = v25;
  v33 = v27;
  v31 = v26;
  v21 = type metadata accessor for TableForEachContent(0, a7, a10, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v21);
  *&v24 = v21;
  *(&v24 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v34, &v31, a4, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a5, a8, v24, WitnessTable, a9);
  (*(*(v18 - 8) + 8))(a2, v18);
  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t Table.init<A>(_:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = *a5;
  v25 = *(a5 + 24);
  v29 = a2;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v23 = *(a5 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v18 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v16, v17);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v18);
  Binding.projecting<A>(_:)();
  v29 = v24;
  v30 = v23;
  v31 = v25;
  v19 = type metadata accessor for TableForEachContent(0, a10, a12, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v19);
  *&v22 = v19;
  *(&v22 + 1) = a9;
  Table.init(of:selection:columnCustomization:columns:rows:)(v32, &v29, a6, partial apply for closure #1 in Table.init<A>(_:selection:columns:), a7, a8, v22, WitnessTable, a11);

  return (*(*(a10 - 8) + 8))(a1, a10);
}

uint64_t closure #1 in Table.init<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for TableForEachContent(0, a4, a6, AssociatedConformanceWitness);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  (*(v9 + 16))(v11, a1, a4, v18);
  (*(v9 + 32))(v16, v11, a4);
  swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v13);
  static TableRowBuilder.buildExpression<A>(_:)();
  v21 = *(v14 + 8);
  v21(v16, v13);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (v21)(v20, v13);
}

uint64_t Table.init<A, B>(_:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *a4;
  v17 = *(a4 + 24);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v33 = v16;
  v34 = *(a4 + 8);
  v35 = v17;
  v25 = a6;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for TableForEachContent(0, a9, a12, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v19);
  *&v22 = v19;
  *(&v22 + 1) = a8;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v36, &v33, a5, a7, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v24, a6, v22, a10, WitnessTable, a11, a13);
  return (*(*(a9 - 8) + 8))(a1, a9);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = *a5;
  v27 = *(a5 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v25 = *(a5 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v20 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v17, v19);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v20);
  Binding.projecting<A>(_:)();
  v41 = v26;
  v42 = v25;
  v43 = v27;
  v33 = a8;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  v40 = a1;
  v21 = type metadata accessor for TableForEachContent(0, a10, a13, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v21);
  *&v24 = v21;
  *(&v24 + 1) = a9;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v44, &v41, a6, a7, partial apply for closure #1 in Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:), v32, a8, v24, a11, WitnessTable, a12, a14);
  (*(*(v18 - 8) + 8))(a2, v18);
  return (*(*(a10 - 8) + 8))(a1, a10);
}

uint64_t Table.init<A, B>(_:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X7>, uint64_t a8@<X8>, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = *a7;
  v29 = *(a7 + 24);
  v41 = a2;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v27 = *(a7 + 8);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v22 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v20, v21);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v22);
  Binding.projecting<A>(_:)();
  v41 = v28;
  v42 = v27;
  v43 = v29;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v38 = a16;
  v39 = a17;
  v40 = a1;
  v23 = type metadata accessor for TableForEachContent(0, a13, a16, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v23);
  *&v26 = v23;
  *(&v26 + 1) = a12;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v44, &v41, a9, a8, partial apply for closure #1 in Table.init<A, B>(_:sortOrder:columns:), v32, a11, v26, a14, WitnessTable, a15, a17);

  return (*(*(a13 - 8) + 8))(a1, a13);
}

uint64_t closure #1 in Table.init<A, B>(_:sortOrder:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TableForEachContent(0, a4, a7, AssociatedConformanceWitness);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - v20;
  (*(v10 + 16))(v12, a1, a4, v19);
  (*(v10 + 32))(v17, v12, a4);
  swift_getWitnessTable(protocol conformance descriptor for TableForEachContent<A>, v14);
  static TableRowBuilder.buildExpression<A>(_:)();
  v22 = *(v15 + 8);
  v22(v17, v14);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (v22)(v21, v14);
}

uint64_t Table.init<A>(_:children:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v25 = 0;
  v16 = a3[1];
  v23[0] = *a3;
  v23[1] = v16;
  memset(v24, 0, sizeof(v24));
  v17 = *(v14[1] + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for TableOutlineGroupContent(0, v17, a7, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v19);
  *&v22 = v19;
  *(&v22 + 1) = a5;
  Table.init(of:selection:columnCustomization:columns:rows:)(v24, v23, a4, partial apply for closure #1 in Table.init<A>(_:children:columnCustomization:columns:), v15, a8, v22, WitnessTable, a6);

  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t TableOutlineGroupContent.init(data:children:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  result = type metadata accessor for TableOutlineGroupContent(0, v9, a3, a4);
  *(a5 + *(result + 44)) = a2;
  return result;
}

uint64_t Table.init<A>(_:children:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v12 = *a2;
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v25 = a4[1];
  v26 = *a4;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  v19 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v16, v18);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v19);
  Binding.projecting<A>(_:)();
  v31[0] = v26;
  v31[1] = v25;
  v20 = *(*(v12 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v21 = type metadata accessor for TableOutlineGroupContent(0, v20, a9, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v21);
  *&v24 = v21;
  *(&v24 + 1) = a6;
  Table.init(of:selection:columnCustomization:columns:rows:)(v32, v31, a5, partial apply for closure #1 in Table.init<A>(_:children:selection:columnCustomization:columns:), v13, a8, v24, WitnessTable, a7);

  (*(*(v17 - 8) + 8))(a3, v17);
  return (*(*(v20 - 8) + 8))(a1, v20);
}

uint64_t Table.init<A>(_:children:selection:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a2;
  v13 = *(*a2 + *MEMORY[0x1E69E77B0]);
  *&v29 = a3;
  *(&v29 + 1) = a4;
  *&v30 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v24 = a6[1];
  v25 = *a6;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v18 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v16, v17);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v18);
  Binding.projecting<A>(_:)();
  v29 = v25;
  v30 = v24;
  v19 = *(*(v12 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v20 = type metadata accessor for TableOutlineGroupContent(0, v19, a11, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v20);
  *&v23 = v20;
  *(&v23 + 1) = a9;
  Table.init(of:selection:columnCustomization:columns:rows:)(v31, &v29, a7, partial apply for closure #1 in Table.init<A>(_:children:selection:columnCustomization:columns:), v13, a8, v23, WitnessTable, a10);

  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t closure #1 in Table.init<A>(_:children:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  v6 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableOutlineGroupContent(0, v6, a3, AssociatedConformanceWitness);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v7 + 16))(v9, v23, v6, v16);
  TableOutlineGroupContent.init(data:children:)(v9, a2, v22, AssociatedConformanceWitness, v14);
  swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);

  v19(v14, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (v19)(v18, v11);
}

uint64_t Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v34 = 0;
  v16 = a5[1];
  v32[0] = *a5;
  v32[1] = v16;
  memset(v33, 0, sizeof(v33));
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = a1;
  v31 = a2;
  v17 = *(v14[1] + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for TableOutlineGroupContent(0, v17, a11, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v19);
  *&v22 = v19;
  *(&v22 + 1) = a8;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v33, v32, a6, a7, partial apply for closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:), v24, v15, v22, a9, WitnessTable, a10, a12);

  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a6@<X6>, void (*a7)(uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a2;
  v16 = *(*a2 + *MEMORY[0x1E69E77B0]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v28 = a6[1];
  v29 = *a6;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v20 = type metadata accessor for Binding();
  v22 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v19, v21);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v22);
  Binding.projecting<A>(_:)();
  v43[0] = v29;
  v43[1] = v28;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a1;
  v42 = a2;
  v23 = *(*(v15 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v24 = type metadata accessor for TableOutlineGroupContent(0, v23, a13, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v24);
  *&v27 = v24;
  *(&v27 + 1) = a10;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v44, v43, a7, a8, partial apply for closure #1 in Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:), v35, v16, v27, a11, WitnessTable, a12, a14);

  (*(*(v20 - 8) + 8))(a3, v20);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

uint64_t Table.init<A, B>(_:children:selection:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>, __int128 *a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *a2;
  v18 = *(*a2 + *MEMORY[0x1E69E77B0]);
  *&v41 = a3;
  *(&v41 + 1) = a4;
  *&v42 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v29 = a9[1];
  v30 = *a9;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v23 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v21, v22);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v23);
  Binding.projecting<A>(_:)();
  v41 = v30;
  v42 = v29;
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v37 = a15;
  v38 = a16;
  v39 = a1;
  v40 = a2;
  v24 = *(*(v17 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v25 = type metadata accessor for TableOutlineGroupContent(0, v24, a15, AssociatedConformanceWitness);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v25);
  *&v28 = v25;
  *(&v28 + 1) = a12;
  Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)(v43, &v41, a10, a8, partial apply for closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:), v33, v18, v28, a13, WitnessTable, a14, a16);

  return (*(*(v24 - 8) + 8))(a1, v24);
}

uint64_t closure #1 in Table.init<A, B>(_:children:sortOrder:columnCustomization:columns:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  v6 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TableOutlineGroupContent(0, v6, a3, AssociatedConformanceWitness);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v7 + 16))(v9, v23, v6, v16);
  TableOutlineGroupContent.init(data:children:)(v9, a2, v22, AssociatedConformanceWitness, v14);
  swift_getWitnessTable(protocol conformance descriptor for TableOutlineGroupContent<A>, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);

  v19(v14, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (v19)(v18, v11);
}

double Table.init<A>(of:sortOrder:columnCustomization:columns:rows:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a4@<X4>, void (*a5)(uint64_t)@<X5>, uint64_t (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a4[1];
  v39 = a9;
  v40 = a10;
  v41 = a12;
  v42 = a13;
  v17 = type metadata accessor for Table(0, &v39);
  v18 = a7 + v17[16];
  *(v18 + 48) = 0;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v19 = outlined destroy of Binding<AnySelectionManager>?(v18);
  v20 = 0uLL;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  if (a2)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    v22 = type metadata accessor for ToAnyComparatorArray(0, a11, a14, v21);

    swift_getWitnessTable(protocol conformance descriptor for ToAnyComparatorArray<A>, v22);
    Binding.projecting<A>(_:)();

    v23 = v39;
    v20 = v40;
  }

  else
  {
    v23 = 0;
  }

  v24 = a7 + v17[17];
  *v24 = v23;
  *(v24 + 8) = v20;
  v25 = v36;
  if (v36)
  {
    v26 = a1;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for TableColumnCustomization(255, a9, AssociatedConformanceWitness, v28);
    type metadata accessor for Binding();
    v30 = type metadata accessor for TableColumnCustomization.ToAnyCustomization(0, a9, AssociatedConformanceWitness, v29);
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.ToAnyCustomization, v30);
    Binding.projecting<A>(_:)();

    a1 = v26;

    v25 = v39;
    v31 = v40;
    v32 = v41;
  }

  else
  {
    v32 = 0;
    v31 = 0uLL;
  }

  v33 = a7 + v17[18];
  *v33 = v25;
  *(v33 + 8) = v31;
  *(v33 + 24) = v32;
  v34 = a6(v19);
  a5(v34);
  return outlined consume of Binding<[A1]>?<A, B, C><A1>(a1, a2);
}

uint64_t Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X8>, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v42 = a5[1];
  v45 = a10;
  v46 = a11;
  v47 = a13;
  v48 = a14;
  v44 = type metadata accessor for Table(0, &v45);
  v18 = a7 + v44[16];
  *(v18 + 48) = 0;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Optional();
  v22 = type metadata accessor for Binding();
  v24 = type metadata accessor for OptionalToAnySelectionManager(0, AssociatedTypeWitness, v21, v23);
  swift_getWitnessTable(protocol conformance descriptor for OptionalToAnySelectionManager<A>, v24);
  Binding.projecting<A>(_:)();
  v25 = outlined assign with take of Binding<AnySelectionManager>?(&v45, v18);
  if (a3)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    v27 = type metadata accessor for ToAnyComparatorArray(0, a12, a15, v26);

    swift_getWitnessTable(protocol conformance descriptor for ToAnyComparatorArray<A>, v27);
    Binding.projecting<A>(_:)();

    v28 = v45;
    v29 = v46;
  }

  else
  {
    v28 = 0;
    v29 = 0uLL;
  }

  v30 = a7 + v44[17];
  *v30 = v28;
  *(v30 + 8) = v29;
  v31 = v42;
  if (v42)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for TableColumnCustomization(255, a10, AssociatedConformanceWitness, v32);
    type metadata accessor for Binding();
    v34 = type metadata accessor for TableColumnCustomization.ToAnyCustomization(0, a10, AssociatedConformanceWitness, v33);
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.ToAnyCustomization, v34);
    Binding.projecting<A>(_:)();

    v35 = v45;
    v36 = v46;
    v31 = v47;
  }

  else
  {
    v35 = 0;
    v36 = 0uLL;
  }

  v37 = a7 + v44[18];
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 24) = v31;
  v38 = a8(v25);
  a6(v38);
  v39 = outlined consume of Binding<[A1]>?<A, B, C><A1>(a2, a3);
  return (*(*(v22 - 8) + 8))(a1, v22, v39);
}

double Table.init<A>(of:selection:sortOrder:columnCustomization:columns:rows:)@<D0>(uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a6@<X7>, uint64_t a7@<X8>, void (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v41 = a6[1];
  v43 = a12;
  v44 = a13;
  v45 = a15;
  v46 = a16;
  v42 = type metadata accessor for Table(0, &v43);
  v19 = a7 + v42[16];
  *(v19 + 48) = 0;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v24 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, v22, v23);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v24);
  Binding.projecting<A>(_:)();
  v25 = outlined assign with take of Binding<AnySelectionManager>?(&v43, v19);
  if (a4)
  {
    type metadata accessor for Array();
    type metadata accessor for Binding();
    v27 = type metadata accessor for ToAnyComparatorArray(0, a14, a17, v26);

    swift_getWitnessTable(protocol conformance descriptor for ToAnyComparatorArray<A>, v27);
    Binding.projecting<A>(_:)();

    v28 = v43;
    v29 = v44;
  }

  else
  {
    v28 = 0;
    v29 = 0uLL;
  }

  v30 = a7 + v42[17];
  *v30 = v28;
  *(v30 + 8) = v29;
  v31 = v41;
  if (v41)
  {
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
    type metadata accessor for TableColumnCustomization(255, a12, AssociatedConformanceWitness, v32);
    type metadata accessor for Binding();
    v34 = type metadata accessor for TableColumnCustomization.ToAnyCustomization(0, a12, AssociatedConformanceWitness, v33);
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.ToAnyCustomization, v34);
    Binding.projecting<A>(_:)();

    v35 = v43;
    v36 = v44;
    v31 = v45;
  }

  else
  {
    v35 = 0;
    v36 = 0uLL;
  }

  v37 = a7 + v42[18];
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 24) = v31;
  v38 = a10(v25);
  a8(v38);
  outlined consume of Binding<[A1]>?<A, B, C><A1>(a3, a4);

  return result;
}

uint64_t TableOutlineGroupContent.tableRowBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, v6, v7);
  v11 = *(v3 + *(a1 + 44));
  v12 = swift_allocObject();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v12[2] = v6;
  v12[3] = v13;
  v12[4] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for TableRow(0, AssociatedTypeWitness, v14, v17);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v18);
  return OutlineGroup<>.init<A>(_:children:content:)(v9, v11, partial apply for closure #1 in TableOutlineGroupContent.tableRowBody.getter, v12, v16, v18, v13, WitnessTable, a2);
}

uint64_t TableForEachContent.tableRowBody.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = swift_allocObject();
  v10 = a1[3];
  v11 = a1[4];
  v9[2] = v4;
  v9[3] = v10;
  v9[4] = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for TableRow(0, AssociatedTypeWitness, v11, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v15);
  return ForEach<>.init<A>(_:content:)(v7, partial apply for closure #1 in TableForEachContent.tableRowBody.getter, v9, v4, v13, v15, AssociatedTypeWitness, v10, a2, WitnessTable, v11);
}

uint64_t closure #1 in TableOutlineGroupContent.tableRowBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v21 - v8;
  v11 = type metadata accessor for TableRow(0, AssociatedTypeWitness, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness, v16);
  TableRow.init(_:)(v9, AssociatedTypeWitness, v14);
  swift_getWitnessTable(protocol conformance descriptor for TableRow<A>, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  static TableRowBuilder.buildExpression<A>(_:)();
  return (v19)(v18, v11);
}

uint64_t Table.init(for:selection:columns:rows:)@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a5;
  v25 = a6;
  v23[0] = a9;
  v23[1] = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v23 - v20;
  (*(v18 + 16))(v23 - v20, a2, v17, v19);
  Table.init(selection:columns:rows:)(v21, a3, v24, a7, a8, v23[0], x8_0, a10, a11);
  return (*(v18 + 8))(a2, v17);
}

double Table.init(for:selection:columns:rows:)@<D0>(void (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X6>, uint64_t a5@<X8>, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for Set();
  type metadata accessor for Binding();
  v12 = type metadata accessor for SetToAnySelectionManager(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_getWitnessTable(protocol conformance descriptor for SetToAnySelectionManager<A>, v12);
  Binding.projecting<A>(_:)();
  memset(v17, 0, sizeof(v17));
  Table.init(of:selection:columnCustomization:columns:rows:)(v18, v17, a3, a4, a6, a5, a7, a8, a9);

  return result;
}

void type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Attribute<((_:))?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<((_:))?>)
  {
    type metadata accessor for ((_:))?(255, &lazy cache variable for type metadata for ((_:))?, &lazy cache variable for type metadata for (_:), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<((_:))?>);
    }
  }
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for Set<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], MEMORY[0x1E69E64E8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for ((_:))?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for (_:)(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of Binding<AnySelectionManager>?(uint64_t a1)
{
  type metadata accessor for Binding<AnySelectionManager>?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<AnySelectionManager>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<AnySelectionManager>?)
  {
    type metadata accessor for Binding<AnySelectionManager>(255, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<AnySelectionManager>?);
    }
  }
}

double outlined consume of Binding<[A1]>?<A, B, C><A1>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for Table(uint64_t a1)
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

uint64_t *initializeBufferWithCopyOfBuffer for Table(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (*(v20 + 8) < 0xFFFFFFFFuLL)
    {
      v23 = *v20;
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *(v19 + 48) = *(v20 + 48);
      *(v19 + 16) = v24;
      *(v19 + 32) = v25;
      *v19 = v23;
    }

    else
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      v21 = *(v20 + 40);
      *(v19 + 40) = v21;
      *(v19 + 48) = *(v20 + 48);
      v22 = **(v21 - 8);

      v22(v19 + 16, v20 + 16, v21);
    }

    v26 = (v19 + 63) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v20 + 63) & 0xFFFFFFFFFFFFFFF8;
    if (*(v27 + 8) < 0xFFFFFFFFuLL)
    {
      v28 = *v27;
      *(v26 + 16) = *(v27 + 16);
      *v26 = v28;
    }

    else
    {
      *v26 = *v27;
      *(v26 + 8) = *(v27 + 8);
      *(v26 + 16) = *(v27 + 16);
    }

    v29 = (v26 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*(v30 + 8) < 0xFFFFFFFFuLL)
    {
      v31 = *(v30 + 16);
      *v29 = *v30;
      *(v29 + 16) = v31;
    }

    else
    {
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 16) = *(v30 + 16);
      *(v29 + 24) = *(v30 + 24);
    }
  }

  return v3;
}

uint64_t destroy for Table(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 32) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 8) >= 0xFFFFFFFFuLL)
  {

    result = __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  }

  v11 = (v10 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*(((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 16;
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
  if (*(v16 + 8) < 0xFFFFFFFFuLL)
  {
    v19 = *v16;
    v20 = *(v16 + 16);
    v21 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *v15 = v19;
  }

  else
  {
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v17 = *(v16 + 40);
    *(v15 + 40) = v17;
    *(v15 + 48) = *(v16 + 48);
    v18 = **(v17 - 8);

    v18(v15 + 16, v16 + 16, v17);
  }

  v22 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v23 + 8) < 0xFFFFFFFFuLL)
  {
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
  }

  else
  {
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
  }

  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  if (*(v15 + 8) < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      v18 = *(v16 + 40);
      *(v15 + 40) = v18;
      *(v15 + 48) = *(v16 + 48);
      v19 = **(v18 - 8);

      v19(v15 + 16, v16 + 16, v18);
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_assign_boxed_opaque_existential_1((v15 + 16), (v16 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  }

  v20 = *v16;
  v21 = *(v16 + 16);
  v22 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v21;
  *(v15 + 32) = v22;
  *v15 = v20;
LABEL_8:
  v23 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  if (v23[1] < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;
      v23[1] = v24[1];
      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  else
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;

      v23[1] = v24[1];

      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  v26 = *v24;
  v23[2] = v24[2];
  *v23 = v26;
LABEL_15:
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  if (v27[1] < 0xFFFFFFFFuLL)
  {
    if (v29 >= 0xFFFFFFFF)
    {
      *v27 = *v28;
      v27[1] = v28[1];
      v27[2] = v28[2];
      v27[3] = v28[3];

      return a1;
    }

LABEL_21:
    v30 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v30;
    return a1;
  }

  if (v29 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  *v27 = *v28;

  v27[1] = v28[1];

  v27[2] = v28[2];

  v27[3] = v28[3];

  return a1;
}

uint64_t initializeWithTake for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v17 = *(v16 + 32);
  v19 = *v16;
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v18;
  *(v15 + 32) = v17;
  *v15 = v19;
  v20 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  return a1;
}

uint64_t assignWithTake for Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 32) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 8) >= 0xFFFFFFFFuLL)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_destroy_boxed_opaque_existential_1((v15 + 16));
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  }

  v19 = *v16;
  v20 = *(v16 + 16);
  v21 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v20;
  *(v15 + 32) = v21;
  *v15 = v19;
LABEL_6:
  v22 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v22[1] >= 0xFFFFFFFFuLL)
  {
    if (v23[1] >= 0xFFFFFFFFuLL)
    {
      *v22 = *v23;

      v22[1] = v23[1];

      v22[2] = v23[2];

      goto LABEL_11;
    }
  }

  v24 = *v23;
  v22[2] = v23[2];
  *v22 = v24;
LABEL_11:
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_15:
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
    return a1;
  }

  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_15;
  }

  *v25 = *v26;

  *(v25 + 8) = *(v26 + 8);

  *(v25 + 16) = *(v26 + 16);

  *(v25 + 24) = *(v26 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Table(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 32) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for Table(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
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
      if (v6 == v12)
      {
        v26 = *(v5 + 56);

        v26();
      }

      else
      {
        v27 = (a1 + v13) & ~v10;
        if (v8 == v12)
        {
          v28 = *(v7 + 56);

          v28(v27);
        }

        else
        {
          v29 = (v15 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0x7FFFFFFE)
          {
            *(v29 + 48) = 0;
            result = 0.0;
            *(v29 + 16) = 0u;
            *(v29 + 32) = 0u;
            *v29 = 0u;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = a1;
    bzero(a1, v16);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }

  return result;
}

uint64_t type metadata completion function for TableOutlineGroupContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableOutlineGroupContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
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

double destroy for TableOutlineGroupContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableOutlineGroupContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableOutlineGroupContent(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *storeEnumTagSinglePayload for TableOutlineGroupContent(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t type metadata completion function for TableForEachContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined copy of Binding<AnyTableColumnCustomization>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedTableStyle, AccessibilityAttachmentModifier>, &type metadata for ResolvedTableStyle, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed AnyHashable) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 56);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<AnyHashable>) -> (@owned PlatformItemList)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.Identifiable.ID>) -> (@out PlatformItemList)(uint64_t a1)
{
  v2 = *(v1 + 56);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  dispatch thunk of Rule.value.getter();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in static Rule._update(_:attribute:), v21, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v17, a4);
}

uint64_t specialized ToAnyComparatorArray.get(base:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v3);
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ToAnyComparatorArray.get(base:), v7, v3, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);
}

uint64_t specialized ToAnyComparatorArray.set(base:newValue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a2;
  v12[2] = a3;
  v12[3] = a4;
  type metadata accessor for Binding<AnySelectionManager>(0, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
  v7 = v6;
  v8 = lazy protocol witness table accessor for type [SwiftUIAnySortComparator] and conformance [A]();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ToAnyComparatorArray.set(base:newValue:), v12, v7, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);

  *a1 = v10;
  return result;
}

void type metadata accessor for Binding<AnySelectionManager>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type [SwiftUIAnySortComparator] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A])
  {
    type metadata accessor for Binding<AnySelectionManager>(255, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [SwiftUIAnySortComparator] and conformance [A]);
  }

  return result;
}

uint64_t outlined assign with copy of Binding<AnySelectionManager>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<AnySelectionManager>?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance WrappingLabelStyle@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  result = v7;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

uint64_t initializeWithCopy for WrappingLabelStyleView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for WrappingLabelStyleView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for WrappingLabelStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for WrappingLabelStyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for WrappingLabelStyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WrappingLabelStyleView and conformance WrappingLabelStyleView()
{
  result = lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView;
  if (!lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WrappingLabelStyleView, &unk_1EFF95F60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WrappingLabelStyleView and conformance WrappingLabelStyleView);
  }

  return result;
}

uint64_t closure #1 in WrappingLabelStyleView.body.getter@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v12 = *a1;
  *v13 = a1[1];
  *&v13[9] = *(a1 + 25);
  type metadata accessor for ScaledMetric<CGFloat>(0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[7] = v9;
  *&v8[23] = v10;
  *&v8[39] = v11;
  *v15 = v12;
  *&v15[16] = *v13;
  *&v15[25] = *&v13[9];
  ScaledMetric.wrappedValue.getter();
  View.bodyHeadOutdent(_:)();
  *v14 = KeyPath;
  v14[8] = 1;
  *&v14[9] = *v8;
  *&v14[25] = *&v8[16];
  *&v14[41] = *&v8[32];
  *&v14[56] = *(&v11 + 1);
  v5 = *&v14[16];
  *a2 = *v14;
  a2[1] = v5;
  v6 = *&v14[48];
  a2[2] = *&v14[32];
  a2[3] = v6;
  a2[4] = v12;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v14, v15, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
  *v15 = KeyPath;
  v15[8] = 1;
  *&v15[9] = *v8;
  *&v15[25] = *&v8[16];
  *v16 = *&v8[32];
  *&v16[15] = *(&v11 + 1);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v15, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
}

double protocol witness for View.body.getter in conformance WrappingLabelStyleView@<D0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v18 = *v2;
  v19[0] = v4;
  *(v19 + 9) = *(v2 + 25);
  v5 = static VerticalAlignment.firstTextLineCenter.getter();
  v17 = 0;
  closure #1 in WrappingLabelStyleView.body.getter(&v18, &v11);
  v22 = v13;
  v23 = v14;
  v20 = v11;
  v21 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[1] = v12;
  v24 = v15;
  v25[0] = v11;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v20, &v10, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v25, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  *&v16[7] = v20;
  *&v16[71] = v24;
  *&v16[55] = v23;
  *&v16[39] = v22;
  *&v16[23] = v21;
  v6 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v6;
  *(a2 + 81) = *&v16[64];
  result = *v16;
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  v9 = v17;
  *a2 = v5;
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = v9;
  *(a2 + 96) = *&v16[79];
  *(a2 + 33) = v8;
  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>)
  {
    type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>(255);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, a3, a4);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t AnyNavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 48);
  v12[2] = *(a2 + 32);
  v12[3] = v9;
  v12[4] = *(a2 + 64);
  v13 = *(a2 + 80);
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  return (*(*a7 + 152))(a1, v12, a3, a4, a5, a6, a8, a9);
}

uint64_t AnyNavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = (*(*v9 + 104))();

    *v4 = v10;
    v9 = v10;
  }

  return (*(*v9 + 112))(a1, a2, a3);
}

uint64_t AnyNavigationPath.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = (*(*v13 + 104))();

    *v6 = v14;
    v13 = v14;
  }

  return (*(*v13 + 120))(a1, a2, a3, a4, a5);
}

void AnyNavigationPath.BoxBase.append<A>(_:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  NavigationPath.append<A>(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  NavigationPath.append<A>(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.removeLast(_:)(Swift::Int a1)
{
  swift_beginAccess();
  v6 = *(v1 + 48);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }

    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v7 >= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  result = specialized RangeReplaceableCollection<>.removeLast(_:)(v8, v3, v4, v5);
  v10 = __OFSUB__(a1, v8);
  a1 -= v8;
  if (v10)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  if (a1 >= 1)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 32);
    v13 = *(v1 + 40);
    *&v20 = *(v1 + 16);
    *(&v20 + 1) = v11;
    v21 = v12;
    v22 = v13;
    outlined copy of NavigationPath.Representation(v20, v11, v12, v13);
    NavigationPath.Representation.removeLast(_:)(a1, v14, v15, v16);
    v17 = v20;
    v18 = v21;
    v19 = v22;
    NavigationPath.items.setter(&v17);
  }

  return swift_endAccess();
}

unint64_t AnyNavigationPath.HeterogeneousBoxBase.change(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
LABEL_44:
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v37 = xmmword_18CD6C650;
    return swift_willThrow();
  }

  v4 = v3;
  swift_beginAccess();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 48);
  swift_beginAccess();
  result = 2;
  if ((*(v2 + 40) & 1) == 0 && (v8 & 1) == 0)
  {
    v42 = v7;
    outlined copy of NavigationPath.Representation(v6, v5, v7, 0);
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    v43 = v6 & 0xC000000000000001;

    v12 = 4;
    v13 = v9 >> 62;
    while (1)
    {
      v14 = *(v2 + 16);
      v15 = *(v2 + 48);
      v16 = v14 >> 62;
      if (*(v2 + 40))
      {
        v18 = *(v2 + 24);
        v17 = *(v2 + 32);
        if (v16)
        {
          v19 = __CocoaSet.count.getter();
        }

        else
        {
          v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = *(v18 + 16);
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_59;
        }

        if (v17 >> 62)
        {
          v36 = __CocoaSet.count.getter();
          v23 = v21 + v36;
          if (__OFADD__(v21, v36))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_43;
          }
        }
      }

      else if (v16)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15 >> 62)
      {
        v34 = __CocoaSet.count.getter();
        v25 = v23 + v34;
        if (__OFADD__(v23, v34))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_55;
        }
      }

      v26 = v12 - 4;
      if (v12 - 4 >= v25)
      {
        goto LABEL_45;
      }

      if (v6 >> 62)
      {
        v27 = __CocoaSet.count.getter();
        if (!v13)
        {
LABEL_20:
          v28 = *(v11 + 16);
          v29 = v27 + v28;
          if (__OFADD__(v27, v28))
          {
            goto LABEL_56;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v27 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v35 = __CocoaSet.count.getter();
      v29 = v27 + v35;
      if (__OFADD__(v27, v35))
      {
        goto LABEL_56;
      }

LABEL_21:
      v30 = *(v2 + 16);
      if (v26 >= v29)
      {
LABEL_45:
        if (v12 - NavigationPath.count.getter() == 4 && v12 - NavigationPath.count.getter() == 4)
        {
          outlined consume of NavigationPath.Representation(v6, v5, v42, 0);

          return 1;
        }

        if (v12 - NavigationPath.count.getter() == 4)
        {
          v38 = NavigationPath.count.getter();
          outlined consume of NavigationPath.Representation(v6, v5, v42, 0);

          result = v38 - v26;
          if (!__OFSUB__(v38, v26))
          {
            return result;
          }

          goto LABEL_60;
        }

        outlined consume of NavigationPath.Representation(v6, v5, v42, 0);

        v39 = NavigationPath.count.getter();
        if (!__OFSUB__(v39, v26))
        {
          return 2 * (v39 - v26 != 1);
        }

LABEL_61:
        __break(1u);
LABEL_62:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (*(v2 + 40))
      {
        goto LABEL_62;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v40 = *(v2 + 32);
        v41 = *(v2 + 24);
        outlined copy of NavigationPath.Representation(v30, v41, v40, 0);

        outlined copy of NavigationPath.Representation(v30, v41, v40, 0);
        v31 = MEMORY[0x18D00E9C0](v12 - 4, v30);
        outlined consume of NavigationPath.Representation(v30, v41, v40, 0);
        outlined consume of NavigationPath.Representation(v30, v41, v40, 0);

        if (v43)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v31 = *(v30 + 8 * v12);

        if (v43)
        {
LABEL_38:

          v32 = MEMORY[0x18D00E9C0](v12 - 4, v6);
          outlined consume of NavigationPath.Representation(v6, v5, v42, 0);
          goto LABEL_28;
        }
      }

      if (v26 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v32 = *(v6 + 8 * v12);

LABEL_28:
      v33 = (*(*v31 + 160))(v32);

      if ((v33 & 1) == 0)
      {
        outlined consume of NavigationPath.Representation(v6, v5, v42, 0);

        return 2;
      }

      ++v12;
    }
  }

  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a2 + 48);
  v25[2] = *(a2 + 32);
  v25[3] = v16;
  v25[4] = *(a2 + 64);
  v26 = *(a2 + 80);
  v17 = *(a2 + 16);
  v25[0] = *a2;
  v25[1] = v17;
  swift_beginAccess();
  v18 = *(v8 + 24);
  v19 = *(v8 + 32);
  v20 = *(v8 + 40);
  v22 = *(v8 + 48);
  v21 = *(v8 + 56);
  v27 = *(v8 + 16);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v22;
  v32 = v21;
  outlined copy of NavigationPath.Representation(v27, v18, v19, v20);

  v23 = NavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(a1, v25, a3, a4, a5, a6, a7, a8);
  outlined consume of NavigationPath.Representation(v27, v28, v29, v30);

  return v23;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  outlined copy of NavigationPath.Representation(v8, v9, v10, v11);

  LOBYTE(a3) = NavigationPath.contains<A>(_:)(a1, a2, a3);
  outlined consume of NavigationPath.Representation(v8, v9, v10, v11);

  return a3 & 1;
}

unint64_t AnyNavigationPath.HeterogeneousBoxBase.description.getter()
{
  _StringGuts.grow(_:)(42);

  swift_beginAccess();
  outlined copy of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v1);

  return 0xD000000000000028;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.__ivar_destroyer()
{
  outlined consume of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  result = AnyNavigationPath.HomogeneousBoxBase.asElementType<A>(_:)(a1, a2, &v8 - v6);
  if (!v2)
  {
    swift_beginAccess();
    dispatch thunk of RangeReplaceableCollection.append(_:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.asElementType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v12);
  v15 = swift_dynamicCast();
  v16 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v15)
  {
    v17 = *(AssociatedTypeWitness - 8);
    v16(v10, 0, 1, AssociatedTypeWitness);
    return (*(v17 + 32))(a3, v10, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v10, v7);
    DynamicType = swift_getDynamicType();
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v20 = AssociatedTypeWitness;
    v20[1] = DynamicType;
    return swift_willThrow();
  }
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.removeLast(_:)(uint64_t a1)
{
  swift_beginAccess();
  RangeReplaceableCollection<>.removeLast(_:)();
  return swift_endAccess();
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.change(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*(*v1 + 200) + 8);
  v5 = *(*v1 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v103 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = v96 - v8;
  v119 = v4;
  v9 = swift_getAssociatedTypeWitness();
  v97 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v108 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v117 = v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v96 - v14;
  v121 = v5;
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v107 = v96 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v96 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v118 = v96 - v26;
  v106 = v3;
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v96[0] = v19;
    v28 = *(*v27 + 232);
    v29 = v27;
    swift_beginAccess();
    v112 = v16;
    v31 = v16 + 16;
    v30 = *(v16 + 16);
    v32 = v29 + v28;
    v33 = v2;
    v34 = v121;
    v30(v24, v32, v121);
    v35 = *(v16 + 32);
    v36 = v30;
    v35(v118, v24, v34);
    v37 = v33;
    v38 = *(*v33 + 232);
    v39 = v37;
    v116 = v37;
    swift_beginAccess();
    v40 = v107;
    v115 = v31;
    v36(v107, &v39[v38], v34);
    dispatch thunk of Collection.startIndex.getter();
    v41 = *(v112 + 8);
    v112 += 8;
    v41(v40, v34);
    dispatch thunk of Collection.startIndex.getter();
    v111 = (v97 + 1);
    v100 = (v109 + 16);
    v99 = (v109 + 8);
    v98 = v97 + 4;
    v97 += 5;
    v42 = v40;
    v43 = v108;
    v44 = v116;
    v101 = v9;
    v110 = v41;
    v113 = v38;
    v114 = v36;
    v105 = v15;
    while (1)
    {
      v45 = v44 + v38;
      v46 = v121;
      v36(v42, v45, v121);
      dispatch thunk of Collection.endIndex.getter();
      v41(v42, v46);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v48 = dispatch thunk of static Comparable.< infix(_:_:)();
      v49 = *v111;
      (*v111)(v43, v9);
      v50 = v43;
      v51 = v49;
      v52 = v117;
      v109 = v49;
      if ((v48 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.endIndex.getter();
      v53 = dispatch thunk of static Comparable.< infix(_:_:)();
      v49(v50, v9);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v42 = v107;
      v54 = v121;
      v114(v107, v116 + v113, v121);
      v55 = dispatch thunk of Collection.subscript.read();
      v56 = *v100;
      v57 = v102;
      v58 = AssociatedTypeWitness;
      (*v100)(v102);
      v55(v120, 0);
      v59 = v110;
      v110(v42, v54);
      v60 = dispatch thunk of Collection.subscript.read();
      v61 = v103;
      v56(v103);
      (v60)(v120, 0);
      LOBYTE(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = *v99;
      (*v99)(v61, v58);
      v62(v57, v58);
      if ((v60 & 1) == 0)
      {
        v87 = v101;
        v88 = v109;
        v109(v117, v101);
        v88(v105, v87);
        v59(v118, v121);
        return 2;
      }

      v63 = v121;
      v114(v42, v116 + v113, v121);
      v64 = v59;
      v43 = v108;
      v15 = v105;
      dispatch thunk of Collection.index(after:)();
      v64(v42, v63);
      v65 = v101;
      v109(v15, v101);
      (*v98)(v15, v43, v65);
      v66 = v117;
      dispatch thunk of Collection.index(after:)();
      (*v97)(v66, v43, v65);
      v41 = v110;
      v44 = v116;
      v9 = v65;
      v38 = v113;
      v36 = v114;
    }

    v67 = v9;
    v68 = v107;
    v69 = v121;
    v114(v107, v116 + v113, v121);
    dispatch thunk of Collection.endIndex.getter();
    v70 = v69;
    v71 = v108;
    v110(v68, v70);
    v72 = *(AssociatedConformanceWitness + 8);
    LOBYTE(v68) = dispatch thunk of static Equatable.== infix(_:_:)();
    v51(v71, v9);
    if (v68 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v73 = dispatch thunk of static Equatable.== infix(_:_:)(), v51(v71, v9), (v73))
    {
      v51(v52, v9);
      v51(v15, v9);
      v110(v118, v121);
      return 1;
    }

    else
    {
      v76 = v113;
      AssociatedTypeWitness = v72;
      v77 = v107;
      v78 = v121;
      v114(v107, v116 + v113, v121);
      dispatch thunk of Collection.endIndex.getter();
      v79 = v78;
      v80 = v108;
      v110(v77, v79);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51(v80, v9);
      if (v81)
      {
        v82 = v118;
        v83 = v80;
        v84 = v121;
        dispatch thunk of Collection.endIndex.getter();
        v85 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        v86 = v109;
        v109(v83, v67);
        v86(v52, v67);
        v86(v105, v67);
        v110(v82, v84);
        return v85;
      }

      else
      {
        v89 = v116;
        v90 = v121;
        v91 = v114;
        v114(v77, v116 + v76, v121);
        v92 = v96[0];
        v91(v96[0], &v89[v76], v90);
        v93 = v108;
        dispatch thunk of Collection.endIndex.getter();
        v94 = v110;
        v110(v92, v90);
        LODWORD(v92) = dispatch thunk of RandomAccessCollection.distance(from:to:)() != 1;
        v95 = v109;
        v109(v93, v9);
        v94(v77, v90);
        v95(v52, v9);
        v95(v105, v9);
        v94(v118, v90);
        return 2 * v92;
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type AnyNavigationPath.Error and conformance AnyNavigationPath.Error();
    swift_allocError();
    *v75 = xmmword_18CD6C650;
    return swift_willThrow();
  }
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.view<A>(basedOn:applying:index:apparentPosition:)(uint64_t *a1, __int128 *a2, void (*a3)(uint64_t, __n128), uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a8;
  v58 = a7;
  v56 = a6;
  v52 = a5;
  v57 = a4;
  v55 = a3;
  v60 = a1;
  v10 = *v8;
  v63 = *(*(*v8 + 200) + 8);
  v11 = *(v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v49 - v12;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v66 = v19;
  v67 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v49 - v24;
  v25 = a2[3];
  v71 = a2[2];
  v72 = v25;
  v73 = a2[4];
  v74 = *(a2 + 10);
  v26 = a2[1];
  v69 = *a2;
  v70 = v26;
  v50 = v10;
  v65 = *(v10 + 232);
  v27 = v65;
  v62 = v8;
  swift_beginAccess();
  v28 = *(v13 + 16);
  v64 = v28;
  v28(v18, &v8[v27], v11);
  v29 = &v8[v27];
  v30 = v49;
  v28(v49, v29, v11);
  dispatch thunk of Collection.startIndex.getter();
  v31 = *(v13 + 8);
  v31(v30, v11);
  v32 = v62;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v33 = *(v67 + 8);
  v67 += 8;
  v52 = v33;
  v33(v22, v66);
  v34 = v18;
  v31(v18, v11);
  v35 = v31;
  v64(v34, &v32[v65], v11);
  v36 = dispatch thunk of Collection.subscript.read();
  v37 = v53;
  v49 = *(v53 + 16);
  v38 = v51;
  v39 = AssociatedTypeWitness;
  (v49)(v51);
  v36(v68, 0);
  v35(v34, v11);
  v59 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v38, v56, v55, v57, v39, v58, v59);
  (*(v37 + 8))(v38, v39);
  v40 = v34;
  v64(v34, &v62[v65], v11);
  v41 = v61;
  v42 = v40;
  v43 = dispatch thunk of Collection.subscript.read();
  v45 = v44;
  v46 = v60;
  v60[3] = v39;
  v46[4] = *(v50 + 224);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (v49)(boxed_opaque_existential_1, v45, v39);
  v43(v68, 0);
  v35(v42, v11);
  v52(v41, v66);
  return v59;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.contains<A>(_:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v31 = *v2;
  v4 = *(v31 + 192);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - v5;
  v29 = *(*(*(v6 + 200) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  (*(v20 + 16))(v14, v33, a2, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v19, v11, AssociatedTypeWitness);
    v23 = *(*v2 + 232);
    swift_beginAccess();
    v24 = v32;
    v25 = v2 + v23;
    v26 = v30;
    (*(v32 + 16))(v30, v25, v4);
    v27 = Sequence<>.contains(_:)();
    (*(v24 + 8))(v26, v4);
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  else
  {
    v22(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t AnyNavigationPath.HomogeneousBoxBase.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v11 = 0xD000000000000026;
  v12 = 0x800000018CD3E850;
  v7 = *(*v1 + 232);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  v8 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v8);

  return v11;
}

void protocol witness for Projection.set(base:newValue:) in conformance AnyNavigationPath.ToHeterogeneous(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined consume of NavigationPath.Representation(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));

  if (*v3 == _TtCV7SwiftUI17AnyNavigationPathP33_9DF1331F7AC5F2344ADB74E74311CCBE20HeterogeneousBoxBase)
  {
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    v9 = *(v3 + 48);
    v8 = *(v3 + 56);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v9;
    *(a1 + 40) = v8;
    outlined copy of NavigationPath.Representation(v4, v5, v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized AnyNavigationPath.ToHomogeneous.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a3 - 8);
  (*(v13 + 8))(a1, a3);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  type metadata accessor for AnyNavigationPath.HomogeneousBoxBase(0, v17);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = *(*v14 + 232);
  swift_beginAccess();
  return (*(v13 + 16))(a1, v14 + v15, a3);
}

uint64_t getEnumTagSinglePayload for AnyNavigationPath.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnyNavigationPath.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

double GlassButtonStyle.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18CD6A6D0;
  *(a1 + 40) = 0;
  return result;
}

void static PrimitiveButtonStyle<>.glass(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  outlined copy of _Glass.Variant.Role(*a1, v5, v6);

  outlined consume of Glass?(0, 0, 0, 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 | (v7 << 8);
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
}

void GlassButtonStyle.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *(a1 + 8);
  outlined consume of Glass?(0, 0, 0, 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
}

double outlined copy of _Glass.Variant.Role(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3 == 1)
  {
    return outlined copy of Material.ID(a1, a2);
  }

  if (!a3)
  {
  }

  return result;
}

double outlined consume of Glass?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined consume of _Glass.Variant.Role(a1, a2, a3);
  }

  return result;
}

void outlined consume of _Glass.Variant.Role(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3 == 1)
  {
    outlined consume of Material.ID(a1, a2);
  }

  else if (!a3)
  {
  }
}

void GlassButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v54 = *(v2 + 8);
  v9 = v54;
  v55 = v8;
  v10 = *(v2 + 16);
  v52 = *(v2 + 24);
  v11 = v52;
  v53 = v10;
  v51 = *(v2 + 32);
  v57 = *(v2 + 40);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  v12 = v56;
  *v56 = *v7;
  v13 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, v14, v15, v16);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v13], &v12[*(v17 + 36)], type metadata accessor for ButtonAction);
  outlined copy of Glass?(v8, v9, v10, v11);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7);
  KeyPath = swift_getKeyPath();
  v66 = 0;
  v19 = swift_getKeyPath();
  v65 = 0;
  v20 = swift_getKeyPath();
  v64 = 0;
  v21 = swift_getKeyPath();
  v63 = 0;
  LOBYTE(v7) = v66;
  LOBYTE(v5) = v65;
  LOBYTE(v12) = v64;
  *&v67 = KeyPath;
  BYTE8(v67) = v66;
  *&v68 = v19;
  BYTE8(v68) = v65;
  *&v69[0] = v20;
  BYTE8(v69[0]) = v64;
  *&v69[1] = v21;
  BYTE8(v69[1]) = 0;
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(0, v22, v23, v24);
  v26 = v56;
  v27 = &v56[*(v25 + 36)];
  v28 = v68;
  *v27 = v67;
  v27[1] = v28;
  v27[2] = v69[0];
  *(v27 + 41) = *(v69 + 9);
  v70 = KeyPath;
  v71 = v7;
  v72 = v19;
  v73 = v5;
  v74 = v20;
  v75 = v12;
  v76 = v21;
  v77 = 0;
  v29 = MEMORY[0x1E697EA18];
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v67, &v81, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v70, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, v29);
  v30 = swift_getKeyPath();
  v62 = 0;
  v31 = swift_getKeyPath();
  v61 = 0;
  v32 = swift_getKeyPath();
  v60 = 0;
  v33 = swift_getKeyPath();
  v59[64] = 0;
  LOBYTE(v21) = v62;
  LOBYTE(v5) = v61;
  LOBYTE(v7) = v60;
  *&v78 = v30;
  BYTE8(v78) = v62;
  *&v79 = v31;
  BYTE8(v79) = v61;
  *v80 = v32;
  v80[8] = v60;
  *&v80[16] = v33;
  v80[24] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(0, v34, v35, v36);
  v38 = &v26[*(v37 + 36)];
  v39 = v79;
  *v38 = v78;
  v38[1] = v39;
  v38[2] = *v80;
  *(v38 + 41) = *&v80[9];
  v81 = v30;
  v82 = v21;
  v83 = v31;
  v84 = v5;
  v85 = v32;
  v86 = v7;
  v87 = v33;
  v88 = 0;
  v40 = MEMORY[0x1E6980390];
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v78, v59, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>, MEMORY[0x1E6980390]);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(&v81, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>, v40);
  v41 = swift_getKeyPath();
  v59[0] = 0;
  v42 = swift_getKeyPath();
  v58 = 0;
  outlined consume of Glass?(0, 0, 0, 1);
  LOBYTE(v40) = v59[0];
  LOBYTE(v32) = v58;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(0, v43, v44, v45);
  v47 = &v26[*(v46 + 36)];
  *v47 = 0;
  v47[8] = 0;
  v48 = v54;
  *(v47 + 2) = v55;
  *(v47 + 3) = v48;
  v49 = v52;
  *(v47 + 4) = v53;
  *(v47 + 5) = v49;
  *(v47 + 6) = v51;
  v47[56] = v57;
  *(v47 + 8) = v41;
  v47[72] = v40;
  *(v47 + 10) = v42;
  v47[88] = v32;
}

void type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>)
  {
    v4 = type metadata accessor for Button(0, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>);
    }
  }
}

double outlined copy of Glass?(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined copy of _Glass.Variant.Role(a1, a2, a3);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ApplyGlassButtonConfiguration(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ApplyGlassButtonConfigurationPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration();
  PropertyList.subscript.getter();
  return v2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(255, a2, a3, a4);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>, MEMORY[0x1E6980390]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3, a4);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *key path getter for EnvironmentValues.dynamicTypeSize : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.dynamicTypeSize.getter();
  *a2 = v4;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(255, a2, a3, a4);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

double destroy for GlassButtonStyle(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    outlined consume of _Glass.Variant.Role(*a1, *(a1 + 8), *(a1 + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for GlassButtonStyle(_OWORD *result, uint64_t *a2)
{
  v2 = a2[3];
  if (v2 == 1)
  {
    v3 = *(a2 + 1);
    *result = *a2;
    result[1] = v3;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *(a2 + 16);
    v7 = result;
    outlined copy of _Glass.Variant.Role(*a2, v5, v6);
    *v7 = v4;
    *(v7 + 1) = v5;
    *(v7 + 16) = v6;
    *(v7 + 17) = *(a2 + 17);
    v9 = a2[4];
    *(v7 + 3) = v2;
    *(v7 + 4) = v9;
    *(v7 + 40) = *(a2 + 40);

    return v7;
  }

  return result;
}

uint64_t assignWithCopy for GlassButtonStyle(uint64_t a1, __int128 *a2, __n128 a3)
{
  v5 = *(a2 + 3);
  if (*(a1 + 24) == 1)
  {
    if (v5 == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v6;
      *(a1 + 16) = v7;
    }

    else
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      v12 = *(a2 + 16);
      outlined copy of _Glass.Variant.Role(*a2, v11, v12);
      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (v5 == 1)
  {
    outlined destroy of Glass(a1);
    v8 = *(a2 + 25);
    v9 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 25) = v8;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 1);
    v15 = *(a2 + 16);
    outlined copy of _Glass.Variant.Role(*a2, v14, v15);
    v16 = *a1;
    v17 = *(a1 + 8);
    *a1 = v13;
    *(a1 + 8) = v14;
    v18 = *(a1 + 16);
    *(a1 + 16) = v15;
    outlined consume of _Glass.Variant.Role(v16, v17, v18);
    *(a1 + 17) = *(a2 + 17);
    *(a1 + 24) = *(a2 + 3);

    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

_OWORD *assignWithTake for GlassButtonStyle(_OWORD *result, uint64_t a2)
{
  if (*(result + 3) == 1)
  {
    v3 = *(a2 + 16);
    *result = *a2;
    result[1] = v3;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4 == 1)
    {
      v5 = result;
      outlined destroy of Glass(result);
      v6 = *(a2 + 16);
      *v5 = *a2;
      v5[1] = v6;
      *(v5 + 25) = *(a2 + 25);
      return v5;
    }

    else
    {
      v7 = *(a2 + 16);
      v9 = *result;
      v8 = *(result + 1);
      *result = *a2;
      v10 = *(result + 16);
      *(result + 16) = v7;
      v11 = result;
      outlined consume of _Glass.Variant.Role(v9, v8, v10);
      *(v11 + 17) = *(a2 + 17);
      *(v11 + 24) = v4;

      *(v11 + 32) = *(a2 + 32);
      *(v11 + 40) = *(a2 + 40);
      return v11;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GlassButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>(255, a2, a3, a4);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration()
{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration;
  if (!lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v6[7] = v0;
    v6[8] = v1;
    v3 = MEMORY[0x1E6980390];
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>, MEMORY[0x1E6980390]);
    v5 = v4;
    v6[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ControlGroupStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ControlGroupStyleContext>, v3);
    v6[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    v6[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ControlGroupStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ApplyGlassButtonConfiguration> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t DefaultDateProgressLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  outlined init with copy of ClosedRange<Date>(v1, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClosedRange<Date>);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for DefaultDateProgressLabel(0);
  result = Text.init(timerInterval:pauseTime:countsDown:showsHours:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DefaultDateProgressLabel@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  outlined init with copy of ClosedRange<Date>(v2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClosedRange<Date>);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  result = Text.init(timerInterval:pauseTime:countsDown:showsHours:)();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t ProgressView.init(timerInterval:countsDown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v27 = a4;
  v29 = a2;
  v28 = a8;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = outlined init with copy of ClosedRange<Date>(a1, v22, type metadata accessor for ClosedRange<Date>);
  a3(v23);
  v24 = (*(*(a6 - 8) + 56))(v19, 0, 1, a6);
  v27(v24);
  (*(*(a7 - 8) + 56))(v16, 0, 1, a7);
  CustomProgressView.init(interval:countdown:label:currentValueLabel:)(v22, v29, v19, v16, a6, a7, a9, a10, v28);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  v30[0] = a6;
  v30[1] = a7;
  v30[2] = a9;
  v30[3] = a10;
  type metadata accessor for ProgressView.Base(0, v30);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(timerInterval:countsDown:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = a7;
  v37 = a6;
  v34[1] = a5;
  v35 = a4;
  v42 = a2;
  v34[0] = a1;
  v41 = a8;
  v39 = a14;
  v40 = a13;
  v38 = a12;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v34 - v20;
  v22 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - v23;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = outlined init with copy of ClosedRange<Date>(a1, v27, type metadata accessor for ClosedRange<Date>);
  a3(v28);
  v29 = (*(*(a9 - 8) + 56))(v24, 0, 1, a9);
  v35(v29);
  v30 = (*(*(a10 - 8) + 56))(v21, 0, 1, a10);
  v37(v30);
  (*(*(a11 - 8) + 56))(v18, 0, 1, a11);
  v31 = v40;
  v32 = v38;
  CustomProgressView.init<A>(interval:countdown:label:currentValueLabel:actions:)(v27, v42, v24, v21, v18, a9, a10, v41, v38, v40, v39);
  outlined destroy of ClosedRange<Date>(v34[0], type metadata accessor for ClosedRange<Date>);
  v43[0] = a9;
  v43[1] = a10;
  v43[2] = v32;
  v43[3] = v31;
  type metadata accessor for ProgressView.Base(0, v43);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init(interval:countdown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v20 = a6;
  v21 = a7;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v18, type metadata accessor for ClosedRange<Date>);
  ProgressView.init(timerInterval:countsDown:label:currentValueLabel:)(v18, a2, a3, a4, a5, v20, v21, a8, a9, a10);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

uint64_t ProgressView<>.init(timerInterval:countsDown:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a2;
  v25 = a6;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = outlined init with copy of ClosedRange<Date>(a1, v19, type metadata accessor for ClosedRange<Date>);
  a3(v20);
  (*(*(a4 - 8) + 56))(v16, 0, 1, a4);
  outlined init with copy of ClosedRange<Date>(a1, v13, type metadata accessor for ClosedRange<Date>);
  v21 = type metadata accessor for DefaultDateProgressLabel(0);
  v13[*(v21 + 20)] = v9;
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  v22 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DefaultDateProgressLabel and conformance DefaultDateProgressLabel, type metadata accessor for DefaultDateProgressLabel, protocol conformance descriptor for DefaultDateProgressLabel);
  CustomProgressView.init(interval:countdown:label:currentValueLabel:)(v19, v9, v16, v13, a4, v21, a5, v22, v25);
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  v26[0] = a4;
  v26[1] = v21;
  v26[2] = a5;
  v26[3] = v22;
  type metadata accessor for ProgressView.Base(0, v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init(interval:countdown:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v14, type metadata accessor for ClosedRange<Date>);
  ProgressView<>.init(timerInterval:countsDown:label:)(v14, a2, a3, a4, a5, a6);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

uint64_t ProgressView<>.init(timerInterval:countsDown:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v23 = a2;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ClosedRange<Date>(a1, v11, type metadata accessor for ClosedRange<Date>);
  outlined init with take of ClosedRange<Date>(a1, v8, type metadata accessor for ClosedRange<Date>);
  v12 = type metadata accessor for DefaultDateProgressLabel(0);
  v8[*(v12 + 20)] = v3;
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(0, &lazy cache variable for type metadata for CustomProgressView<EmptyView, DefaultDateProgressLabel>, type metadata accessor for CustomProgressView);
  v15 = v14;
  v17 = *(v14 + 52);
  v16 = *(v14 + 56);
  v13((a3 + v16), 1, 1, v12);
  v18 = *(v15 + 60);
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
  v20 = *(v19 + 48);
  outlined init with take of ClosedRange<Date>(v11, a3, type metadata accessor for ClosedRange<Date>);
  *(a3 + v20) = v23;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v17) = 0;
  outlined assign with take of DefaultDateProgressLabel?(v8, a3 + v16);
  *(a3 + v18) = 0;
  type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, DefaultDateProgressLabel>.Base, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

void type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool))
  {
    type metadata accessor for ClosedRange<Date>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (interval: ClosedRange<Date>, countdown: Bool));
    }
  }
}

uint64_t outlined assign with take of DefaultDateProgressLabel?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for DefaultDateProgressLabel?, type metadata accessor for DefaultDateProgressLabel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for CustomProgressView<EmptyView, DefaultDateProgressLabel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DefaultDateProgressLabel(255);
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DefaultDateProgressLabel and conformance DefaultDateProgressLabel, type metadata accessor for DefaultDateProgressLabel, protocol conformance descriptor for DefaultDateProgressLabel);
    v10[0] = MEMORY[0x1E6981E70];
    v10[1] = v6;
    v10[2] = MEMORY[0x1E6981E60];
    v10[3] = v7;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProgressView<>.init(interval:countdown:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v8, type metadata accessor for ClosedRange<Date>);
  ProgressView<>.init(timerInterval:countsDown:)(v8, a2, a3);
  return outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
}

void *initializeBufferWithCopyOfBuffer for DefaultDateProgressLabel(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>(0);
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>(0);
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t ProgressViewSchedule.entries(from:mode:)(uint64_t a1, char *a2)
{
  v99 = a2;
  v83 = type metadata accessor for ProgressViewSchedule(0);
  v102 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v103 = v2;
  v3 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v93 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Calendar.SearchDirection();
  v92 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Calendar.MatchingPolicy();
  v86 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v87 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v78 - v9;
  v82 = type metadata accessor for Calendar.Component();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v78 - v13;
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x1E6969AE8], v7);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for DateComponents();
  v88 = *(v18 - 8);
  v89 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Calendar();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Date();
  v104 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v94 = &v78 - v26;
  v27 = type metadata accessor for PeriodicTimelineSchedule();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v96 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PeriodicTimelineSchedule.Entries();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AnimationTimelineSchedule.Entries(0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v99)
  {
    v83 = v31;
    v99 = v3;
    v36 = v23;
    static Calendar.current.getter();
    v79 = v21;
    v37 = *(v21 + 56);
    v80 = v20;
    v37(v17, 1, 1, v20);
    v38 = type metadata accessor for TimeZone();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    v39 = v81;
    v40 = v82;
    (*(v81 + 104))(v11, *MEMORY[0x1E6969A98], v82);
    type metadata accessor for ClosedRange<Date>(0);
    v41 = v84;
    v42 = v85;
    Calendar.component(_:from:)();
    (*(v39 + 8))(v11, v40);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v44 = v86;
    v43 = v87;
    (*(v86 + 104))(v87, *MEMORY[0x1E69698D0], v101);
    v45 = v92;
    v46 = v90;
    (*(v92 + 104))(v90, *MEMORY[0x1E69699A0], v97);
    v47 = v93;
    (*(v41 + 104))(v93, *MEMORY[0x1E69699C8], v42);
    v48 = v91;
    v82 = v36;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v41 + 8))(v47, v42);
    v49 = v46;
    v50 = v48;
    (*(v45 + 8))(v49, v97);
    (*(v44 + 8))(v43, v101);
    v51 = v104;
    v52 = *(v104 + 48);
    v53 = v98;
    if (v52(v50, 1, v98) == 1)
    {
      v54 = *(v51 + 16);
      v54(v95, v105, v53);
      if (v52(v50, 1, v53) != 1)
      {
        outlined destroy of Date?(v50);
      }

      v55 = v83;
      v56 = v100;
      v57 = v79;
      v58 = v82;
      v59 = v104;
      v60 = v95;
    }

    else
    {
      v60 = v95;
      (*(v51 + 32))(v95, v50, v53);
      v54 = *(v51 + 16);
      v55 = v83;
      v59 = v51;
      v56 = v100;
      v57 = v79;
      v58 = v82;
    }

    v54(v94, v60, v53);
    v69 = v96;
    PeriodicTimelineSchedule.init(from:by:)();
    v107[0] = 1;
    PeriodicTimelineSchedule.entries(from:mode:)();
    outlined destroy of ClosedRange<Date>(v69, MEMORY[0x1E69803F0]);
    (*(v59 + 8))(v60, v53);
    (*(v88 + 8))(v56, v89);
    v70 = (*(v57 + 8))(v58, v80);
    type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>(0, v70);
    v71 = swift_allocObject();
    outlined init with take of ClosedRange<Date>(v55, v71 + *(*v71 + *MEMORY[0x1E69E6AD8] + 16), MEMORY[0x1E69803D8]);
    v3 = v99;
    v61 = v105;
  }

  else
  {
    v61 = v105;
    v62 = *(v104 + 16);
    if (*(v105 + *(v83 + 20)))
    {
      v62(v94, v105, v98, v33);
      v63 = v96;
      PeriodicTimelineSchedule.init(from:by:)();
      v106 = 0;
      PeriodicTimelineSchedule.entries(from:mode:)();
      outlined destroy of ClosedRange<Date>(v63, MEMORY[0x1E69803F0]);
      type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>(0, v64);
      v65 = swift_allocObject();
      v66 = MEMORY[0x1E69803D8];
      v67 = v65 + *(*v65 + *MEMORY[0x1E69E6AD8] + 16);
      v68 = v31;
    }

    else
    {
      v62(v35, v105, v98, v33);
      v72 = &v35[*(v32 + 20)];
      *v72 = 0x3F81111111111111;
      v72[8] = 0;
      type metadata accessor for _SequenceBox<AnimationTimelineSchedule.Entries>(0);
      v73 = swift_allocObject();
      v66 = type metadata accessor for AnimationTimelineSchedule.Entries;
      v67 = v73 + *(*v73 + *MEMORY[0x1E69E6AD8] + 16);
      v68 = v35;
    }

    outlined init with take of ClosedRange<Date>(v68, v67, v66);
  }

  v74 = dispatch thunk of _AnySequenceBox._makeIterator()();

  outlined init with copy of ClosedRange<Date>(v61, v3, type metadata accessor for ProgressViewSchedule);
  v75 = (*(v102 + 80) + 24) & ~*(v102 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  outlined init with take of ClosedRange<Date>(v3, v76 + v75, type metadata accessor for ProgressViewSchedule);
  type metadata accessor for _IteratorBox<_ClosureBasedIterator<Date>>(0);
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ProgressViewSchedule.entries(from:mode:);
  *(result + 24) = v76;
  return result;
}

uint64_t closure #1 in ProgressViewSchedule.entries(from:mode:)@<X0>(char *a2@<X8>)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Date?(v5);
    v13 = 1;
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v12, v5, v6);
    type metadata accessor for ClosedRange<Date>(0);
    if (static Date.> infix(_:_:)() & 1) != 0 && (static Date.now.getter(), lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969548]), v15 = dispatch thunk of static Comparable.>= infix(_:_:)(), v16 = *(v7 + 8), v16(v9, v6), (v15))
    {
      static Date.distantFuture.getter();
      v16(v12, v6);
    }

    else
    {
      v14(a2, v12, v6);
    }

    v13 = 0;
  }

  return (*(v7 + 56))(a2, v13, 1, v6);
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ProgressViewSchedule@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProgressViewSchedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _TimelineProgressViewBaseEmptyState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimelineProgressViewBaseEmptyState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _TimelineProgressViewBaseEmptyState(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>, lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys, &unk_1EFF962D8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TimelineProgressViewBaseEmptyState.CodingKeys, &unk_1EFF962D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TimelineProgressViewBaseEmptyState.CodingKeys, &unk_1EFF962D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TimelineProgressViewBaseEmptyState.CodingKeys, &unk_1EFF962D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState.CodingKeys and conformance _TimelineProgressViewBaseEmptyState.CodingKeys);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView.ArchivableTimelineProgressView(void *a1, void *a2, uint64_t a3)
{
  v22 = type metadata accessor for Date();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v8 = (v7 & ~v6) + v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  if ((v11 | v6) <= 7 && ((*(v10 + 80) | v6) & 0x100000) == 0 && ((-18 - v11 - ((v8 + 5) & 0xFFFFFFFFFFFFFFFCLL)) | v11) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = *(v4 + 16);
    v21 = AssociatedTypeWitness;
    v15(a1, a2, v22);
    v15(((a1 + v7) & ~v6), ((a2 + v7) & ~v6), v22);
    v16 = a1 + v8;
    *v16 = *(a2 + v8);
    v16[1] = *(a2 + v8 + 1);
    v17 = (a1 + v8 + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = (a2 + v8 + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v19;
    (*(v10 + 16))((v17 + v11 + 17) & ~v11, (v18 + v11 + 17) & ~v11, v21);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + (((v11 | v6) & 0xFC ^ 0x1FC) & ((v11 | v6) + 16)));
  }

  return a1;
}

uint64_t destroy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = v4 + 8;
  v5(a1, v3);
  v7 = *(v6 + 56);
  v8 = v7 + a1;
  v9 = *(v6 + 72);
  v5((v8 + v9) & ~v9, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 8);
  v13 = (((v8 + ((v7 + v9) & ~v9) + 5) & 0xFFFFFFFFFFFFFFFCLL) + *(v11 + 80) + 17) & ~*(v11 + 80);

  return v12(v13, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *v15;
  *(v14 + 16) = *(v15 + 16);
  *v14 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))((*(v18 + 80) + 17 + v14) & ~*(v18 + 80), (*(v18 + 80) + 17 + v15) & ~*(v18 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v9 = *(v8 + 40);
  v10 = *(v8 + 56);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *v15;
  *(v14 + 16) = *(v15 + 16);
  *v14 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 24))((*(v18 + 80) + 17 + v14) & ~*(v18 + 80), (*(v18 + 80) + 17 + v15) & ~*(v18 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *v15;
  *(v14 + 16) = *(v15 + 16);
  *v14 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 32))((*(v18 + 80) + 17 + v14) & ~*(v18 + 80), (*(v18 + 80) + 17 + v15) & ~*(v18 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView.ArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v9 = *(v8 + 24);
  v10 = *(v8 + 40);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *v15;
  *(v14 + 16) = *(v15 + 16);
  *v14 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 40))((*(v18 + 80) + 17 + v14) & ~*(v18 + 80), (*(v18 + 80) + 17 + v15) & ~*(v18 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView.ArchivableTimelineProgressView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  if (v7 <= *(v8 + 84))
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v8 + 80);
  if (v9 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v13 = v10 + 17;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v14 = ((v13 + ((v12 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v11)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = a1 + v12;
        if (v9 > 0xFE)
        {
          v25 = *(v8 + 48);

          return v25((v13 + ((v23 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v13 + ((v12 + 5) & 0xFFFFFFFC)) & ~v10) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView.ArchivableTimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (v9 <= *(v10 + 84))
  {
    v11 = *(v10 + 84);
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v11;
  }

  v14 = ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v15 = ((v12 + 17 + ((v14 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v12) + *(v10 + 64);
  if (a3 <= v13)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v13 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v13 < a2)
  {
    v17 = ~v13 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_51:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, ((v12 + 17 + ((v14 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v12) + *(v10 + 64));
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v13)
  {
    v22 = *(v8 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = &a1[v14];
    if (v11 > 0xFE)
    {
      v24 = *(v10 + 56);

      v24((v12 + 17 + ((v23 + 5) & 0xFFFFFFFFFFFFFFFCLL)) & ~v12, a2);
    }

    else
    {
      *v23 = a2 + 1;
    }
  }
}

uint64_t TimelineProgressViewUpdateStyle.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.DefaultCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimelineProgressViewUpdateStyle.CodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys()
{
  if (*v0)
  {
    return 0x6365536568546E6FLL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimelineProgressViewUpdateStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6365536568546E6FLL && a2 == 0xEB00000000646E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TimelineProgressViewUpdateStyle@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized TimelineProgressViewUpdateStyle.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t TimelineProgressView.ConditionallyArchivableTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *(a1 + 24);
  v26 = *(a1 + 16);
  v6 = v26;
  v27 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v26 - v8;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView(0, v6, v5, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  outlined init with copy of ClosedRange<Date>(v3, v11, type metadata accessor for ClosedRange<Date>);
  v20 = *(v3 + *(a1 + 36));
  LOBYTE(v5) = *(v3 + *(a1 + 40));
  v21 = *(v3 + *(a1 + 44));
  v22 = v3 + *(a1 + 52);
  v23 = v28;
  (*(v29 + 16))(v28, v22, v30);
  TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)(v11, v20, v5, v21, v23, v26, v27, v16);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.FinalTimelineProgressView, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v14 + 8);

  v24(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v19, v13);
}

uint64_t TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  outlined init with take of ClosedRange<Date>(a1, a8, type metadata accessor for ClosedRange<Date>);
  v16 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView(0, a6, a7, v15);
  *(a8 + v16[9]) = a2 & 1;
  *(a8 + v16[10]) = a3;
  *(a8 + v16[11]) = a4;
  v17 = v16[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 32);

  return v19(a8 + v17, a5, AssociatedTypeWitness);
}

double TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  (*(v3 + 32))(v7 + v6, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView(0, v8, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView, v11);
  EnvironmentReader.init(_:)();
  v17 = v23;
  v12 = type metadata accessor for EnvironmentReader();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697ED40], v12);
  View.fixedSize(horizontal:vertical:)();

  v17 = v20;
  v18 = v21;
  v19 = v22;
  v14 = type metadata accessor for ModifiedContent();
  v16[0] = WitnessTable;
  v16[1] = MEMORY[0x1E697EBE0];
  swift_getWitnessTable(MEMORY[0x1E697E858], v14, v16);
  static ViewBuilder.buildExpression<A>(_:)();

  v20 = v23;
  v21 = v24;
  v22 = v25;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &AssociatedTypeWitness - v10;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &AssociatedTypeWitness - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a4;
  v30 = a3;
  v16 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView(0, a3, a4, v15);
  v17 = *(a2 + v16[11]);
  if (v17)
  {
    v31 = *a1;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v20 = v18 | (v19 << 32);
    v23 = v21 | (v22 << 32);
  }

  else
  {
    v20 = 0;
    v23 = 0;
  }

  outlined init with copy of ClosedRange<Date>(a2, v14, type metadata accessor for ClosedRange<Date>);
  v24 = *(a2 + v16[9]);
  v25 = *(a2 + v16[10]);
  (*(v9 + 16))(v11, a2 + v16[13], AssociatedTypeWitness);
  return TimelineProgressView.ArchivableTimelineProgressView.init(interval:updateStyle:countdown:resolvedTint:extendedState:)(v14, v24, v25, v20, v23, v17 == 0, v11, v30, v28, v29);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.init(interval:updateStyle:countdown:resolvedTint:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  outlined init with take of ClosedRange<Date>(a1, a9, type metadata accessor for ClosedRange<Date>);
  v19 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView(0, a8, a10, v18);
  *(a9 + v19[9]) = a2 & 1;
  *(a9 + v19[10]) = a3;
  v20 = a9 + v19[11];
  *v20 = a4;
  *(v20 + 8) = a5;
  *(v20 + 16) = a6 & 1;
  v21 = v19[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(*(AssociatedTypeWitness - 8) + 32);

  return v23(a9 + v21, a7, AssociatedTypeWitness);
}

uint64_t TimelineProgressView.ConditionallyArchivableTimelineProgressView.init(interval:updateStyle:countdown:tint:isCircular:extendedState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  outlined init with take of ClosedRange<Date>(a1, a9, type metadata accessor for ClosedRange<Date>);
  v18 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView(0, a7, a8, v17);
  *(a9 + v18[9]) = a2 & 1;
  *(a9 + v18[10]) = a3;
  *(a9 + v18[11]) = a4;
  *(a9 + v18[12]) = a5;
  v19 = v18[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(*(AssociatedTypeWitness - 8) + 32);

  return v21(a9 + v19, a6, AssociatedTypeWitness);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView, a3);

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView, a3);

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v18 = a2;
  v19 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - v9;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  if ((*(v3 + *(a1 + 44) + 16) & 1) == 0)
  {
    v14 = Color.init(_:)();
  }

  outlined init with copy of ClosedRange<Date>(v3, v13, type metadata accessor for ClosedRange<Date>);
  v15 = *(v3 + *(a1 + 36));
  v16 = *(v3 + *(a1 + 40));
  (*(v8 + 16))(v10, v3 + *(a1 + 48), AssociatedTypeWitness);
  return TimelineProgressView.FinalTimelineProgressView.init(interval:updateStyle:countdown:tint:extendedState:)(v13, v15, v16, v14, v10, v6, v19, v18);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453657461647075 && a2 == 0xEB00000000656C79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEC000000746E6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

Swift::Int TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6C61767265746E69;
  v2 = 0x776F64746E756F63;
  v3 = 0x6465766C6F736572;
  if (a1 != 3)
  {
    v3 = 0x6465646E65747865;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7453657461647075;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  v17[1] = v7;
  v8 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView.CodingKeys(255, v7, v17[0], a4);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys, v8);
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  type metadata accessor for ClosedRange<Date>(0);
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538], MEMORY[0x1E69E5F98]);
  v13 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  LOBYTE(v20) = *(v5 + *(v18 + 36));
  v22 = 1;
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v20) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = *(*(v18 + 44) + 0x10);
  v20 = **(v18 + 44);
  v21 = v14;
  v22 = 3;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v19 = v9;
  LOBYTE(v20) = 4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v12, v15);
}

uint64_t TimelineProgressView.ArchivableTimelineProgressView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v32 - v7;
  type metadata accessor for ClosedRange<Date>(0);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys, v11);
  v43 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v32 - v12;
  v41 = a3;
  v15 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView(0, a2, a3, v14);
  v33 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v42 = v13;
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v20 = v37;
  v21 = AssociatedTypeWitness;
  LOBYTE(v46) = 0;
  lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558], MEMORY[0x1E69E5FC0]);
  v22 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v22;
  v24 = v17;
  outlined init with take of ClosedRange<Date>(v23, v17, type metadata accessor for ClosedRange<Date>);
  v48 = 1;
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17[v15[9]] = v46;
  LOBYTE(v46) = 2;
  v25 = v20;
  v24[v15[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v48 = 3;
  lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = &v24[v15[11]];
  v27 = v47;
  *v26 = v46;
  v26[16] = v27;
  LOBYTE(v46) = 4;
  swift_getAssociatedConformanceWitness();
  v28 = v24;
  v29 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v42, v43);
  (*(v34 + 32))(&v28[v15[12]], v29, v21);
  v30 = v33;
  (*(v33 + 16))(v35, v28, v15);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return (*(v30 + 8))(v28, v15);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized TimelineProgressView.ArchivableTimelineProgressView.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ArchivableTimelineProgressView.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = *(a1 - 8);
  v35 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProgressViewSchedule(255);
  v9 = *(a1 + 16);
  v33 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ProgressViewSchedule and conformance ProgressViewSchedule, type metadata accessor for ProgressViewSchedule, protocol conformance descriptor for ProgressViewSchedule);
  v10 = v8;
  v11 = type metadata accessor for TimelineView(0, v8, v9, v33);
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v31 - v14;
  v31 = v10;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = *(v3 + *(a1 + 36));
  outlined init with copy of ClosedRange<Date>(v3, &v31 - v19, type metadata accessor for ClosedRange<Date>);
  v20[*(v10 + 20)] = v21;
  outlined init with copy of ClosedRange<Date>(v20, v17, type metadata accessor for ProgressViewSchedule);
  v22 = v7;
  (*(v5 + 16))(v7, v3, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = *(a1 + 24);
  *(v24 + 16) = v9;
  *(v24 + 24) = v25;
  (*(v5 + 32))(v24 + v23, v22, a1);
  v26 = *(v25 + 8);
  v27 = v32;
  TimelineView<>.init(_:content:)(v17, partial apply for closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter, v24, v31, v9, v33, v26, v32);
  outlined destroy of ClosedRange<Date>(v20, type metadata accessor for ProgressViewSchedule);
  v38 = v26;
  swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>, v11, &v38);
  v28 = v34;
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v36 + 8);
  v29(v27, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v28, v11);
}

uint64_t closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[1] = a5;
  v26[0] = swift_getAssociatedTypeWitness();
  v8 = *(v26[0] - 8);
  MEMORY[0x1EEE9AC00](v26[0]);
  v10 = v26 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v19 = type metadata accessor for TimelineProgressView.FinalTimelineProgressView(0, a3, a4, v18);
  ClosedRange<>.progress(at:countdown:)();
  v21 = v20;
  (*(v8 + 16))(v10, a2 + *(v19 + 48), v26[0]);
  v22 = *(a4 + 40);

  v22(v23, v10, a3, a4, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v11 + 8);
  v24(v14, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v17, a3);
}

uint64_t TimelineProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = *(a1 + 24);
  v27 = *(a1 + 16);
  v6 = v27;
  v28 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v26 - v8;
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView(0, v6, v5, v12);
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  outlined init with copy of ClosedRange<Date>(v3, v11, type metadata accessor for ClosedRange<Date>);
  v19 = *(v3 + *(a1 + 36));
  LOBYTE(v5) = *(v3 + *(a1 + 40));
  v20 = *(v3 + *(a1 + 44));
  v21 = *(v3 + *(a1 + 48));
  v22 = v3 + *(a1 + 52);
  v23 = v29;
  (*(v31 + 16))(v29, v22, v32);
  TimelineProgressView.ConditionallyArchivableTimelineProgressView.init(interval:updateStyle:countdown:tint:isCircular:extendedState:)(v11, v19, v5, v20, v21, v23, v27, v28, v15);
  swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v30 + 8);

  v24(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v18, v13);
}

uint64_t protocol witness for TimelineProgressViewExtendedBase.init(fractionCompleted:tint:extendedState:) in conformance ResolvedCircularPlaybackProgressView.Base@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  v3 = a3.n128_u64[0];
  if (!result)
  {
    result = static Color.white.getter();
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle, &type metadata for TimelineProgressViewUpdateStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle, &type metadata for TimelineProgressViewUpdateStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle, &type metadata for TimelineProgressViewUpdateStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle and conformance TimelineProgressViewUpdateStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved()
{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981558], MEMORY[0x1E6981540], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved;
  if (!lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981548], MEMORY[0x1E6981540], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.Resolved and conformance Color.Resolved);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView.FinalTimelineProgressView(void *a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = (v8 & ~v7) + v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  if ((v12 | v7) <= 7 && ((*(v11 + 80) | v7) & 0x100000) == 0 && ((-9 - v12 - ((v9 + 9) & 0xFFFFFFFFFFFFFFF8)) | v12) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = AssociatedTypeWitness;
    v17 = *(v5 + 16);
    v17(a1, a2, v4);
    v17(((a1 + v8) & ~v7), ((a2 + v8) & ~v7), v4);
    v18 = a1 + v9;
    *v18 = *(a2 + v9);
    v18[1] = *(a2 + v9 + 1);
    v19 = ((a1 + v9 + 9) & 0xFFFFFFFFFFFFFFF8);
    v20 = a2 + v9 + 9;
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v19 = *(v20 & 0xFFFFFFFFFFFFFFF8);
    v22 = *(v11 + 16);

    v22(v19 + 1, v21, v16);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | v7) & 0xF8 ^ 0x1F8) & ((v12 | v7) + 16)));
  }

  return a1;
}

uint64_t destroy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = v4 + 8;
  v5(a1, v3);
  v7 = *(v6 + 56);
  v8 = v7 + a1;
  v9 = *(v6 + 72);
  v5((v8 + v9) & ~v9, v3);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 8);
  v13 = (((v8 + ((v7 + v9) & ~v9) + 9) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 8) & ~*(v11 + 80);

  return v12(v13, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 16);
  v19 = *(v17 + 80);

  v18((v14 + v19 + 8) & ~v19, (v15 + v19 + 8) & ~v19, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v9 = *(v8 + 40);
  v10 = *(v8 + 56);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 24))((v14 + *(v17 + 80) + 8) & ~*(v17 + 80), (v15 + *(v17 + 80) + 8) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 32))((v14 + *(v17 + 80) + 8) & ~*(v17 + 80), (v15 + *(v17 + 80) + 8) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView.FinalTimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v9 = *(v8 + 24);
  v10 = *(v8 + 40);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 9) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 40))((v14 + *(v17 + 80) + 8) & ~*(v17 + 80), (v15 + *(v17 + 80) + 8) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView.FinalTimelineProgressView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v14 = v10 + 8;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = ((v14 + ((v13 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v7 == v12)
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }

      else
      {
        v24 = ((a1 + v13 + 9) & 0xFFFFFFFFFFFFFFF8);
        if (v11 > 0x7FFFFFFE)
        {
          v26 = *(v9 + 48);

          return v26((v24 + v14) & ~v10);
        }

        else
        {
          v25 = *v24;
          if (v25 >= 0xFFFFFFFF)
          {
            LODWORD(v25) = -1;
          }

          if ((v25 + 1) >= 2)
          {
            return v25;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView.FinalTimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v15 = ((v11 + 8 + ((v14 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v10 + 64);
  if (a3 <= v13)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v13 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v13 < a2)
  {
    v17 = ~v13 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_52:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v13)
  {
    v22 = *(v8 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v14 + 9] & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {
      v24 = *(v10 + 56);

      v24((v23 + v11 + 8) & ~v11, a2);
    }

    else if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }
}

void type metadata completion function for TimelineProgressView(uint64_t a1)
{
  type metadata accessor for ClosedRange<Date>(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TimelineProgressView(void *a1, void *a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  v8 = (v7 & ~v6) + v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  if ((v11 | v6) <= 7 && ((*(v10 + 80) | v6) & 0x100000) == 0 && ((-10 - v11 - ((v8 + 9) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = *(v4 + 16);
    v15 = a1;
    v24 = AssociatedTypeWitness;
    v16(a1, a2, v3);
    v16(((a1 + v7) & ~v6), ((a2 + v7) & ~v6), v3);
    v17 = a1 + v8;
    *v17 = *(a2 + v8);
    v17[1] = *(a2 + v8 + 1);
    v18 = (a1 + v8 + 9) & 0xFFFFFFFFFFFFFFF8;
    v19 = (a2 + v8 + 9) & 0xFFFFFFFFFFFFFFF8;
    *v18 = *v19;
    *(v18 + 8) = *(v19 + 8);
    v20 = v18 + v11 + 9;
    v21 = v19 + v11 + 9;
    v22 = *(v10 + 16);

    v22(v20 & ~v11, v21 & ~v11, v24);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = (v14 + (((v11 | v6) & 0xF8 ^ 0x1F8) & ((v11 | v6) + 16)));
  }

  return v15;
}

uint64_t destroy for TimelineProgressView(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = v4 + 8;
  v5(a1, v3);
  v7 = *(v6 + 56);
  v8 = v7 + a1;
  v9 = *(v6 + 72);
  v5((v8 + v9) & ~v9, v3);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 8);
  v13 = (((v8 + ((v7 + v9) & ~v9) + 9) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 9) & ~*(v11 + 80);

  return v12(v13, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for TimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 16);
  v19 = *(v17 + 80);

  v18((v19 + 9 + v14) & ~v19, (v19 + 9 + v15) & ~v19, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for TimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v9 = *(v8 + 40);
  v10 = *(v8 + 56);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 24))((*(v17 + 80) + 9 + v14) & ~*(v17 + 80), (*(v17 + 80) + 9 + v15) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for TimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 32))((*(v17 + 80) + 9 + v14) & ~*(v17 + 80), (*(v17 + 80) + 9 + v15) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for TimelineProgressView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v9 = *(v8 + 24);
  v10 = *(v8 + 40);
  v7((v9 + v10 + a1) & ~v10, (v9 + v10 + a2) & ~v10, v5);
  v11 = ((v9 + v10) & ~v10) + v9;
  v12 = (v11 + a1);
  v13 = (v11 + a2);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = (v12 + 9) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 40))((*(v17 + 80) + 9 + v14) & ~*(v17 + 80), (*(v17 + 80) + 9 + v15) & ~*(v17 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineProgressView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v14 = v10 + 9;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = ((v14 + ((v13 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v7 == v12)
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }

      else
      {
        v24 = ((a1 + v13 + 9) & 0xFFFFFFFFFFFFFFF8);
        if (v11 > 0x7FFFFFFE)
        {
          v26 = *(v9 + 48);

          return v26((v24 + v14) & ~v10);
        }

        else
        {
          v25 = *v24;
          if (v25 >= 0xFFFFFFFF)
          {
            LODWORD(v25) = -1;
          }

          if ((v25 + 1) >= 2)
          {
            return v25;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for TimelineProgressView(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  v15 = ((v11 + 9 + ((v14 + 9) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v10 + 64);
  if (a3 <= v13)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v13 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v13 < a2)
  {
    v17 = ~v13 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_52:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v13)
  {
    v22 = *(v8 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v14 + 9] & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {
      v24 = *(v10 + 56);

      v24((v23 + v11 + 9) & ~v11, a2);
    }

    else if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }
}

uint64_t get_witness_table_7SwiftUI32TimelineProgressViewExtendedBaseRzlAA0cdE0V05FinalcdE033_E25B5CE50FE780022155187DDAA79ACALLVyx_GAA0E0HPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);

  return swift_getWitnessTable(a3, v4);
}

uint64_t instantiation function for generic protocol witness table for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressView<A>.ConditionallyArchivableTimelineProgressView);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized TimelineProgressViewUpdateStyle.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.DefaultCodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimelineProgressViewUpdateStyle.CodingKeys>, lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for TimelineProgressViewUpdateStyle;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys, &unk_1EFF96628, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys and conformance TimelineProgressViewUpdateStyle.OnTheSecondCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.DefaultCodingKeys, &unk_1EFF96608, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.DefaultCodingKeys and conformance TimelineProgressViewUpdateStyle.DefaultCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TimelineProgressViewUpdateStyle.CodingKeys, &unk_1EFF965E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressViewUpdateStyle.CodingKeys and conformance TimelineProgressViewUpdateStyle.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<_TimelineProgressViewBaseEmptyState.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(type metadata accessor for TimelineProgressView.FinalTimelineProgressView(0, v5, v6, a2) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in TimelineProgressView.FinalTimelineProgressView.body.getter(v8, v5, v6, a3);
}

uint64_t partial apply for closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for TimelineProgressView.ConditionallyArchivableTimelineProgressView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in TimelineProgressView.ConditionallyArchivableTimelineProgressView.archivedBody.getter(a1, v9, v6, v7, a3);
}

uint64_t destroy for DefaultDateProgressLabel(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v6 = *(*(v2 - 8) + 8);
  (v6)((v2 - 8), a1, v2);
  type metadata accessor for ClosedRange<Date>(0);
  v4 = a1 + *(v3 + 36);

  return v6(v4, v2);
}

uint64_t assignWithCopy for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>(0);
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for DefaultDateProgressLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  type metadata accessor for ClosedRange<Date>(0);
  v7(a1 + *(v8 + 36), a2 + *(v8 + 36), v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void type metadata accessor for _SequenceBox<PeriodicTimelineSchedule.Entries>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>)
  {
    type metadata accessor for PeriodicTimelineSchedule.Entries();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule.Entries and conformance PeriodicTimelineSchedule.Entries, MEMORY[0x1E69803D8], MEMORY[0x1E69803E0]);
    v2 = type metadata accessor for _SequenceBox();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _SequenceBox<PeriodicTimelineSchedule.Entries>);
    }
  }
}

uint64_t partial apply for closure #1 in ProgressViewSchedule.entries(from:mode:)@<X0>(char *a1@<X8>)
{
  type metadata accessor for ProgressViewSchedule(0);

  return closure #1 in ProgressViewSchedule.entries(from:mode:)(a1);
}

void type metadata accessor for _IteratorBox<_ClosureBasedIterator<Date>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<Date>>)
  {
    v1 = MEMORY[0x1E69E6F28];
    type metadata accessor for Date?(255, &lazy cache variable for type metadata for _ClosureBasedIterator<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E6F28]);
    lazy protocol witness table accessor for type AnyIterator<Date> and conformance AnyIterator<A>(&lazy protocol witness table cache variable for type _ClosureBasedIterator<Date> and conformance _ClosureBasedIterator<A>, &lazy cache variable for type metadata for _ClosureBasedIterator<Date>, v1, MEMORY[0x1E69E6F30]);
    v2 = type metadata accessor for _IteratorBox();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _IteratorBox<_ClosureBasedIterator<Date>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnyIterator<Date> and conformance AnyIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date?(255, a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _SequenceBox<AnimationTimelineSchedule.Entries>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SequenceBox<AnimationTimelineSchedule.Entries>)
  {
    type metadata accessor for AnimationTimelineSchedule.Entries(255);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type AnimationTimelineSchedule.Entries and conformance AnimationTimelineSchedule.Entries, type metadata accessor for AnimationTimelineSchedule.Entries, protocol conformance descriptor for AnimationTimelineSchedule.Entries);
    v1 = type metadata accessor for _SequenceBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SequenceBox<AnimationTimelineSchedule.Entries>);
    }
  }
}

void key path getter for EnvironmentValues.defaultLabelIconToTitleSpacing : EnvironmentValues(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a5, a2, a3, a4);
    PropertyList.subscript.getter();
  }

  *a6 = v11;
  *(a6 + 8) = v12;
}

void key path getter for EnvironmentValues.multimodalListIconStyle : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues.defaultLabelIconToTitleSpacing : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, a5, a6, a7, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(a8, a5, a6, a7);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double key path getter for EnvironmentValues.multimodalListDefaultGridCellMinWidth : EnvironmentValues@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.multimodalListDefaultGridCellMinWidth : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double key path getter for EnvironmentValues.fontBodyLeading : EnvironmentValues@<D0>(double *a2@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey();
  EnvironmentValues.subscript.getter();
  result = v4;
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.FontBodyLeadingKey, &type metadata for EnvironmentValues.FontBodyLeadingKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.FontBodyLeadingKey and conformance EnvironmentValues.FontBodyLeadingKey);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInVolumetricContext(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

id EnvironmentValues.supportsMultipleWindows.getter()
{
  if (!static AppGraph.shared)
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 supportsMultipleScenes];

  return v1;
}

uint64_t one-time initialization function for clarityUIButtonTitle(__n128 a1)
{
  result = static Font.system(_:design:weight:)();
  static Font.clarityUIButtonTitle = result;
  return result;
}

double static Font.clarityUINavigationTitle.getter()
{
  if (one-time initialization token for clarityUINavigationTitle != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t one-time initialization function for clarityUINavigationTitle(uint64_t a1, char a2, uint64_t *a3)
{
  static Font.Weight.semibold.getter();
  result = static Font.system(_:design:weight:)();
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior()
{
  result = lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior;
  if (!lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternatingRowBackgroundBehavior, &type metadata for AlternatingRowBackgroundBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior and conformance AlternatingRowBackgroundBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>, &type metadata for AlternatingRowBackgroundBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<[Color]?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[Color]?>)
  {
    type metadata accessor for [Color]?(255);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[Color]?>);
    }
  }
}

void type metadata accessor for [Color]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Color]?)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(255, &lazy cache variable for type metadata for [Color], MEMORY[0x1E69815C0], MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Color]?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AlternatingRowBackgroundBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<[Color]?>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[Color]?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts;
  if (!lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternatingRowBackgroundBehavior.Guts, &type metadata for AlternatingRowBackgroundBehavior.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternatingRowBackgroundBehavior.Guts and conformance AlternatingRowBackgroundBehavior.Guts);
  }

  return result;
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  v4 = _GraphInputs.scrollTargetRemovePreference.setter();
  v7 |= 0x800u;
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for @Sendable ()();
  type metadata accessor for Map<RefreshableModifier, @Sendable ()>(0);
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>, type metadata accessor for Map<RefreshableModifier, @Sendable ()>, MEMORY[0x1E698D3A0]);

  Attribute.init<A>(body:value:flags:update:)();

  swift_beginAccess();
  UniqueID.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _GraphInputs.environment.setter();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t specialized static ViewModifier<>._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v6);
  swift_beginAccess();
  _GraphInputs.interfaceIdiom.getter();
  AnyInterfaceIdiom.accepts<A>(_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _GraphInputs.environment.setter();
  a3(v4, &v6);
  return outlined destroy of _ViewListInputs(&v6);
}

void ScrollTargetBehavior.properties(context:)(uint64_t a1@<X8>)
{
  ScrollTargetBehavior.properties(context:)(a1);
}

{
  *a1 = 0;
  *(a1 + 2) = 0;
}

SwiftUI::ScrollTargetBehaviorProperties __swiftcall ScrollTargetBehaviorProperties.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t (*ScrollTargetBehaviorProperties.limitsScrolls.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return ScrollTargetBehaviorProperties.limitsScrolls.modify;
}

double ScrollTargetBehaviorPropertiesContext.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double ScrollTargetBehaviorDecelerationContext.environment.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

__n128 ScrollTargetBehaviorContext.originalTarget.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 ScrollTargetBehaviorContext.originalTarget.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

void (*ScrollTargetBehaviorContext.originalTarget.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  *v3 = *v1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 48) = v4;
  return ScrollTargetBehaviorContext.originalTarget.modify;
}

void ScrollTargetBehaviorContext.originalTarget.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[7];
  v3 = *(v1 + 48);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  free(v1);
}

void (*ScrollTargetBehaviorContext.contentSize.modify(void *a1))()
{
  ScrollGeometry.contentSize.getter();
  *a1 = v2;
  a1[1] = v3;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

void (*ScrollTargetBehaviorContext.containerSize.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  *a1 = ScrollGeometry.containerSize.getter();
  *(a1 + 8) = v9;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t (*ScrollTargetBehaviorContext.axes.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 184);
  return ScrollTargetBehaviorContext.axes.modify;
}

double ScrollTargetBehaviorContext.subscript.getter()
{

  swift_getAtKeyPath();

  return result;
}

void (*ScrollTargetBehaviorContext.viewportSize.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  *a1 = ScrollGeometry.containerSize.getter();
  *(a1 + 8) = v9;
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t ResolvedScrollBehavior.updateTarget(_:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 144);
  v4 = *(a2 + 176);
  v71 = *(a2 + 160);
  v72 = v4;
  v5 = *(a2 + 208);
  v73 = *(a2 + 192);
  v74 = v5;
  v6 = *(a2 + 80);
  v7 = *(a2 + 112);
  v67 = *(a2 + 96);
  v68 = v7;
  v8 = *(a2 + 144);
  v9 = *(a2 + 112);
  v69 = *(a2 + 128);
  v70 = v8;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 48);
  v65 = *(a2 + 64);
  v66 = v12;
  v14 = *(a2 + 16);
  v62[0] = *a2;
  v62[1] = v14;
  v58 = v69;
  v59 = v3;
  v60 = v71;
  v54 = v65;
  v55 = v6;
  v56 = v67;
  v57 = v9;
  v50 = v62[0];
  v51 = v10;
  v61 = *(a2 + 176);
  v52 = v63;
  v53 = v13;
  v49[0] = *(a2 + 185);
  *(v49 + 3) = *(a2 + 188);
  if (*(v2 + 45))
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = *(v2 + 44);
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
    outlined init with copy of ScrollTargetBehaviorContext(v62, &v35);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v18 = *WeakValue;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = AGGraphGetWeakValue();
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = AGGraphGetWeakValue();
    v27 = v15;
    if (v21)
    {
      v22 = *v21;
      v23 = v21[1];
    }

    else
    {
      EnvironmentValues.init()();
      v22 = v33;
      v23 = v34;
    }

    v25 = *(v2 + 24);
    v24 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v25);
    v28[8] = v58;
    v28[9] = v59;
    v28[10] = v60;
    *&v29 = v61;
    v28[4] = v54;
    v28[5] = v55;
    v28[6] = v56;
    v28[7] = v57;
    v28[0] = v50;
    v28[1] = v51;
    v28[2] = v52;
    v28[3] = v53;
    BYTE8(v29) = v16;
    HIDWORD(v29) = *(v49 + 3);
    *(&v29 + 9) = v49[0];
    *&v30 = v18;
    *(&v30 + 1) = v20;
    *&v31 = v22;
    *(&v31 + 1) = v23;
    v45 = v60;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v37 = v52;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v35 = v50;
    v36 = v51;
    v26 = *(v24 + 8);
    outlined init with copy of ScrollTargetBehaviorContext(v28, v32);
    v26(v27, &v35, v25, v24);
    v32[10] = v45;
    v32[11] = v46;
    v32[12] = v47;
    v32[13] = v48;
    v32[6] = v41;
    v32[7] = v42;
    v32[8] = v43;
    v32[9] = v44;
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v39;
    v32[5] = v40;
    v32[0] = v35;
    v32[1] = v36;
    outlined destroy of ScrollTargetBehaviorContext(v32);
    v43 = v58;
    v44 = v59;
    v45 = v60;
    *&v46 = v61;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v42 = v57;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    v38 = v53;
    BYTE8(v46) = v16;
    *(&v46 + 9) = v49[0];
    HIDWORD(v46) = *(v49 + 3);
    *&v47 = v18;
    *(&v47 + 1) = v20;
    *&v48 = v22;
    *(&v48 + 1) = v23;
    return outlined destroy of ScrollTargetBehaviorContext(&v35);
  }

  return result;
}

uint64_t protocol witness for ScrollTargetBehavior.properties(context:) in conformance ResolvedScrollBehavior(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v8[0] = v2;
  v8[1] = v3;
  v9 = v4;
  return (*(v6 + 16))(v8, v5, v6);
}

uint64_t closure #1 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ScrollBehaviorModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

double protocol witness for static StatefulRule.initialValue.getter in conformance ScrollBehaviorModifier<A>.ScrollBehaviorProvider@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TransformScrollDeceleration(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransformScrollDeceleration(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TransformScrollDeceleration(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TransformScrollDeceleration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type TransformScrollDeceleration and conformance TransformScrollDeceleration();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t View.scrollDeceleration(_:axes:)(_BYTE *a1, char a2, uint64_t a3)
{
  v4[0] = *a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &type metadata for TransformScrollDeceleration);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ScrollTargetModifier(unsigned int *a1, uint64_t a2)
{
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  result = _GraphInputs.scrollTargetRemovePreference.setter();
  *(a2 + 36) |= 0x800u;
  return result;
}

uint64_t View.scrollTarget(isEnabled:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return MEMORY[0x18D00A570](&v5, a2, &type metadata for ScrollTargetModifier, a3);
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorProperties(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t *assignWithCopy for ScrollTargetBehaviorPropertiesContext(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorPropertiesContext(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorPropertiesContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for ScrollTargetBehaviorDecelerationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

double destroy for ScrollTargetBehaviorContext(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 184) = *(a2 + 184);
  v4 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v4;
  v5 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v5;

  return a1;
}

uint64_t assignWithCopy for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
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
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  return a1;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t assignWithTake for ScrollTargetBehaviorContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 208) = *(a2 + 208);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTargetBehaviorContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollTargetBehaviorContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollTargetModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t getEnumTagSinglePayload for TransformScrollDeceleration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TransformScrollDeceleration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role()
{
  result = lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role;
  if (!lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollDecelerationRate.Role, &type metadata for ScrollDecelerationRate.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollDecelerationRate.Role and conformance ScrollDecelerationRate.Role);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v5();
}

double key path getter for RefreshableModifier.action : RefreshableModifier@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  a2[1] = v5;

  return result;
}

void key path setter for RefreshableModifier.action : RefreshableModifier(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());
  a2[1] = v5;
}

double specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a3@<X8>)
{
  swift_getAtKeyPath();
  result = *&v5;
  *a3 = v5;
  return result;
}

unint64_t type metadata accessor for @Sendable ()()
{
  result = lazy cache variable for type metadata for @Sendable ();
  if (!lazy cache variable for type metadata for @Sendable ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for @Sendable ());
  }

  return result;
}

void type metadata accessor for Map<RefreshableModifier, @Sendable ()>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<RefreshableModifier, @Sendable ()>)
  {
    type metadata accessor for @Sendable ()();
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<RefreshableModifier, @Sendable ()>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RefreshableModifier.ChildEnvironment, &type metadata for RefreshableModifier.ChildEnvironment, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ())(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child()
{
  result = lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child;
  if (!lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableShowsFirstColumnOnlyModifier.Child, &type metadata for TableShowsFirstColumnOnlyModifier.Child, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child);
  }

  return result;
}

char *specialized static TransformScrollDeceleration.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  v3 = *(AGGraphGetValue() + 1);
  result = AGGraphGetValue();
  if (v3)
  {
    v5 = *result;
    v6 = a2[1];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
    if (v6)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v15[0];
    swift_getKeyPath();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v15[0] + 16, v15);
    swift_getKeyPath();
    *&v13 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v7 + 280, &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, &v10);
      v8 = *(&v11 + 1);
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
      (*(v9 + 8))(v15, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v10);
    }

    v16 = v5;
    outlined init with copy of ScrollEnvironmentProperties(v15, &v13);
    type metadata accessor for ScrollEnvironmentStorage(0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    swift_allocObject();
    *&v13 = ScrollEnvironmentStorage.init(_:transform:)(&v13, &v10);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return outlined destroy of ScrollEnvironmentProperties(v15);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type TransformScrollDeceleration and conformance TransformScrollDeceleration()
{
  result = lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration;
  if (!lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransformScrollDeceleration, &type metadata for TransformScrollDeceleration, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformScrollDeceleration and conformance TransformScrollDeceleration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollBehaviorModifier.LayoutRoleFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

Swift::Void __swiftcall DismissAction.callAsFunction()()
{
  type metadata accessor for Binding<PresentationMode>();
  MEMORY[0x18D00ACC0](&v0);
  LOBYTE(v0) = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void EnvironmentValues.dismiss.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

uint64_t EnvironmentValues.isPresented.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v3 = v6;
  v4 = v7;
  v5 = v8;
  type metadata accessor for Binding<PresentationMode>();
  MEMORY[0x18D00ACC0](&v2);

  return v2;
}

uint64_t static View.mapKitMakeSelectionEnabled<A>(forType:inputs:)@<X0>(_OWORD *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a1[1];
  v26[0] = *a1;
  v26[1] = v11;
  v13 = *a1;
  v12 = a1[1];
  v26[2] = a1[2];
  v23 = v13;
  v24 = v12;
  v25 = a1[2];
  outlined init with copy of _GraphInputs(v26, v27);
  v15 = _GraphInputs.selectionStorage<A>(forType:)(a3, a3, a5, v14);
  v17 = v16;
  v27[0] = v23;
  v27[1] = v24;
  v27[2] = v25;
  outlined destroy of _GraphInputs(v27);
  v18 = SelectionBasedStorage.$isSelectionEnabled.getter(v15, v17);
  LODWORD(v23) = v18;
  BYTE4(v23) = BYTE4(v18) & 1;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v19 = type metadata accessor for _GraphValue();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static View.mapKitMakeSelectionEnabled<A>(forType:inputs:), v22, MEMORY[0x1E69E73E0], v19, v20, a6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UsesLabelInteractionContentShapeFlag(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UsesLabelInteractionContentShapeFlag and conformance UsesLabelInteractionContentShapeFlag();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t closure #1 in BorderlessButtonStyleBase.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v18 = a1;
  v16 = static VerticalAlignment.center.getter();
  v17 = (v2 >> 8) & 1;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  LOBYTE(v19) = 0;
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v14;
  *(a2 + 120) = 0;
  *(a2 + 128) = v13;
  *(a2 + 136) = 0;
  *(a2 + 144) = v12;
  *(a2 + 152) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = v11;
  *(a2 + 184) = 0;
  *(a2 + 185) = 0;
  *(a2 + 192) = v10;
  *(a2 + 200) = 0;
  *(a2 + 201) = v18;
  *(a2 + 202) = v17;
  *(a2 + 207) = v20;
  *(a2 + 203) = v19;
  *(a2 + 208) = v4;
  *(a2 + 216) = 0;
  *(a2 + 224) = v5;
  *(a2 + 232) = 0;
  *(a2 + 240) = v6;
  *(a2 + 248) = 0;
  *(a2 + 249) = 0;
  *(a2 + 256) = v7;
  *(a2 + 264) = 0;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = v8;
  *(a2 + 296) = 0;
  *(a2 + 297) = 0;
  *(a2 + 304) = result;
  *(a2 + 312) = 0;
  return result;
}

double BorderlessButtonStyleEnvironment.UpdateEnvironment.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = Value[1];
  *&v14 = v8;
  *(&v14 + 1) = v7;
  if ((a2 & 0x100000000) != 0)
  {
    v13[0] = v8;
    v13[1] = v7;

    v10 = MEMORY[0x18D0064D0](v11);
    v9 = 0x100000000;
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  static Semantics.v3.getter();
  isLinkedOnOrAfter(_:)();
  EnvironmentValues.multilineTextAlignment.setter();
  specialized BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultFont(useAccessibilityBorder:env:)(v10 & 1, &v14);
  LOBYTE(v13[0]) = *AGGraphGetValue();
  BorderlessButtonStyleEnvironment.UpdateEnvironment.updateDefaultForegroundStyle(role:useAccessibilityBorder:env:)(v13, v10 & 1, &v14, a1, a2 & 0x100FFFFFFFFLL | v9);
  result = *&v14;
  *a3 = v14;
  return result;
}

uint64_t BorderlessButtonStyleEnvironment.UpdateEnvironment.defaultTint.getter(uint64_t a1)
{
  if (*AGGraphGetValue())
  {

    return static Color.accentColor.getter();
  }

  else
  {

    return static Color.red.getter();
  }
}

uint64_t BorderlessButtonStyleEnvironment.UpdateEnvironment.hasMonochromaticForeground(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v5 = static Solarium.isEnabled(for:)();
  v6 = 0;
  if ((v5 & 1) != 0 && (a3 & 0x10000000000) != 0)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    if (v4)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if (v8 == 2 || (v8 & 1) == 0)
    {
      if (*MEMORY[0x1E698D3F8] == a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = *AGGraphGetValue() ^ 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

double protocol witness for Rule.value.getter in conformance BorderlessButtonStyleEnvironment.UpdateEnvironment@<D0>(_OWORD *a1@<X8>)
{
  v2 = 0x100000000;
  if (!*(v1 + 12))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  v4 = 0x10000000000;
  if (!*(v1 + 13))
  {
    v4 = 0;
  }

  return BorderlessButtonStyleEnvironment.UpdateEnvironment.value.getter(*v1, v3 | v4, a1);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BorderlessButtonStyleEnvironment(int *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static BorderlessButtonStyleEnvironment._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance HasAccessibilityButtonBorder(uint64_t *a1)
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();

  PropertyList.subscript.getter();
  if (v4 == 1)
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();

    v1 = v3 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasAccessibilityButtonUnderline(uint64_t *a1)
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.getter();
  if (v4)
  {
    v1 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();
    v1 = v3 ^ 1;
  }

  return v1 & 1;
}