uint64_t MergeOnce.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 8))();
  result = type metadata accessor for MergeOnce(0, a1, a2, v6);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t MergeOnce.merge(other:asSelf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 36);
  v5 = *(a1 + v4);
  if (*(v3 + v4) == v5)
  {
    return 0;
  }

  *(v3 + v4) = v5;
  return (*(*(a3 + 24) + 16))();
}

void *EventTreeStats.init()@<X0>(uint64_t a1@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

uint64_t EventTreeStats.selection.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EventTreeStats.merge(other:asSelf:)(uint64_t result, char a2)
{
  if (__OFADD__(*v2, *result))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 36);
  v6 = *(result + 8);
  *v2 += *result;
  v7 = *(v2 + 8);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v2 + 8) = v9;
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  v10 = *(v2 + 16);
  v8 = __OFADD__(v10, v3);
  v11 = v10 + v3;
  if (v8)
  {
    goto LABEL_28;
  }

  *(v2 + 16) = v11;
  v12 = *(v2 + 32);
  if (*(v2 + 36) + v5 >= v12)
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * (v12 + v5));
  }

  if (!v5)
  {
    return 1;
  }

  if (v4)
  {
    for (i = (v4 + 32); ; i += 10)
    {
      v14 = *(i - 2);
      v15 = *(i - 1);
      v16 = *i;
      v17 = *(v2 + 36);
      if (v17 == *(v2 + 32))
      {
        v18 = 2 * v17;
        if (!v17)
        {
          v18 = 1;
        }

        if (HIDWORD(v18))
        {
          goto LABEL_25;
        }

        v21 = *(i - 1);
        v22 = *(i - 2);
        v19 = *(v2 + 24);
        *(v2 + 32) = v18;
        if (v19)
        {
          result = realloc(v19, 40 * v18);
          if (!result)
          {
            goto LABEL_30;
          }
        }

        else
        {
          result = swift_slowAlloc();
        }

        *(v2 + 24) = result;
        v15 = v21;
        v14 = v22;
      }

      else
      {
        result = *(v2 + 24);
      }

      if (!result)
      {
        goto LABEL_29;
      }

      v20 = result + 40 * v17;
      *v20 = v14;
      *(v20 + 16) = v15;
      *(v20 + 32) = v16;
      if (v17 == -1)
      {
        break;
      }

      *(v2 + 36) = v17 + 1;
      if (!--v5)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall EventTreeStats.deallocate()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }
}

Swift::Void __swiftcall EventTreeStats.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = swift_slowAlloc();
    *(v0 + 24) = v3;

    memcpy(v3, v1, 40 * v2);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance EventTreeStats()
{
  result = *(v0 + 24);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 24) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance EventTreeStats()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = swift_slowAlloc();
    *(v0 + 24) = v3;

    memcpy(v3, v1, 40 * v2);
  }
}

void *protocol witness for DefaultInit.init() in conformance EventTreeStats@<X0>(uint64_t a1@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  *(a1 + 36) = v4;
  return result;
}

void *DiffTreeStats.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = HIDWORD(v4);
  v7 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v2);
  v9 = v8;
  v10 = HIDWORD(v8);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 36) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = v9;
  *(a1 + 76) = v10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = result;
  *(a1 + 112) = v12;
  *(a1 + 116) = v13;
  return result;
}

double DiffTreeStats.baseline.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

double DiffTreeStats.baseline.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

double DiffTreeStats.candidate.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
  result = *(v1 + 72);
  *(a1 + 32) = result;
  return result;
}

double DiffTreeStats.candidate.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v2;
  result = *(a1 + 32);
  *(v1 + 72) = result;
  return result;
}

uint64_t DiffTreeStats.selection.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2;
  return result;
}

Swift::Void __swiftcall DiffTreeStats.deallocate()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }

  v2 = *(v0 + 64);
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    *(v0 + 64) = 0;
  }
}

Swift::Void __swiftcall DiffTreeStats.copy()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 36);
    v3 = swift_slowAlloc();
    *(v0 + 24) = v3;
    memcpy(v3, v1, 40 * v2);
  }

  v4 = *(v0 + 64);
  if (v4)
  {
    v5 = *(v0 + 76);
    v6 = swift_slowAlloc();
    *(v0 + 64) = v6;

    memcpy(v6, v4, 40 * v5);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance DiffTreeStats()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 24) = 0;
  }

  result = *(v0 + 64);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 64) = 0;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int UnsafeTreeNodeRef.Typed.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[19] = *v2;
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  RefProtocol.hash(into:)(v6, a1, WitnessTable);
  return Hasher._finalize()();
}

uint64_t _s21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_xq_GAA0G8ProtocolA2aGP8rawValue03RawK0QzvgTW_0@<X0>(_DWORD *a1@<X8>)
{
  result = UnsafeTree.Symbol.Ref.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UnsafeTree<A, B>.Symbol.Ref(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RefProtocol.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnsafeTreeNodeRef.Typed<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  WitnessTable = swift_getWitnessTable();
  RefProtocol.hash(into:)(v7, a2, WitnessTable);
  return Hasher._finalize()();
}

Swift::Void __swiftcall UnsafeTree.Symbol.deallocate()()
{
  v1 = type metadata accessor for UnsafeTreeNodeRef.Typed(255, v0[2], v0[3], v0[4]);
  type metadata accessor for UnsafeArray(0, v1, v2, v3);
  UnsafeArray.deallocate()();
}

uint64_t UnsafeTree.Symbol.init(element:stableIdentity:recent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v15 = HIDWORD(a4);
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  result = type metadata accessor for UnsafeTree.Symbol(0, a5, a6, a7);
  *(a8 + *(result + 44)) = a2;
  v17 = a8 + *(result + 48);
  *v17 = a3;
  *(v17 + 8) = v11;
  *(v17 + 12) = v15;
  return result;
}

uint64_t UnsafeTree.Node._deallocate()(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for UnsafeTreeNodeRef.Typed(255, a1[2], a1[3], a1[4]);
  v6 = type metadata accessor for UnsafeArray(0, v3, v4, v5);
  return a2(v6);
}

uint64_t UnsafeTree.Node.describe(state:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v26 = *(v8 + 32);
  v27 = v9;
  LODWORD(v9) = *(v8 + 40);
  v24 = *(v8 + 41);
  v25 = v9;
  v14 = *(v13 + 48);
  v15 = *(v4 + 16);
  v15(&v23 - v16, v2 + v14, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(&v28, v35);
    v33 = 0x2065646F4E28;
    v34 = 0xE600000000000000;
    v17 = v36;
    v18 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    *&v28 = v27;
    *(&v28 + 1) = v10;
    LOBYTE(v29) = v11;
    *(&v29 + 1) = v12;
    v30 = v26;
    v31 = v25;
    v32 = v24;
    v19 = (*(v18 + 32))(&v28, v17, v18);
    MEMORY[0x26D69CDB0](v19);

    v20 = v33;
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    outlined destroy of Inspectable?(&v28);
    *&v28 = 0x2065646F4E28;
    *(&v28 + 1) = 0xE600000000000000;
    v15(v7, v2 + v14, v3);
    v21 = String.init<A>(describing:)();
    MEMORY[0x26D69CDB0](v21);

    return v28;
  }

  return v20;
}

uint64_t default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, a1, a2, a3);
  v4 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v4, v3);
  v6 = v5;

  return v6;
}

uint64_t UnsafeTree.Node.init(subject:stableIdentity:data:children:parent:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v11 = a5;
  v15 = *a6;
  v16 = HIDWORD(a5);
  *a9 = *a1;
  *(a9 + 8) = a2;
  v17 = type metadata accessor for UnsafeTree.Node(0, a7, a8, a10);
  result = (*(*(a8 - 8) + 32))(a9 + v17[12], a3, a8);
  v19 = a9 + v17[13];
  *v19 = a4;
  *(v19 + 8) = v11;
  *(v19 + 12) = v16;
  *(a9 + v17[14]) = v15;
  return result;
}

uint64_t UnsafeTree.Storage.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UnsafeTree.Node(0, a1, a2, a3);
  v9 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v9, v8);
  v24 = v10;
  v12 = v11;

  v13 = type metadata accessor for UnsafeTree.Symbol(0, a1, a2, a3);
  v14 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v14, v13);
  v16 = v15;
  v18 = v17;

  type metadata accessor for UnsafeTree.Symbol.Ref(0, a1, a2, a3);
  v25 = Dictionary.init()();
  v19 = type metadata accessor for Dictionary();
  v20 = specialized Strong.init(_:)(&v25, v19);

  type metadata accessor for UnsafeTreeNodeRef.Typed(0, a1, a2, a3);
  v25 = Dictionary.init()();
  v21 = type metadata accessor for Dictionary();
  v22 = specialized Strong.init(_:)(&v25, v21);

  *a4 = v24;
  a4[1] = v12;
  a4[2] = v16;
  a4[3] = v18;
  a4[4] = v20;
  a4[5] = v22;
  return result;
}

uint64_t (*UnsafeTree.storage.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for UnsafeTree.Storage(0, a2[2], a2[3], a2[4]);
  *(v5 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

double key path getter for UnsafeTree.nodes : <A, B>UnsafeTree<A, B>@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v2 = *a1;
  *a2 = **a1;
  result = v2[1];
  a2[1] = result;
  return result;
}

double key path setter for UnsafeTree.nodes : <A, B>UnsafeTree<A, B>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *v2 = *a1;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

uint64_t (*UnsafeTree.nodes.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UnsafeTree.storage.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

uint64_t UnsafeTree.nodes.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *v3 = result;
  v3[1] = a2;
  return result;
}

double key path getter for UnsafeTree.subjects : <A, B>UnsafeTree<A, B>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *(*a1 + 16);
  result = *(v2 + 24);
  *(a2 + 8) = result;
  return result;
}

double key path setter for UnsafeTree.subjects : <A, B>UnsafeTree<A, B>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 16) = *a1;
  result = *(a1 + 8);
  *(v2 + 24) = result;
  return result;
}

uint64_t (*UnsafeTree.subjects.modify(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = UnsafeTree.storage.modify(v4, a2);
  return UnsafeTree.storage.modify;
}

uint64_t UnsafeTree.subjects.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t (*specialized UnsafeTree.subjectsMap.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*UnsafeTree.subjectsMap.read(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for UnsafeTree.Symbol.Ref(255, a2[2], a2[3], a2[4]);
  type metadata accessor for Dictionary();
  *(v5 + 32) = Strong.subscript.read();
  return UnsafeTree.subjectsMap.read;
}

uint64_t key path setter for UnsafeTree.subjectsMap : <A, B>UnsafeTree<A, B>(uint64_t *a1, uint64_t a2)
{
  **(*a2 + 32) = *a1;
}

uint64_t (*UnsafeTree.subjectsMap.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for UnsafeTree.Symbol.Ref(255, a2[2], a2[3], a2[4]);
  type metadata accessor for Dictionary();
  *(v5 + 32) = Strong.subscript.modify();
  return UnsafeTree.subjectsMap.modify;
}

uint64_t (*UnsafeTree.mixedIdentityMap.read(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for UnsafeTreeNodeRef.Typed(255, a2[2], a2[3], a2[4]);
  type metadata accessor for Dictionary();
  *(v5 + 32) = Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

void UnsafeTree.subjectsMap.readspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t key path setter for UnsafeTree.mixedIdentityMap : <A, B>UnsafeTree<A, B>(uint64_t *a1, uint64_t a2)
{
  **(*a2 + 40) = *a1;
}

uint64_t (*UnsafeTree.mixedIdentityMap.modify(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for UnsafeTreeNodeRef.Typed(255, a2[2], a2[3], a2[4]);
  type metadata accessor for Dictionary();
  *(v5 + 32) = Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

void UnsafeTree.storage.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t UnsafeTree.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  UnsafeTree.Storage.init()(a1, a2, a3, v23);
  v8 = type metadata accessor for UnsafeTree.Storage(0, a1, a2, a3);
  v9 = specialized Strong.init(_:)(v23, v8);
  v10 = type metadata accessor for UnsafeTree.Symbol.Ref(0, a1, a2, a3);
  v11 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v11, v10);
  v13 = v12;
  v15 = v14;

  v16 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, a1, a2, a3);
  v17 = static Array._allocateUninitialized(_:)();
  specialized UnsafeArray.init(arrayLiteral:)(v17, v16);
  v19 = v18;
  v21 = v20;

  *a4 = v9;
  a4[1] = v13;
  a4[2] = v15;
  a4[3] = v19;
  a4[4] = v21;
  return result;
}

uint64_t UnsafeTree.first.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for UnsafeTree.Node(255, a1[2], a1[3], a1[4]);
  type metadata accessor for UnsafeArray(0, v3, v4, v5);
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  *a2 = 0;
  *(a2 + 4) = result & 1;
  return result;
}

void UnsafeTree.add(hashed:to:data:)(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v8 = *a2;
  UnsafeTree.symbol(hashed:)(a1, a4, &v13);
  v12 = v8;
  v9[1] = *(a4 + 16);
  v10 = *(a4 + 32);
  v11 = a3;
  UnsafeTree.add(child:to:default:)(&v13, &v12, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v9, a4, a5);
}

void UnsafeTree.symbol(hashed:)(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = v3[1];
  v18 = *v3;
  v19 = v7;
  v20 = *(v3 + 4);
  v8 = UnsafeTree.subjectsMap.read(v17, a2);
  v10 = v9;
  v11 = a2[2];
  v12 = a2[4];
  v13 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v11, a2[3], v12);
  MEMORY[0x26D69CA60](&v16, a1, v10, v11, v13, v12);
  if ((v16 & 0x100000000) != 0)
  {
    (v8)(v17, 0);
    v14 = dispatch thunk of Hashable.hashValue.getter();
    UnsafeTree.new(element:identity:)(a1, v14, a2, a3);
  }

  else
  {
    v15 = v16;
    (v8)(v17, 0);
    *a3 = v15;
  }
}

void UnsafeTree.add(child:to:default:)(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v5 = *a1;
  v9 = *a2;
  v10 = v5;
  v6[1] = *(a4 + 16);
  v7 = *(a4 + 32);
  v8 = a3;
  UnsafeTree.add(child:to:default:)(&v10, &v9, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v6, a4, a5);
}

void UnsafeTree.add(child:identity:to:data:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X8>)
{
  v9 = *a3;
  UnsafeTree.symbol(_:identity:)(a1, a2, a5, &v14);
  v13 = v9;
  v10[1] = *(a5 + 16);
  v11 = *(a5 + 32);
  v12 = a4;
  UnsafeTree.add(child:to:default:)(&v14, &v13, partial apply for closure #1 in UnsafeTree.add(child:to:default:), v10, a5, a6);
}

void UnsafeTree.symbol(_:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = v4[1];
  v19 = *v4;
  v20 = v9;
  v21 = *(v4 + 4);
  v10 = UnsafeTree.subjectsMap.read(v18, a3);
  v12 = v11;
  v13 = a3[2];
  v14 = a3[4];
  v15 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v13, a3[3], v14);
  MEMORY[0x26D69CA60](&v17, a1, v12, v13, v15, v14);
  if ((v17 & 0x100000000) != 0)
  {
    (v10)(v18, 0);
    UnsafeTree.new(element:identity:)(a1, a2, a3, a4);
  }

  else
  {
    v16 = v17;
    (v10)(v18, 0);
    *a4 = v16;
  }
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, void (*a3)(_OWORD *__return_ptr, uint64_t, uint64_t *)@<X2>, unsigned int *a4@<X8>)
{
  v6 = result;
  v8 = *v4;
  if (a2 == -1)
  {
    if (*(v8 + 12))
    {
      goto LABEL_28;
    }

    v14 = 0;
  }

  else
  {
    v9 = *v8 + 88 * a2;
    v10 = *(v9 + 76);
    v11 = *(v9 + 64);
    while (v10)
    {
      if (!*(v9 + 64))
      {
        goto LABEL_29;
      }

      v13 = *v11++;
      v12 = v13;
      --v10;
      if (*(*v8 + 88 * v13) == result)
      {
        *a4 = v12;
        return result;
      }
    }

    v14 = *(v9 + 8);
  }

  v15 = result;
  v16 = *(*(v8 + 16) + (result << 6) + 40) + v14;
  a3(v40, v16, v4);
  v37 = v40[1];
  v38 = v40[0];
  v17 = v41;
  v18 = v42;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v19 = result;
  v21 = v20;
  v22 = *v4;
  v23 = *(*v4 + 12);
  if (v23 == *(*v4 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v23);
  }

  if (!*v22)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = *(v22 + 12);
  v25 = *v22 + 88 * v24;
  *v25 = v6;
  *(v25 + 8) = v16;
  *(v25 + 16) = v38;
  *(v25 + 32) = v37;
  *(v25 + 48) = v17;
  *(v25 + 56) = v18;
  *(v25 + 64) = v19;
  *(v25 + 72) = v21;
  *(v25 + 80) = a2;
  if (v24 == -1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v22 + 12) = v24 + 1;
  v26 = v24;
  v27 = *(v22 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v16, isUniquelyReferenced_nonNull_native);
  *v27 = v39;

  v29 = *(v22 + 16) + (v15 << 6);
  v30 = *(v29 + 60);
  if (v30 == *(v29 + 56))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v30);
  }

  v31 = *(v29 + 48);
  if (!v31)
  {
    goto LABEL_31;
  }

  v32 = *(v29 + 60);
  *(v31 + 4 * v32) = v26;
  if (v32 == -1)
  {
    goto LABEL_26;
  }

  *(v29 + 60) = v32 + 1;
  if (a2 == -1)
  {
LABEL_24:
    *a4 = v26;
    return result;
  }

  v33 = *v22 + 88 * a2;
  v34 = *(v33 + 76);
  if (v34 == *(v33 + 72))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v34);
  }

  v35 = *(v33 + 64);
  if (v35)
  {
    v36 = *(v33 + 76);
    *(v35 + 4 * v36) = v26;
    if (v36 != -1)
    {
      *(v33 + 76) = v36 + 1;
      goto LABEL_24;
    }

    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, _DWORD *a5@<X8>)
{
  v6 = result;
  v7 = *a3;
  if (a2 == -1)
  {
    if (*(v7 + 12))
    {
      goto LABEL_29;
    }

    v36 = a5;
    v37 = a4;
    v38 = 0;
  }

  else
  {
    v8 = *v7 + 88 * a2;
    v9 = *(v8 + 76);
    v10 = *(v8 + 64);
    while (v9)
    {
      if (!*(v8 + 64))
      {
        goto LABEL_30;
      }

      v12 = *v10++;
      LODWORD(v11) = v12;
      --v9;
      if (*(*v7 + 88 * v12) == result)
      {
        goto LABEL_25;
      }
    }

    v36 = a5;
    v37 = a4;
    v38 = *(v8 + 8);
  }

  v13 = result;
  v14 = *(*(v7 + 16) + (result << 6) + 40);
  v15 = MEMORY[0x277D84F90];
  v16 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v18 = v17;
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v15);
  v19 = result;
  v21 = v20;
  v22 = *(v7 + 12);
  if (v22 == *(v7 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (!*v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v7 + 12);
  v24 = *v7 + 88 * v23;
  *v24 = v6;
  v25 = v14 + v38;
  *(v24 + 8) = v14 + v38;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = v16;
  *(v24 + 48) = v18;
  *(v24 + 52) = HIDWORD(v18);
  *(v24 + 64) = v19;
  *(v24 + 72) = v21;
  *(v24 + 80) = a2;
  if (v23 == -1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v7 + 12) = v23 + 1;
  v11 = v23;
  v26 = *(v7 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v26;
  *v26 = 0x8000000000000000;
  v37(v11, v25, isUniquelyReferenced_nonNull_native);
  *v26 = v39;

  v28 = *(v7 + 16) + (v13 << 6);
  v29 = *(v28 + 60);
  if (v29 == *(v28 + 56))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v29);
  }

  v30 = *(v28 + 48);
  if (!v30)
  {
    goto LABEL_32;
  }

  v31 = *(v28 + 60);
  *(v30 + 4 * v31) = v11;
  if (v31 == -1)
  {
    goto LABEL_27;
  }

  *(v28 + 60) = v31 + 1;
  if (a2 == -1)
  {
    goto LABEL_24;
  }

  v32 = *v7 + 88 * a2;
  v33 = *(v32 + 76);
  if (v33 == *(v32 + 72))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v33);
  }

  v34 = *(v32 + 64);
  if (!v34)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v35 = *(v32 + 76);
  *(v34 + 4 * v35) = v11;
  if (v35 == -1)
  {
    goto LABEL_28;
  }

  *(v32 + 76) = v35 + 1;
LABEL_24:
  a5 = v36;
LABEL_25:
  *a5 = v11;
  return result;
}

uint64_t specialized UnsafeTree.add(child:to:default:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, unsigned int *a5@<X8>)
{
  v6 = result;
  v7 = *a3;
  if (a2 == -1)
  {
    if (*(v7 + 12))
    {
      goto LABEL_29;
    }

    v37 = a5;
    v13 = 0;
  }

  else
  {
    v8 = *v7 + 48 * a2;
    v9 = *(v8 + 36);
    v10 = *(v8 + 24);
    while (v9)
    {
      if (!*(v8 + 24))
      {
        goto LABEL_30;
      }

      v12 = *v10++;
      v11 = v12;
      --v9;
      if (*(*v7 + 48 * v12) == result)
      {
        *a5 = v11;
        return result;
      }
    }

    v37 = a5;
    v13 = *(v8 + 8);
  }

  v14 = *(*(v7 + 16) + 40 * result + 16) + v13;
  specialized closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)(a4, v41, v14);
  v15 = v41[1];
  v16 = v41[2];
  v17 = v41[3];
  v38 = v41[4];
  v39 = v41[0];
  v18 = v41[5];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v19 = result;
  v21 = v20;
  v22 = *(v7 + 12);
  if (v22 == *(v7 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (!*v7)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v23 = *(v7 + 12);
  v24 = *v7 + 48 * v23;
  *v24 = v6;
  *(v24 + 8) = v14;
  *(v24 + 16) = v39;
  *(v24 + 17) = v15;
  *(v24 + 18) = v16;
  *(v24 + 19) = v17;
  *(v24 + 20) = v38;
  *(v24 + 21) = v18;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  *(v24 + 40) = a2;
  if (v23 == -1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = v6;
  *(v7 + 12) = v23 + 1;
  v26 = v23;
  v27 = *(v7 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v14, isUniquelyReferenced_nonNull_native);
  *v27 = v40;

  v29 = *(v7 + 16) + 40 * v25;
  v30 = *(v29 + 36);
  if (v30 == *(v29 + 32))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v30);
  }

  v31 = *(v29 + 24);
  if (!v31)
  {
    goto LABEL_32;
  }

  v32 = *(v29 + 36);
  *(v31 + 4 * v32) = v26;
  if (v32 == -1)
  {
    goto LABEL_27;
  }

  *(v29 + 36) = v32 + 1;
  if (a2 != -1)
  {
    v33 = *v7 + 48 * a2;
    v34 = *(v33 + 36);
    if (v34 == *(v33 + 32))
    {
      result = specialized UnsafeArray.growToCapacity(_:)(2 * v34);
    }

    v35 = *(v33 + 24);
    if (!v35)
    {
      goto LABEL_33;
    }

    v36 = *(v33 + 36);
    *(v35 + 4 * v36) = v26;
    if (v36 != -1)
    {
      *(v33 + 36) = v36 + 1;
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  *v37 = v26;
  return result;
}

void UnsafeTree.add(child:to:default:)(unsigned int *a1@<X0>, unsigned int *a2@<X1>, void (*a3)(void, uint64_t **)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int *a6@<X8>)
{
  v86 = a4;
  v87 = a3;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[4];
  v13 = type metadata accessor for UnsafeTree.Node(0, v10, v11, v12);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v96 = (&v82 - v18);
  v95 = *(v11 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v93 = v11;
  v94 = &v82 - v23;
  v24 = *a1;
  v25 = *a2;
  v97 = v6;
  v26 = *v6;
  v27 = **v6;
  v89 = v25;
  v90 = a6;
  v91 = v12;
  v92 = v10;
  v88 = v14;
  if (v25 == -1)
  {
    v37 = v26[1];
    v99 = v27;
    v100 = v37;
    type metadata accessor for UnsafeArray(0, v13, v21, v22);
    swift_getWitnessTable();
    v38 = 0;
    if (Collection.isEmpty.getter())
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for UnsafeTreeNodeRef.Typed(0, v10, v11, v12);
    v28 = *(v14 + 72);
    v11 = &v27[v28 * v25];
    a6 = v13;
    v29 = v11 + v13[13];
    v30 = *v29;
    v31 = *(v29 + 12);
    v32 = UnsafeArray.endIndex.getter(*v29, *(v29 + 8) | (v31 << 32));
    v33 = v30;
    while (v32)
    {
      if (!v31)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (!v30)
      {
        goto LABEL_35;
      }

      v35 = *v33++;
      v34 = v35;
      --v31;
      --v32;
      if (*&v27[v28 * v35] == v24)
      {
        v36 = v34;
        goto LABEL_28;
      }
    }
  }

  v38 = *(v11 + 8);
  v10 = v92;
  v11 = v93;
  v12 = v91;
  v13 = a6;
LABEL_11:
  v39 = v26[2];
  v40 = type metadata accessor for UnsafeTree.Symbol(0, v10, v11, v12);
  v82 = *(*(v40 - 8) + 72) * v24;
  v83 = v40;
  v41 = v10;
  v42 = (*(v39 + v82 + *(v40 + 44)) + v38);
  v43 = v94;
  v87(v42, v97);
  v44 = v95;
  v45 = v85;
  (*(v95 + 16))(v85, v43, v11);
  v46 = default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)(v41, v11, v12);
  LODWORD(v41) = v47;
  v48 = HIDWORD(v47);
  v49 = v96;
  *v96 = v24;
  v87 = v42;
  *(v49 + 1) = v42;
  (*(v44 + 32))(v49 + v13[12], v45, v11);
  v50 = v49 + v13[13];
  *v50 = v46;
  *(v50 + 2) = v41;
  *(v50 + 3) = v48;
  v51 = v89;
  *(v49 + v13[14]) = v89;
  v52 = *v97;
  v53 = *(*v97 + 3);
  v56 = v13;
  if (UnsafeArray.capacity.getter(**v97, *(*v97 + 2)) == v53)
  {
    type metadata accessor for UnsafeArray(0, v13, v54, v55);
    UnsafeArray.growToCapacity(_:)(2 * v53);
  }

  v57 = *v52;
  v58 = v88;
  if (!*v52)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v59 = *(v52 + 3);
  v60 = *(v88 + 72);
  v61 = v84;
  v62 = v96;
  (*(v88 + 16))(v84, v96, v56);
  _sSpsRi_zrlE10initialize2toyxn_tF(v61, v57 + v60 * v59, v56);
  if (v59 == -1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v52 + 3) = v59 + 1;
  v65 = *(v52 + 2);
  v99 = v57;
  LODWORD(v100) = v65;
  HIDWORD(v100) = v59 + 1;
  v66 = type metadata accessor for UnsafeArray(0, v56, v63, v64);
  WitnessTable = swift_getWitnessTable();
  ArrayLike.lastIndex.getter(v66, WitnessTable);
  (*(v58 + 8))(v62, v56);
  v36 = v98;
  if ((v98 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v98))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  BYTE4(v98) = 0;
  v99 = v87;
  v68 = v93;
  v69 = type metadata accessor for UnsafeTreeNodeRef.Typed(255, v92, v93, v91);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v70 = v52[2] + *(v83 + 48) + v82;
  v71 = *(v70 + 12);
  if (UnsafeArray.capacity.getter(*v70, *(v70 + 8)) == v71)
  {
    type metadata accessor for UnsafeArray(0, v69, v72, v73);
    UnsafeArray.growToCapacity(_:)(2 * v71);
  }

  v74 = *v70;
  if (!*v70)
  {
    goto LABEL_37;
  }

  v75 = *(v70 + 12);
  LODWORD(v99) = v36;
  _sSpsRi_zrlE10initialize2toyxn_tF(&v99, v74 + 4 * v75, v69);
  if (v75 == -1)
  {
    goto LABEL_33;
  }

  *(v70 + 12) = v75 + 1;
  if (v51 == -1)
  {
    goto LABEL_27;
  }

  v76 = *v52 + v60 * v51 + *(v56 + 52);
  v77 = *(v76 + 12);
  if (UnsafeArray.capacity.getter(*v76, *(v76 + 8)) == v77)
  {
    type metadata accessor for UnsafeArray(0, v69, v78, v79);
    UnsafeArray.growToCapacity(_:)(2 * v77);
  }

  v80 = *v76;
  if (!*v76)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v81 = *(v76 + 12);
  LODWORD(v99) = v36;
  _sSpsRi_zrlE10initialize2toyxn_tF(&v99, v80 + 4 * v81, v69);
  if (v81 == -1)
  {
    goto LABEL_34;
  }

  *(v76 + 12) = v81 + 1;
LABEL_27:
  (*(v95 + 8))(v94, v68);
LABEL_28:
  *v90 = v36;
}

uint64_t UnsafeTree.subscript.getter(uint64_t a1, void *a2)
{
  v4 = **(*v2 + 32);
  v5 = a2[2];
  v6 = a2[4];
  v7 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v5, a2[3], v6);

  MEMORY[0x26D69CA60](a1, v4, v5, v7, v6);
}

uint64_t specialized UnsafeTree.new(element:identity:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *, uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v10 = result;
  v12 = v11;
  v22 = *a1;
  v23 = a1[1];
  LODWORD(v24) = *(a1 + 8);
  v13 = *v4;
  v14 = *(*v4 + 28);
  if (v14 == *(*v4 + 24))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *(v13 + 28);
    v17 = v15 + (v16 << 6);
    *v17 = v22;
    *(v17 + 16) = v23;
    *(v17 + 32) = v24;
    *(v17 + 40) = a2;
    *(v17 + 48) = v10;
    *(v17 + 56) = v12;
    if (v16 != -1)
    {
      *(v13 + 28) = v16 + 1;
      v18 = v16;
      v19 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v19;
      *v19 = 0x8000000000000000;
      a3(v18, a1, isUniquelyReferenced_nonNull_native);
      *v19 = v21;

      *a4 = v18;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized UnsafeTree.new(element:identity:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int *a4@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v10 = result;
  v12 = v11;
  v13 = *v4;
  v14 = *(*v4 + 28);
  if (v14 == *(*v4 + 24))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v14);
  }

  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = *(v13 + 28);
    v17 = v15 + 40 * v16;
    *v17 = a1;
    v18 = a2 & 1;
    *(v17 + 8) = v18;
    *(v17 + 16) = a3;
    *(v17 + 24) = v10;
    *(v17 + 32) = v12;
    if (v16 != -1)
    {
      *(v13 + 28) = v16 + 1;
      v19 = v16;
      v20 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      *v20 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, a1, v18, isUniquelyReferenced_nonNull_native);
      *v20 = v22;

      *a4 = v19;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void UnsafeTree.new(element:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v45 = a2;
  v44 = a4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  v12 = type metadata accessor for UnsafeTree.Symbol(0, v5, v11, v10);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - v17;
  v19 = *(v6 + 16);
  v41 = a1;
  v39[0] = v19;
  v39[1] = v6 + 16;
  v19(v8, a1, v5);
  v40 = v11;
  v42 = v10;
  v20 = default argument 2 of UnsafeTree.Symbol.init(element:stableIdentity:recent:)(v5, v11, v10);
  LODWORD(v11) = v21;
  v22 = HIDWORD(v21);
  v23 = *(v6 + 32);
  v43 = v8;
  v23(v18, v8, v5);
  *&v18[*(v12 + 44)] = v45;
  v24 = &v18[*(v12 + 48)];
  *v24 = v20;
  *(v24 + 2) = v11;
  *(v24 + 3) = v22;
  v25 = *v46;
  v26 = (*v46 + 16);
  v27 = *(*v46 + 28);
  if (UnsafeArray.capacity.getter(*v26, *(*v46 + 24)) == v27)
  {
    type metadata accessor for UnsafeArray(0, v12, v28, v29);
    UnsafeArray.growToCapacity(_:)(2 * v27);
  }

  v30 = *v26;
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = *(v25 + 28);
  v32 = v30 + *(v13 + 72) * v31;
  (*(v13 + 16))(v16, v18, v12);
  _sSpsRi_zrlE10initialize2toyxn_tF(v16, v32, v12);
  if (v31 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 28) = v31 + 1;
    v35 = *(v25 + 24);
    v48 = v30;
    v49 = v35;
    v50 = v31 + 1;
    v36 = type metadata accessor for UnsafeArray(0, v12, v33, v34);
    WitnessTable = swift_getWitnessTable();
    ArrayLike.lastIndex.getter(v36, WitnessTable);
    (*(v13 + 8))(v18, v12);
    v38 = v47;
    if ((v47 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v47))
      {
        (v39[0])(v43, v41, v5);
        LODWORD(v48) = v38;
        BYTE4(v48) = 0;
        type metadata accessor for UnsafeTree.Symbol.Ref(255, v5, v40, v42);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        *v44 = v38;
        return;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t UnsafeTree.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **(*v3 + 40);
  v9 = a1;
  v6 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, a2[2], a2[3], a2[4]);

  MEMORY[0x26D69CA60](&v10, &v9, v5, MEMORY[0x277D83B88], v6, MEMORY[0x277D83B98]);

  v8 = BYTE4(v10);
  *a3 = v10;
  *(a3 + 4) = v8;
  return result;
}

uint64_t UnsafeTree.sort(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3[1];
  v45 = *v3;
  v46 = v6;
  v47 = *(v3 + 4);
  UnsafeTree.first.getter(a3, &v44);
  v42 = v44;
  v43 = BYTE4(v44);
  v7 = a3[2];
  v8 = a3[3];
  v38 = v7;
  v39 = v8;
  v9 = a3[4];
  v40 = v9;
  v10 = type metadata accessor for UnsafeTreeNodeRef.Typed(255, v7, v8, v9);
  type metadata accessor for Optional();
  v11 = type metadata accessor for Array();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in UnsafeTree.sort(_:), v37, MEMORY[0x277D84A98], v11, v12, v41);
  v13 = v41[0];
  v34 = v9;
  v35 = v8;
  if (!v41[0])
  {
    v13 = static Array._allocateUninitialized(_:)();
  }

  v33 = v7;
  v44 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  MEMORY[0x26D69D230](v41, v11, WitnessTable, v15);
  if ((v41[0] & 0x100000000) == 0)
  {
    v32 = type metadata accessor for UnsafeTree.Node(0, v33, v35, v34);
    v30 = *(*(v32 - 8) + 72);
    v18 = type metadata accessor for UnsafeArray(0, v10, v16, v17);
    v31 = v11;
    do
    {
      v36 = &v29;
      MEMORY[0x28223BE20](v18);
      v19 = v32;
      v20 = a2;
      v22 = v30 * v21;
      swift_getWitnessTable();
      swift_getWitnessTable();
      MutableCollection<>.sort(by:)();
      v23 = (**v3 + *(v19 + 52) + v22);
      a2 = v20;
      v24 = v31;
      v25 = v23[1];
      v41[0] = *v23;
      v41[1] = v25;
      swift_getWitnessTable();
      Array.append<A>(contentsOf:)();
      v26 = swift_getWitnessTable();
      v27 = swift_getWitnessTable();
      v18 = MEMORY[0x26D69D230](v41, v24, v26, v27);
    }

    while (BYTE4(v41[0]) != 1);
  }
}

void closure #1 in UnsafeTree.sort(_:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  type metadata accessor for UnsafeTreeNodeRef.Typed(255, a2, a3, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v7 = static Array._adoptStorage(_:count:)();
  *v8 = v6;
  v9 = v7;
  type metadata accessor for Array();
  EventTreeStats.count.modify();
  *a5 = v9;
}

uint64_t UnsafeTree.deallocate()(void *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = type metadata accessor for UnsafeTree.Node(255, v5, v6, v7);
  v11 = type metadata accessor for UnsafeArray(0, v8, v9, v10);
  a2(v11);
  v12 = type metadata accessor for UnsafeTree.Symbol(255, v5, v6, v7);
  v15 = type metadata accessor for UnsafeArray(0, v12, v13, v14);
  a2(v15);
  v16 = type metadata accessor for UnsafeTree.Symbol.Ref(255, v5, v6, v7);
  v17 = type metadata accessor for Dictionary();
  v20 = type metadata accessor for Strong(0, v17, v18, v19);
  a3(v20);
  v23 = type metadata accessor for UnsafeArray(0, v16, v21, v22);
  a2(v23);
  v24 = type metadata accessor for UnsafeTreeNodeRef.Typed(255, v5, v6, v7);
  v27 = type metadata accessor for UnsafeArray(0, v24, v25, v26);
  a2(v27);
  v28 = type metadata accessor for Dictionary();
  v31 = type metadata accessor for Strong(0, v28, v29, v30);
  return a3(v31);
}

uint64_t UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = UnsafeTree.first.getter(a5, &v30);
  if ((v31 & 1) == 0)
  {
    v12 = MEMORY[0x28223BE20](result);
    v14 = a5[3];
    v23 = a5[2];
    v13 = v23;
    v24 = v14;
    v15 = a5[4];
    v25 = v15;
    v26 = a1;
    v27 = a2;
    v28 = v5;
    MEMORY[0x28223BE20](v12);
    v21[2] = v23;
    v21[3] = v14;
    v21[4] = v15;
    v21[5] = a3;
    v21[6] = a4;
    v21[7] = v5;
    v29 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = v23;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    v18 = *(v5 + 16);
    *(v17 + 40) = *v5;
    *(v17 + 56) = v18;
    *(v17 + 72) = *(v5 + 32);
    *&v20 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, v13, v14, v15);
    *(&v20 + 1) = MEMORY[0x277D84F78] + 8;
    static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for closure #1 in UnsafeTree.traverse(visitor:revisit:), &v22, partial apply for closure #2 in UnsafeTree.traverse(visitor:revisit:), v21, &v29, v19, 1, partial apply for closure #3 in UnsafeTree.traverse(visitor:revisit:), v17, v20);
  }

  return result;
}

uint64_t closure #1 in UnsafeTree.traverse(visitor:revisit:)(_DWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t **, _OWORD *), uint64_t a5, uint64_t **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v31) = *a1;
  v13 = v31;
  v14 = *(a3 + 48);
  v33[2] = *(a3 + 32);
  v33[3] = v14;
  v34 = *(a3 + 64);
  v35 = *(a3 + 80);
  v15 = *(a3 + 16);
  v33[0] = *a3;
  v33[1] = v15;
  a4(&v31, a6, v33);
  v16 = **a6;
  v17 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, a7, a8, a9);
  v18 = type metadata accessor for UnsafeTree.Node(0, a7, a8, a9);
  v19 = (v16 + *(*(v18 - 8) + 72) * v13 + *(v18 + 52));
  v20 = v19[1];
  v31 = *v19;
  v32 = v20;
  type metadata accessor for UnsafeArray(0, v17, v21, v22);
  swift_getWitnessTable();
  v23 = Sequence.reversed()();
  result = MEMORY[0x26D69D060](v23, v17);
  if (!result)
  {
  }

  v25 = v34 + 1;
  if (!__OFADD__(v34, 1))
  {
    v26 = 0;
    v27 = v35;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_12;
      }

      v30 = v27 + v26 + 1;
      if (__OFADD__(v27 + v26, 1))
      {
        goto LABEL_13;
      }

      LODWORD(v31) = *(v23 + 4 * v26 + 32);
      v32 = v25;
      swift_getTupleTypeMetadata3();
      type metadata accessor for Array();
      Array.append(_:)();
      ++v26;
      if (v29 == MEMORY[0x26D69D060](v23, v17))
      {

        *(a3 + 80) = v30;
        return result;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = type metadata accessor for UnsafeTree.Node(0, a7, a8, a9);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v15 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26C328DC0;
  (*(v12 + 16))(v14, **a6 + *(v12 + 72) * v15, v11);
  *(v16 + 56) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v16 + 32));
  (*(v12 + 32))(boxed_opaque_existential_1Tm, v14, v11);
  print(_:separator:terminator:)();
}

uint64_t UnsafeTree.describe(state:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v19[0] = 40;
  v19[1] = 0xE100000000000000;
  v15 = *a1;
  v16 = v1;
  v3 = *(a1 + 24);
  v17 = v3;
  v18 = v2;
  if ((v3 & 2) == 0)
  {
    *&v17 = v3 | 2;
  }

  v4 = MEMORY[0x28223BE20](a1);
  v6 = v5[3];
  v14[8] = v5[2];
  v14[9] = v6;
  v14[10] = v5[4];
  v14[11] = v19;
  v14[12] = &v15;
  MEMORY[0x28223BE20](v4);
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  UnsafeTree.traverse(visitor:revisit:)(partial apply for closure #1 in UnsafeTree.describe(state:), v11, EventTreeStats.count.modify, v14, v12);
  return v19[0];
}

uint64_t closure #1 in UnsafeTree.describe(state:)(unsigned int *a1, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a1;
  v75 = a3;
  v73 = a2;
  v13 = type metadata accessor for UnsafeTree.Node(0, a6, a7, a8);
  v70 = *(v13 - 8);
  v14 = v70;
  v71 = v13;
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v66 - v16;
  v72 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UnsafeTree.Symbol(0, a6, a7, a8);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v66 - v23;
  v25 = *v74;
  v74 = a4;
  MEMORY[0x26D69CDB0](10, 0xE100000000000000);
  v26 = *(*v73 + 16);
  v73 = *v73;
  v27 = v72;
  v28 = *(v14 + 72) * v25;
  v29 = *(v20 + 16);
  v30 = *(v20 + 72);
  v29(v24, v26 + v30 * *(*v73 + v28), v19);
  (*(v27 + 32))(v18, v24, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  v31 = swift_dynamicCast();
  v68 = v28;
  if (v31)
  {
    outlined init with take of Inspectable(v78, &v80);
    v76 = 40;
    v77 = 0xE100000000000000;
    v32 = v82;
    v33 = v83;
    v34 = __swift_project_boxed_opaque_existential_1(&v80, v82);
    v35 = *(a5 + 16);
    v36 = *(a5 + 40);
    *v78 = *a5;
    v78[16] = v35;
    *&v78[24] = *(a5 + 24);
    v79 = v36;
    v40 = InspectionState.describe<A>(_:)(v34, v32, v33, v37, v38, v39);
    MEMORY[0x26D69CDB0](v40);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v76, v77);

    result = __swift_destroy_boxed_opaque_existential_1(&v80);
    v42 = v73;
  }

  else
  {
    memset(v78, 0, sizeof(v78));
    outlined destroy of Inspectable?(v78);
    v80 = 40;
    v81 = 0xE100000000000000;
    v43 = *(a5 + 16);
    v44 = *(a5 + 40);
    *v78 = *a5;
    v78[16] = v43;
    *&v78[24] = *(a5 + 24);
    v79 = v44;
    v45 = v73;
    v46 = v73[2] + v30 * *(*v73 + v28);
    v47 = v67;
    v29(v67, v46, v19);
    v48 = InspectionState.describe<A>(value:)(v47, a6);
    v50 = v49;
    (*(v27 + 8))(v47, a6);
    MEMORY[0x26D69CDB0](v48, v50);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);
    MEMORY[0x26D69CDB0](v80, v81);

    v42 = v45;
  }

  v51 = *(v75 + 64);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
  }

  else
  {
    *a5 = v53;
    v54 = *(a5 + 8);
    v55 = *(a5 + 16);
    v56 = *(a5 + 40);
    *v78 = v53;
    *&v78[8] = v54;
    v78[16] = v55;
    *&v78[24] = *(a5 + 24);
    v79 = v56;
    v58 = v69;
    v57 = v70;
    v59 = v71;
    (*(v70 + 16))(v69, *v42 + v68, v71);
    v63 = InspectionState.describe<A>(_:)(v58, v59, &protocol witness table for UnsafeTree<A, B>.Node, v60, v61, v62);
    v65 = v64;
    (*(v57 + 8))(v58, v59);
    MEMORY[0x26D69CDB0](v63, v65);
  }

  return result;
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA5EventV2IdVG_AA9MergeOnceVyAA0kE5StatsVGTt0B5@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(v3);
  v9 = MEMORY[0x277D84F98];
  v37 = v4;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v10;
  v42 = v11;
  v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v44 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v37);
  v13 = v12;
  v30 = v12;
  v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v32 = v14;
  v33 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v34 = v15;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  v16 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(v35, v16, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v29);
  v17 = v29[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v19 = result;
  v21 = v20;
  v22 = *(v13 + 12);
  if (v22 == *(v13 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (*v13)
  {
    v23 = *(v13 + 12);
    v24 = *v13 + 88 * v23;
    *v24 = v17;
    *(v24 + 8) = 0;
    v25 = a1[1];
    *(v24 + 16) = *a1;
    *(v24 + 32) = v25;
    *(v24 + 44) = *(a1 + 28);
    *(v24 + 64) = v19;
    *(v24 + 72) = v21;
    *(v24 + 80) = -1;
    if (v23 != -1)
    {
      *(v13 + 12) = v23 + 1;
      v26 = v31;
      v27 = v33;
      *a2 = v30;
      a2[1] = v26;
      a2[2] = v32;
      a2[3] = v27;
      a2[4] = v34;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA04ViewE0V8TElementOG_AA9MergeOnceVyAA05EventE5StatsVGTt0B5@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA09AggregategF0OyAA5EventV2IdVGAA9MergeOnceVyAA0jG5StatsVG_G_SayAWGTt0g5Tf4g_nTm(v3);
  v9 = MEMORY[0x277D84F98];
  v37 = v4;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v10;
  v42 = v11;
  v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v44 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v37);
  v13 = v12;
  v30 = v12;
  v31 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v32 = v14;
  v33 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v34 = v15;
  v35[0] = xmmword_26C328DD0;
  v35[1] = vdupq_n_s64(0xF000000000000007);
  v36 = 0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](0);
  v16 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(v35, v16, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v29);
  v17 = v29[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v3);
  v19 = result;
  v21 = v20;
  v22 = *(v13 + 12);
  if (v22 == *(v13 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v22);
  }

  if (*v13)
  {
    v23 = *(v13 + 12);
    v24 = *v13 + 88 * v23;
    *v24 = v17;
    *(v24 + 8) = 0;
    v25 = a1[1];
    *(v24 + 16) = *a1;
    *(v24 + 32) = v25;
    *(v24 + 44) = *(a1 + 28);
    *(v24 + 64) = v19;
    *(v24 + 72) = v21;
    *(v24 + 80) = -1;
    if (v23 != -1)
    {
      *(v13 + 12) = v23 + 1;
      v26 = v31;
      v27 = v33;
      *a2 = v30;
      a2[1] = v26;
      a2[2] = v32;
      a2[3] = v27;
      a2[4] = v34;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v4 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA0D4TreeV6SymbolVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_G_SayASGTt0g5Tf4g_n(v3);
  v9 = MEMORY[0x277D84F98];
  v36 = v4;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v10;
  v41 = v11;
  v42 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(MEMORY[0x277D84F98]);
  v43 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v9);
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA10UnsafeTreeV7StorageVyAA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0jF5StatsVG_G_Tt0g5(&v36);
  v13 = v12;
  v31 = v12;
  v14 = MEMORY[0x277D84F90];
  v32 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(MEMORY[0x277D84F90]);
  v33 = v15;
  v34 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v14);
  v35 = v16;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](1);
  v17 = Hasher._finalize()();
  specialized UnsafeTree.new(element:identity:)(0, 1, v17, v30);
  v18 = v30[0];
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_nTm(v14);
  v20 = result;
  v22 = v21;
  LOBYTE(v30[0]) = BYTE1(a1) & 1;
  v23 = *(v13 + 12);
  if (v23 == *(v13 + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v23);
  }

  if (*v13)
  {
    v24 = *(v13 + 12);
    v25 = v30[0];
    v26 = *v13 + 48 * v24;
    *v26 = v18;
    *(v26 + 8) = 0;
    *(v26 + 16) = a1;
    *(v26 + 17) = v25;
    *(v26 + 18) = BYTE2(a1);
    *(v26 + 19) = BYTE3(a1) & 1;
    *(v26 + 20) = BYTE4(a1);
    *(v26 + 21) = BYTE5(a1) & 1;
    *(v26 + 24) = v20;
    *(v26 + 32) = v22;
    *(v26 + 40) = -1;
    if (v24 != -1)
    {
      *(v13 + 12) = v24 + 1;
      v27 = v32;
      v28 = v34;
      *a2 = v31;
      a2[1] = v27;
      a2[2] = v33;
      a2[3] = v28;
      a2[4] = v35;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double UnsafeTree<>.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  specialized UnsafeTree<>.init(root:)(a1, a4, a2, a5, a6, v11);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v12;
  return result;
}

double UnsafeTree<>.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 8))(v14, v13);
  specialized UnsafeTree<>.init(root:)(v12, a1, a2, a4, a5, v18);
  (*(v10 + 8))(v12, a2);
  result = *v18;
  v16 = v18[1];
  *a3 = v18[0];
  *(a3 + 16) = v16;
  *(a3 + 32) = v19;
  return result;
}

void $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for UnsafeTree.Symbol.Ref(255, a2, a3, a4);
  type metadata accessor for UnsafeArray(0, v4, v5, v6);
  UnsafeArray.removeAll(keepingCapacity:)(1);
}

void UnsafeTree<>.add(child:inverted:parents:)(int *a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *, uint64_t)@<X2>, void *a4@<X4>, uint64_t a5@<X5>, _DWORD *a6@<X8>)
{
  v12 = *a1;
  v13 = *(v6 + 16);
  v45 = *v6;
  v46 = v13;
  v47 = *(v6 + 32);
  v14 = UnsafeTree.first.getter(a4, v43);
  if (BYTE4(v43[0]))
  {
    goto LABEL_20;
  }

  v34 = &v32;
  v35 = a6;
  MEMORY[0x28223BE20](v14);
  v15 = a4[2];
  v38 = a4[3];
  v39 = v15;
  v31[2] = v15;
  v31[3] = v38;
  v37 = a4[4];
  v31[4] = v37;
  v31[5] = a5;
  v36 = v12;
  LODWORD(v43[0]) = v12;
  a3(v43, v6);
  v16 = *(v6 + 16);
  v43[0] = *v6;
  v43[1] = v16;
  v44 = *(v6 + 32);
  UnsafeTree.first.getter(a4, v42);
  if ((v42[0] & 0x100000000) != 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v17 = v42[0];
  v33 = a5;
  if (a2)
  {
    v40 = v42[0];
    LODWORD(v41) = v36;
    UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
    v17 = v42[0];
    HIDWORD(v32) = v42[0];
  }

  else
  {
    HIDWORD(v32) = 0;
  }

  v18 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v39, v38, v37);
  v19 = UnsafeArray.indices.getter();
  if (v19 != v20)
  {
    v23 = v19;
    v24 = v20;
    if (v20 < v19)
    {
      goto LABEL_21;
    }

    while (v23 < v24)
    {
      v25 = v23;
      if ((a2 & 1) == 0)
      {
        v42[0] = *(v6 + 8);
        v42[1] = *(v6 + 16);
        v26 = type metadata accessor for UnsafeArray(0, v18, v21, v22);
        WitnessTable = swift_getWitnessTable();
        ArrayLike.lastIndex.getter(v26, WitnessTable);
        v25 = v41 - v23;
        if (__OFSUB__(v41, v23))
        {
          goto LABEL_19;
        }
      }

      if (v25 >= *(v6 + 20))
      {
        goto LABEL_18;
      }

      v28 = *(v6 + 8);
      if (!v28)
      {
        goto LABEL_22;
      }

      v29 = *(v28 + 4 * v25);
      ++v23;
      v40 = v17;
      LODWORD(v41) = v29;
      UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
      v17 = v42[0];
      if (v24 == v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v30 = HIDWORD(v32);
  if ((a2 & 1) == 0)
  {
    v40 = v17;
    LODWORD(v41) = v36;
    UnsafeTree.add(child:to:default:)(&v41, &v40, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:), v31, a4, v42);
    v30 = v42[0];
  }

  *v35 = v30;
  $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)(v6, v39, v38, v37);
}

void UnsafeTree<>.add(child:inverted:parents:old:)(int *a1@<X0>, char a2@<W1>, void (*a3)(_OWORD *, uint64_t)@<X2>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, _DWORD *a7@<X8>)
{
  v11 = *a1;
  v12 = a5[2];
  v13 = a5[3];
  v36 = v12;
  v37 = v13;
  v14 = a5[4];
  v38 = v14;
  v39 = a6;
  v40 = a4;
  v34 = v11;
  LODWORD(v44[0]) = v11;
  a3(v44, v7);
  v15 = *(v7 + 16);
  v44[0] = *v7;
  v44[1] = v15;
  v45 = *(v7 + 32);
  UnsafeTree.first.getter(a5, v43);
  if ((v43[0] & 0x100000000) != 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v43[0];
  v31 = a7;
  if (a2)
  {
    v41 = v43[0];
    LODWORD(v42) = v34;
    UnsafeTree.add(child:to:default:)(&v42, &v41, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v35, a5, v43);
    v16 = v43[0];
    v30 = v43[0];
  }

  else
  {
    v30 = 0;
  }

  v32 = v13;
  v33 = v12;
  v17 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v12, v13, v14);
  v18 = UnsafeArray.indices.getter();
  if (v18 != v19)
  {
    v22 = v18;
    v23 = v19;
    if (v19 >= v18)
    {
      while (v22 < v23)
      {
        v24 = v22;
        if ((a2 & 1) == 0)
        {
          v43[0] = *(v7 + 8);
          v43[1] = *(v7 + 16);
          v25 = type metadata accessor for UnsafeArray(0, v17, v20, v21);
          WitnessTable = swift_getWitnessTable();
          ArrayLike.lastIndex.getter(v25, WitnessTable);
          v24 = v42 - v22;
          if (__OFSUB__(v42, v22))
          {
            goto LABEL_18;
          }
        }

        if (v24 >= *(v7 + 20))
        {
          goto LABEL_17;
        }

        v27 = *(v7 + 8);
        if (!v27)
        {
          goto LABEL_20;
        }

        v28 = *(v27 + 4 * v24);
        ++v22;
        v41 = v16;
        LODWORD(v42) = v28;
        UnsafeTree.add(child:to:default:)(&v42, &v41, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v35, a5, v43);
        v16 = v43[0];
        if (v23 == v22)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  v29 = v30;
  if ((a2 & 1) == 0)
  {
    v41 = v16;
    LODWORD(v42) = v34;
    UnsafeTree.add(child:to:default:)(&v42, &v41, partial apply for closure #1 in UnsafeTree<>.add(child:inverted:parents:old:), v35, a5, v43);
    v29 = v43[0];
  }

  *v31 = v29;
  $defer #1 <A, B>() in UnsafeTree<>.add(child:inverted:parents:nodeData:)(v7, v33, v32, v14);
}

void specialized closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)(uint64_t *a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  v5 = **(v4 + 40);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_6:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  v7 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFs6UInt64V_Tg5_0(a3);
  if ((v8 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v9 = (*v4 + 48 * *(*(v5 + 56) + 4 * v7));
  LOBYTE(v6) = v9[18];
  v10 = v9[19];
  v11 = v9[20];
  v12 = v9[21];
LABEL_7:
  *a2 = 0;
  *(a2 + 2) = v6;
  *(a2 + 3) = v10;
  *(a2 + 4) = v11;
  *(a2 + 5) = v12;
}

uint64_t closure #1 in UnsafeTree<>.add(child:inverted:parents:old:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v27 = a7;
  v28 = a6;
  v26 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UnsafeTree.Node(0, v14, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  v21 = *a2;
  if (!*a2)
  {
    return (*(*(v28 + 8) + 8))(a4);
  }

  v31 = *a2;
  v22 = *(a2 + 24);
  v32 = *(a2 + 8);
  v33 = v22;
  v23 = type metadata accessor for UnsafeTree(0, a3, a4, a5);
  UnsafeTree.subscript.getter(a1, v23, &v29);
  if (v30 == 1)
  {
    return (*(*(v28 + 8) + 8))(a4);
  }

  (*(v18 + 16))(v20, *v21 + *(v18 + 72) * v29, v17);
  (*(v26 + 32))(v13, &v20[*(v17 + 48)], a4);
  return (*(v28 + 16))(v13, a4);
}

uint64_t specialized UnsafeTree<>.merge(_:into:)(uint64_t result, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = result;
    v4 = a2;
    v5 = *(result + 40);
    v6 = a2;
    do
    {
      v7 = *v2;
      v8 = 88 * v6;
      v9 = **v2 + 88 * v6;
      if (*(v9 + 56) == v5)
      {
        break;
      }

      *(v9 + 56) = v5;
      result = EventTreeStats.merge(other:asSelf:)(v3, v6 == v4);
      v6 = *(*v7 + v8 + 80);
    }

    while (v6 != -1);
  }

  return result;
}

void specialized UnsafeTree<>.add(_:to:at:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(*a3 + 16) + (a2 << 6);
  if (*(v9 + 60) && !*(v9 + 48))
  {
    goto LABEL_23;
  }

  *(v9 + 60) = 0;
  if (*(a3 + 36) && !*(a3 + 24))
  {
    goto LABEL_24;
  }

  *(a3 + 36) = 0;
  closure #1 in CauseEffect.addTime(rootedAt:partial:within:)(a3, a4, a5);
  v10 = *(a3 + 24);
  v11 = *(a3 + 36);
  if (v11)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (!*(a3 + 32))
  {
    specialized UnsafeArray.growToCapacity(_:)(0);
    v10 = *(a3 + 24);
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v12 = *(a3 + 36);
  v10[v12] = 0;
  v13 = __CFADD__(v12, 1);
  v11 = v12 + 1;
  if (!v13)
  {
    *(a3 + 36) = v11;
LABEL_13:
    v14 = v11;
    while (1)
    {
      v15 = *v10++;
      v21 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v21);
      specialized UnsafeTree.add(child:to:default:)(a2, v15, partial apply for specialized closure #1 in UnsafeTree.add(child:to:default:), &v22);
      v16 = v22;
      specialized UnsafeTree<>.merge(_:into:)(result, v22);
      v17 = *(*a3 + 16) + (v8 << 6);
      v18 = *(v17 + 60);
      if (v18 == *(v17 + 56))
      {
        specialized UnsafeArray.growToCapacity(_:)(2 * v18);
      }

      v19 = *(v17 + 48);
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = *(v17 + 60);
      *(v19 + 4 * v20) = v16;
      if (v20 == -1)
      {
        __break(1u);
        break;
      }

      *(v17 + 60) = v20 + 1;
      if (!--v14)
      {
        return;
      }
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

uint64_t static AggregateTreeElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  v9 = type metadata accessor for AggregateTreeElement(0, v8, v7, v7);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = &v26 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v26 - v15;
  v17 = *(v14 + 48);
  v29 = v10;
  v18 = *(v10 + 16);
  v18(&v26 - v15, v30, v9);
  v18(&v16[v17], a2, v9);
  v30 = v5;
  v19 = *(v5 + 48);
  if (v19(v16, 1, a3) == 1)
  {
    v20 = 1;
    if (v19(&v16[v17], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18(v31, v16, v9);
    if (v19(&v16[v17], 1, a3) != 1)
    {
      v21 = v30;
      v22 = v27;
      (*(v30 + 32))(v27, &v16[v17], a3);
      v23 = v31;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v21 + 8);
      v24(v22, a3);
      v24(v23, a3);
LABEL_8:
      v13 = v29;
      goto LABEL_9;
    }

    (*(v30 + 8))(v31, a3);
  }

  v20 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v13 + 8))(v16, v9);
  return v20 & 1;
}

uint64_t AggregateTreeElement.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x26D69DBC0](0);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x26D69DBC0](1);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int AggregateTreeElement.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  AggregateTreeElement.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AggregateTreeElement<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AggregateTreeElement.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static UnsafeTree_SuppliesRoot.element(_:) in conformance AggregateTreeElement<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a3, a1, v4);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t UnsafeTree<>.symbol(_:identity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v21 = a2;
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 24))(v9, v7, v12);
  v13 = v4[1];
  v24 = *v4;
  v25 = v13;
  v26 = *(v4 + 4);
  v14 = UnsafeTree.subjectsMap.read(v23, a3);
  v16 = v15;
  v17 = a3[4];
  v18 = type metadata accessor for UnsafeTree.Symbol.Ref(0, v7, a3[3], v17);
  MEMORY[0x26D69CA60](&v22, v11, v16, v7, v18, v17);
  if ((v22 & 0x100000000) != 0)
  {
    (v14)(v23, 0);
    UnsafeTree.new(element:identity:)(v11, v21, a3, a4);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v20 = v22;
    (v14)(v23, 0);
    result = (*(v8 + 8))(v11, v7);
    *a4 = v20;
  }

  return result;
}

uint64_t static Aggregate.invertable.getter()
{
  return 1;
}

{
  return 1;
}

uint64_t Aggregate.root.getter@<X0>(uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  (*(a2 + 88))(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  result = swift_getWitnessTable();
  *a3 = 0;
  return result;
}

uint64_t specialized Aggregate.children(for:within:)(unsigned int a1)
{
  v2 = **(v1 + 8) + 88 * a1;
  v3 = *(v2 + 76);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v2 + 64);
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v10;
    v6 = v5;
    while (v5)
    {
      v7 = *v6;
      v11 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      *(result + 16) = v9 + 1;
      *(result + 4 * v9 + 32) = v7;
      ++v6;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v2 = **v1 + 88 * a1;
  v3 = *(v2 + 76);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v2 + 64);
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v10;
    v6 = v5;
    while (v5)
    {
      v7 = *v6;
      v11 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v11;
      }

      *(result + 16) = v9 + 1;
      *(result + 4 * v9 + 32) = v7;
      ++v6;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Aggregate.children(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  (*(a4 + 88))(&v25, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for AggregateTreeElement(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v13 = *v25;
  v14 = type metadata accessor for UnsafeTreeNodeRef.Typed(0, v10, v11, WitnessTable);
  v15 = type metadata accessor for UnsafeTree.Node(0, v10, v11, WitnessTable);
  v16 = (v13 + *(*(v15 - 8) + 72) * v6 + *(v15 + 52));
  v17 = v16[1];
  v24[5] = *v16;
  v24[6] = v17;
  v24[2] = a3;
  v24[3] = a4;
  v20 = type metadata accessor for UnsafeArray(0, v14, v18, v19);
  v21 = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Aggregate.children(for:within:), v24, v20, &type metadata for UnsafeTreeNodeRef, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
}

uint64_t Aggregate.displayName(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, v13, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  v19 = v12;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v16 = (*(a4 + 168))(&v19, v11, a3, a4);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t Aggregate.displayWeight(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, v13, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  v19 = v12;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v16 = (*(a4 + 176))(&v19, v11, a3, a4);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t Aggregate.appendSelection(for:within:to:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v20[-v12];
  v14 = *a1;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, v15, AssociatedConformanceWitness, v17);
  swift_getWitnessTable();
  v21 = v14;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  (*(a5 + 192))(&v21, v13, a3, a4, a5);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t Aggregate.weight(for:within:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18[-v10];
  v12 = *a1;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, v13, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  v19 = v12;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  v16 = (*(a4 + 184))(&v19, v11, a3, a4);
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t Aggregate.displayWeight(for:within:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v26 = a2;
  v6 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v26 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  LODWORD(v33) = *a1;
  v32 = (*(a4 + 184))(&v33, v26, v27, a4) * 125.0 / 3.0 / 1000000.0;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  MEMORY[0x26D69C5D0](v11, v13);
  (*(v28 + 8))(v11, v29);
  v23 = *(v14 + 8);
  v24 = v23(v17, v13);
  MEMORY[0x26D69C5E0](v24);
  MEMORY[0x26D69C5C0](v8, v13);
  (*(v30 + 8))(v8, v31);
  v23(v20, v13);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
  BinaryFloatingPoint.formatted<A>(_:)();
  v23(v22, v13);
  return v33;
}

uint64_t Aggregate.weight(for:within:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Aggregate.weight(for:within:)(a1, a3, a4);
}

{
  return specialized Aggregate.weight(for:within:)(a1, a3, a4);
}

uint64_t Aggregate.sort(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v4 = (*(a4 + 104))(v14, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for UnsafeTree(0, v8, v9, WitnessTable);
  UnsafeTree.sort(_:)(partial apply for closure #1 in Aggregate.sort(_:), v13, v11);
  return v4(v14, 0);
}

uint64_t specialized Aggregate.sort(method:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  if (!v3)
  {
    KeyPath = swift_getKeyPath();
    v5 = *(v2 + 8);
    if (*(v5 + 12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v3 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *(v2 + 8);
    if (*(v5 + 12))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *(v2 + 8);
  if (*(v5 + 12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v25 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v13 + 64, (v2 + 8), KeyPath);

    v5 = *(v2 + 8);
    specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v12 + 64), *(*v5 + 88 * v12 + 72));
    v6 = v25;
    if (!*(v25 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);

  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = *(v7 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v15 = *(v7 + 16);
    if (v15)
    {
LABEL_19:
      v16 = v15 - 1;
      v17 = *(v7 + 4 * v16 + 32);
      *(v7 + 16) = v16;
      v26 = v7;
      v18 = *v5 + 88 * v17;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v18 + 64, (v2 + 8), KeyPath);

      v5 = *(v2 + 8);
      specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v17 + 64), *(*v5 + 88 * v17 + 72));
      v7 = v26;
      if (!*(v26 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);

  if (v19)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v8 + 16);
        if (!v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v20 = *(v8 + 16);
        if (!v20)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v21 = v20 - 1;
      v22 = *(v8 + 4 * v21 + 32);
      *(v8 + 16) = v21;
      v27 = v8;
      v23 = *v5 + 88 * v22;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v23 + 64, (v2 + 8), KeyPath);

      v5 = *(v2 + 8);
      specialized Array.append<A>(contentsOf:)(*(*v5 + 88 * v22 + 64), *(*v5 + 88 * v22 + 72));
      v8 = v27;
    }

    while (*(v27 + 16));
  }

LABEL_30:
}

{
  v2 = v1;
  v3 = a1;
  lazy protocol witness table accessor for type UpdateStack and conformance UpdateStack();
  if (!v3)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v3 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *v2;
  if (*(*v2 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC5EventV2IdVGAC9MergeOnceVyAC0nH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v28 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v13 + 64, v2, KeyPath);

    v5 = *v2;
    v14 = **v2 + 88 * v12;
    specialized Array.append<A>(contentsOf:)(*(v14 + 64), *(v14 + 72));
    v6 = v28;
    if (!*(v28 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v7 + 16);
      if (!v16)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v16 = *(v7 + 16);
    if (v16)
    {
LABEL_19:
      v17 = v16 - 1;
      v18 = *(v7 + 4 * v17 + 32);
      *(v7 + 16) = v17;
      v29 = v7;
      v19 = *v5 + 88 * v18;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v19 + 64, v2, KeyPath);

      v5 = *v2;
      v20 = **v2 + 88 * v18;
      specialized Array.append<A>(contentsOf:)(*(v20 + 64), *(v20 + 72));
      v7 = v29;
      if (!*(v29 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);

  if (v21)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = *(v8 + 16);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v22 = *(v8 + 16);
        if (!v22)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v23 = v22 - 1;
      v24 = *(v8 + 4 * v23 + 32);
      *(v8 + 16) = v23;
      v30 = v8;
      v25 = *v5 + 88 * v24;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE5EventV2IdVGAE9MergeOnceVyAE0nI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09mxc5OyAA5n2V2o6VG_AA9pqz6AA0lE5R5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0sde8Support9m23PAAE4sortyys7KeyPathCy5r21Qzqd__GSzRd__lFSbAA17gijkylz1_w2J7c19Oy0N0QzGAHG_AsA0iJ0Z33ArHGztXEfU_AA11CauseEffectV_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_nTm(v25 + 64, v2, KeyPath);

      v5 = *v2;
      v26 = **v2 + 88 * v24;
      specialized Array.append<A>(contentsOf:)(*(v26 + 64), *(v26 + 72));
      v8 = v30;
    }

    while (*(v30 + 16));
  }

LABEL_30:
}

{
  v2 = v1;
  v3 = a1;
  lazy protocol witness table accessor for type ViewTree and conformance ViewTree();
  if (!v3)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26C328DC0;
      *(v7 + 32) = 0;

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v3 != 1)
  {
    KeyPath = swift_getKeyPath();
    v5 = *v2;
    if (*(*v2 + 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26C328DC0;
      *(v8 + 32) = 0;

      goto LABEL_24;
    }

    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  v5 = *v2;
  if (*(*v2 + 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC09AggregateH7ElementOyAC04ViewH0V8TElementOGAC9MergeOnceVyAC05EventH5StatsVGGGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26C328DC0;
    *(v6 + 32) = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v10 = *(v6 + 16);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_12:
    v11 = v10 - 1;
    v12 = *(v6 + 4 * v11 + 32);
    *(v6 + 16) = v11;
    v28 = v6;
    v13 = *v5 + 88 * v12;

    _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v13 + 64, v2, KeyPath);

    v5 = *v2;
    v14 = **v2 + 88 * v12;
    specialized Array.append<A>(contentsOf:)(*(v14 + 64), *(v14 + 72));
    v6 = v28;
    if (!*(v28 + 16))
    {
      goto LABEL_30;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v10 = *(v6 + 16);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_17:
  while (2)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = *(v7 + 16);
      if (!v16)
      {
        break;
      }

      goto LABEL_19;
    }

    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v16 = *(v7 + 16);
    if (v16)
    {
LABEL_19:
      v17 = v16 - 1;
      v18 = *(v7 + 4 * v17 + 32);
      *(v7 + 16) = v17;
      v29 = v7;
      v19 = *v5 + 88 * v18;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v19 + 64, v2, KeyPath);

      v5 = *v2;
      v20 = **v2 + 88 * v18;
      specialized Array.append<A>(contentsOf:)(*(v20 + 64), *(v20 + 72));
      v7 = v29;
      if (!*(v29 + 16))
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  v8 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);

  if (v21)
  {
    do
    {
LABEL_24:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = *(v8 + 16);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v22 = *(v8 + 16);
        if (!v22)
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      v23 = v22 - 1;
      v24 = *(v8 + 4 * v23 + 32);
      *(v8 + 16) = v23;
      v30 = v8;
      v25 = *v5 + 88 * v24;

      _sSMsSkRzrlE4sort2byySb7ElementSTQz_ADtKXE_tKF21SwiftUITracingSupport11UnsafeArrayVyAE0G11TreeNodeRefV5TypedVy_AE09AggregateiC0OyAE04ViewI0V8TElementOGAE9MergeOnceVyAE05EventI5StatsVGGG_Tg504_s21de9Support10gi16V4sortyySbAA0dE7jk2V5l39Vy_xq_G_AiCyxq_GztXEFSbAI_AItXEfU0_AA09myc6OyAA04n4E0V8o6OG_AA9pq6VyAA05r2E5S5VGTG5AKy_xq_GAKy_q0_q1_GAE0gI0Vyq2_q3_GSbSHRzSHR0_SHR2_Ri__Ri0__Ri_1_Ri0_1_Ri_3_Ri0_3_r4_lyArwrwrWIsgnnld_A2_yArWGTf1cn_n0tde8Support9m23PAAE4sortyys7KeyPathCy5s21Qzqd__GSzRd__lFSbAA17gijkzl3Vy_x2J7c36Oy0N0QzGAHG_AsA0iJ0VyArHGztXEfU_AA04N9J0V_SiTG5s7KeyPathCyAWSiGTf1ncn_nTf4nng_n(v25 + 64, v2, KeyPath);

      v5 = *v2;
      v26 = **v2 + 88 * v24;
      specialized Array.append<A>(contentsOf:)(*(v26 + 64), *(v26 + 72));
      v8 = v30;
    }

    while (*(v30 + 16));
  }

LABEL_30:
}

Swift::Void __swiftcall Aggregate.sort(method:)(SwiftUITracingSupport::AggregateContainer::Method method)
{
  v3 = v2;
  v4 = v1;
  KeyPath = swift_getKeyPath();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();
  Aggregate.sort<A>(_:)(KeyPath, v4, v3, v6);
}

uint64_t Aggregate.deallocate()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = (*(a2 + 104))(v13, a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for UnsafeTree(0, v8, v9, WitnessTable);
  a3(v11);
  return v4(v13, 0);
}

uint64_t closure #1 in Aggregate.children(for:within:)@<X0>(int *a1@<X0>, _DWORD *a4@<X8>)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  result = swift_getWitnessTable();
  *a4 = v5;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Aggregate.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[3];
  v9 = a1[4];
  v14 = *(a1 + 20);
  (*(a3 + 112))(&v20, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  swift_getWitnessTable();
  v15[0] = v5;
  v15[1] = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v14;
  return (*(a3 + 200))(&v20, v15, a2, a3);
}

uint64_t Aggregate.stats(for:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AggregateTreeElement(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v11 = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v14 = v7;
  a4[3] = v11;
  a4[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
  return Aggregate.stats(for:)(&v14, a2, a3, boxed_opaque_existential_1Tm);
}

uint64_t Aggregate.stats(for:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v12 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for UnsafeTree.Node(0, v11, v12, WitnessTable);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  v18 = *a1;
  (*(a3 + 88))(&v21, a2, a3);
  (*(v15 + 16))(v17, *v21 + *(v15 + 72) * v18, v14);
  return (*(*(v12 - 8) + 32))(a4, &v17[*(v14 + 48)], v12);
}

uint64_t closure #1 in Aggregate.sort(_:)(unsigned int *a1, unsigned int *a2, uint64_t **a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v33 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for UnsafeTree.Node(0, v13, v33, WitnessTable);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = *a1;
  v23 = *a2;
  v24 = **a3;
  v25 = *(v16 + 16);
  v26 = *(v16 + 72);
  v25(&v33 - v20, v24 + v26 * v22, v15);
  v27 = *(v15 + 48);
  v25(v19, v24 + v26 * v23, v15);
  v28 = *(v15 + 48);
  LOBYTE(v26) = v34(&v21[v27], &v19[v28]);
  v29 = *(*(v33 - 8) + 8);
  v30 = &v19[v28];
  v31 = v33;
  v29(v30);
  (v29)(&v21[v27], v31);
  return v26 & 1;
}

uint64_t Aggregate.sort<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a1;
  v5 = v4;
  v6 = (*(a3 + 104))(v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v5 + *MEMORY[0x277D84DE8]);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for UnsafeTree(0, v10, v11, WitnessTable);
  UnsafeTree.sort(_:)(partial apply for closure #1 in Aggregate.sort<A>(_:), v15, v13);
  return v6(v16, 0);
}

BOOL specialized closure #1 in Aggregate.sort<A>(_:)(unsigned int a1, unsigned int a2, void **a3, uint64_t a4)
{
  v5 = *a3;
  memmove(__dst, (**a3 + 88 * a1), 0x54uLL);
  swift_getAtKeyPath();
  memmove(v8, (*v5 + 88 * a2), 0x54uLL);
  swift_getAtKeyPath();
  return v7 < v9;
}

uint64_t closure #1 in Aggregate.sort<A>(_:)(unsigned int *a1, unsigned int *a2, void **a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a4;
  v10 = (*a4 + *MEMORY[0x277D84DE8]);
  v43 = v10[1];
  v44 = *(v43 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v18 = *v10;
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for UnsafeTree.Node(0, v17, v18, WitnessTable);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v39 - v25;
  v27 = *a1;
  v40 = *a2;
  v28 = *a3;
  v29 = *(v21 + 16);
  v30 = *(v21 + 72);
  v29(&v39 - v25, **a3 + v30 * v27, v20);
  v31 = *(v20 + 48);
  swift_getAtKeyPath();
  v32 = *(*(v18 - 8) + 8);
  v32(&v26[v31]);
  v29(v24, *v28 + v30 * v40, v20);
  v33 = *(v20 + 48);
  v34 = v42;
  swift_getAtKeyPath();
  (v32)(&v24[v33], v18);
  v35 = v41;
  v36 = v43;
  LOBYTE(v24) = dispatch thunk of static Comparable.> infix(_:_:)();
  v37 = *(v44 + 8);
  v37(v34, v36);
  v37(v35, v36);
  return v24 & 1;
}

uint64_t key path getter for Aggregate_StatsProtocol.selfWeight : <A>A.Stats@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 48);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t key path getter for Aggregate_StatsProtocol.weight : <A>A.Stats@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t key path getter for Aggregate_StatsProtocol.count : <A>A.Stats@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t specialized Aggregate<>.describe(ref:state:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = v2[1];
  v33 = *v2;
  v34[0] = v5;
  *(v34 + 9) = *(v2 + 25);
  v6 = 0xE000000000000000;
  v31 = 0;
  v32 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v7 = **v2 + 88 * a1, v8 = *(v7 + 76), v8))
  {
    v9 = *(v7 + 64);
    if (!v9)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((v32 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v13 = Character.isWhitespace.getter();

        if ((v13 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v36[2] = v33;
      v37[0] = v34[0];
      *(v37 + 9) = *(v34 + 9);
      v10 = specialized Aggregate<>.describe(ref:state:)(v11, a2);
      MEMORY[0x26D69CDB0](v10);

      --v8;
    }

    while (v8);
    v14 = v31;
    v6 = v32;
  }

  else
  {
    v14 = 0;
  }

  if ((v6 & 0xF00000000000000) != 0)
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    strcpy(v30, "(node name ");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    LODWORD(v28) = v4;
    if (*(a2 + 41) == 1)
    {
      v15 = *(a2 + 40);
      *&v35 = *(a2 + 32);
      BYTE8(v35) = v15;
      *&v35 = ViewTree.displayName(for:within:)(&v28, &v35);
      *(&v35 + 1) = v16;
      v28 = 34;
      v29 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v19 = v18;

      MEMORY[0x26D69CDB0](v17, v19);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v35 = v33;
      v36[0] = v34[0];
      *(v36 + 9) = *(v34 + 9);
      v20 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v20);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v14, v6);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v30[0];
    }
  }

  else
  {

    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(v30, "(node name ");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    LODWORD(v28) = v4;
    if (*(a2 + 41) == 1)
    {
      v21 = *(a2 + 40);
      *&v35 = *(a2 + 32);
      BYTE8(v35) = v21;
      *&v35 = ViewTree.displayName(for:within:)(&v28, &v35);
      *(&v35 + 1) = v22;
      v28 = 34;
      v29 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      MEMORY[0x26D69CDB0](v23, v25);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v35 = v33;
      v36[0] = v34[0];
      *(v36 + 9) = *(v34 + 9);
      v26 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v26);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a1;
  v5 = 0xE000000000000000;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v6 = **v2 + 88 * a1, v7 = *(v6 + 76), v7))
  {
    v8 = *(v6 + 64);
    if (!v8)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v11 = *v8++;
      v10 = v11;
      if ((v25 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v12 = Character.isWhitespace.getter();

        if ((v12 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v9 = specialized Aggregate<>.describe(ref:state:)(v10, a2);
      MEMORY[0x26D69CDB0](v9);

      --v7;
    }

    while (v7);
    v13 = v24;
    v5 = v25;
  }

  else
  {
    v13 = 0;
  }

  if ((v5 & 0xF00000000000000) != 0)
  {
    _StringGuts.grow(_:)(29);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(v4, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v15;

      MEMORY[0x26D69CDB0](v14, v16);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v17 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v17);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v13, v5);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v23[0];
    }
  }

  else
  {

    _StringGuts.grow(_:)(26);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(v4, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v20 = v19;

      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v21 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v21);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = a1;
  v5 = 0xE000000000000000;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (*(a2 + 16) == 3 && (v6 = **(v2 + 8) + 88 * a1, v7 = *(v6 + 76), v7))
  {
    v8 = *(v6 + 64);
    if (!v8)
    {
      __break(1u);
      goto LABEL_18;
    }

    do
    {
      v11 = *v8++;
      v10 = v11;
      if ((v25 & 0xF00000000000000) != 0)
      {
        String.index(before:)();
        String.subscript.getter();
        v12 = Character.isWhitespace.getter();

        if ((v12 & 1) == 0)
        {
          MEMORY[0x26D69CDB0](10, 0xE100000000000000);
        }
      }

      v9 = specialized Aggregate<>.describe(ref:state:)(v10, a2);
      MEMORY[0x26D69CDB0](v9);

      --v7;
    }

    while (v7);
    v13 = v24;
    v5 = v25;
  }

  else
  {
    v13 = 0;
  }

  if ((v5 & 0xF00000000000000) != 0)
  {
    _StringGuts.grow(_:)(29);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(v4, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v16 = v15;

      MEMORY[0x26D69CDB0](v14, v16);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v17 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v17);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v13, v5);
LABEL_16:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v23[0];
    }
  }

  else
  {

    _StringGuts.grow(_:)(26);

    strcpy(v23, "(node name ");
    BYTE5(v23[1]) = 0;
    HIWORD(v23[1]) = -5120;
    if (*(a2 + 41) == 1)
    {
      specialized Aggregate<>.displayName(for:within:)(v4, *(a2 + 32), *(a2 + 40));
      lazy protocol witness table accessor for type String and conformance String();
      v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v20 = v19;

      MEMORY[0x26D69CDB0](v18, v20);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      v21 = specialized Aggregate.displayWeight(for:within:)(v4);
      MEMORY[0x26D69CDB0](v21);
      goto LABEL_16;
    }
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Aggregate<>.describe(ref:state:)(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *a1;
  v43 = *a2;
  v7 = *(a2 + 16);
  v42 = *(a2 + 3);
  v46 = *(a2 + 4);
  v47 = *(a2 + 40);
  v45 = *(a2 + 41);
  v8 = 0xE000000000000000;
  v60 = 0;
  v61 = 0xE000000000000000;
  v41 = v6;
  if (v7 == 3)
  {
    (*(a4 + 88))(&v62, a3, a4);
    v9 = *v62;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for AggregateTreeElement(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
    v14 = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for UnsafeTreeNodeRef.Typed(0, v13, v14, WitnessTable);
    v16 = type metadata accessor for UnsafeTree.Node(0, v13, v14, WitnessTable);
    v17 = v9 + *(*(v16 - 8) + 72) * v6 + *(v16 + 52);
    v18 = *v17;
    v19 = *(v17 + 12);
    v20 = UnsafeArray.endIndex.getter(*v17, *(v17 + 8) | (v19 << 32));
    if (v20)
    {
      v21 = v20;
      v22 = v4;
      v23 = v18;
      while (v19)
      {
        if (!v18)
        {
          goto LABEL_25;
        }

        v25 = *v23;
        v26 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v26 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          String.index(before:)();
          String.subscript.getter();
          v27 = Character.isWhitespace.getter();

          if ((v27 & 1) == 0)
          {
            MEMORY[0x26D69CDB0](10, 0xE100000000000000);
          }
        }

        LODWORD(v58) = v25;
        v48 = v43;
        v49 = 3;
        v50 = v42;
        v51 = v46;
        v52 = v47;
        v53 = v45;
        v24 = (*(v22 + 200))(&v58, &v48, a3, v22);
        MEMORY[0x26D69CDB0](v24);

        --v19;
        ++v23;
        if (!--v21)
        {
          v28 = v60;
          v8 = v61;
          v4 = v22;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v28 = 0;
    v8 = 0xE000000000000000;
LABEL_15:
    LODWORD(v6) = v41;
  }

  else
  {
    v28 = 0;
  }

  v29 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v44 = v28;
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    strcpy(&v48, "(node name ");
    BYTE13(v48) = 0;
    HIWORD(v48) = -5120;
    LODWORD(v56) = v6;
    if (v45 == 1)
    {
      v58 = v46;
      LOBYTE(v59) = v47;
      v58 = (*(v4 + 168))(&v56, &v58, a3, v4);
      v59 = v30;
      v56 = 34;
      v57 = 0xE100000000000000;
      v54 = 0;
      v55 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v33 = v32;

      MEMORY[0x26D69CDB0](v31, v33);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      LODWORD(v56) = v41;
      v58 = v46;
      LOBYTE(v59) = v47;
      v34 = (*(v4 + 176))(&v56, &v58, a3, v4);
      MEMORY[0x26D69CDB0](v34);

      MEMORY[0x26D69CDB0](10, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v44, v8);
LABEL_23:

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      return v48;
    }
  }

  else
  {

    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(&v48, "(node name ");
    BYTE13(v48) = 0;
    HIWORD(v48) = -5120;
    LODWORD(v56) = v6;
    if (v45 == 1)
    {
      v58 = v46;
      LOBYTE(v59) = v47;
      v58 = (*(v4 + 168))(&v56, &v58, a3, v4);
      v59 = v35;
      v56 = 34;
      v57 = 0xE100000000000000;
      v54 = 0;
      v55 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v38 = v37;

      MEMORY[0x26D69CDB0](v36, v38);

      MEMORY[0x26D69CDB0](0x7468676965772022, 0xE900000000000020);
      LODWORD(v56) = v6;
      v58 = v46;
      LOBYTE(v59) = v47;
      v39 = (*(v4 + 176))(&v56, &v58, a3, v4);
      MEMORY[0x26D69CDB0](v39);
      goto LABEL_23;
    }
  }

LABEL_26:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SnapshotAccessor.init(interpreter:index:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t specialized Aggregate<>.displayName(for:within:)(unsigned int a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  result = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v3 + 8) + 16) + (*(**(v3 + 8) + 88 * a1) << 6);
  v17 = *v16;
  if (!*v16)
  {
    return 1953460050;
  }

  v18 = *(v16 + 32);
  v19 = *(v16 + 24);
  v32 = *v16;
  v20 = *(v16 + 8);
  v33 = v20;
  v34 = v19;
  v35 = v18;
  if (*(a2 + 116) <= a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = *(a2 + 104);
  if (!v21)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v22 = *(v21 + 8 * a3);
  if ((*(v22 + 4) & 1) == 0)
  {
    v28 = v13;
    v29 = result;
    v30 = v20;
    os_unfair_lock_lock_with_options();
    *(v22 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v27 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_912;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v26;
    v24 = v27;
    MEMORY[0x26D69D2D0](0, v15, v10, v26);
    _Block_release(v25);

    (*(v8 + 8))(v10, v7);
    (*(v28 + 8))(v15, v29);
    *&v20 = v30;
  }

  return (*(v20 + 24))(&v32, *(v22 + 8), v17);
}

{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  result = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v3 + 16) + (*(**v3 + 88 * a1) << 6);
  v17 = *v16;
  if (!*v16)
  {
    return 1953460050;
  }

  v18 = *(v16 + 32);
  v19 = *(v16 + 24);
  v32 = *v16;
  v20 = *(v16 + 8);
  v33 = v20;
  v34 = v19;
  v35 = v18;
  if (*(a2 + 116) <= a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = *(a2 + 104);
  if (!v21)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v22 = *(v21 + 8 * a3);
  if ((*(v22 + 4) & 1) == 0)
  {
    v28 = v13;
    v29 = result;
    v30 = v20;
    os_unfair_lock_lock_with_options();
    *(v22 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v27 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_889;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v26;
    v24 = v27;
    MEMORY[0x26D69D2D0](0, v15, v10, v26);
    _Block_release(v25);

    (*(v8 + 8))(v10, v7);
    (*(v28 + 8))(v15, v29);
    *&v20 = v30;
  }

  return (*(v20 + 24))(&v32, *(v22 + 8), v17);
}

uint64_t Aggregate<>.displayName(for:within:)(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  v13 = *(a2 + 8);
  (*(a4 + 88))(&v45, a3, a4);
  v14 = v45[2];
  v15 = *v45;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMd, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMR);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type AggregateTreeElement<Event.Id> and conformance AggregateTreeElement<A>, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMd, &_s21SwiftUITracingSupport20AggregateTreeElementOyAA5EventV2IdVGMR, &protocol conformance descriptor for AggregateTreeElement<A>);
  v19 = type metadata accessor for UnsafeTree.Node(0, v16, AssociatedTypeWitness, v18);
  v21 = *(v19 - 8);
  result = v19 - 8;
  v22 = (v14 + (*(v15 + *(v21 + 72) * v11) << 6));
  v23 = *v22;
  if (!*v22)
  {
    return 1953460050;
  }

  v24 = *(v22 + 8);
  v25 = v22[3];
  v46 = *v22;
  v26 = *(v22 + 1);
  v47 = v26;
  v48 = v25;
  v49 = v24;
  if (*(v12 + 116) <= v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v27 = *(v12 + 104);
  if (!v27)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v28 = *(v27 + 8 * v13);
  if ((*(v28 + 4) & 1) == 0)
  {
    v37 = v26;
    os_unfair_lock_lock_with_options();
    *(v28 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v36 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    aBlock[4] = partial apply for specialized closure #1 in Atomic.subscript.read;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v30 = _Block_copy(aBlock);

    v31 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v32 = v40;
    v33 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v36;
    MEMORY[0x26D69D2D0](0, v31, v32, v30);
    _Block_release(v30);

    (*(v42 + 8))(v32, v33);
    (*(v39 + 8))(v31, v41);
    *&v26 = v37;
  }

  return (*(v26 + 24))(&v46, *(v28 + 8), v23);
}

__n128 CauseEffect.init()@<Q0>(uint64_t a1@<X8>)
{
  v8 = 0uLL;
  v9 = 0;
  v10 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = v2;
  v12 = v3;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA09AggregateE7ElementOyAA5EventV2IdVG_AA9MergeOnceVyAA0kE5StatsVGTt0B5(&v8, v6);
  *&v5[4] = v6[0];
  *&v5[20] = v6[1];
  *&v5[36] = v7;
  *a1 = 0;
  *(a1 + 4) = *v5;
  *(a1 + 20) = *&v5[16];
  result = *&v5[28];
  *(a1 + 32) = *&v5[28];
  *(a1 + 48) = 0;
  return result;
}

double CauseEffect.tree.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 24) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

__n128 CauseEffect.tree.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

void CauseEffect.addTime(rootedAt:partial:within:)(void *result, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v64 = a3[9];
  v65 = v4;
  v66 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v62[5] = a3[5];
  v62[6] = v7;
  v62[7] = v8;
  v63 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v62[1] = a3[1];
  v62[2] = v10;
  v62[3] = v11;
  v62[4] = v9;
  v67 = *(a3 + 192);
  v62[0] = v12;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v66;
  v14 = LOBYTE(v62[0]);
  if (LOBYTE(v62[0]) >= *(v66 + 116))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = *(v66 + 104);
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = *(*(v15 + 8 * LOBYTE(v62[0])) + 8);
  if (*(v16 + 44) <= result)
  {
    goto LABEL_27;
  }

  v17 = *(v16 + 32);
  if (!v17)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = (v17 + (result << 7));
  v19 = *(v18 + 31) + 1;
  v20 = *(v18 + 14);
  while (--v19)
  {
    if (!*(v18 + 14))
    {
      goto LABEL_31;
    }

    v21 = *v20;
    v20 += 4;
    if ((v21 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v23 = *(v3 + 8);
  v22 = v3 + 8;
  if (*(v23 + 12) <= 0x98967Fu)
  {
    v52 = v22;
    v51 = result;
    v24 = v18[1];
    v75 = *v18;
    v76 = v24;
    v25 = v18[5];
    v79 = v18[4];
    v80 = v25;
    v26 = v18[7];
    v81 = v18[6];
    v82 = v26;
    v27 = v18[3];
    v77 = v18[2];
    v78 = v27;
    LOBYTE(v60) = BYTE8(v76);
    v28 = 256;
    if (!BYTE9(v76))
    {
      v28 = 0;
    }

    v29 = v28 | (HIDWORD(v76) << 32);
    v30 = HeterogeneousBuffer.type(at:)(0, *(&v75 + 1), v76, v28 | v60, v77);
    v31 = swift_conformsToProtocol2();
    if (!v31)
    {
      goto LABEL_35;
    }

    v32 = v31;
    v33 = HeterogeneousBuffer.index(after:)(0, *(&v75 + 1), v76, v29 | BYTE8(v76), v77);
    LOBYTE(v60) = BYTE8(v76);
    v34 = HeterogeneousBuffer.type(at:)(v33, *(&v75 + 1), v76, v29 | BYTE8(v76), v77);
    v35 = swift_conformsToProtocol2();
    if (!v35)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    project #1 <A, B>(_:_:) in Event.id.getter(v34, &v75, v30, v32, v35, &v56);
    if (v14 < *(v13 + 116))
    {
      v36 = *(v13 + 104);
      if (!v36)
      {
LABEL_37:
        __break(1u);
        return;
      }

      v37 = v56;
      v38 = v58;
      v39 = *(v36 + 8 * v14);
      v40 = v59;
      v50 = v57;
      v41 = (*(v57 + 32))(&v56, *(v39 + 8), v56);
      EventTreeStats.init(from:within:)(a2, a3, &v60);
      if ((*(&v63 + 1) & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(*(&v63 + 1)))
        {
          v61 = DWORD2(v63);
          v69 = v50;
          v68 = v37;
          v70 = v38;
          v71 = v40;
          v42 = *(v52 + 16);
          v72 = *v52;
          v73 = v42;
          v74 = *(v52 + 32);
          v44 = specialized UnsafeTree.subjectsMap.read(v55);
          if (*(v43 + 16) && (v45 = v43, v46 = specialized __RawDictionaryStorage.find<A>(_:)(&v68), (v47 & 1) != 0))
          {
            v48 = *(*(v45 + 56) + 4 * v46);
            (v44)(v55, 0);
            v49 = v48;
          }

          else
          {
            (v44)(v55, 0);
            specialized UnsafeTree.new(element:identity:)(&v68, v41, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v55);
            v49 = LODWORD(v55[0]);
          }

          specialized UnsafeTree<>.add(_:to:at:)(&v60, v49, v52, v62, v51);
          return;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }
}

void *MergeOnce<>.init(from:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v4;
  v5 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v5;
  v6 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v6;
  v7 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v7;
  v8 = *(a2 + 160);
  v18 = *(a2 + 144);
  v19 = v8;
  v9 = *(a2 + 176);
  v21 = *(a2 + 192);
  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  v20 = v9;
  v16 = v10;
  v17 = v11;
  result = EventTreeStats.init(from:within:)(a1, v15, v22);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    v13 = v22[1];
    v14 = v23;
    *a3 = v22[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v11;
    return result;
  }

  __break(1u);
  return result;
}

void closure #1 in CauseEffect.addTime(rootedAt:partial:within:)(__int128 *result, unsigned __int8 *a2, unsigned int a3)
{
  if (a2[48])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v3 = *(a2 + 22);
  v4 = *a2;
  if (v4 >= *(v3 + 116))
  {
    goto LABEL_66;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v7 = *(*(v5 + 8 * v4) + 8);
  if (*(v7 + 44) <= a3)
  {
    goto LABEL_67;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v10 = v8 + (a3 << 7);
  v11 = *(v10 + 112);
  v12 = *(v10 + 120);
  v13 = *(v10 + 124);
  v14 = v13 + 1;
  v15 = v11;
  while (--v14)
  {
    if (!v11)
    {
      goto LABEL_73;
    }

    v16 = *v15;
    v15 += 4;
    if ((v16 & 0x8004) == 4)
    {
      v17 = 16388;
      goto LABEL_12;
    }
  }

  v17 = 16448;
LABEL_12:
  if (Event.RelativesSequnece.isEmpty.getter(v11, v12 | (v13 << 32), v17))
  {
    if (v4 >= *(v3 + 116))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v18 = *(v3 + 104);
    if (!v18)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v19 = *(*(v18 + 8 * v4) + 8);
    if (*(v19 + 44) <= a3)
    {
      goto LABEL_69;
    }

    v20 = *(v19 + 32);
    if (!v20)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v21 = v20 + (a3 << 7);
    v11 = *(v21 + 112);
    v13 = *(v21 + 124);
    v17 = 19459;
  }

  if (v13)
  {
    v22 = 0;
    v23 = v17 & 0x1FFF;
    v73 = v3;
    v74 = v11 + 4;
    v71 = v11;
    v72 = v4;
    v70 = v13;
    v69 = v23;
    while (v22 < v13)
    {
      if (!v11)
      {
        goto LABEL_72;
      }

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_62;
      }

      v25 = 8 * v22;
      v26 = *(v11 + 8 * v22++);
      if (v26 < 0 || v23 && (v23 & v26) == 0)
      {
        if (v24 == v13)
        {
          return;
        }
      }

      else
      {
        if (*(v3 + 116) <= v4)
        {
          goto LABEL_63;
        }

        v27 = *(v3 + 104);
        if (!v27)
        {
          goto LABEL_74;
        }

        v28 = *(v74 + v25);
        v29 = *(*(v27 + 8 * v4) + 8);
        if (v28 >= *(v29 + 44))
        {
          goto LABEL_64;
        }

        v30 = *(v29 + 32);
        if (!v30)
        {
          goto LABEL_76;
        }

        v31 = (v30 + (v28 << 7));
        v32 = v31[1];
        v88 = *v31;
        v89 = v32;
        v33 = v31[5];
        v92 = v31[4];
        v93 = v33;
        v34 = v31[7];
        v94 = v31[6];
        v95 = v34;
        v35 = v31[3];
        v90 = v31[2];
        v91 = v35;
        v36 = *(&v88 + 1);
        v37 = v89;
        v38 = BYTE8(v89);
        v39 = v90;
        LOBYTE(v76[0]) = BYTE8(v89);
        v40 = 256;
        if (!BYTE9(v89))
        {
          v40 = 0;
        }

        v41 = v40 | (HIDWORD(v89) << 32);
        v42 = HeterogeneousBuffer.type(at:)(0, *(&v88 + 1), v89, v40 | BYTE8(v89), v90);
        v43 = swift_conformsToProtocol2();
        if (!v43)
        {
          goto LABEL_75;
        }

        v44 = v43;
        LOBYTE(v76[0]) = v38;
        v45 = HeterogeneousBuffer.index(after:)(0, v36, v37, v41 | v38, v39);
        LOBYTE(v76[0]) = v38;
        v46 = HeterogeneousBuffer.type(at:)(v45, v36, v37, v41 | v38, v39);
        v47 = swift_conformsToProtocol2();
        if (!v47)
        {
          goto LABEL_77;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v46, &v88, v42, v44, v47, &v77);
        v4 = v72;
        v3 = v73;
        if (*(v73 + 116) <= v72)
        {
          goto LABEL_65;
        }

        v48 = *(v73 + 104);
        if (!v48)
        {
          goto LABEL_78;
        }

        v49 = v77;
        v75 = v78;
        v50 = v79;
        v51 = v80;
        v52 = (*(v78 + 32))(&v77, *(*(v48 + 8 * v72) + 8), v77);
        v81 = v49;
        v82 = v75;
        v83 = v50;
        v84 = v51;
        v53 = result[1];
        v85 = *result;
        v86 = v53;
        v87 = *(result + 4);
        v55 = specialized UnsafeTree.subjectsMap.read(v76);
        if (*(v54 + 16) && (v56 = v54, v57 = specialized __RawDictionaryStorage.find<A>(_:)(&v81), (v58 & 1) != 0))
        {
          v59 = *(*(v56 + 56) + 4 * v57);
          (v55)(v76, 0);
        }

        else
        {
          (v55)(v76, 0);
          specialized UnsafeTree.new(element:identity:)(&v81, v52, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v76);
          v59 = LODWORD(v76[0]);
        }

        v60 = *(v85 + 16) + (v59 << 6);
        v61 = *(v60 + 48);
        v62 = *(v60 + 60);
        if (v62 + HIDWORD(v87) >= v87)
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * (v62 + v87));
        }

        if (v62)
        {
          if (!v61)
          {
            goto LABEL_79;
          }

          while (1)
          {
            v64 = *v61++;
            v63 = v64;
            v65 = *(result + 9);
            if (v65 == *(result + 8))
            {
              v66 = 2 * v65;
              if (!v65)
              {
                v66 = 1;
              }

              if (HIDWORD(v66))
              {
                goto LABEL_60;
              }

              v67 = *(result + 3);
              *(result + 8) = v66;
              if (v67)
              {
                v68 = realloc(v67, 4 * v66);
                if (!v68)
                {
                  goto LABEL_71;
                }

                *(result + 3) = v68;
              }

              else
              {
                v68 = swift_slowAlloc();
                *(result + 3) = v68;
                if (!v68)
                {
                  goto LABEL_70;
                }
              }
            }

            else
            {
              v68 = *(result + 3);
              if (!v68)
              {
                goto LABEL_70;
              }
            }

            *(v68 + 4 * v65) = v63;
            if (v65 == -1)
            {
              break;
            }

            *(result + 9) = v65 + 1;
            if (!--v62)
            {
              goto LABEL_57;
            }
          }

          __break(1u);
LABEL_60:
          __break(1u);
          break;
        }

LABEL_57:
        v13 = v70;
        v11 = v71;
        v23 = v69;
        if (v24 == v70)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }
}

double protocol witness for Aggregate.tree.getter in conformance CauseEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 24) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

__n128 protocol witness for Aggregate.tree.setter in conformance CauseEffect(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t protocol witness for Aggregate.displayName(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = v2[2];
  v12 = *(v2 + 48);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate<>.displayName(for:within:)(v3, v6, v7);
}

{
  return specialized Aggregate<>.displayName(for:within:)(*a1, *a2, *(a2 + 8));
}

uint64_t protocol witness for Aggregate.displayWeight(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  v9 = v2[2];
  v10 = *(v2 + 48);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate.displayWeight(for:within:)(v3);
}

uint64_t protocol witness for Aggregate.appendSelection(for:within:to:) in conformance CauseEffect(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Aggregate_AccessorProtocol(a2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for Aggregate.weight(for:within:) in conformance CauseEffect(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return *(*v4 + 88 * v3 + 24);
}

uint64_t protocol witness for Aggregate.describe(ref:state:) in conformance CauseEffect(unsigned int *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  v7 = *a2;
  v8[0] = v4;
  *(v8 + 10) = *(a2 + 26);
  v5 = *(v2 + 16);
  v8[2] = *v2;
  v8[3] = v5;
  v8[4] = *(v2 + 32);
  v9 = *(v2 + 48);
  return specialized Aggregate<>.describe(ref:state:)(v3, &v7);
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance CauseEffect(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  v9 = v1[2];
  v10 = *(v1 + 48);
  return specialized Aggregate<>.describe(ref:state:)(v7, &v5);
}

void *protocol witness for Clonable.copy() in conformance CauseEffect()
{
  v1 = *(v0 + 8);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 12);
    v4 = swift_slowAlloc();
    *v1 = v4;
    memcpy(v4, v2, 88 * v3);
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 28);
    v7 = swift_slowAlloc();
    *(v1 + 16) = v7;
    memcpy(v7, v5, v6 << 6);
  }

  *(v1 + 32) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v8);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v0 + 28);
    v11 = swift_slowAlloc();
    *(v0 + 16) = v11;
    memcpy(v11, v9, 4 * v10);
  }

  v12 = *(v0 + 32);
  if (v12)
  {
    v13 = *(v0 + 44);
    v14 = swift_slowAlloc();
    *(v0 + 32) = v14;
    memcpy(v14, v12, 4 * v13);
  }

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v15);
  *(v1 + 40) = result;
  return result;
}

__n128 UpdateStack.tree.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

void UpdateStack.addTime(rootedAt:partial:within:)(void *result, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v70 = a3[9];
  v71 = v4;
  v72 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v68[5] = a3[5];
  v68[6] = v7;
  v68[7] = v8;
  v69 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v68[1] = a3[1];
  v68[2] = v10;
  v68[3] = v11;
  v68[4] = v9;
  v73 = *(a3 + 192);
  v68[0] = v12;
  if (v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v13 = v72;
  if (LOBYTE(v68[0]) >= *(v72 + 116))
  {
    goto LABEL_42;
  }

  v14 = *(v72 + 104);
  if (!v14)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = *(*(v14 + 8 * LOBYTE(v68[0])) + 8);
  if (*(v15 + 44) <= result)
  {
    goto LABEL_43;
  }

  v16 = *(v15 + 32);
  if (!v16)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = v3;
  v19 = (v16 + (result << 7));
  v20 = *(v19 + 31) + 1;
  v21 = *(v19 + 14);
  while (--v20)
  {
    if (!*(v19 + 14))
    {
      goto LABEL_49;
    }

    v22 = *v21;
    v21 += 4;
    if ((v22 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v58 = LOBYTE(v68[0]);
  v55 = result;
  v23 = v19[1];
  v81 = *v19;
  v82 = v23;
  v24 = v19[5];
  v85 = v19[4];
  v86 = v24;
  v25 = v19[7];
  v87 = v19[6];
  v88 = v25;
  v26 = v19[3];
  v83 = v19[2];
  v84 = v26;
  LOBYTE(v66) = BYTE8(v82);
  v27 = 256;
  if (!BYTE9(v82))
  {
    v27 = 0;
  }

  v28 = v27 | (HIDWORD(v82) << 32);
  v29 = HeterogeneousBuffer.type(at:)(0, *(&v81 + 1), v82, v27 | v66, v83);
  v57 = swift_conformsToProtocol2();
  if (!v57)
  {
    goto LABEL_54;
  }

  v30 = HeterogeneousBuffer.index(after:)(0, *(&v81 + 1), v82, v28 | BYTE8(v82), v83);
  LOBYTE(v66) = BYTE8(v82);
  v31 = HeterogeneousBuffer.type(at:)(v30, *(&v81 + 1), v82, v28 | BYTE8(v82), v83);
  v32 = swift_conformsToProtocol2();
  if (!v32)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v31, &v81, v29, v57, v32, &v62);
  if (v58 >= *(v13 + 116))
  {
    goto LABEL_44;
  }

  v33 = *(v13 + 104);
  if (!v33)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v34 = v62;
  v35 = v64;
  v36 = v65;
  v37 = *(*(v33 + 8 * v58) + 8);
  v59 = v63;
  v38 = (*(v63 + 32))(&v62, v37, v62);
  EventTreeStats.init(from:within:)(a2, a3, &v66);
  if ((*(&v69 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (HIDWORD(*(&v69 + 1)))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v67 = DWORD2(v69);
  v74 = v34;
  v75 = v59;
  v76 = v35;
  v77 = v36;
  v39 = *(v17 + 16);
  v78 = *v17;
  v79 = v39;
  v80 = *(v17 + 32);
  v41 = specialized UnsafeTree.subjectsMap.read(v61);
  if (*(v40 + 16) && (v42 = v40, v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v74), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + 4 * v43);
    (v41)(v61, 0);
  }

  else
  {
    (v41)(v61, 0);
    specialized UnsafeTree.new(element:identity:)(&v74, v38, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v61);
    v45 = LODWORD(v61[0]);
  }

  v46 = v78;
  if (!*(v78 + 12))
  {
    goto LABEL_47;
  }

  v47 = *(v17 + 40);
  v60 = v45;
  closure #1 in UpdateStack.addTime(rootedAt:partial:within:)(&v60, v17, v68, v55);
  if (!*(v46 + 12))
  {
    goto LABEL_48;
  }

  if (v47)
  {
    specialized UnsafeTree.add(child:to:default:)(v45, 0, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
    v48 = v60;
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v17 + 20);
  v50 = v48;
  if (v49)
  {
    v51 = 0;
    v52 = *(v17 + 8);
    v53 = v49 - 1;
    v50 = v48;
    while (1)
    {
      v54 = v47 ? v51 : v53;
      if (v54 >= v49)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_50;
      }

      specialized UnsafeTree.add(child:to:default:)(*(v52 + 4 * v54), v50, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
      v50 = v60;
      --v53;
      ++v51;
      if (v53 == -1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_36:
  if ((v47 & 1) == 0)
  {
    specialized UnsafeTree.add(child:to:default:)(v45, v50, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
    v48 = v60;
  }

  if (!v49 || *(v17 + 8))
  {
    *(v17 + 20) = 0;
    specialized UnsafeTree<>.merge(_:into:)(&v66, v48);
    return;
  }

LABEL_57:
  __break(1u);
}

void closure #1 in UpdateStack.addTime(rootedAt:partial:within:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a3[48])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v4 = *(a3 + 22);
  v5 = *a3;
  if (v5 >= *(v4 + 116))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v6 = *(v4 + 104);
  if (!v6)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = *(*(v6 + 8 * v5) + 8);
  v8 = *(v7 + 44);
  if (v8 <= a4)
  {
    goto LABEL_38;
  }

  v9 = *(v7 + 32);
  if (v9)
  {
    v10 = v9 + (a4 << 7);
    v11 = *(v10 + 112);
    v12 = *(v10 + 124) + 1;
    v13 = v11;
    while (--v12)
    {
      if (!v11)
      {
        goto LABEL_43;
      }

      v14 = v13 + 4;
      v15 = *v13 & 0x8200;
      v13 += 4;
      if (v15 == 512)
      {
        v16 = *(v14 - 1);
        if (v16 >= v8)
        {
LABEL_35:
          __break(1u);
          return;
        }

LABEL_11:
        v17 = v5;
        v59 = v16;
        v18 = (v9 + (v16 << 7));
        v19 = v18[1];
        v73 = *v18;
        v74 = v19;
        v20 = v18[5];
        v77 = v18[4];
        v78 = v20;
        v21 = v18[7];
        v79 = v18[6];
        v80 = v21;
        v22 = v18[3];
        v75 = v18[2];
        v76 = v22;
        v23 = *(&v73 + 1);
        v24 = v74;
        v25 = BYTE8(v74);
        v26 = v75;
        LOBYTE(v61[0]) = BYTE8(v74);
        if (BYTE9(v74))
        {
          v27 = 256;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27 | (HIDWORD(v74) << 32);
        v29 = HeterogeneousBuffer.type(at:)(0, *(&v73 + 1), v74, v27 | BYTE8(v74), v75);
        v30 = swift_conformsToProtocol2();
        if (!v30)
        {
          goto LABEL_49;
        }

        v31 = v30;
        LOBYTE(v61[0]) = v25;
        v32 = HeterogeneousBuffer.index(after:)(0, v23, v24, v28 | v25, v26);
        LOBYTE(v61[0]) = v25;
        v33 = HeterogeneousBuffer.type(at:)(v32, v23, v24, v28 | v25, v26);
        v34 = swift_conformsToProtocol2();
        if (!v34)
        {
          goto LABEL_48;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v33, &v73, v29, v31, v34, &v62);
        v5 = v17;
        if (*(v4 + 116) <= v17)
        {
          goto LABEL_39;
        }

        v35 = *(v4 + 104);
        if (!v35)
        {
          goto LABEL_51;
        }

        v36 = v62;
        v60 = v63;
        v37 = v64;
        v38 = v65;
        v39 = (*(v63 + 32))(&v62, *(*(v35 + 8 * v17) + 8), v62);
        v66 = v36;
        v67 = v60;
        v68 = v37;
        v69 = v38;
        v40 = a2[1];
        v70 = *a2;
        v71 = v40;
        v72 = *(a2 + 4);
        v42 = specialized UnsafeTree.subjectsMap.read(v61);
        if (*(v41 + 16) && (v43 = v41, v44 = specialized __RawDictionaryStorage.find<A>(_:)(&v66), (v45 & 1) != 0))
        {
          v46 = *(*(v43 + 56) + 4 * v44);
          (v42)(v61, 0);
        }

        else
        {
          (v42)(v61, 0);
          specialized UnsafeTree.new(element:identity:)(&v66, v39, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v61);
          v46 = v61[0];
        }

        if (DWORD1(v71) == v71)
        {
          specialized UnsafeArray.growToCapacity(_:)(2 * v71);
        }

        v47 = *(a2 + 1);
        if (v47)
        {
          v48 = *(a2 + 5);
          *(v47 + 4 * v48) = v46;
          if (v48 == -1)
          {
            goto LABEL_40;
          }

          *(a2 + 5) = v48 + 1;
          if (*(v4 + 116) <= v17)
          {
            goto LABEL_41;
          }

          v49 = *(v4 + 104);
          if (!v49)
          {
            goto LABEL_52;
          }

          v50 = *(*(v49 + 8 * v17) + 8);
          v51 = *(v50 + 44);
          if (v59 < v51)
          {
            v9 = *(v50 + 32);
            if (!v9)
            {
              goto LABEL_53;
            }

            v52 = v9 + (v59 << 7);
            v53 = *(v52 + 112);
            v54 = *(v52 + 124) + 1;
            v55 = v53;
            while (--v54)
            {
              if (!v53)
              {
                goto LABEL_44;
              }

              v56 = v55 + 4;
              v57 = *v55 & 0x8200;
              v55 += 4;
              if (v57 == 512)
              {
                v16 = *(v56 - 1);
                if (v16 < v51)
                {
                  goto LABEL_11;
                }

                goto LABEL_35;
              }
            }

            return;
          }

          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

    return;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

__n128 _s21SwiftUITracingSupport8ViewTreeVAA9AggregateA2aDP4treeAA06UnsafeE0VyAA0fE7ElementOy0I0QzG5StatsQzGvsTW_0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t protocol witness for Aggregate.displayName(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v9 = *v2;
  v10[0] = v4;
  *(v10 + 9) = *(v2 + 25);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate<>.displayName(for:within:)(v3, v6, v7);
}

{
  return specialized Aggregate<>.displayName(for:within:)(*a1, *a2, *(a2 + 8));
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UpdateStack(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return specialized Aggregate<>.describe(ref:state:)(0, &v5);
}

unint64_t ViewTree.displayName(for:within:)(unsigned int *a1, uint64_t *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v2 + 16) + (*(**v2 + 88 * *a1) << 6);
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  v17 = *(v14 + 24);
  if ((~(v16 & v15 & v17) & 0xF000000000000007) == 0)
  {
    return 1953460050;
  }

  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v19 == 3)
    {
      return 0x65726564726F6E55;
    }

    goto LABEL_36;
  }

  v20 = *a2;
  v21 = *(a2 + 8);
  v22 = *v14;
  v48 = v6;
  if (!v19)
  {
    v23 = *(v14 + 32);
    v49 = v22;
    v50 = v16;
    v51 = v15;
    v52 = v17;
    LODWORD(v53) = v23;
    if (*(v20 + 116) > v21)
    {
      v24 = *(v20 + 104);
      if (v24)
      {
        v25 = *(v24 + 8 * v21);
        if ((*(v25 + 4) & 1) == 0)
        {
          v46 = v11;
          v47 = v10;
          os_unfair_lock_lock_with_options();
          *(v25 + 4) = 1;
          type metadata accessor for OS_dispatch_queue();
          v45 = static OS_dispatch_queue.main.getter();
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          *&v57 = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v57 + 1) = v26;
          *&v55 = MEMORY[0x277D85DD0];
          *(&v55 + 1) = 1107296256;
          *&v56 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v56 + 1) = &block_descriptor_67;
          v44 = _Block_copy(&v55);

          static DispatchQoS.unspecified.getter();
          *&v55 = MEMORY[0x277D84F90];
          v43 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v28 = v44;
          v27 = v45;
          MEMORY[0x26D69D2D0](0, v13, v8, v44);
          _Block_release(v28);

          (*(v48 + 8))(v8, v5);
          (*(v46 + 8))(v13, v47);
        }

        return (*(v16 + 24))(&v49, *(v25 + 8), v22, v16);
      }

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (*(v20 + 116) <= v21)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = *(v20 + 104);
  if (!v29)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v11;
  v47 = v10;
  v30 = *(v29 + 8 * v21);
  if ((*(v30 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v30 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v45 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *&v57 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v57 + 1) = v31;
    *&v55 = MEMORY[0x277D85DD0];
    *(&v55 + 1) = 1107296256;
    *&v56 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v56 + 1) = &block_descriptor_74;
    v44 = _Block_copy(&v55);

    static DispatchQoS.unspecified.getter();
    *&v55 = MEMORY[0x277D84F90];
    v43 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v44;
    v32 = v45;
    MEMORY[0x26D69D2D0](0, v13, v8, v44);
    _Block_release(v33);

    (*(v48 + 8))(v8, v5);
    (*(v46 + 8))(v13, v47);
  }

  v34 = *(v30 + 8);
  if (HIDWORD(v22) >= *(v34 + 124))
  {
    goto LABEL_28;
  }

  v35 = *(v34 + 112);
  if (!v35)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v22 & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v36 = *(v35 + 168 * HIDWORD(v22));
  if (v22 >= *(v36 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v37 = (v36 + 208 * v22);
  v64 = v37[11];
  v65 = v37[12];
  v66 = v37[13];
  v67 = v37[14];
  v60 = v37[7];
  v61 = v37[8];
  v62 = v37[9];
  v63 = v37[10];
  v56 = v37[3];
  v57 = v37[4];
  v58 = v37[5];
  v59 = v37[6];
  v55 = v37[2];
  if (*(v20 + 116) <= v21)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v38 = *(v20 + 104);
  if (!v38)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v39 = *(v38 + 8 * v21);
  if ((*(v39 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v39 + 4) = 1;
    type metadata accessor for OS_dispatch_queue();
    v45 = static OS_dispatch_queue.main.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    v53 = closure #1 in Atomic.subscript.readspecialized partial apply;
    v54 = v40;
    v49 = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v52 = &block_descriptor_81;
    v41 = _Block_copy(&v49);

    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v45;
    MEMORY[0x26D69D2D0](0, v13, v8, v41);
    _Block_release(v41);

    (*(v48 + 8))(v8, v5);
    (*(v46 + 8))(v13, v47);
  }

  return specialized Tree.displayName(within:_:)(*(v39 + 8));
}

double UpdateStack.tree.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 24) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

double UpdateStack.init()@<D0>(void (*a1)(_OWORD *__return_ptr, void *)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  memset(v18, 0, 24);
  v18[3] = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v19 = v5;
  v20 = v6;
  a1(v12, v18);
  v7 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(v4);
  memset(v14, 0, 24);
  v14[3] = v7;
  v15 = v8;
  v16 = v9;
  v17 = 0;
  a1(v12, v14);
  result = *v12;
  v11 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  return result;
}

void ViewTree.TElement.hash(into:)()
{
  v1 = *v0;
  v2 = v0[3] >> 62;
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = *(v0 + 8);
      v4 = v0[2];
      MEMORY[0x26D69DBC0](0);
      Hasher.init()();
      MEMORY[0x26D69DBC0](v1);
      MEMORY[0x26D69DBC0](v4);
      v5 = Hasher.finalize()();
      MEMORY[0x26D69DBC0](v5);
      Hasher._combine(_:)(v3);
      return;
    }

    v6 = 1;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v6 = 3;
LABEL_7:
    MEMORY[0x26D69DBC0](v6);
    MEMORY[0x26D69DC00](v1);
    return;
  }

  MEMORY[0x26D69DBC0](2);
}

Swift::Int ViewTree.TElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ViewTree.TElement()
{
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ViewTree.TElement(uint64_t a1)
{
  Hasher.init(_seed:)();
  ViewTree.TElement.hash(into:)();
  return Hasher._finalize()();
}

void ViewTree.addTime(rootedAt:partial:within:)(void *result, unsigned int a2, __int128 *a3)
{
  v4 = a3[10];
  v5 = a3[11];
  v6 = a3[8];
  v70 = a3[9];
  v71 = v4;
  v72 = v5;
  v7 = a3[6];
  v8 = a3[7];
  v9 = a3[4];
  v68[5] = a3[5];
  v68[6] = v7;
  v68[7] = v8;
  v69 = v6;
  v10 = a3[2];
  v11 = a3[3];
  v12 = *a3;
  v68[1] = a3[1];
  v68[2] = v10;
  v68[3] = v11;
  v68[4] = v9;
  v73 = *(a3 + 192);
  v68[0] = v12;
  if (v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v13 = v72;
  if (LOBYTE(v68[0]) >= *(v72 + 116))
  {
    goto LABEL_42;
  }

  v14 = *(v72 + 104);
  if (!v14)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = *(*(v14 + 8 * LOBYTE(v68[0])) + 8);
  if (*(v15 + 44) <= result)
  {
    goto LABEL_43;
  }

  v16 = *(v15 + 32);
  if (!v16)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = v3;
  v19 = (v16 + (result << 7));
  v20 = *(v19 + 31) + 1;
  v21 = *(v19 + 14);
  while (--v20)
  {
    if (!*(v19 + 14))
    {
      goto LABEL_49;
    }

    v22 = *v21;
    v21 += 4;
    if ((v22 & 0x4200) == 0x200)
    {
      return;
    }
  }

  v58 = LOBYTE(v68[0]);
  v55 = result;
  v23 = v19[1];
  v81 = *v19;
  v82 = v23;
  v24 = v19[5];
  v85 = v19[4];
  v86 = v24;
  v25 = v19[7];
  v87 = v19[6];
  v88 = v25;
  v26 = v19[3];
  v83 = v19[2];
  v84 = v26;
  LOBYTE(v66) = BYTE8(v82);
  v27 = 256;
  if (!BYTE9(v82))
  {
    v27 = 0;
  }

  v28 = v27 | (HIDWORD(v82) << 32);
  v29 = HeterogeneousBuffer.type(at:)(0, *(&v81 + 1), v82, v27 | v66, v83);
  v57 = swift_conformsToProtocol2();
  if (!v57)
  {
    goto LABEL_54;
  }

  v30 = HeterogeneousBuffer.index(after:)(0, *(&v81 + 1), v82, v28 | BYTE8(v82), v83);
  LOBYTE(v66) = BYTE8(v82);
  v31 = HeterogeneousBuffer.type(at:)(v30, *(&v81 + 1), v82, v28 | BYTE8(v82), v83);
  v32 = swift_conformsToProtocol2();
  if (!v32)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v31, &v81, v29, v57, v32, &v62);
  if (v58 >= *(v13 + 116))
  {
    goto LABEL_44;
  }

  v33 = *(v13 + 104);
  if (!v33)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v34 = v62;
  v35 = v64;
  v36 = v65;
  v37 = *(*(v33 + 8 * v58) + 8);
  v59 = v63;
  v38 = (*(v63 + 32))(&v62, v37, v62);
  EventTreeStats.init(from:within:)(a2, a3, &v66);
  if ((*(&v69 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (HIDWORD(*(&v69 + 1)))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v67 = DWORD2(v69);
  v74 = v34;
  v75 = v59;
  v76 = v35;
  v77 = v36;
  v39 = *(v17 + 16);
  v78 = *v17;
  v79 = v39;
  v80 = *(v17 + 32);
  v41 = specialized UnsafeTree.subjectsMap.read(v61);
  if (*(v40 + 16) && (v42 = v40, v43 = specialized __RawDictionaryStorage.find<A>(_:)(&v74), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + 4 * v43);
    (v41)(v61, 0);
  }

  else
  {
    (v41)(v61, 0);
    specialized UnsafeTree.new(element:identity:)(&v74, v38, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v61);
    v45 = LODWORD(v61[0]);
  }

  v46 = v78;
  if (!*(v78 + 12))
  {
    goto LABEL_47;
  }

  v47 = *(v17 + 40);
  v60 = v45;
  closure #1 in ViewTree.addTime(rootedAt:partial:within:)(&v60, v17, v68, v55);
  if (!*(v46 + 12))
  {
    goto LABEL_48;
  }

  if (v47)
  {
    specialized UnsafeTree.add(child:to:default:)(v45, 0, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
    v48 = v60;
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v17 + 20);
  v50 = v48;
  if (v49)
  {
    v51 = 0;
    v52 = *(v17 + 8);
    v53 = v49 - 1;
    v50 = v48;
    while (1)
    {
      v54 = v47 ? v51 : v53;
      if (v54 >= v49)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_50;
      }

      specialized UnsafeTree.add(child:to:default:)(*(v52 + 4 * v54), v50, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
      v50 = v60;
      --v53;
      ++v51;
      if (v53 == -1)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_36:
  if ((v47 & 1) == 0)
  {
    specialized UnsafeTree.add(child:to:default:)(v45, v50, v17, specialized _NativeDictionary.setValue(_:forKey:isUnique:), &v60);
    v48 = v60;
  }

  if (!v49 || *(v17 + 8))
  {
    *(v17 + 20) = 0;
    specialized UnsafeTree<>.merge(_:into:)(&v66, v48);
    return;
  }

LABEL_57:
  __break(1u);
}

void closure #1 in ViewTree.addTime(rootedAt:partial:within:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a3[48])
  {
    goto LABEL_13;
  }

  v6 = *(a3 + 22);
  v7 = *a3;
  if (v7 >= *(v6 + 116))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v6 + 104);
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(*(v8 + 8 * v7) + 8);
  if (*(v9 + 44) <= a4)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = a2;
  v11 = (v10 + (a4 << 7));
  v12 = v11[5];
  v71 = v11[4];
  v72 = v12;
  v13 = v11[7];
  v73 = v11[6];
  v74 = v13;
  v14 = v11[1];
  v67 = *v11;
  v68 = v14;
  v15 = v11[3];
  v69 = v11[2];
  v70 = v15;
  v5 = Event.hasTree(within:)(v9);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v62[0] = xmmword_26C328DD0;
  v62[1] = vdupq_n_s64(0xF000000000000007);
  v63 = 0;
  v17 = v4[1];
  v64 = *v4;
  v65 = v17;
  v66 = *(v4 + 4);
  v19 = specialized UnsafeTree.subjectsMap.read(v53);
  if (*(v18 + 16) && (v20 = v18, v21 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 4 * v21);
    (v19)(v53, 0);
    v24 = 1;
  }

  else
  {
    (v19)(v53, 0);
    specialized UnsafeTree.new(element:identity:)(v62, 1, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v53);
    v23 = v53[0];
    v24 = 1;
  }

  while (1)
  {
    v43 = *(v4 + 5);
    if (v43 == *(v4 + 4))
    {
      specialized UnsafeArray.growToCapacity(_:)(2 * v43);
    }

    v44 = *(v4 + 1);
    if (!v44)
    {
      break;
    }

    v45 = *(v4 + 5);
    *(v44 + 4 * v45) = v23;
    if (v45 == -1)
    {
      goto LABEL_51;
    }

    *(v4 + 5) = v45 + 1;
    if (v24)
    {
      return;
    }

    if (v7 >= *(v6 + 116))
    {
      goto LABEL_55;
    }

    v46 = *(v6 + 104);
    if (!v46)
    {
      goto LABEL_65;
    }

    v47 = *(*(v46 + 8 * v7) + 8);
    if (HIDWORD(v5) >= *(v47 + 124))
    {
      goto LABEL_56;
    }

    v48 = *(v47 + 112);
    if (!v48)
    {
      goto LABEL_66;
    }

    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_57;
    }

    v49 = *(v48 + 168 * HIDWORD(v5));
    if (v5 >= *(v49 + 16))
    {
      goto LABEL_58;
    }

    v50 = (v49 + 208 * v5);
    v53[9] = v50[11];
    v53[10] = v50[12];
    v53[11] = v50[13];
    v53[12] = v50[14];
    v53[5] = v50[7];
    v53[6] = v50[8];
    v53[7] = v50[9];
    v53[8] = v50[10];
    v53[1] = v50[3];
    v53[2] = v50[4];
    v53[3] = v50[5];
    v53[4] = v50[6];
    v53[0] = v50[2];
    v54 = v47;
    v51 = specialized Tree.parent(_:within:unabstracting:)(16, &v54);
    if (v52)
    {
      return;
    }

    v5 = v51;
LABEL_16:
    if (v7 >= *(v6 + 116))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
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
LABEL_61:
      __break(1u);
      break;
    }

    v25 = *(v6 + 104);
    if (!v25)
    {
      goto LABEL_63;
    }

    v26 = *(*(v25 + 8 * v7) + 8);
    if (HIDWORD(v5) >= *(v26 + 124))
    {
      goto LABEL_52;
    }

    v27 = *(v26 + 112);
    if (!v27)
    {
      goto LABEL_64;
    }

    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_53;
    }

    v28 = *(v27 + 168 * HIDWORD(v5));
    if (v5 >= *(v28 + 16))
    {
      goto LABEL_54;
    }

    v29 = v28 + 32;
    v30 = *(v29 + 208 * v5 + 200);
    if (!v30 || (v23 = *v30, *(v30 + 4) == 1))
    {
      v31 = *(v29 + 208 * v5 + 24);
      v55 = v5;
      v56 = 0;
      v57 = 0x4000000000000000;
      v58 = 0;
      v32 = v4[1];
      v59 = *v4;
      v60 = v32;
      v61 = *(v4 + 4);
      v34 = specialized UnsafeTree.subjectsMap.read(v53);
      if (*(v33 + 16) && (v35 = v33, v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v55), (v37 & 1) != 0))
      {
        v23 = *(*(v35 + 56) + 4 * v36);
        (v34)(v53, 0);
      }

      else
      {
        (v34)(v53, 0);
        specialized UnsafeTree.new(element:identity:)(&v55, v31, specialized _NativeDictionary.setValue(_:forKey:isUnique:), v53);
        v23 = v53[0];
      }

      if (v7 >= *(v6 + 116))
      {
        goto LABEL_59;
      }

      v38 = *(v6 + 104);
      if (!v38)
      {
        goto LABEL_67;
      }

      v39 = *(*(v38 + 8 * v7) + 8);
      if (HIDWORD(v5) >= *(v39 + 124))
      {
        goto LABEL_60;
      }

      v40 = *(v39 + 112);
      if (!v40)
      {
        goto LABEL_68;
      }

      v41 = *(v40 + 168 * HIDWORD(v5));
      if (v5 >= *(v41 + 16))
      {
        goto LABEL_61;
      }

      v42 = *(v41 + 208 * v5 + 232);
      if (v42)
      {
        LOBYTE(v53[0]) = 0;
        *v42 = v23;
        *(v42 + 4) = 0;
      }
    }

    v24 = 0;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

unint64_t protocol witness for Aggregate.displayName(for:within:) in conformance ViewTree(unsigned int *a1, uint64_t a2)
{
  v5 = *a1;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return ViewTree.displayName(for:within:)(&v5, &v3);
}

uint64_t protocol witness for Aggregate.displayWeight(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[1];
  v7 = *v2;
  v8[0] = v4;
  *(v8 + 9) = *(v2 + 25);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return specialized Aggregate.displayWeight(for:within:)(v3);
}

uint64_t protocol witness for Aggregate.weight(for:within:) in conformance UpdateStack(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  outlined init with copy of Aggregate_AccessorProtocol(a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMd, &_s21SwiftUITracingSupport26Aggregate_AccessorProtocol_pMR);
  swift_dynamicCast();
  return *(*v4 + 88 * v3 + 24);
}

uint64_t protocol witness for Aggregate.describe(ref:state:) in conformance UpdateStack(unsigned int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int128 *, uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a2[1];
  v10 = *a2;
  v11[0] = v7;
  *(v11 + 10) = *(a2 + 26);
  v8 = v5[1];
  v11[2] = *v5;
  v12[0] = v8;
  *(v12 + 9) = *(v5 + 25);
  return a5(v6, &v10, a3, a4);
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance ViewTree(__int128 *a1)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = v1[1];
  v6[2] = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  return specialized Aggregate<>.describe(ref:state:)(0, &v5);
}

const void *protocol witness for Clonable.copy() in conformance UpdateStack(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = **v4;
  if (v8)
  {
    v9 = *(v7 + 3);
    v10 = swift_slowAlloc();
    *v7 = v10;
    memcpy(v10, v8, 88 * v9);
  }

  v11 = v7[2];
  if (v11)
  {
    v12 = *(v7 + 7);
    v13 = swift_slowAlloc();
    v7[2] = v13;
    memcpy(v13, v11, v12 << 6);
  }

  v7[4] = a3(v14);
  v15 = v4[1];
  if (v15)
  {
    v16 = *(v4 + 5);
    v17 = swift_slowAlloc();
    v4[1] = v17;
    memcpy(v17, v15, 4 * v16);
  }

  v18 = v4[3];
  if (v18)
  {
    v19 = *(v4 + 9);
    v20 = swift_slowAlloc();
    v4[3] = v20;
    memcpy(v20, v18, 4 * v19);
  }

  result = a4(v21);
  v7[5] = result;
  return result;
}

void *EventTreeStats.init(from:within:)@<X0>(unsigned int a1@<W0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[48];
  v7 = *(a2 + 22);
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5EventV2IdV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v6)
  {
    goto LABEL_9;
  }

  if (v5 >= *(v7 + 116))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v7 + 104);
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(*(v10 + 8 * v5) + 8);
  if (*(v11 + 44) <= a1)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 32);
  if (v12)
  {
    v13 = *(v12 + (a1 << 7) + 40);
    *a3 = 1;
    a3[1] = v13;
    a3[2] = v13;
    a3[3] = result;
    a3[4] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Int AggregateContainer.Method.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AggregateContainer.Method()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AggregateContainer.Method(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v2);
  return Hasher._finalize()();
}

SwiftUITracingSupport::AggregateContainer::Kind_optional __swiftcall AggregateContainer.Kind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *_s21SwiftUITracingSupport18AggregateContainerC5LevelOSYAASY8rawValuexSg03RawH0Qz_tcfCTW_0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t AggregateContainer.Config.type.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

unint64_t AggregateContainer.Config.init(_:_:_:_:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  result = lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  *a5 = a1;
  *(a5 + 1) = v7;
  *(a5 + 2) = v8;
  *(a5 + 3) = v9;
  *(a5 + 8) = &type metadata for CauseEffect;
  *(a5 + 16) = result;
  return result;
}

unint64_t AggregateContainer.Config.init(_:_:_:_:type:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  result = lazy protocol witness table accessor for type CauseEffect and conformance CauseEffect();
  *a7 = a1;
  *(a7 + 1) = v11;
  *(a7 + 2) = v12;
  *(a7 + 3) = v13;
  *(a7 + 8) = a5;
  *(a7 + 16) = a6;
  return result;
}

uint64_t AggregateContainer.Config.describe(state:)()
{
  v1 = *v0;
  _StringGuts.grow(_:)(20);
  MEMORY[0x26D69CDB0](0x206769666E6F6328, 0xE800000000000000);
  if (v1)
  {
    v2 = 0x7463617274736261;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v2, v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

uint64_t AggregateContainer.Child.children.getter()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = closure #1 in AggregateContainer.Child.children.getter(v0);
    v0[4] = v1;
  }

  return v1;
}

uint64_t key path getter for AggregateContainer.Child.children : AggregateContainer.Child@<X0>(uint64_t *a1@<X8>)
{
  result = AggregateContainer.Child.children.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for AggregateContainer.Child.children : AggregateContainer.Child(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t closure #1 in AggregateContainer.Child.children.getter(uint64_t *a1)
{
  v2 = a1[3];
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v2 + 16, v14);

  v3 = v15;
  v4 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v13 = *(a1 + 4);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v2 + 56, v12);

  v5 = (*(v4 + 128))(&v13, v12, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v6 = *(v5 + 16);
  if (v6)
  {
    v12[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      swift_unownedRetainStrong();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v2;
      *(v9 + 32) = 0;
      swift_unownedRetain();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 4;
      --v6;
    }

    while (v6);

    v10 = v12[0];
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t (*AggregateContainer.Child.children.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AggregateContainer.Child.children.getter();
  return AggregateContainer.Child.children.modify;
}

Swift::String __swiftcall AggregateContainer.Child.displayName()()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 16, v12);

  v2 = v13;
  v3 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11 = *(v0 + 16);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 56, v10);

  v4 = (*(v3 + 136))(&v11, v10, v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v7 = v4;
  v8 = v6;
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t AggregateContainer.Child.stats()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 16, v8);

  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = *(v1 + 16);
  Aggregate.stats(for:)(&v7, v4, v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t AggregateContainer.Child.appendSelection(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_unownedRetainStrong();
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 16, v9);

  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = *(v1 + 16);
  swift_unownedRetainStrong();
  outlined init with copy of Aggregate_AccessorProtocol(v3 + 56, v7);

  (*(v5 + 152))(&v8, v7, a1, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t AggregateContainer.Child.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t AggregateContainer.Child.__deallocating_deinit()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

__n128 AggregateContainer.config.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 97);
  v4 = *(v1 + 98);
  v5 = *(v1 + 99);
  *a1 = *(v1 + 96);
  *(a1 + 1) = v3;
  *(a1 + 2) = v4;
  *(a1 + 3) = v5;
  result = *(v1 + 104);
  *(a1 + 8) = result;
  return result;
}

__n128 AggregateContainer.config.setter(char *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  *(v1 + 96) = v3;
  *(v1 + 97) = v4;
  *(v1 + 98) = v5;
  *(v1 + 99) = v6;
  result = *(a1 + 8);
  *(v1 + 104) = result;
  return result;
}

uint64_t AggregateContainer.root.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t AggregateContainer.__allocating_init<A>(_:_:config:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = specialized AggregateContainer.init<A>(_:_:config:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v10;
}

uint64_t AggregateContainer.init<A>(_:_:config:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = specialized AggregateContainer.init<A>(_:_:config:)(a1, a2, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

uint64_t AggregateContainer.__allocating_init(_:_:config:)(void *a1, void *a2, char *a3)
{
  v6 = swift_allocObject();
  AggregateContainer.init(_:_:config:)(a1, a2, a3);
  return v6;
}

uint64_t AggregateContainer.init(_:_:config:)(void *a1, void *a2, char *a3)
{
  v4 = v3;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  *(v4 + 120) = 0;
  outlined init with copy of Aggregate_AccessorProtocol(a1, v4 + 16);
  outlined init with copy of Aggregate_AccessorProtocol(a2, v4 + 56);
  *(v4 + 96) = v8;
  *(v4 + 97) = v9;
  *(v4 + 98) = v10;
  *(v4 + 99) = v11;
  *(v4 + 104) = *(a3 + 8);
  swift_beginAccess();
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v14 = __swift_project_boxed_opaque_existential_1((v4 + 16), v12);
  v15 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v15 + 16))(v17);
  (*(v13 + 112))(v25, v12, v13);
  (*(v15 + 8))(v17, v12);
  LODWORD(v12) = v25[0];
  type metadata accessor for AggregateContainer.Child();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v4;
  *(v18 + 32) = 0;
  swift_beginAccess();
  *(v4 + 120) = v18;
  swift_unownedRetain();

  swift_beginAccess();
  v20 = *(v4 + 40);
  v19 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v20);
  (*(*(v19 + 8) + 8))(v20);
  HIBYTE(v24) = 0;
  v21 = *(v4 + 40);
  v22 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v21);
  (*(v22 + 216))(&v24 + 7, v21, v22);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t AggregateContainer.describe(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 20);
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v1 + 16, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v10 = (*(*(v9 + 24) + 32))(v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v10;
}

uint64_t AggregateContainer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t AggregateContainer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance AggregateContainer(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 20);
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v2 + 16, v18);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v13[0] = v3;
  v13[1] = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v11 = (*(*(v10 + 24) + 32))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t protocol witness for static UnsafeTree_SuppliesRoot.element(_:) in conformance Changelist.Id@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void specialized closure #1 in Atomic.subscript.read(os_unfair_lock_t lock)
{
  if (LOBYTE(lock[1]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(lock[1]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(lock);
  }
}

void *specialized UnsafeArray.growToCapacity(_:)(int64_t a1)
{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 88 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, a1 << 6);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 32 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 16 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, a1 << 7);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 120 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 48 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 40 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 4 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 8 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

{
  result = *v1;
  v4 = *(v1 + 8);
  if (v4 < a1)
  {
    v4 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!a1 && !v4)
  {
    a1 = 1;
LABEL_7:
    *(v1 + 8) = a1;
    if (result)
    {
      result = realloc(result, 24 * a1);
      if (result)
      {
LABEL_11:
        *v1 = result;
        return result;
      }

      __break(1u);
    }

    result = swift_slowAlloc();
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized UnsafeArray.growToCapacity(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    if (v5 != v2 || v5 >= &v2[40 * v4])
    {
      memmove(v5, v2, 40 * v4);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    v6 = 120 * v4;
    if (v5 != v2 || v5 >= &v2[v6])
    {
      memmove(v5, v2, v6);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    v3 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (result || v3)
  {
    return result;
  }

  LODWORD(result) = 1;
LABEL_7:
  *(v1 + 2) = result;
  if (v2)
  {
    v5 = swift_slowAlloc();
    *v1 = v5;
    if (v5 != v2 || v5 >= &v2[80 * v4])
    {
      memmove(v5, v2, 80 * v4);
    }

    JUMPOUT(0x26D69EAB0);
  }

  result = swift_slowAlloc();
  *v1 = result;
  return result;
}

unint64_t specialized UnsafeArray.growToCapacity(_:)(unint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    if (HIDWORD(result))
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v1 + 2) = result;
    if (v2)
    {
LABEL_4:
      v5 = swift_slowAlloc();
      *v1 = v5;
      if (v5 != v2 || v5 >= &v2[312 * v4])
      {
        memmove(v5, v2, 312 * v4);
      }

LABEL_19:
      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_16;
  }

  if (!result && !v3)
  {
    *(v1 + 2) = 1;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_16:
    result = swift_slowAlloc();
    *v1 = result;
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v3 < result)
  {
    if (HIDWORD(result))
    {
      __break(1u);
      goto LABEL_19;
    }

    *(v1 + 2) = result;
    if (v2)
    {
LABEL_4:
      v5 = swift_slowAlloc();
      *v1 = v5;
      if (v5 != v2 || v5 >= &v2[168 * v4])
      {
        memmove(v5, v2, 168 * v4);
      }

LABEL_19:
      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_16;
  }

  if (!result && !v3)
  {
    *(v1 + 2) = 1;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_16:
    result = swift_slowAlloc();
    *v1 = result;
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D69DC50](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v3 = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AGAttribute@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance os_unfair_lock_options_t(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSFileAttributeKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x26D69CE40](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSFileAttributeKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileAttributeKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSFileAttributeKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x26D69CC20](v3);

  *a2 = v4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AGSubgraphRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AGSubgraphRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance TreeValueFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSFileAttributeKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGAttribute(uint64_t a1)
{
  lazy protocol witness table accessor for type AGGraphRef and conformance AGGraphRef(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x282214450]);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, &protocol conformance descriptor for AGAttribute);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSFileAttributeKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x26D69CC20](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    MEMORY[0x26D69DBC0](v4);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    MEMORY[0x26D69DC00](a1);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](a1);
  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFFFFFF000000FFLL, v3);
}

{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277CC92D8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  specialized AggregateTreeElement.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  Hasher.init(_seed:)();
  if ((~(v2 & v3 & v4) & 0xF000000000000007) != 0)
  {
    MEMORY[0x26D69DBC0](1);
    ViewTree.TElement.hash(into:)();
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
  }

  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D69DB90](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher.init()();
  MEMORY[0x26D69DBC0](*a1);
  MEMORY[0x26D69DBC0](*(a1 + 16));
  v2 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v2);
  Hasher._combine(_:)(*(a1 + 32));
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for SHA256Digest();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC5298]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for AGGraphRef(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef, &protocol conformance descriptor for AGGraphRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D84BD0]);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](a1);
  MEMORY[0x26D69DC00](a2);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x277D84BC8]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x26D69DBC0](1);
    LODWORD(v4) = a1;
  }

  else
  {
    v4 = HIDWORD(a1);
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  a3(a2);
  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v9)
        {
          if ((a2 & (a1 != 0)) != 0)
          {
            return result;
          }
        }

        else if ((a2 & (a1 == 0)) != 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 40 * result;
      if (*v7 == *a1 && *(v7 + 16) == *(a1 + 16) && *(v7 + 32) == *(a1 + 32))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v8 = *v7;
      v9 = *(v7 + 1);
      if (v8 == a1 && v9 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v19 = a1;
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x277CC5290], MEMORY[0x277CC52A0]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AGGraphRef(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AGGraphRef and conformance AGGraphRef, type metadata accessor for AGGraphRef, &protocol conformance descriptor for AGGraphRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v2 + 48) + 40 * result;
      v11 = *v10;
      if (*v10)
      {
        if (v7)
        {
          v12 = *(v10 + 16);
          v13 = *(v10 + 32);
          v14 = v11 == v7 && v12 == v8;
          if (v14 && v13 == v9)
          {
            return result;
          }
        }
      }

      else if (!v7)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 8);
    v12 = v8 & v9 & v10 & 0xF000000000000007;
    if (v8 | v7 | v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == 0xC000000000000000;
    }

    v15 = !v13 || v11 != 0;
    v16 = v10 & 0xC000000000000000;
    do
    {
      v17 = *(v2 + 48) + 40 * result;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if ((~(*(v17 + 8) & v18 & v19) & 0xF000000000000007) == 0)
      {
        if (v12 == 0xF000000000000007)
        {
          return result;
        }

        goto LABEL_13;
      }

      if (v12 != 0xF000000000000007)
      {
        v20 = *v17;
        v21 = v19 >> 62;
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            if (v16 != 0x8000000000000000)
            {
              goto LABEL_13;
            }

LABEL_32:
            if (v20 == v7)
            {
              return result;
            }

            goto LABEL_13;
          }

          if (!((v10 >> 62 != 3) | v15 & 1))
          {
            return result;
          }
        }

        else
        {
          if (v21)
          {
            if (v16 != 0x4000000000000000)
            {
              goto LABEL_13;
            }

            goto LABEL_32;
          }

          if (!(v10 >> 62))
          {
            v22 = *(v17 + 32);
            v23 = v20 == v7 && v18 == v9;
            if (v23 && v22 == v11)
            {
              return result;
            }
          }
        }
      }

LABEL_13:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v9 = *(a1 + 24);
    v10 = *(a1 + 25);
    v11 = a1[4];
    v12 = a1[6];
    v13 = *(a1 + 16);
    do
    {
      v17 = *(v2 + 48) + 72 * result;
      if (*v17 == v7)
      {
        v18 = *(v17 + 16);
        v19 = *(v17 + 32);
        v20 = *(v17 + 48);
        v21 = *(v17 + 64);
        if (*(v17 + 25) > 1u)
        {
          if (*(v17 + 25) == 2)
          {
            if (v10 != 2)
            {
              goto LABEL_13;
            }

            v22 = v18 == v8;
          }

          else
          {
            if (v10 != 3)
            {
              goto LABEL_13;
            }

            v22 = v18 == v8;
          }
        }

        else if (*(v17 + 25))
        {
          if (v10 != 1)
          {
            goto LABEL_13;
          }

          v23 = *(v17 + 24);
          v22 = v18 == v8 && v23 == v9;
        }

        else
        {
          if (v10)
          {
            goto LABEL_13;
          }

          v22 = v8 == v18;
        }

        if (v22 && v19 == v11 && v20 == v12 && v21 == v13)
        {
          return result;
        }
      }

LABEL_13:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 12 * result;
      v9 = *v8;
      if (*(v8 + 8))
      {
        if ((a2 & 1) != 0 && v9 == a1)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
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
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      outlined copy of Data._Representation(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      MEMORY[0x26D69C520]();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = MEMORY[0x26D69C520]();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = MEMORY[0x26D69C520]();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      outlined copy of Data._Representation(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = MEMORY[0x26D69C520]();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    outlined copy of Data._Representation(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = MEMORY[0x26D69C520]();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    outlined consume of Data._Representation(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    outlined copy of Data._Representation(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = MEMORY[0x26D69C520]();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = MEMORY[0x26D69C520]();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = MEMORY[0x26D69C520]();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        outlined consume of Data._Representation(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      outlined consume of Data._Representation(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    outlined copy of Data._Representation(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = MEMORY[0x26D69C520]();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  outlined copy of Data._Representation(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = MEMORY[0x26D69C520]();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  MEMORY[0x26D69C520]();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = MEMORY[0x26D69C520]();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}