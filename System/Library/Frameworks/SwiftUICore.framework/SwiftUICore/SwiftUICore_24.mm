uint64_t outlined init with copy of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for Transaction.PendingListeners(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for DispatchTime();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(&a1[v4], v5);
  }

  return result;
}

uint64_t type metadata completion function for Transaction.PendingListeners.WeakListener(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for DispatchTime?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t closure #1 in static Transaction.addPendingListener(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  v10 = v9 - 8;
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  static DispatchTime.now()();
  + infix(_:_:)();
  v43 = *(v14 + 8);
  v44 = v14 + 8;
  v43(v16, v13);
  v20 = *(v14 + 16);
  v21 = &v12[*(v10 + 28)];
  v46 = v19;
  v35 = v20;
  v20(v21, v19, v13);
  swift_weakInit();
  swift_weakAssign();
  v22 = a1;
  v23 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  outlined init with take of Transaction.PendingListeners.WeakListener(v12, v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v25);
  *v22 = v23;
  v26 = *(type metadata accessor for Transaction.PendingListeners(0) + 20);
  outlined init with copy of DispatchTime?(v22 + v26, v8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of DispatchTime?(v8);
    outlined destroy of DispatchTime?(v22 + v26);
    v35(v22 + v26, v46, v13);
    (*(v14 + 56))(v22 + v26, 0, 1, v13);
    type metadata accessor for OS_dispatch_queue();
    v27 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for implicit closure #1 in closure #1 in static Transaction.addPendingListener(_:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_3;
    v28 = _Block_copy(aBlock);

    v29 = v36;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v30 = v38;
    v31 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v46;
    MEMORY[0x193ABFB50](v46, v29, v30, v28);
    _Block_release(v28);

    (*(v40 + 8))(v30, v31);
    (*(v37 + 8))(v29, v39);
    return (v43)(v32, v13);
  }

  else
  {
    v43(v46, v13);
    return outlined destroy of DispatchTime?(v8);
  }
}

uint64_t outlined init with take of Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithTake for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakTakeInit();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t outlined init with copy of DispatchTime?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DispatchTime?(uint64_t a1)
{
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    type metadata accessor for DispatchTime?(255, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6328], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(*a1) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AnimationListener?, type metadata accessor for AnimationListener, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<Transaction.AnimationListenerKey>>);
    }
  }
}

void type metadata completion function for Transaction.PendingListeners(uint64_t a1)
{
  type metadata accessor for DispatchTime?(319, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeWithCopy for Transaction.PendingListeners(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);

  if (v8(&a2[v5], 1, v6))
  {
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void lazy protocol witness table accessor for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationListenerKey>, &type metadata for Transaction.AnimationListenerKey, &protocol witness table for Transaction.AnimationListenerKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<Transaction.AnimationListenerKey> and conformance TransactionPropertyKey<A>);
  }
}

uint64_t one-time initialization function for pendingListeners()
{
  v0 = type metadata accessor for Transaction.PendingListeners(0);
  v1 = v0 - 8;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = MEMORY[0x1E69E7CC0];
  v5 = *(v1 + 28);
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for AtomicBuffer<Transaction.PendingListeners>, type metadata accessor for Transaction.PendingListeners, type metadata accessor for AtomicBuffer);
  v7 = (*(v2 + 80) + 20) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  outlined init with copy of Transaction.PendingListeners.WeakListener(v4, v8 + v7, type metadata accessor for Transaction.PendingListeners);
  result = outlined destroy of Transaction.PendingListeners.WeakListener(v4, type metadata accessor for Transaction.PendingListeners);
  static Transaction.pendingListeners = v8;
  return result;
}

id GraphicsFilter.makeCAFilter()()
{
  v1 = v0[5];
  v138[4] = v0[4];
  v138[5] = v1;
  v139[0] = v0[6];
  *(v139 + 12) = *(v0 + 108);
  v2 = v0[1];
  v138[0] = *v0;
  v138[1] = v2;
  v3 = v0[3];
  v138[2] = v0[2];
  v138[3] = v3;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v138))
  {
    case 1u:
      v83 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x11u);
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, isa, 20);

      v85 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v85, 16);

      v86 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v86, 12);

      v87 = v83[6];
      v129 = v83[5];
      v130[0] = v87;
      *(v130 + 12) = *(v83 + 108);
      v88 = v83[2];
      v125 = v83[1];
      v126 = v88;
      v89 = v83[4];
      v127 = v83[3];
      v128 = v89;
      v90 = v0[3];
      v133 = v0[2];
      v134 = v90;
      v91 = v0[5];
      v135 = v0[4];
      v136 = v91;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v92 = v0[1];
      v131 = *v0;
      v132 = v92;
      v93 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of VariableBlurStyle(v93, &v119);
      goto LABEL_35;
    case 2u:
      v64 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v65 = _CAFilterCreate(0xBu);
      goto LABEL_33;
    case 3u:
      v64 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v65 = _CAFilterCreate(2u);
LABEL_33:
      v4 = v65;
      v75 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v75, 3);

      v76 = *(v64 + 56);
      v77 = *(v64 + 88);
      v129 = *(v64 + 72);
      v130[0] = v77;
      *(v130 + 12) = *(v64 + 100);
      v78 = *(v64 + 24);
      v125 = *(v64 + 8);
      v126 = v78;
      v127 = *(v64 + 40);
      v128 = v76;
      v79 = v0[5];
      v135 = v0[4];
      v136 = v79;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v80 = v0[1];
      v131 = *v0;
      v132 = v80;
      v81 = v0[3];
      v133 = v0[2];
      v134 = v81;
      v82 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of GraphicsFilter.DisplacementMap(v82, &v119);
      goto LABEL_35;
    case 4u:
    case 5u:
    case 0x12u:
      goto LABEL_50;
    case 6u:
      v58 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(7u);
      v116 = v58[1];
      v112 = v58[3];
      v114 = v58[2];
      v110 = v58[4];
      v131 = *v58;
      v132 = v116;
      v133 = v114;
      v134 = v112;
      v135 = v110;
      v59 = [objc_opt_self() valueWithCAColorMatrix_];
      if (!v59)
      {
        goto LABEL_49;
      }

      v60 = v59;
      _CAFilterSetInput(v4, v59, 11);

      goto LABEL_26;
    case 7u:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v42 = *(v41 + 16);
      v131 = *v41;
      LODWORD(v132) = v42;
      v4 = _CAFilterCreate(0x10u);
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v7.super.super.isa = specialized ObjectCache.subscript.getter(&v131);
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 10;
      goto LABEL_45;
    case 8u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v50 = *v49;
      v51 = v49[1];
      v52 = v49[2];
      v53 = v49[3];
      v4 = _CAFilterCreate(7u);
      specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(1, &v131, v50, v51, v52, v53);
      v54 = objc_opt_self();
      v119 = v131;
      v120 = v132;
      v121 = v133;
      v122 = v134;
      v123 = v135;
      v55 = [v54 valueWithCAColorMatrix_];
      if (!v55)
      {
        goto LABEL_48;
      }

      v56 = v55;
      _CAFilterSetInput(v4, v55, 11);

LABEL_26:
      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 19;
      goto LABEL_45;
    case 9u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(5u);
      v7.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 4;
      goto LABEL_45;
    case 0xAu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(9u);
      goto LABEL_23;
    case 0xBu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(3u);
      goto LABEL_23;
    case 0xCu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(4u);
      goto LABEL_23;
    case 0xDu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v11 = _CAFilterCreate(8u);
LABEL_23:
      v4 = v11;
      v57.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      goto LABEL_44;
    case 0xEu:
      v12 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v13 = *(v12 + 16);
      v117 = *v12;
      v4 = _CAFilterCreate(8u);
      v131 = v117;
      LODWORD(v132) = v13;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v14 = specialized ObjectCache.subscript.getter(&v131);
      _CAFilterSetInput(v4, v14, 10);

      v15 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v15, 3);

      v7.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 6;
      goto LABEL_45;
    case 0xFu:
      v43 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x12u);
      v115 = *(v43 + 16);
      v111 = *(v43 + 48);
      v113 = *(v43 + 32);
      v109 = *(v43 + 64);
      v131 = *v43;
      v132 = v115;
      v133 = v113;
      v134 = v111;
      v135 = v109;
      v44 = [objc_opt_self() valueWithCAColorMatrix_];
      if (!v44)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        _s7SwiftUI14GraphicsFilterOWOj6_(v138);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        JUMPOUT(0x18D172914);
      }

      v45 = v44;
      _CAFilterSetInput(v4, v44, 11);

      v46 = *(v43 + 84);
      if (v46)
      {
        v47 = Bool._bridgeToObjectiveC()().super.super.isa;
        _CAFilterSetInput(v4, v47, 5);
      }

      if (*(v43 + 80) == INFINITY)
      {
        return v4;
      }

      v48 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v48, 8);

      if ((v46 & 2) == 0)
      {
        return v4;
      }

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 9;
      goto LABEL_45;
    case 0x10u:
      v94 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v95 = *v94;
      v96 = v94[1];
      v97 = v94[2];
      v98 = v94[3];
      v4 = _CAFilterCreate(0xEu);
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_18DDACA80;
      v100 = MEMORY[0x1E69E6448];
      *(v99 + 56) = MEMORY[0x1E69E6448];
      *(v99 + 32) = v95;
      *(v99 + 88) = v100;
      *(v99 + 64) = v96;
      *(v99 + 120) = v100;
      *(v99 + 96) = v97;
      *(v99 + 152) = v100;
      *(v99 + 128) = v98;
      type metadata accessor for NSArray();
      v101 = MEMORY[0x193ABFBE0](v99);
      v102 = v4;
      v103 = v101;
      v104 = 24;
      goto LABEL_43;
    case 0x11u:
      v16 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xAu);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      type metadata accessor for _ContiguousArrayStorage<Any>();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18DDACA80;
      v22 = MEMORY[0x1E69E6448];
      *(v21 + 56) = MEMORY[0x1E69E6448];
      *(v21 + 32) = v17;
      *(v21 + 88) = v22;
      *(v21 + 64) = v18;
      *(v21 + 120) = v22;
      *(v21 + 96) = v19;
      *(v21 + 152) = v22;
      *(v21 + 128) = v20;
      type metadata accessor for NSArray();
      v23 = MEMORY[0x193ABFBE0](v21);
      _CAFilterSetInput(v4, v23, 21);

      v24 = v16[4];
      v25 = v16[5];
      v26 = v16[6];
      v27 = v16[7];
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18DDACA80;
      *(v28 + 56) = v22;
      *(v28 + 32) = v24;
      *(v28 + 88) = v22;
      *(v28 + 64) = v25;
      *(v28 + 120) = v22;
      *(v28 + 96) = v26;
      *(v28 + 152) = v22;
      *(v28 + 128) = v27;
      v29 = MEMORY[0x193ABFBE0]();
      _CAFilterSetInput(v4, v29, 13);

      v30 = v16[8];
      v31 = v16[9];
      v32 = v16[10];
      v33 = v16[11];
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_18DDACA80;
      *(v34 + 56) = v22;
      *(v34 + 32) = v30;
      *(v34 + 88) = v22;
      *(v34 + 64) = v31;
      *(v34 + 120) = v22;
      *(v34 + 96) = v32;
      *(v34 + 152) = v22;
      *(v34 + 128) = v33;
      v35 = MEMORY[0x193ABFBE0]();
      _CAFilterSetInput(v4, v35, 7);

      v36 = v16[12];
      v37 = v16[13];
      v38 = v16[14];
      v39 = v16[15];
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_18DDACA80;
      *(v40 + 56) = v22;
      *(v40 + 32) = v36;
      *(v40 + 88) = v22;
      *(v40 + 64) = v37;
      *(v40 + 120) = v22;
      *(v40 + 96) = v38;
      *(v40 + 152) = v22;
      *(v40 + 128) = v39;
      v7.super.super.isa = MEMORY[0x193ABFBE0]();
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 2;
      goto LABEL_45;
    case 0x13u:
      v106 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v107 = *(v106 + 16);
      v118 = *v106;
      v4 = _CAFilterCreate(0);
      v131 = v118;
      LODWORD(v132) = v107;
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v101 = specialized ObjectCache.subscript.getter(&v131);
      v102 = v4;
      v103 = v101;
      v104 = 10;
LABEL_43:
      _CAFilterSetInput(v102, v103, v104);

      v57.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
LABEL_44:
      v7.super.super.isa = v57.super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 3;
      goto LABEL_45;
    case 0x14u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xCu);
      v61 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v61, 3);

      v62 = Float._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v62, 22);

      v63 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v63, 0);

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 1;
      goto LABEL_45;
    case 0x15u:
      v67 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0x13u);
      v68 = *(v67 + 56);
      v69 = *(v67 + 88);
      v129 = *(v67 + 72);
      v130[0] = v69;
      *(v130 + 12) = *(v67 + 100);
      v70 = *(v67 + 24);
      v125 = *(v67 + 8);
      v126 = v70;
      v127 = *(v67 + 40);
      v128 = v68;
      v71 = v0[5];
      v135 = v0[4];
      v136 = v71;
      v137[0] = v0[6];
      *(v137 + 12) = *(v0 + 108);
      v72 = v0[1];
      v131 = *v0;
      v132 = v72;
      v73 = v0[3];
      v133 = v0[2];
      v134 = v73;
      v74 = _s7SwiftUI14GraphicsFilterOWOj6_(&v131);
      outlined init with copy of GraphicsFilter.GlassBackgroundStyle(v74, &v119);
LABEL_35:
      VariableBlurStyle.Mask.setCAFilterInput(of:)(v4);
      v123 = v129;
      v124[0] = v130[0];
      *(v124 + 12) = *(v130 + 12);
      v119 = v125;
      v120 = v126;
      v121 = v127;
      v122 = v128;
      outlined destroy of VariableBlurStyle.Mask(&v119);
      return v4;
    case 0x16u:
      v105 = _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v66 = (*(**v105 + 88))();
      goto LABEL_39;
    case 0x17u:
      v66 = _CAFilterCreate(1u);
      goto LABEL_39;
    case 0x18u:
      v66 = _CAFilterCreate(0xFu);
      goto LABEL_39;
    case 0x19u:
      v66 = _CAFilterCreate(6u);
LABEL_39:
      v4 = v66;
      break;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v138);
      v4 = _CAFilterCreate(0xDu);
      v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v5, 20);

      v6 = Bool._bridgeToObjectiveC()().super.super.isa;
      _CAFilterSetInput(v4, v6, 16);

      v7.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = v4;
      v9 = v7.super.super.isa;
      v10 = 12;
LABEL_45:
      _CAFilterSetInput(v8, v9, v10);

      break;
  }

  return v4;
}

id _CAFilterCreate(unsigned int a1)
{
  v1 = MEMORY[0x1E6979378];
  if (a1 > 0x12)
  {
    v2 = @"glassBackground";
  }

  else
  {
    v2 = **(&unk_1E7242160 + a1);
  }

  v3 = [v1 filterWithType:v2];

  return v3;
}

void _CAFilterSetInput(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = _CAFilterInputKey(a3);
  [v6 setValue:v5 forKey:v7];
}

uint64_t _AnyAnimatableData.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for VTable(0, a2, a3, a4);
  v10 = *(a3 + 24);
  a5[4] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a5 + 1);
  v10(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v9;
  return result;
}

uint64_t static VTable.isEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  outlined init with copy of Any(a1, v15);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v14);
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, AssociatedTypeWitness);
  v12(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t _AnyShapeBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v9 = *(v4 + 168);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(*(v4 + 160) + 8), v10, a2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _AnyAnimatableData(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 88))(a1 + 8, a2 + 1) & 1;
  }

  else
  {
    return 0;
  }
}

double _AnyShapeBox.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *v6;
  v13 = *(*v6 + 152);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v20[-v15];
  v17 = *(v12 + 168);
  swift_beginAccess();
  (*(v14 + 16))(v16, v6 + v17, v13);
  (*(*(v12 + 160) + 24))(v21, v13, a3, a4, a5, a6);
  (*(v14 + 8))(v16, v13);
  result = *v21;
  v19 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v19;
  *(a2 + 32) = v22;
  return result;
}

double protocol witness for Shape.path(in:) in conformance AnyShape@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 80))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

BOOL specialized AnimatableAttributeHelper.checkReset()()
{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 64);
  if (v1 != v2)
  {
    if (*(v0 + 56))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 56) = 0;
    outlined destroy of HitTestableEvent?(v0 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 64) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 96);
  if (v1 != v2)
  {
    if (*(v0 + 88))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 88) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 1;
    *(v0 + 96) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 64);
  if (v1 != v2)
  {
    if (*(v0 + 56))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 56) = 0;
    outlined consume of ScrapeableContent?(*(v0 + 16));
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 64) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 80);
  if (v1 != v2)
  {
    if (*(v0 + 72))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 72) = 0;

    *(v0 + 64) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 80) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 48);
  if (v1 != v2)
  {
    if (*(v0 + 40))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 40) = 0;

    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 128);
  if (v1 != v2)
  {
    if (*(v0 + 120))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 120) = 0;
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of Slice<IndexSet>(v7, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
    *(v0 + 128) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 112);
  if (v1 != v2)
  {
    if (*(v0 + 104))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 104) = 0;
    v3 = *(v0 + 64);
    v6[2] = *(v0 + 48);
    v6[3] = v3;
    v6[4] = *(v0 + 80);
    v7 = *(v0 + 96);
    v4 = *(v0 + 32);
    v6[0] = *(v0 + 16);
    v6[1] = v4;
    outlined destroy of HitTestableEvent?(v6, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = -1;
    *(v0 + 112) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 72);
  if (v1 != v2)
  {
    if (*(v0 + 64))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 64) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 41) = 0u;
    *(v0 + 57) = 1;
    *(v0 + 72) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 80);
  if (v1 != v2)
  {
    if (*(v0 + 72))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 72) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 256;
    *(v0 + 80) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 288);
  if (v1 != v2)
  {
    if (*(v0 + 280))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 280) = 0;
    _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOi0_(__src);
    memcpy((v0 + 16), __src, 0x101uLL);
    *(v0 + 288) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 128);
  if (v1 != v2)
  {
    if (*(v0 + 120))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 120) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 1;
    *(v0 + 128) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 136);
  if (v1 != v2)
  {
    if (*(v0 + 128))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 128) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0;
    *(v0 + 120) = 1;
    *(v0 + 136) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 160);
  if (v1 != v2)
  {
    if (*(v0 + 152))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 152) = 0;
    _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi0_(v8);
    v3 = v8[7];
    *(v0 + 112) = v8[6];
    *(v0 + 128) = v3;
    *(v0 + 144) = v9;
    v4 = v8[3];
    *(v0 + 48) = v8[2];
    *(v0 + 64) = v4;
    v5 = v8[5];
    *(v0 + 80) = v8[4];
    *(v0 + 96) = v5;
    v6 = v8[1];
    *(v0 + 16) = v8[0];
    *(v0 + 32) = v6;
    *(v0 + 160) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 40);
  if (v1 != v2)
  {
    if (*(v0 + 32))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 32) = 0;
    *(v0 + 20) = 0;
    *(v0 + 12) = 0;
    *(v0 + 28) = 1;
    *(v0 + 40) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

{
  v1 = *AGGraphGetValue() >> 1;
  v2 = *(v0 + 48);
  if (v1 != v2)
  {
    if (*(v0 + 40))
    {
      specialized AnimatorState.removeListeners()();
    }

    *(v0 + 40) = 0;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    *(v0 + 48) = *AGGraphGetValue() >> 1;
  }

  return v1 != v2;
}

void lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyAnimatableData, &type metadata for EmptyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyAnimatableData, &type metadata for EmptyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyAnimatableData, &type metadata for EmptyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }
}

double protocol witness for Shape.path(in:) in conformance Capsule@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Capsule.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Capsule.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v9 = *v5;
  Width = CGRectGetWidth(*&a2);
  v20.origin.x = a2;
  v20.size.width = a4;
  v20.origin.y = a3;
  v20.size.height = a5;
  Height = CGRectGetHeight(v20);
  if (Height < Width)
  {
    Width = Height;
  }

  v21.origin.x = a2;
  v21.size.width = a4;
  v21.origin.y = a3;
  v21.size.height = a5;
  IsNull = CGRectIsNull(v21);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a5 = 0.0;
  }

  else
  {
    v16 = Width * 0.5;
    if (v16 == 0.0 || (v22.origin.x = a2, v22.size.width = a4, v22.origin.y = a3, v22.size.height = a5, CGRectIsInfinite(v22)))
    {
      v15 = 0;
      result = *&a2;
      *&v17 = a3;
      *(&v17 + 1) = a4;
      v13 = v17;
    }

    else
    {
      result = swift_allocObject();
      v13 = 0uLL;
      *(result + 16) = a2;
      *(result + 24) = a3;
      *(result + 32) = a4;
      *(result + 40) = a5;
      *(result + 48) = v16;
      *(result + 56) = v16;
      v15 = 2;
      a5 = 0.0;
      *(result + 64) = v9;
    }
  }

  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  return result;
}

__n128 initializeWithCopy for PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakCopyInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

__n128 initializeWithTake for PlatformGlassInteractionProxy(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t destroy for CoreInteractionRepresentableEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreInteractionRepresentableEffect(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v11 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

    swift_unknownObjectRetain();
  }

  return a1;
}

void specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v11 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v11);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

CGAffineTransform *DisplayList.ViewUpdater.Platform.updateSDFShapeView(_:state:shape:contentsChanged:)(uint64_t a1, void *a2, __int128 *a3, char a4)
{
  v4 = a2;
  v5 = a3[1];
  v61 = *a3;
  v62 = v5;
  v63 = a3[2];
  v64 = *(a3 + 6);
  if ((a4 & 1) == 0)
  {
LABEL_25:
    v41 = v4[3];
    *&v59.a = v4[2];
    *&v59.c = v41;
    *&v59.tx = v4[4];
    result = CGAffineTransformTranslate(&v57, &v59, -*&v61, -*(&v61 + 1));
    v43 = *&v57.c;
    v44 = *&v57.tx;
    v4[2] = *&v57.a;
    v4[3] = v43;
    v4[4] = v44;
    return result;
  }

  v7 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v10 = *(v62 + 16);
  if (!v10)
  {
LABEL_21:
    v68.origin.x = v7;
    v68.origin.y = v6;
    v68.size.width = v9;
    v68.size.height = v8;
    if (CGRectIsNull(v68))
    {
      v7 = 0.0;
      v6 = 0.0;
      v9 = 0.0;
      v8 = 0.0;
    }

    v33 = *(a1 + 16);
    type metadata accessor for SDFLayer();
    v34 = swift_dynamicCastClassUnconditional();
    v35 = *(v34 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver);
    *(v34 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver) = v64;
    swift_retain_n();
    outlined init with copy of SDFShape(&v61, &v59);
    v36 = v33;
    SDFLayer.backdropObserver.didset(v35);

    *v54 = v7;
    *(v54 + 1) = v6;
    v56 = *(a3 + 6);
    v37 = a3[1];
    v55 = a3[2];
    v54[1] = v37;
    *&v59.a = v54[0];
    *&v59.c = v37;
    *&v59.tx = v55;
    v60 = v56;
    v4 = a2;
    v53 = *(*a2 + 24);
    v38 = a2[14];
    outlined init with copy of SDFShape(v54, &v57);
    SDFLayer.update(shape:size:in:backdropGroupID:)(&v59, &v53, v38, v9, v8);

    v57 = v59;
    v58 = v60;
    outlined destroy of SDFShape(&v57);
    v59.a = v7;
    v59.b = v6;
    v39 = a3[2];
    *&v59.c = a3[1];
    *&v59.tx = v39;
    v60 = *(a3 + 6);
    outlined destroy of SDFShape(&v59);
    v40 = *(a1 + 65);
    if ((v40 & 0x20) == 0)
    {
      *(a1 + 65) = v40 | 0x20;
    }

    goto LABEL_25;
  }

  v11 = 0;
  v12 = (v62 + 64);
  v49 = *(MEMORY[0x1E695F050] + 24);
  v50 = *(MEMORY[0x1E695F050] + 16);
  v51 = *(MEMORY[0x1E695F050] + 8);
  v52 = *MEMORY[0x1E695F050];
  v45 = *(v62 + 16);
  while (v11 < *(v62 + 16))
  {
    v17 = *(v12 - 4);
    v18 = *(v12 - 3);
    v19 = *(v12 - 2);
    v20 = *(v12 - 1);
    v21 = *v12;
    if (v21 > 2)
    {
      if (v21 == 5)
      {
        if (*(v17 + 16))
        {
          if (*(v17 + 16) == 1)
          {
            outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 5u);
            v10 = v45;
            RBPathGetBoundingRect();
          }

          else
          {
            v32 = outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 5u);
            v26 = MEMORY[0x193AC3640](v17 + 24, v32);
          }

          v13 = v26;
          v14 = v27;
          v15 = v28;
          v16 = v29;
          goto LABEL_5;
        }

        v30 = *(v17 + 24);
        if (!v30)
        {
          goto LABEL_27;
        }

        v31 = v30;
        outlined copy of Path.Storage(v17, v18, v19, v20, 5u);
        outlined copy of Path.Storage(v17, v18, v19, v20, 5u);
        PathBoundingBox = CGPathGetPathBoundingBox(v31);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        outlined consume of Path.Storage(v17, v18, v19, v20, 5u);
        goto LABEL_18;
      }

      v14 = v51;
      v13 = v52;
      v16 = v49;
      v15 = v50;
      if (v21 != 6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v21 >= 2)
      {
        x = *(v17 + 16);
        y = *(v17 + 24);
        width = *(v17 + 32);
        height = *(v17 + 40);
        outlined copy of Path.Storage(*(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), 2u);
LABEL_18:
        v16 = height;
        v15 = width;
        v14 = y;
        v13 = x;
        goto LABEL_5;
      }

      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
    }

LABEL_5:
    ++v11;
    v65.origin.x = v7;
    v65.origin.y = v6;
    v65.size.width = v9;
    v65.size.height = v8;
    v66 = CGRectUnion(v65, *&v13);
    v7 = v66.origin.x;
    v6 = v66.origin.y;
    v9 = v66.size.width;
    v8 = v66.size.height;
    outlined consume of Path.Storage(v17, v18, v19, v20, v21);
    v12 += 56;
    if (v10 == v11)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void SDFLayer.update(shape:size:in:backdropGroupID:)(uint64_t a1, double *a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v225 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 44);
  v211 = *a2;
  SDFLayer.beginUpdatingStyle(_:shapeBounds:)(v13, v10, v11, a4, a5);
  if (v12 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  SDFStyle.distanceRange.getter(v13);
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = fmin(v17, 0.0);
    if (v16 <= v18)
    {
      v16 = v18;
    }

    if (v20 > v16)
    {
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v192 = 0;
      v191 = 520;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

  if (v16 > 0.0)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0.0;
  }

  v227 = v20;
  if (v20 > v21)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v199 = v15;
  v200 = v12;
  v201 = v13;
  v202 = a3;
  SDFStyle.needsDistanceGradient.getter(v13);
  v203 = v22;
  v23 = 0.0;
  if (v22)
  {
    v23 = v14;
  }

  v210 = v23;
  v24 = v211;
  v25 = v227;
  v224 = *(v225 + 16);
  if (!v224)
  {
    goto LABEL_153;
  }

  v212 = &v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  v204 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization;
  v26 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  v27 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  v223 = v225 + 32;
  swift_beginAccess();
  swift_beginAccess();
  v28 = 0;
  v29 = v211 * (v21 - v227);
  if (v29 < 64.0)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 16.0)
  {
    v30 = 0;
  }

  v206 = v30;
  v222 = v203 & 1;
  v205 = &v247;
  v209 = *MEMORY[0x1E69796E8];
  v208 = *MEMORY[0x1E69796E0];
  v31 = v210;
  v32 = *MEMORY[0x1E6979F18];
  v33 = *MEMORY[0x1E6979F30];
  v232 = *MEMORY[0x1E6979F28];
  v233 = v33;
  v34 = *MEMORY[0x1E695F050];
  v197 = *(MEMORY[0x1E695F050] + 8);
  v198 = v34;
  v35 = *(MEMORY[0x1E695F050] + 16);
  v195 = *(MEMORY[0x1E695F050] + 24);
  v196 = v35;
  v207 = -v21;
  v229 = *MEMORY[0x1E6979F20];
  v230 = v32;
  v226 = v26;
  while (1)
  {
    if (v28 >= *(v225 + 16))
    {
      goto LABEL_151;
    }

    v36 = v28 + 1;
    v37 = (v223 + 56 * v28);
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v254 = *(v37 + 6);
    v252 = v39;
    v253 = v40;
    v251 = v38;
    v41 = *&v6[v26];
    v42 = *(v41 + 2);
    v235 = v28;
    if (v28 == v42)
    {
      swift_beginAccess();
      outlined init with copy of PathSet.Element(&v251, &v246);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v6[v26] = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 1, v41);
        *&v6[v26] = v41;
      }

      v45 = *(v41 + 2);
      v44 = *(v41 + 3);
      if (v45 >= v44 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v41);
      }

      *(v41 + 2) = v45 + 1;
      v46 = &v41[40 * v45];
      *(v46 + 2) = 0u;
      *(v46 + 3) = 0u;
      *(v46 + 32) = 248;
      *&v6[v26] = v41;
      swift_endAccess();
    }

    else
    {
      outlined init with copy of PathSet.Element(&v251, &v246);
    }

    v47 = v251;
    v48 = 1;
    v228 = v36;
    if (!v253)
    {
      v54 = 0.0;
      v50 = *(&v251 + 1);
      v49 = *&v251;
      v52 = *(&v252 + 1);
      v51 = *&v252;
      v53 = 0.0;
      goto LABEL_38;
    }

    if (v253 == 1)
    {
      break;
    }

    if (v253 != 2)
    {
      goto LABEL_73;
    }

    v49 = *(v251 + 16);
    v50 = *(v251 + 24);
    v51 = *(v251 + 32);
    v52 = *(v251 + 40);
    v54 = *(v251 + 48);
    v53 = *(v251 + 56);
    v48 = *(v251 + 64) ^ 1;
LABEL_38:
    width = v51;
    height = v52;
    if (v54 == v53 || vabdd_f64(v54, v53) < 0.001)
    {
      goto LABEL_40;
    }

    v48 = 0;
    v24 = v211;
LABEL_73:
    v217 = v253;
    if (v253 <= 2u)
    {
      if (v253)
      {
        v218 = *(&v252 + 1);
        v219 = v252;
        v220 = *(&v251 + 1);
        v221 = v251;
        x = *(v251 + 16);
        y = *(v251 + 24);
        width = *(v251 + 32);
        height = *(v251 + 40);
        goto LABEL_88;
      }

      v220 = *(&v251 + 1);
      y = *(&v251 + 1);
      v221 = v251;
      x = *&v251;
      v218 = *(&v252 + 1);
      height = *(&v252 + 1);
      v219 = v252;
      width = *&v252;
      goto LABEL_87;
    }

    v220 = *(&v251 + 1);
    v221 = v251;
    v218 = *(&v252 + 1);
    v219 = v252;
    if (v253 == 5)
    {
      if (*(v251 + 16))
      {
        if (*(v251 + 16) == 1)
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          v91 = MEMORY[0x193AC3640](v47 + 24);
        }

        x = v91;
        y = v92;
        width = v93;
        height = v94;
      }

      else
      {
        v95 = *(v251 + 24);
        if (!v95)
        {
          goto LABEL_168;
        }

        v96 = v95;
        outlined init with copy of PathSet.Element(&v251, &v246);

        PathBoundingBox = CGPathGetPathBoundingBox(v96);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;

        outlined destroy of PathSet.Element(&v251);
      }

      goto LABEL_87;
    }

    if (v253 != 6)
    {
      goto LABEL_169;
    }

    outlined destroy of PathSet.Element(&v251);
    y = v197;
    x = v198;
    height = v195;
    width = v196;
LABEL_88:
    v260.origin.x = x;
    v260.origin.y = y;
    v260.size.width = width;
    v260.size.height = height;
    v261 = CGRectInset(v260, v207, v207);
    v97 = v261.origin.x;
    v98 = v261.origin.y;
    v99 = v261.size.width;
    v100 = v261.size.height;
    IsNull = CGRectIsNull(v261);
    v102 = 0.0;
    if (IsNull)
    {
      v103 = 0.0;
    }

    else
    {
      v103 = v97;
    }

    if (IsNull)
    {
      v104 = 0.0;
    }

    else
    {
      v104 = v98;
    }

    if (IsNull)
    {
      v105 = 0.0;
    }

    else
    {
      v105 = v99;
    }

    if (!IsNull)
    {
      v102 = v100;
    }

    v262 = CGRectIntegral(*(&v102 - 3));
    v106 = v262.origin.x;
    v107 = v262.origin.y;
    v108 = v262.size.width;
    v109 = v262.size.height;
    if ((v48 & ((v254 & 0x100000000) == 0)) != 0)
    {
      v110 = 0.0;
    }

    else
    {
      v110 = v210;
    }

    v111 = *(v212 + 16);
    v112 = v235;
    v216 = 5 * v235;
    if ((v111 & 1) == 0 && v227 == *v212 && v21 == v212[1] && v110 == *&v6[v204])
    {
      [v6 contentsScale];
      if (v24 == v120)
      {
        v121 = *&v6[v26];
        if (v112 >= *(v121 + 16))
        {
          goto LABEL_165;
        }

        v122 = 8 * v216;
        v123 = v121 + 8 * v216;
        v125 = *(v123 + 32);
        v124 = *(v123 + 40);
        v127 = *(v123 + 48);
        v126 = *(v123 + 56);
        v128 = *(v123 + 64);
        if (v128 <= 0xF7)
        {
          *&v241 = *(v123 + 32);
          *(&v241 + 1) = v124;
          v242 = v127;
          v243 = v126;
          v244 = v128;
          v236 = v221;
          v237 = v220;
          v238 = v219;
          v239 = v218;
          v240 = v217;
          outlined init with copy of PathSet.Element(&v251, &v246);
          outlined copy of SDFLayer.SDFElement.Contents?(v125, v124, v127, v126, v128);
          outlined copy of SDFLayer.SDFElement.Contents?(v125, v124, v127, v126, v128);
          v176 = specialized static SDFLayer.SDFElement.Contents.== infix(_:_:)(&v241, &v236);
          outlined consume of SDFLayer.SDFElement.Contents(v236, v237, v238, v239, v240);
          outlined consume of SDFLayer.SDFElement.Contents(v241, *(&v241 + 1), v242, v243, v244);
          outlined consume of SDFLayer.SDFElement.Contents?(v125, v124, v127, v126, v128);
          if (v176)
          {
            v177 = *&v6[v226];
            if (v235 >= *(v177 + 16))
            {
              goto LABEL_167;
            }

            if ((v203 & 1) == *(v177 + v122 + 65))
            {
              goto LABEL_152;
            }
          }
        }

        else
        {
          outlined init with copy of PathSet.Element(&v251, &v246);
          outlined copy of SDFLayer.SDFElement.Contents?(v125, v124, v127, v126, v128);
          outlined consume of SDFLayer.SDFElement.Contents?(v125, v124, v127, v126, v128);
          outlined consume of SDFLayer.SDFElement.Contents?(v221, v220, v219, v218, v217);
        }
      }
    }

    v113 = EnvironmentValues.init()(&v236);
    v115 = v236;
    v114 = v237;
    v116 = dword_18DDF8998[v206];
    MEMORY[0x1EEE9AC00](v113);
    *(&v194 - 8) = v106;
    *(&v194 - 7) = v107;
    *(&v194 - 6) = v108;
    *(&v194 - 5) = v109;
    *(&v194 - 4) = &v251;
    *(&v194 - 3) = v227;
    v191 = *&v21;
    LOBYTE(v192) = v222;
    BYTE1(v192) = v117;
    v193 = v110;
    v118 = [objc_opt_self() sharedDefaultDevice];
    v213 = &v194;
    v214 = v118;
    v215 = v115;
    v234 = &v194 - 10;
    if (v118)
    {
      v119 = swift_unknownObjectRetain();
    }

    else
    {
      v119 = [objc_opt_self() sharedDevice];
    }

    v231 = v119;
    type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDACA80;
    v130 = *MEMORY[0x1E69C71B8];
    *(inited + 32) = *MEMORY[0x1E69C71B8];
    *(inited + 40) = v24;
    v131 = *MEMORY[0x1E69C7198];
    *(inited + 64) = MEMORY[0x1E69E7DE0];
    *(inited + 72) = v131;
    LODWORD(v246) = v116;
    WORD2(v246) = 768;
    DWORD2(v246) = 1027;
    BYTE12(v246) = 3;
    *(inited + 80) = RasterizationOptions.resolvedColorMode.getter();
    v132 = *MEMORY[0x1E69C71A8];
    v133 = MEMORY[0x1E69E72F0];
    *(inited + 104) = MEMORY[0x1E69E72F0];
    *(inited + 112) = v132;
    *(inited + 120) = 1;
    v134 = *MEMORY[0x1E69C7188];
    *(inited + 144) = MEMORY[0x1E69E6370];
    *(inited + 152) = v134;
    *(inited + 184) = v133;
    *(inited + 160) = 0;
    v135 = v130;
    v136 = v131;
    v137 = v132;
    v138 = v134;
    v139 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23RBImageRendererPropertya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    type metadata accessor for (RBImageRendererProperty, Any)(0);
    swift_arrayDestroy();
    v140 = *MEMORY[0x1E69C71C0];
    v248 = MEMORY[0x1E69E6448];
    LODWORD(v246) = 2139095040;
    outlined init with take of Any(&v246, &v241);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v245 = v139;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v241, v140, v141);
    type metadata accessor for RBImageRendererProperty(0);
    lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v143 = swift_allocObject();
    v143[2] = v215;
    v143[3] = v114;
    v144 = v234;
    v143[4] = partial apply for closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:);
    v143[5] = v144;
    v145 = swift_allocObject();
    *(v145 + 16) = partial apply for closure #1 in static CGImageRef.render(size:scale:environment:options:backgroundGPUMode:renderer:);
    *(v145 + 24) = v143;
    v249 = partial apply for thunk for @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v250 = v145;
    *&v246 = MEMORY[0x1E69E9820];
    *(&v246 + 1) = 1107296256;
    v247 = thunk for @escaping @callee_guaranteed (@guaranteed RBDisplayList) -> ();
    v248 = &block_descriptor_21;
    v146 = _Block_copy(&v246);

    v234 = [v231 renderImageInRect:isa options:v146 renderer:{0.0, 0.0, v108, v109}];
    swift_unknownObjectRelease();

    _Block_release(v146);
    swift_unknownObjectRelease();

    LOBYTE(v146) = swift_isEscapingClosureAtFileLocation();

    v25 = v227;
    if (v146)
    {
      goto LABEL_161;
    }

    v147 = *(*&v6[v27] + 16);
    if (v147)
    {
      v148 = 0;
      v149 = 0;
      v150 = v254;
      v256 = v254;
      v231 = *(&v253 + 1);
      do
      {
        swift_beginAccess();
        v151 = *&v6[v27];
        v152 = swift_isUniquelyReferenced_nonNull_native();
        *&v6[v27] = v151;
        v153 = v235;
        if ((v152 & 1) == 0)
        {
          v151 = specialized _ArrayBuffer._consumeAndCreateNew()(v151);
          *&v6[v27] = v151;
        }

        if (v149 >= *(v151 + 2))
        {
          goto LABEL_147;
        }

        v154 = &v151[v148 + 64];
        if (*v154 >> 62)
        {
          if (v153 < __CocoaSet.count.getter())
          {
LABEL_121:
            v155 = *v154;
            if ((*v154 & 0xC000000000000001) != 0)
            {
              v156 = MEMORY[0x193AC03C0](v153);
            }

            else
            {
              if (v153 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_150;
              }

              v156 = *(v155 + 8 * v153 + 32);
            }

            goto LABEL_128;
          }
        }

        else if (v153 < *((*v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v157 = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
        [v157 setHitTestsAsFill_];
        [v157 setAnchorPoint_];
        [v157 setSDFCoordinatedAnimationDelegate];
        [*&v151[v148 + 48] addSublayer_];
        v156 = v157;
        MEMORY[0x193ABF170]();
        if (*((*v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v150 = v256;
LABEL_128:
        *&v6[v27] = v151;
        swift_endAccess();
        v158 = v156;
        [v158 setPosition_];
        [v158 setBounds_];
        [v158 setContentsScale_];
        [v158 setContents_];
        [v158 setContentsZeroValueDistance_];
        [v158 setContentsOneValueDistance_];
        [v158 setMode_];
        v159 = v233;
        if (v150)
        {
          v159 = v232;
        }

        v160 = v159;
        [v158 setOperation_];

        v161 = *&v6[v27];
        if (v149 >= *(v161 + 16))
        {
          goto LABEL_148;
        }

        ++v149;
        [v158 setHidden_];

        v148 += 40;
      }

      while (v147 != v149);
    }

    v162 = v226;
    swift_beginAccess();
    v163 = *&v6[v162];
    outlined init with copy of PathSet.Element(&v251, &v246);
    v164 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v162] = v163;
    v165 = v235;
    if ((v164 & 1) == 0)
    {
      v163 = specialized _ArrayBuffer._consumeAndCreateNew()(v163);
      *&v6[v162] = v163;
    }

    if (v165 >= *(v163 + 2))
    {
      goto LABEL_162;
    }

    v166 = v162;
    v167 = 8 * v216;
    v168 = &v163[v167];
    v169 = *&v163[8 * v216 + 32];
    v170 = *&v163[8 * v216 + 40];
    v171 = *&v163[8 * v216 + 56];
    v231 = *&v163[8 * v216 + 48];
    v172 = v220;
    *(v168 + 4) = v221;
    *(v168 + 5) = v172;
    v173 = v218;
    *(v168 + 6) = v219;
    *(v168 + 7) = v173;
    v174 = v163[v167 + 64];
    v168[64] = v217;
    *&v6[v166] = v163;
    swift_endAccess();
    outlined consume of SDFLayer.SDFElement.Contents?(v169, v170, v231, v171, v174);
    swift_beginAccess();
    v175 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v166] = v163;
    if ((v175 & 1) == 0)
    {
      v163 = specialized _ArrayBuffer._consumeAndCreateNew()(v163);
    }

    v88 = v228;
    if (v235 >= *(v163 + 2))
    {
      goto LABEL_163;
    }

    v163[v167 + 65] = v222;
    v26 = v226;
    *&v6[v226] = v163;
    swift_endAccess();
LABEL_22:
    outlined destroy of PathSet.Element(&v251);

    v28 = v88;
    if (v88 == v224)
    {
      goto LABEL_153;
    }
  }

  height = *(&v252 + 1);
  width = *&v252;
  if (vabdd_f64(*&v252, *(&v252 + 1)) >= 0.001)
  {
    v217 = 1;
    v218 = *(&v252 + 1);
    v219 = v252;
    v220 = *(&v251 + 1);
    y = *(&v251 + 1);
    v221 = v251;
    x = *&v251;
LABEL_87:
    outlined destroy of PathSet.Element(&v251);
    goto LABEL_88;
  }

  v54 = *&v252 * 0.5;
  v50 = *(&v251 + 1);
  v49 = *&v251;
LABEL_40:
  v57 = v50;
  v58 = v49;
  v257.origin.x = v49;
  v257.origin.y = v50;
  v257.size.width = width;
  v257.size.height = height;
  v59 = CGRectGetWidth(v257);
  v258.origin.x = v58;
  v258.origin.y = v57;
  v258.size.width = width;
  v258.size.height = height;
  v60 = CGRectGetHeight(v258);
  if (v60 >= v59)
  {
    v60 = v59;
  }

  v61 = v60 * 0.5;
  if (v61 >= v54)
  {
    v62 = v54;
  }

  else
  {
    v62 = v61;
  }

  v63 = v209;
  if (v48)
  {
    v63 = v208;
  }

  v234 = v63;
  v64 = *(*&v6[v27] + 16);
  v24 = v211;
  if (!v64)
  {
LABEL_67:
    v26 = v226;
    swift_beginAccess();
    v79 = *&v6[v26];
    v80 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v26] = v79;
    v81 = v235;
    if ((v80 & 1) == 0)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
      *&v6[v26] = v79;
    }

    v25 = v227;
    if (v81 < *(v79 + 2))
    {
      v82 = &v79[40 * v81];
      v83 = *(v82 + 4);
      v84 = *(v82 + 5);
      v86 = *(v82 + 6);
      v85 = *(v82 + 7);
      *(v82 + 2) = 0u;
      *(v82 + 3) = 0u;
      v87 = v82[64];
      v82[64] = -8;
      *&v6[v26] = v79;
      swift_endAccess();
      outlined consume of SDFLayer.SDFElement.Contents?(v83, v84, v86, v85, v87);
      v88 = v228;
      goto LABEL_22;
    }

    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v65 = 0;
  v66 = 0;
  v67 = v254;
  v255 = v254;
  v231 = *(&v253 + 1);
  while (1)
  {
    swift_beginAccess();
    v68 = *&v6[v27];
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *&v6[v27] = v68;
    v70 = v235;
    if ((v69 & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
      *&v6[v27] = v68;
    }

    if (v66 >= *(v68 + 2))
    {
      break;
    }

    v71 = &v68[v65 + 64];
    if (*v71 >> 62)
    {
      if (v70 >= __CocoaSet.count.getter())
      {
LABEL_58:
        v74 = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
        [v74 setHitTestsAsFill_];
        [v74 setAnchorPoint_];
        [v74 setSDFCoordinatedAnimationDelegate];
        [*&v68[v65 + 48] addSublayer_];
        v73 = v74;
        MEMORY[0x193ABF170]();
        if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v67 = v255;
        goto LABEL_61;
      }
    }

    else if (v70 >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v72 = *v71;
    if ((*v71 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x193AC03C0](v70);
    }

    else
    {
      if (v70 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v73 = *(v72 + 8 * v70 + 32);
    }

LABEL_61:
    *&v6[v27] = v68;
    swift_endAccess();
    v75 = v73;
    [v75 setPosition_];
    [v75 setBounds_];
    [v75 setCornerRadius_];
    [v75 setCornerCurve_];
    [v75 setMode_];
    v76 = v233;
    if (v67)
    {
      v76 = v232;
    }

    v77 = v76;
    [v75 setOperation_];

    [v75 setGradientOvalization_];
    v78 = *&v6[v27];
    if (v66 >= *(v78 + 16))
    {
      goto LABEL_146;
    }

    ++v66;
    [v75 setHidden_];

    v65 += 40;
    if (v64 == v66)
    {
      goto LABEL_67;
    }
  }

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
  outlined destroy of PathSet.Element(&v251);
  v25 = v227;
LABEL_153:
  v178 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v179 = *(*&v6[v178] + 16);
  if (v179)
  {

    v180 = (v235 + 40);
    v181 = (v199 >> 1) & 1;
    v182 = (v235 + 40);
    v183 = v200;
    do
    {
      v185 = *v182;
      v182 += 4;
      v184 = v185;
      if (v185)
      {
        v186 = *(v180 - 1);
        objc_opt_self();
        v187 = swift_dynamicCastObjCClassUnconditional();
        v188 = v184;
        v189 = v186;
        [v187 setSmoothness_];
        [v187 setMergeElements_];
      }

      v180 = v182;
      --v179;
    }

    while (v179);

    v25 = v227;
  }

  [v6 setContentsScale_];
  v190 = &v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  *v190 = v25;
  v190[1] = v21;
  *(v190 + 16) = 0;
  *&v6[OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization] = v210;
  *&v241 = v24;
  SDFLayer.finishUpdatingStyle(_:in:elementCount:backdropGroupID:)(v201, &v241, v224, v202);
}

id SDFLayer.beginUpdatingStyle(_:shapeBounds:)(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *&v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle];

  styleTypesEqual(_:_:)(a1, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    SDFLayer.resetSDFEffects()();
    SDFLayer.makeSDFEffects(for:shapeFilter:)(a1, 0, 0);
    if (v14)
    {
      v15 = v14;
      [v5 addSublayer_];
    }

    if (v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] == 1 && (v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] & 1) == 0)
    {
      if (one-time initialization token for defaultContentGroup != -1)
      {
        swift_once();
      }

      SDFLayer.makeSDFEffects(for:shapeFilter:)(static SDFStyle.defaultContentGroup, 0, 0);
      if (v16)
      {
        v17 = v16;
        [v5 addSublayer_];
      }
    }
  }

  v18 = &v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds];
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  result = CGRectEqualToRect(*&v5[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds], v21);
  if ((result & 1) == 0)
  {
    *v18 = a2;
    v18[1] = a3;
    v18[2] = a4;
    v18[3] = a5;

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinearGradient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

void lazy protocol witness table accessor for type MaterialEffectState and conformance MaterialEffectState()
{
  if (!lazy protocol witness table cache variable for type MaterialEffectState and conformance MaterialEffectState)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffectState, &unk_1F00A5C90, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffectState and conformance MaterialEffectState);
  }
}

uint64_t initializeWithCopy for MaterialEffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void lazy protocol witness table accessor for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill()
{
  if (!lazy protocol witness table cache variable for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffectUpdatedFill, &unk_1F00A61C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill);
  }
}

void lazy protocol witness table accessor for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment()
{
  if (!lazy protocol witness table cache variable for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffectEnvironment, &unk_1F00A6148, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment);
  }
}

void lazy protocol witness table accessor for type MaterialEffectTransaction and conformance MaterialEffectTransaction()
{
  if (!lazy protocol witness table cache variable for type MaterialEffectTransaction and conformance MaterialEffectTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for MaterialEffectTransaction, &unk_1F00A60C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MaterialEffectTransaction and conformance MaterialEffectTransaction);
  }
}

void lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init()
{
  if (!lazy protocol witness table cache variable for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeSet.Wrapper.Init, &type metadata for _ShapeSet.Wrapper.Init, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init);
  }
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9_ShapeSetV7WrapperV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
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
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    memset(&v10[6], 0, 36);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ShapeSet.Wrapper> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper()
{
  if (!lazy protocol witness table cache variable for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper);
  }
}

uint64_t getEnumTagSinglePayload for ViewTraitKeys(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

void lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData()
{
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyAnimatableData, &type metadata for _AnyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyAnimatableData, &type metadata for _AnyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }
}

{
  if (!lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AnyAnimatableData, &type metadata for _AnyAnimatableData, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AnyAnimatableData and conformance _AnyAnimatableData);
  }
}

uint64_t *assignWithCopy for GlassEffectGroupModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v4;
  return a1;
}

uint64_t *assignWithCopy for GlassEffectIDModifier(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t assignWithCopy for GlassEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t storeEnumTagSinglePayload for LinearGradient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for ViewTransform(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t Element.deinit()
{
  v1 = *v0;
  v2 = AnyElement.deinit();
  (*(*(*(v1 + 128) - 8) + 8))(v2 + *(*v2 + 152));
  return v2;
}

uint64_t Element.__deallocating_deinit()
{
  Element.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyElement.deinit()
{

  while (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v1 = v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {

      break;
    }
  }

  v4 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + 16);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t CoordinateSpaceNode.deinit()
{

  while (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v1 = v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {

      break;
    }
  }

  outlined destroy of CoordinateSpace(v0 + 24);
  v4 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + 16);
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t CoordinateSpaceNode.__deallocating_deinit()
{
  CoordinateSpaceNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v68 = type metadata accessor for UncheckedSendable(0, v8, a3, a4);
  v9 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - v10;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - v13;
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = *a1;
  v64 = a2;
  v69 = *(a2 + 24);
  v70 = &v56 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  v62 = AssociatedTypeWitness;
  result = swift_dynamicCast();
  if (result)
  {
    v22 = v71;
    (*(v12 + 16))(v14, v5, v11);
    if ((*(v15 + 48))(v14, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      return (*(v12 + 8))(v14, v11);
    }

    else
    {
      v58 = v15;
      (*(v15 + 32))(v70, v14, v8);
      v65 = v8;
      v23 = v62;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = *(AssociatedConformanceWitness + 32);
      v60 = AssociatedConformanceWitness;
      v61 = v22;
      v25(&v72, v23);
      v26 = v72;
      v27 = *(v72 + 16);
      v28 = v9;
      if (v27)
      {
        v72 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v29 = v72;
        v30 = *(v72 + 16);
        v31 = 32;
        do
        {
          v32 = *(v26 + v31);
          v72 = v29;
          v33 = *(v29 + 24);
          if (v30 >= v33 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v30 + 1, 1);
            v29 = v72;
          }

          *(v29 + 16) = v30 + 1;
          *(v29 + 8 * v30 + 32) = v32;
          v31 += 16;
          ++v30;
          --v27;
        }

        while (v27);
      }

      else
      {

        v29 = MEMORY[0x1E69E7CC0];
      }

      v34 = *(v5 + *(v64 + 36));
      v35 = v34[2];
      v36 = MEMORY[0x1E69E7CC0];
      v57 = v5;
      if (v35)
      {
        v72 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v36 = v72;
        v37 = v34 + 4;
        v38 = *(v72 + 16);
        do
        {
          v39 = *v37;
          v72 = v36;
          v40 = *(v36 + 24);
          if (v38 >= v40 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v38 + 1, 1);
            v36 = v72;
          }

          *(v36 + 16) = v38 + 1;
          *(v36 + 8 * v38 + 32) = v39;
          v37 += 2;
          ++v38;
          --v35;
        }

        while (v35);
      }

      LODWORD(v64) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSO_Tt1g5(v29, v36);

      v41 = v34[2];
      if (v41)
      {
        v63 = type metadata accessor for MainActor();
        v59 = v60 + 56;
        v42 = (v58 + 16);
        v43 = (v28 + 8);
        v44 = v34 + 5;
        do
        {
          v50 = *(v44 - 1);
          v51 = *v44;
          if (v64)
          {
            swift_unknownObjectRetain();
          }

          else
          {
            v52 = v60;
            v53 = *(v60 + 56);
            v54 = swift_unknownObjectRetain();
            v53(v54, v62, v52);
          }

          v44 += 2;
          v45 = v65;
          v46 = v66;
          (*v42)(v66, v70, v65);
          v47 = v67;
          v48 = UncheckedSendable.init(_:)(v46, v45, v67);
          MEMORY[0x1EEE9AC00](v48);
          v49 = v69;
          *(&v56 - 6) = v45;
          *(&v56 - 5) = v49;
          *(&v56 - 4) = v47;
          *(&v56 - 3) = v50;
          *(&v56 - 2) = v51;
          specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #3 in CoreInteractionRepresentableEffect.updatePlatformGroup(_:), (&v56 - 8), "SwiftUICore/CoreInteractionRepresentable.swift", 46, 2u, 230);
          swift_unknownObjectRelease();
          (*v43)(v47, v68);
          --v41;
        }

        while (v41);
      }

      v55 = v65;
      $defer #1 <A>() in CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(v61, v57, v65, v69);
      swift_unknownObjectRelease();
      return (*(v58 + 8))(v70, v55);
    }
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void styleTypesEqual(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 60;
  if ((a1 >> 60) > 4 && v2 > 7)
  {
    if (v2 == 8)
    {
      if (a2 >> 60 == 8)
      {
        v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v27 = v9;
        v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = v10;
        if (specialized static Material.Layer.SDFLayer.GroupType.== infix(_:_:)(&v26, &v24))
        {
          v23 = *(v8 + 16);
          if (v23 == *(v11 + 16))
          {

            v12 = 0;
            v13 = (v8 + 64);
            v14 = (v11 + 64);
            while (1)
            {
              if (v23 == v12)
              {
LABEL_21:

                return;
              }

              if (v12 >= *(v8 + 16))
              {
                break;
              }

              v15 = *(v11 + 16);
              if (v12 == v15)
              {
                goto LABEL_21;
              }

              if (v12++ >= v15)
              {
                goto LABEL_27;
              }

              if (*(v13 - 1) == *(v14 - 1) && *v13 == *v14)
              {
                v16 = *(v13 - 4);
                v17 = *(v13 - 3);
                v13 += 7;
                v18 = v14 + 7;
                v19 = *(v14 - 4);
                v20 = *(v14 - 3);

                outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v17);

                outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v20);
                styleTypesEqual(_:_:)(v16, v19);
                v22 = v21;

                outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v20);

                outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v17);
                v14 = v18;
                if (v22)
                {
                  continue;
                }
              }

              goto LABEL_21;
            }

            __break(1u);
LABEL_27:
            __break(1u);
          }
        }
      }
    }

    else if (v2 == 9 && a2 >> 60 == 9)
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      styleTypesEqual(_:_:)(v4, v5);
      if (v7)
      {
        styleTypesEqual(_:_:)(v3, v6);
      }

      else
      {
      }
    }
  }
}

uint64_t specialized static Material.Layer.SDFLayer.GroupType.== infix(_:_:)(unint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!(v3 >> 6))
  {
    return v5 < 0x40 && *&v2 == *&v4;
  }

  v6 = a1[1];
  v7 = *(a2 + 1);
  if (v3 >> 6 != 1)
  {
    if (v6 | v2 || v3 != 128)
    {
      v12 = v2 == 1 && v6 == 0;
      if (v12 && v3 == 128)
      {
        if ((v5 & 0xC0) == 0x80 && v4 == 1 && !v7 && v5 == 128)
        {
          return 1;
        }
      }

      else if (v2 == 2 && !v6 && v3 == 128)
      {
        if ((v5 & 0xC0) == 0x80 && v4 == 2 && !v7 && v5 == 128)
        {
          return 1;
        }
      }

      else if ((v5 & 0xC0) == 0x80 && v4 == 3 && !v7 && v5 == 128)
      {
        return 1;
      }
    }

    else
    {
      v10 = v7 | v4;
      v11 = (v5 & 0xC0) == 0x80 && v10 == 0;
      if (v11 && v5 == 128)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v5 & 0xC0) != 0x40)
  {
    return 0;
  }

  v8 = (COERCE_FLOAT(*a1) == *&v4) & (HIDWORD(v2) ^ ((v4 & 0x100000000) == 0)) & ((v2 >> 40) & 1 ^ ((v4 & 0x10000000000) == 0)) & (HIWORD(v2) ^ ((v4 & 0x1000000000000) == 0));
  if (*(a1 + 1) != a2[1])
  {
    v8 = 0;
  }

  return v8 & (v5 ^ v3 ^ 1);
}

void SDFStyle.distanceRange.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v1 > 7)
    {
      goto LABEL_14;
    }

    if (v1 == 5)
    {
LABEL_31:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v24 = -*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = v24 - fabs(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18));
      if (-1.0 - v23 < v25)
      {
        v25 = -1.0 - v23;
      }

      v26 = 1.0 - v23;
      if (1.0 - v23 < v24)
      {
        v26 = -*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      if (v25 <= v26)
      {
        return;
      }

      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    if (v1 != 6)
    {
      goto LABEL_54;
    }

    LODWORD(v1) = a1;
    if (-*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) - fabs(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30)) <= -*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
    {
      return;
    }

    __break(1u);
  }

  if (v1 <= 1)
  {
    goto LABEL_24;
  }

  if (v1 == 2)
  {
LABEL_27:
    v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *(v19 + 16);
    if (!v20)
    {
      return;
    }

    v21 = *(v19 + 32);
    v22 = *(v19 + 32 + 8 * v20 - 8);
    if (v21 > v22 || v21 <= v22 + 1.0)
    {
      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v1 != 3)
  {
    return;
  }

  LODWORD(v1) = a1;
  v2 = 0.0;
  if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) >= 0.0)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  }

  if (v2 * 3.0 - *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) >= -*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
  {
    return;
  }

  __break(1u);
LABEL_14:
  if (v1 == 8)
  {
    v27 = *(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28) + 16);
    if (v27)
    {
      v28 = 0.0;
      v29 = 0.0;
      v30 = ( + 40);
      v31 = 1;
      do
      {
        v32 = *(v30 - 1);
        v33 = *v30;

        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v33);
        SDFStyle.distanceRange.getter(v32);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v33);
        if ((v39 & 1) == 0)
        {
          v40 = v35;
          v41 = v37;
          if ((v31 & 1) == 0)
          {
            if (v35 >= v28)
            {
              v40 = v28;
            }

            if (v29 > v37)
            {
              v41 = v29;
            }

            if (v40 > v41)
            {
              __break(1u);
              return;
            }
          }

          v31 = 0;
          v28 = v40;
          v29 = v41;
        }

        v30 += 7;
        --v27;
      }

      while (v27);
    }

    return;
  }

  if (v1 != 9)
  {
    return;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

  SDFStyle.distanceRange.getter(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  SDFStyle.distanceRange.getter(v4);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v16)
  {
    return;
  }

  v17 = v12;
  v18 = v14;
  if (v10)
  {
    return;
  }

  if (v12 >= v6)
  {
    v17 = v6;
  }

  if (v8 > v14)
  {
    v18 = v8;
  }

  if (v17 <= v18)
  {
    return;
  }

  __break(1u);
LABEL_24:
  if (!v1)
  {
    if (-1.0 - *(a1 + 16) <= 1.0 - *(a1 + 16))
    {
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  if (v42 < 0.0)
  {
    v42 = 0.0;
  }

  if (-*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) - (v42 * 0.5 + 1.0) > v42 * 0.5 + 1.0 - *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
  {
    __break(1u);
LABEL_54:
    v43 = -*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v44 = v43 - fabs(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x48));
    v45 = v43 - fabs(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80));
    if (v45 < v44)
    {
      v44 = v45;
    }

    if (v44 > v43)
    {
      goto LABEL_62;
    }
  }
}

void SDFStyle.needsDistanceGradient.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 4 && v1 >= 8)
  {
    if (v1 == 8)
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v6 = *(v5 + 16);

      v7 = 0;
      if (v6)
      {
        v8 = 0;
        v9 = (v5 + 40);
        while (v8 < *(v5 + 16))
        {
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v11 = *(v9 - 1);
            v10 = *v9;

            outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v10);
            SDFStyle.needsDistanceGradient.getter(v11);
            v7 = v12;

            outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v10);
          }

          ++v8;
          v9 += 7;
          if (v6 == v8)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_16:
      }
    }

    else if (v1 == 9)
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      SDFStyle.needsDistanceGradient.getter(v2);
      if (v4)
      {
      }

      else
      {
        SDFStyle.needsDistanceGradient.getter(v3);
      }
    }
  }
}

double outlined copy of SDFLayer.SDFElement.Contents?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return outlined copy of SDFLayer.SDFElement.Contents(a1, a2, a3, a4, a5);
  }

  return result;
}

double outlined consume of SDFLayer.SDFElement.Contents?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xF7u)
  {
    return outlined consume of SDFLayer.SDFElement.Contents(result, a2, a3, a4, a5);
  }

  return v5;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSO_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t $defer #1 <A>() in CoreInteractionRepresentableEffect.updatePlatformGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + *(type metadata accessor for CoreInteractionRepresentableEffect(0, a3, a4, a4) + 36));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);

  v6 = swift_checkMetadataState();
  return v5(&v8, v6, AssociatedConformanceWitness);
}

void *static _OffsetEffect._makeView(modifier:inputs:body:)(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v4;
  v5 = *(a2 + 48);
  v38 = *(a2 + 64);
  v6 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v6;
  v33 = v35[0];
  v34 = v6;
  v32[0] = *(a2 + 36);
  v7 = *a1;
  v39 = *(a2 + 80);
  *(v32 + 12) = v5;
  v15 = *(a2 + 68);
  v8 = v36;
  v9 = v38;
  outlined init with copy of _ViewInputs(v35, v27);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v10 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v11 = specialized CachedEnvironment.attribute<A>(id:_:)(v10, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  *&v27[0] = __PAIR64__(v9, v7);
  DWORD2(v27[0]) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type OffsetPosition and conformance OffsetPosition();
  LODWORD(v10) = Attribute.init<A>(body:value:flags:update:)();
  v12 = v8 | 8;
  v22[0] = v33;
  v22[1] = v34;
  *v23 = v12;
  *&v23[16] = *(v32 + 12);
  *&v23[4] = v32[0];
  *v24 = v10;
  *&v24[4] = v15;
  v18 = *v23;
  v19 = *&v23[16];
  v20 = *v24;
  v21 = HIDWORD(v15);
  v16 = v33;
  v17 = v34;
  v13 = outlined init with copy of _ViewInputs(v22, v27);
  a3(v13, &v16);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
  v27[0] = v33;
  v27[1] = v34;
  v28 = v12;
  *v29 = v32[0];
  *&v29[12] = *(v32 + 12);
  v30 = v10;
  v31 = v15;
  return outlined destroy of _ViewInputs(v27);
}

void lazy protocol witness table accessor for type OffsetPosition and conformance OffsetPosition()
{
  if (!lazy protocol witness table cache variable for type OffsetPosition and conformance OffsetPosition)
  {
    swift_getWitnessTable(protocol conformance descriptor for OffsetPosition, &unk_1F004E4D0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OffsetPosition and conformance OffsetPosition);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV8SDFLayerV05GroupE0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v73 = v11;
  v74 = v10;
  v75 = v9;
  v76 = v8;
  v77 = v7;
  v78 = v6;
  v79 = v5;
  v80 = v4;
  v81 = v2;
  v82 = v3;
  v13 = (a1 + 32);
  v14 = (a2 + 32);
  for (i = v12 - 1; ; --i)
  {
    v16 = v13[1];
    v67 = *v13;
    *v68 = v16;
    *&v68[16] = v13[2];
    v69 = *(v13 + 12);
    v17 = v67;
    v18 = v14[1];
    v70 = *v14;
    v19 = v14[2];
    *v71 = v18;
    *&v71[16] = v19;
    v72 = *(v14 + 12);
    v20 = v70;
    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v67, v66);
    outlined init with copy of Material.Layer.SDFLayer.GroupLayer(&v70, v66);
    if ((static SDFStyle.== infix(_:_:)(v17, v20) & 1) == 0)
    {
      break;
    }

    v21 = *(&v67 + 1);
    v22 = *(&v70 + 1);
    v23 = *(&v70 + 1) >> 62;
    if (*(&v67 + 1) >> 62)
    {
      if (*(&v67 + 1) >> 62 == 1)
      {
        if (v23 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v23 != 2)
      {
LABEL_43:
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v70 + 1));
        v33 = v21;
LABEL_46:
        outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v33);
        outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
        outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
        break;
      }

      v62 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x1C);
      v63 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v60 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x24);
      v61 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v58 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x2C);
      v59 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v57 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v55 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
      v53 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v51 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x3C);
      v49 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v47 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x44);
      v45 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      v43 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x4C);
      v41 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v39 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x54);
      v37 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x58);
      v35 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x5C);
      v24 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v25 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x14);
      v64 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((*(&v67 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x1C);
      v28 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v29 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x24);
      v30 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v31 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x2C);
      v56 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v54 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
      v52 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v50 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x3C);
      v48 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v46 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x44);
      v44 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
      v42 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x4C);
      v40 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v38 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x54);
      v36 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x58);
      v34 = *((*(&v70 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x5C);
      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v70 + 1));
      outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v21);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
      if (v65 != v64 || v24 != v25 || v63 != v27 || v62 != v26 || v61 != v28 || v60 != v29 || v59 != v30 || v58 != v31 || v57 != v56 || v55 != v54 || v53 != v52 || v51 != v50 || v49 != v48 || v47 != v46 || v45 != v44 || v43 != v42 || v41 != v40 || v39 != v38 || v37 != v36 || v35 != v34)
      {
        return 0;
      }
    }

    else
    {
      if (v23)
      {
        v33 = *(&v70 + 1);
        goto LABEL_46;
      }

      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v67 + 1));
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v22);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
      outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
      if (v21 != v22)
      {
        return 0;
      }
    }

    if (*v68 != *v71 || *&v68[8] != *&v71[8] || *&v68[24] != *&v71[24] || *&v68[28] != *&v71[28] || v69 != v72)
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v14 = (v14 + 56);
    v13 = (v13 + 56);
  }

  outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v70);
  outlined destroy of Material.Layer.SDFLayer.GroupLayer(&v67);
  return 0;
}

uint64_t specialized static SDFStyle.Group.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *a2;
  v7 = *(a2 + 16);
  v9 = a2[3];
  v8 = a2[4];
  if (!(v3 >> 6))
  {
    if (v7 > 0x3F || *&v2 != *&v6)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v10 = a1[1];
  v11 = a2[1];
  if (v3 >> 6 != 1)
  {
    if (v10 | v2 || v3 != 128)
    {
      v15 = v2 == 1 && v10 == 0;
      if (v15 && v3 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 1)
        {
          return 0;
        }
      }

      else if (v2 == 2 && !v10 && v3 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 2)
        {
          return 0;
        }
      }

      else if ((v7 & 0xC0) != 0x80 || v6 != 3)
      {
        return 0;
      }

      if (v11)
      {
        return 0;
      }
    }

    else
    {
      v13 = v11 | v6;
      if ((v7 & 0xC0) != 0x80 || v13 != 0)
      {
        return 0;
      }
    }

    if (v7 == 128)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if ((v7 & 0xC0) != 0x40)
  {
    return 0;
  }

  v23 = *a1;
  v24 = BYTE4(v2) & 1;
  v25 = BYTE5(v2) & 1;
  v26 = BYTE6(v2) & 1;
  v27 = v10;
  v28 = v3 & 1;
  v17 = v6;
  v18 = BYTE4(v6) & 1;
  v19 = BYTE5(v6) & 1;
  v20 = BYTE6(v6) & 1;
  v21 = v11;
  v22 = v7 & 1;
  if ((specialized static Material.Layer.SDFLayer.BackdropLayer.== infix(_:_:)(&v23, &v17) & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8MaterialVACE5LayerV8SDFLayerV05GroupE0V_Tt1g5(v5, v9) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(v4, v8);
}

uint64_t static SDFStyle.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v2 <= 1)
    {
      v16 = a2 >> 60;
      if (v2)
      {
        if (v16 != 1)
        {
          goto LABEL_58;
        }

        v29 = ~vaddvq_s32(vandq_s8(vceqq_f32(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20)), xmmword_18DDA9F30)) & 0xF;
        v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && v29 == 0;
        v31 = v30 && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (!v31 || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v16)
        {
          goto LABEL_58;
        }

        v17 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 24), *(a2 + 24)), xmmword_18DDA9F30)) & 0xF;
        v18 = *(a1 + 16) == *(a2 + 16) && v17 == 0;
        if (!v18 || *(a1 + 40) != *(a2 + 40))
        {
          goto LABEL_58;
        }
      }

      goto LABEL_48;
    }

    if (v2 == 2)
    {
      if (a2 >> 60 != 2)
      {
        goto LABEL_58;
      }

      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v20, v21) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v19, v22) & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v2 == 3)
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v42 = v8;
      *&v42[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v42[26] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
      if (a2 >> 60 == 3)
      {
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        *v48 = v9;
        *&v48[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        *&v48[26] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
        v7 = specialized static SDFStyle.Shadow.== infix(_:_:)(&v41, &v47);
        return v7 & 1;
      }
    }

    else if (a2 >> 60 == 4)
    {
      v25 = *(**((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 112);

      v27 = v25(v26);

      return v27 & 1;
    }

LABEL_58:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 > 7)
  {
    if (v2 == 8)
    {
      if (a2 >> 60 == 8)
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v48[0] = v23;
        *&v48[8] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v42[0] = v24;
        *&v42[8] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v7 = specialized static SDFStyle.Group.== infix(_:_:)(&v47, &v41);
        return v7 & 1;
      }

      goto LABEL_58;
    }

    v10 = a2 >> 60;
    if (v2 != 9)
    {
      if (v10 == 10)
      {
        v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          v40 = 0;
        }

        v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20) && v40;
        return v7 & 1;
      }

      goto LABEL_58;
    }

    if (v10 == 9)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      if ((static SDFStyle.== infix(_:_:)(v12, v13) & 1) == 0)
      {

        goto LABEL_58;
      }

      v15 = static SDFStyle.== infix(_:_:)(v11, v14);

      if ((v15 & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_48:
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_58;
  }

  if (v2 == 5)
  {
    if (a2 >> 60 == 5)
    {
      v7 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10)), vceqq_f64(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20))))) & (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30));
      return v7 & 1;
    }

    goto LABEL_58;
  }

  if (v2 != 6)
  {
    if (a2 >> 60 == 7)
    {
      v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v45 = v32;
      v46 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v33 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *&v42[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v42[32] = v33;
      v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *&v42[48] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v43 = v34;
      v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v42 = v35;
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v50 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v51 = v36;
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      *&v48[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *&v48[32] = v37;
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *&v48[48] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v49 = v38;
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v48 = v39;
      v7 = specialized static Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.== infix(_:_:)(&v47, &v41);
      return v7 & 1;
    }

    goto LABEL_58;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v42[16] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *&v42[32] = v3;
  *&v42[41] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
  v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  *v42 = v4;
  if (a2 >> 60 != 6)
  {
    goto LABEL_58;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  *&v48[16] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  *&v48[32] = v5;
  *&v48[41] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  *v48 = v6;
  v7 = specialized static SDFStyle.GlassHighlight.== infix(_:_:)(&v41, &v47);
  return v7 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI14GraphicsFilterO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v49 = v2;
  v50 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v36 = v5[4];
    v37 = v8;
    v38[0] = v5[6];
    v9 = v38[0];
    *(v38 + 12) = *(v5 + 108);
    v10 = v5[1];
    v33[0] = *v5;
    v33[1] = v10;
    v11 = v5[3];
    v34 = v5[2];
    v35 = v11;
    v26 = v33[0];
    v27 = v10;
    v28 = v34;
    v29 = v11;
    v30 = v36;
    v31 = v8;
    v32[0] = v9;
    *(v32 + 12) = *(v38 + 12);
    v12 = v6[5];
    v42 = v6[4];
    v43 = v12;
    v44[0] = v6[6];
    v13 = v44[0];
    *(v44 + 12) = *(v6 + 108);
    v14 = v6[1];
    v39[0] = *v6;
    v39[1] = v14;
    v15 = v6[3];
    v40 = v6[2];
    v41 = v15;
    v19 = v39[0];
    v20 = v14;
    v21 = v40;
    v22 = v15;
    v23 = v42;
    v24 = v12;
    v25[0] = v13;
    *(v25 + 12) = *(v44 + 12);
    outlined init with copy of GraphicsFilter(v33, v18);
    outlined init with copy of GraphicsFilter(v39, v18);
    v16 = specialized static GraphicsFilter.== infix(_:_:)(&v26, &v19);
    v45[4] = v23;
    v45[5] = v24;
    v46[0] = v25[0];
    *(v46 + 12) = *(v25 + 12);
    v45[0] = v19;
    v45[1] = v20;
    v45[2] = v21;
    v45[3] = v22;
    outlined destroy of GraphicsFilter(v45);
    v47[4] = v30;
    v47[5] = v31;
    v48[0] = v32[0];
    *(v48 + 12) = *(v32 + 12);
    v47[0] = v26;
    v47[1] = v27;
    v47[2] = v28;
    v47[3] = v29;
    outlined destroy of GraphicsFilter(v47);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 8;
    v6 += 8;
  }

  return 1;
}

uint64_t specialized static GraphicsFilter.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v156 = a1[4];
  v157 = v3;
  v4 = a1[5];
  v158[0] = a1[6];
  *(v158 + 12) = *(a1 + 108);
  v5 = a1[1];
  v152 = *a1;
  v153 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v154 = a1[2];
  v155 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v161 = a2[2];
  v162 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v159 = v9;
  v160 = v12;
  *(v165 + 12) = *(a2 + 108);
  v15 = a2[5];
  v165[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v163 = a2[4];
  v164 = v17;
  v18 = a1[2];
  v166[3] = a1[3];
  v166[2] = v18;
  v19 = a1[1];
  v166[0] = *a1;
  v166[1] = v19;
  *(v167 + 12) = *(a1 + 108);
  v20 = a1[4];
  v166[5] = a1[5];
  v166[4] = v20;
  v167[4] = v13;
  v167[3] = v10;
  v167[0] = a1[6];
  v167[2] = v14;
  *(v168 + 12) = *(a2 + 108);
  v168[0] = a2[6];
  v167[7] = v15;
  v167[5] = v16;
  v167[6] = v163;
  v169[2] = v154;
  v169[3] = v2;
  v169[0] = v8;
  v169[1] = v7;
  v21 = a1[6];
  *&v170[12] = *(a1 + 108);
  v169[5] = v4;
  *v170 = v21;
  v169[4] = v156;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v169))
  {
    case 1u:
      v57 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 1)
      {
        v58 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
        v143 = *(v57 + 64);
        *v144 = *(v57 + 80);
        *&v144[16] = *(v57 + 96);
        *&v144[28] = *(v57 + 108);
        v140 = *v57;
        v141 = *(v57 + 16);
        *v142 = *(v57 + 32);
        *&v142[16] = *(v57 + 48);
        v132 = *(v58 + 64);
        *v133 = *(v58 + 80);
        *&v133[16] = *(v58 + 96);
        *&v133[28] = *(v58 + 108);
        v129 = *v58;
        v130 = *(v58 + 16);
        *v131 = *(v58 + 32);
        *&v131[16] = *(v58 + 48);
        outlined init with copy of GraphicsFilter(&v159, v124);
        outlined init with copy of GraphicsFilter(&v152, v124);
        outlined init with copy of GraphicsFilter(&v159, v124);
        outlined init with copy of GraphicsFilter(&v152, v124);
        v59 = specialized static VariableBlurStyle.== infix(_:_:)(&v140, &v129);
        goto LABEL_55;
      }

      v143 = v156;
      *v144 = v157;
      *&v144[16] = v158[0];
      *&v144[28] = *(v158 + 12);
      v140 = v152;
      v141 = v153;
      *v142 = v154;
      *&v142[16] = v155;
      v103 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
      outlined init with copy of VariableBlurStyle(v103, &v129);
      goto LABEL_75;
    case 2u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 2)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    case 3u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 3)
      {
        goto LABEL_45;
      }

LABEL_28:
      v143 = v156;
      *v144 = v157;
      *&v144[16] = v158[0];
      *&v144[28] = *(v158 + 12);
      v140 = v152;
      v141 = v153;
      *v142 = v154;
      *&v142[16] = v155;
      v52 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
      outlined init with copy of GraphicsFilter.DisplacementMap(v52, &v129);
      goto LABEL_75;
    case 4u:
      v47 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 4)
      {
        goto LABEL_75;
      }

      v48 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140 = *v47;
      v141 = *(v47 + 16);
      *v142 = *(v47 + 32);
      *&v142[13] = *(v47 + 45);
      v129 = *v48;
      v130 = *(v48 + 16);
      *v131 = *(v48 + 32);
      *&v131[13] = *(v48 + 45);
      v45 = specialized static ResolvedShadowStyle.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 5u:
      v68 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v111 = *(v68 + 48);
      v112 = *(v68 + 32);
      v115 = *(v68 + 16);
      v121 = *v68;
      v69 = *(v68 + 64);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 5)
      {
        goto LABEL_75;
      }

      v70 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v71 = *(v70 + 64);
      v109 = *(v70 + 16);
      v110 = *v70;
      v107 = *(v70 + 48);
      v108 = *(v70 + 32);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v35 = v69 == v71;
      v36 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v121, v110), vceqq_f64(v115, v109)), vuzp1q_s32(vceqq_f64(v112, v108), vceqq_f64(v111, v107)))));
      goto LABEL_43;
    case 6u:
      v77 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 6)
      {
        goto LABEL_75;
      }

      v78 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v130 = *(v77 + 16);
      *v131 = *(v77 + 32);
      *&v131[16] = *(v77 + 48);
      v132 = *(v77 + 64);
      v129 = *v77;
      v141 = *(v78 + 16);
      *v142 = *(v78 + 32);
      *&v142[16] = *(v78 + 48);
      v143 = *(v78 + 64);
      v140 = *v78;
      if (!specialized static _ColorMatrix.== infix(_:_:)(v129.f32, v140.f32))
      {
        goto LABEL_77;
      }

      v45 = *(v77 + 80) ^ *(v78 + 80) ^ 1;
      return v45 & 1;
    case 7u:
      v53 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v120 = *v53;
      v54 = *(v53 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 7)
      {
        goto LABEL_75;
      }

      v55 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v56 = *(v55 + 16);
      v114 = *v55;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if (vminv_u16(vmovn_s32(vceqq_f32(v120, v114))))
      {
        goto LABEL_31;
      }

      goto LABEL_77;
    case 8u:
      v90 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v122 = *v90;
      v54 = *(v90 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 8)
      {
        goto LABEL_75;
      }

      v91 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v56 = *(v91 + 16);
      v116 = *v91;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if ((vminv_u16(vmovn_s32(vceqq_f32(v122, v116))) & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_31:
      if (v54 != v56)
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 9u:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 9)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xAu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 10)
      {
        goto LABEL_57;
      }

      goto LABEL_75;
    case 0xBu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xCu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 12)
      {
        goto LABEL_75;
      }

      goto LABEL_57;
    case 0xDu:
      v46 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 13)
      {
        goto LABEL_75;
      }

LABEL_57:
      v89 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v45 = v46 == v89;
      return v45 & 1;
    case 0xEu:
      v37 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 14)
      {
        goto LABEL_75;
      }

      v42 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v43 = *(v42 + 24);
      v119 = *v42;
      v44 = *(v42 + 16);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140.i64[0] = v38;
      v140.i64[1] = v39;
      *&v141 = v40;
      DWORD2(v141) = v41;
      v129 = v119;
      *&v130 = v44;
      DWORD2(v130) = v43;
      v45 = specialized static GraphicsFilter.ColorMonochrome.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 0xFu:
      v50 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 15)
      {
        goto LABEL_75;
      }

      v51 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v130 = *(v50 + 16);
      *v131 = *(v50 + 32);
      *&v131[16] = *(v50 + 48);
      v132 = *(v50 + 64);
      v129 = *v50;
      v141 = *(v51 + 16);
      *v142 = *(v51 + 32);
      *&v142[16] = *(v51 + 48);
      v143 = *(v51 + 64);
      v140 = *v51;
      if (!specialized static _ColorMatrix.== infix(_:_:)(v129.f32, v140.f32) || *(v50 + 80) != *(v51 + 80) || *(v50 + 84) != *(v51 + 84))
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 0x10u:
      v31 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v118 = *v31;
      v32 = *(v31 + 16);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 16)
      {
        goto LABEL_75;
      }

      v33 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v34 = *(v33 + 16);
      v113 = *v33;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v35 = v32 == v34;
      v36 = vminv_u16(vmovn_s32(vceqq_f32(v118, v113)));
LABEL_43:
      v45 = v36 & v35;
      return v45 & 1;
    case 0x11u:
      v60 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 17)
      {
        goto LABEL_75;
      }

      v61 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v140 = *v60;
      v141 = *(v60 + 16);
      *v142 = *(v60 + 32);
      *&v142[16] = *(v60 + 48);
      v129 = *v61;
      v130 = *(v61 + 16);
      *v131 = *(v61 + 32);
      *&v131[16] = *(v61 + 48);
      v45 = specialized static GraphicsFilter.ColorCurves.== infix(_:_:)(&v140, &v129);
      return v45 & 1;
    case 0x12u:
      v79 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v80 = *v79;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      v83 = *(v79 + 24);
      v84 = *(v79 + 32);
      v85 = *(v79 + 40);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 18)
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        v105 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v140);
        goto LABEL_75;
      }

      v86 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v87 = *v86;
      v88 = *(v86 + 24);
      v129.i64[0] = v80;
      v129.i64[1] = v81;
      *&v130 = v82;
      DWORD2(v130) = v83;
      *v131 = v84;
      *&v131[8] = v85;
      *v124 = v87;
      *&v124[8] = *(v86 + 8);
      *&v124[24] = v88;
      v125 = *(v86 + 32);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      v59 = specialized static GraphicsFilter.ShaderFilter.== infix(_:_:)(&v129, v124);
LABEL_55:
      v45 = v59;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      outlined destroy of GraphicsFilter(&v159);
      outlined destroy of GraphicsFilter(&v152);
      return v45 & 1;
    case 0x13u:
      v95 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v123 = *v95;
      v97 = *(v95 + 16);
      v96 = *(v95 + 20);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 19)
      {
        goto LABEL_75;
      }

      v98 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v100 = *(v98 + 16);
      v99 = *(v98 + 20);
      v117 = *v98;
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      if ((vminv_u16(vmovn_s32(vceqq_f32(v123, v117))) & 1) == 0 || v97 != v100 || v96 != v99)
      {
        goto LABEL_77;
      }

      goto LABEL_47;
    case 0x14u:
      v62 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v64 = *v62;
      v63 = *(v62 + 4);
      v24 = *(v62 + 8);
      v25 = *(v62 + 9);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 20)
      {
        goto LABEL_75;
      }

      v65 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v66 = *v65;
      v67 = *(v65 + 4);
      v28 = *(v65 + 8);
      v29 = *(v65 + 9);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v30 = v64 != v66;
      if (v63 != v67)
      {
        v30 = 1;
      }

      goto LABEL_40;
    case 0x15u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 21)
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        v104 = _s7SwiftUI14GraphicsFilterOWOj6_(&v140);
        outlined init with copy of GraphicsFilter.GlassBackgroundStyle(v104, &v129);
        goto LABEL_75;
      }

LABEL_45:
      v72 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      if (*v49 != *v72)
      {
        outlined init with copy of GraphicsFilter(&v159, &v140);
        v101 = &v152;
        v102 = &v140;
        goto LABEL_76;
      }

      v126 = *(v49 + 56);
      v127 = *(v49 + 72);
      v128[0] = *(v49 + 88);
      *(v128 + 12) = *(v49 + 100);
      *v124 = *(v49 + 8);
      *&v124[16] = *(v49 + 24);
      v125 = *(v49 + 40);
      v73 = *(v72 + 56);
      v74 = *(v72 + 88);
      v138 = *(v72 + 72);
      v139[0] = v74;
      *(v139 + 12) = *(v72 + 100);
      v75 = *(v72 + 24);
      v134 = *(v72 + 8);
      v135 = v75;
      v136 = *(v72 + 40);
      v137 = v73;
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      outlined init with copy of GraphicsFilter(&v159, &v140);
      outlined init with copy of GraphicsFilter(&v152, &v140);
      v76 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(v124, &v134);
      v132 = v138;
      *v133 = v139[0];
      *&v133[12] = *(v139 + 12);
      v129 = v134;
      v130 = v135;
      *v131 = v136;
      *&v131[16] = v137;
      outlined destroy of VariableBlurStyle.Mask(&v129);
      v143 = v127;
      *v144 = v128[0];
      *&v144[12] = *(v128 + 12);
      v140 = *v124;
      v141 = *&v124[16];
      *v142 = v125;
      *&v142[16] = v126;
      outlined destroy of VariableBlurStyle.Mask(&v140);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      outlined destroy of GraphicsFilter(&v159);
      outlined destroy of GraphicsFilter(&v152);
      if ((v76 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_47:
      v45 = 1;
      break;
    case 0x16u:
      v92 = *_s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 22)
      {
        v93 = *_s7SwiftUI14GraphicsFilterOWOj6_(&v145);
        v94 = *(*v92 + 120);
        outlined init with copy of GraphicsFilter(&v159, &v140);
        outlined init with copy of GraphicsFilter(&v152, &v140);
        v45 = v94(v93);
        outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      }

      else
      {
        v143 = v156;
        *v144 = v157;
        *&v144[16] = v158[0];
        *&v144[28] = *(v158 + 12);
        v140 = v152;
        v141 = v153;
        *v142 = v154;
        *&v142[16] = v155;
        _s7SwiftUI14GraphicsFilterOWOj6_(&v140);

LABEL_75:
        v101 = &v159;
        v102 = &v145;
LABEL_76:
        outlined init with copy of GraphicsFilter(v101, v102);
        outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
LABEL_77:
        v45 = 0;
      }

      break;
    case 0x17u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) == 23)
      {
        goto LABEL_69;
      }

      goto LABEL_75;
    case 0x18u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 24)
      {
        goto LABEL_75;
      }

      goto LABEL_69;
    case 0x19u:
      v149 = v163;
      v150 = v164;
      v151[0] = v165[0];
      *(v151 + 12) = *(v165 + 12);
      v145 = v159;
      v146 = v160;
      v147 = v161;
      v148 = v162;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145) != 25)
      {
        goto LABEL_75;
      }

LABEL_69:
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v45 = 1;
      return v45 & 1;
    default:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v169);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 9);
      v147 = v161;
      v148 = v162;
      v145 = v159;
      v146 = v160;
      *(v151 + 12) = *(v165 + 12);
      v150 = v164;
      v151[0] = v165[0];
      v149 = v163;
      if (_s7SwiftUI14GraphicsFilterOWOg(&v145))
      {
        goto LABEL_75;
      }

      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(&v145);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 9);
      outlined destroy of (GraphicsFilter, GraphicsFilter)(v166);
      v30 = v23 != v27;
LABEL_40:
      v45 = (v30 | v24 ^ v28 | v25 ^ v29) ^ 1;
      return v45 & 1;
  }

  return v45 & 1;
}

uint64_t _AnyCAFilterProvider.isEqual(to:)(uint64_t a1)
{
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _AnyCAFilterProvider.isEqual(to:), v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v2, &v4);

  return v4 & 1;
}

uint64_t partial apply for closure #1 in _AnyCAFilterProvider.isEqual(to:)@<X0>(_BYTE *a2@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a2 = result & 1;
  return result;
}

uint64_t outlined destroy of (GraphicsFilter, GraphicsFilter)(uint64_t a1)
{
  type metadata accessor for (GraphicsFilter, GraphicsFilter)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (GraphicsFilter, GraphicsFilter)()
{
  if (!lazy cache variable for type metadata for (GraphicsFilter, GraphicsFilter))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (GraphicsFilter, GraphicsFilter));
    }
  }
}

uint64_t Path.init(roundedRect:cornerRadius:style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>)
{
  v11 = *a1;
  IsNull = CGRectIsNull(*&a3);
  v13 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v15 = 6;
    a6 = 0.0;
  }

  else if (a7 == 0.0 || (v18.origin.x = a3, v18.size.width = a5, v18.origin.y = a4, v18.size.height = a6, CGRectIsInfinite(v18)))
  {
    v15 = 0;
    result = *&a3;
    *&v13 = a4;
    *(&v13 + 1) = a5;
  }

  else
  {
    result = swift_allocObject();
    v13 = 0uLL;
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a5;
    *(result + 40) = a6;
    *(result + 48) = a7;
    *(result + 56) = a7;
    v15 = 2;
    a6 = 0.0;
    *(result + 64) = v11;
  }

  *a2 = result;
  *(a2 + 8) = v13;
  *(a2 + 24) = a6;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_18D1796BC(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t storeEnumTagSinglePayload for ViewTraitKeys(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();
  v4 = *(a2 + 20);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

void closure #2 in static Transaction.dispatchPending()(uint64_t a1)
{
  v2 = type metadata accessor for Transaction.PendingListeners.WeakListener(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      outlined init with copy of Transaction.PendingListeners.WeakListener(v7, v5, type metadata accessor for Transaction.PendingListeners.WeakListener);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(*Strong + 104))(Strong);
      }

      outlined destroy of Transaction.PendingListeners.WeakListener(v5, type metadata accessor for Transaction.PendingListeners.WeakListener);
      v7 += v8;
      --v6;
    }

    while (v6);
  }
}

double thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t static Transaction.dispatchPending()()
{
  if (one-time initialization token for pendingListeners != -1)
  {
    swift_once();
  }

  v0 = static Transaction.pendingListeners;
  v1 = *(type metadata accessor for Transaction.PendingListeners(0) - 8);
  v2 = (*(v1 + 80) + 20) & ~*(v1 + 80);
  os_unfair_lock_lock(v0 + 4);
  closure #1 in static Transaction.dispatchPending()((v0 + v2), &v6);
  os_unfair_lock_unlock(v0 + 4);
  v3 = v6;
  if (*(v6 + 16))
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v4 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    closure #2 in static Transaction.dispatchPending()(v3);
    static Update.end()();
    _MovableLockUnlock(v4);
  }
}

uint64_t closure #1 in static Transaction.dispatchPending()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for Transaction.PendingListeners(0) + 20);
  outlined init with copy of DispatchTime?(a1 + v16, v11);
  v51 = *(v13 + 48);
  if (v51(v11, 1, v12) == 1)
  {
    result = outlined destroy of DispatchTime?(v11);
    *v54 = *a1;
    *a1 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v41 = v4;
  (*(v13 + 32))(v15, v11, v12);
  outlined destroy of DispatchTime?(a1 + v16);
  v42 = *(v13 + 56);
  v43 = v13 + 56;
  v18 = v42(a1 + v16, 1, 1, v12);
  v45 = &v38;
  v19 = *a1;
  MEMORY[0x1EEE9AC00](v18);
  *(&v38 - 2) = v15;
  swift_bridgeObjectRetain_n();
  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #1 in static Transaction.dispatchPending(), (&v38 - 4), v19);
  v21 = v20;
  v44 = v2;

  *a1 = v21;
  if (*(v21 + 16))
  {
    v45 = v15;
    result = outlined destroy of DispatchTime?(a1 + v16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v40 = v19;
      v23 = v22 - 1;
      v24 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
      v25 = v21 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v23;
      v26 = *(v24 + 20);
      v39 = v13;
      (*(v13 + 16))(a1 + v16, v25 + v26, v12);
      v42(a1 + v16, 0, 1, v12);
      type metadata accessor for OS_dispatch_queue();
      v27 = static OS_dispatch_queue.main.getter();
      v28 = v52;
      outlined init with copy of DispatchTime?(a1 + v16, v52);
      v43 = v12;
      result = (v51)(v28, 1, v12);
      if (result != 1)
      {
        aBlock[4] = partial apply for implicit closure #1 in closure #1 in static Transaction.dispatchPending();
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_24;
        v29 = _Block_copy(aBlock);

        v30 = v46;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v31 = v48;
        v32 = v41;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x193ABFB50](v28, v30, v31, v29);
        _Block_release(v29);

        (*(v50 + 8))(v31, v32);
        (*(v47 + 8))(v30, v49);
        v33 = *(v39 + 8);
        v34 = v43;
        v35 = v33(v28, v43);
        MEMORY[0x1EEE9AC00](v35);
        v36 = v45;
        *(&v38 - 2) = v45;
        specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in closure #1 in static Transaction.dispatchPending(), (&v38 - 4), v40);
        *v54 = v37;
        return v33(v36, v34);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *v54 = v19;
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      outlined init with copy of SystemFormatStyle.DateReference(a3 + v14 + v15 * v12, v11, type metadata accessor for Transaction.PendingListeners.WeakListener);
      v16 = a1(v11);
      if (v3)
      {
        outlined destroy of ClosedRange<Date>?(v11, type metadata accessor for Transaction.PendingListeners.WeakListener);

        goto LABEL_15;
      }

      if (v16)
      {
        outlined init with take of ClosedRange<Date>(v11, v23, type metadata accessor for Transaction.PendingListeners.WeakListener);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        outlined init with take of ClosedRange<Date>(v23, v13 + v14 + v19 * v15, type metadata accessor for Transaction.PendingListeners.WeakListener);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        outlined destroy of ClosedRange<Date>?(v11, type metadata accessor for Transaction.PendingListeners.WeakListener);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t outlined init with copy of SystemFormatStyle.DateReference(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17SystemFormatStyleO13DateReferenceVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in closure #1 in static Transaction.dispatchPending()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DispatchTime();
  type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E8000]);
  return dispatch thunk of static Comparable.> infix(_:_:)() & 1;
}

uint64_t initializeWithCopy for Transaction.PendingListeners.WeakListener(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakCopyInit();
  v6 = *(a3 + 20);
  v7 = type metadata accessor for DispatchTime();
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t outlined destroy of ClosedRange<Date>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _AnyShapeBox<Capsule>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyShapeBox<Capsule>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v4 = type metadata accessor for _AnyShapeBox(a1, &type metadata for Capsule, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _AnyShapeBox<Capsule>);
    }
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
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
    v20 = v19[7] + 40 * v9;

    return outlined assign with take of GlassContainer.ItemData(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, v6, a1, v19);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Entry(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = a2[5];
  v10 = a2[6];
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  v12 = a2[16];
  *(a1 + 120) = a2[15];
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = a2[18];
  v14 = a2[19];

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = a2[22];
  *(a1 + 168) = a2[21];
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = a2[24];
  *(a1 + 200) = *(a2 + 200);
  v16 = a2[27];
  *(a1 + 208) = a2[26];
  *(a1 + 216) = v16;
  v17 = a2[31];

  if (v17 == 1)
  {
    v18 = *(a2 + 15);
    *(a1 + 224) = *(a2 + 14);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = a2[28];
    v20 = a2[29];
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = a2[32];
    *(a1 + 248) = v17;
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  v22 = a2[37];
  if (v22 == 1)
  {
    v23 = *(a2 + 18);
    *(a1 + 272) = *(a2 + 17);
    *(a1 + 288) = v23;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v24 = a2[34];
    v25 = a2[35];
    outlined copy of _Glass.Variant.Role(v24, v25);
    *(a1 + 272) = v24;
    *(a1 + 280) = v25;
    *(a1 + 288) = *(a2 + 288);
    v26 = a2[38];
    *(a1 + 296) = v22;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 79);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = a2[41];
  *(a1 + 336) = *(a2 + 84);
  return a1;
}

double destroy for GlassContainer.Entry(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }

  return result;
}

void *assignWithCopy for GlassContainer.Storage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

void type metadata accessor for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>)
  {
    type metadata accessor for _SizedShape<OffsetShape<AnyShape>>(255);
    v3 = v2;
    lazy protocol witness table accessor for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>();
    v6 = type metadata accessor for _AnyShapeBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>);
    }
  }
}

void type metadata accessor for _SizedShape<OffsetShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SizedShape<OffsetShape<AnyShape>>)
  {
    type metadata accessor for OffsetShape<AnyShape>(255, &lazy cache variable for type metadata for OffsetShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for OffsetShape);
    v3 = v2;
    lazy protocol witness table accessor for type OffsetShape<AnyShape> and conformance OffsetShape<A>();
    v6 = type metadata accessor for _SizedShape(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _SizedShape<OffsetShape<AnyShape>>);
    }
  }
}

uint64_t MaterialProviderBox.isEqual(to:)(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t))
{
  a2(0, *(*v2 + 200), *(*v2 + 208));
  result = swift_dynamicCastClass();
  if (result)
  {

    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v4 & 1;
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  if (*(v1 + 89))
  {
    if (*(v1 + 177))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + 32));
    if (*(v1 + 177))
    {
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 120));
LABEL_3:

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 24));
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v10 = v2;
  v9 = *(v1 + 24);
  v11 = v9;
  v12 = v3;
  v4 = a1(0, &v10);
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = v1 + v5;
  type metadata accessor for TimeDataFormatting.EntriesState(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v1 + v5, v7);
  }

  (*(*(v2 - 8) + 8))(v6 + *(v4 + 52), v2);
  (*(*(v9 - 8) + 8))(v6 + *(v4 + 56));
  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{

  if ((~*(v0 + 120) & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13(uint64_t (*a1)(void, uint64_t *))
{
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v12 = v1[2];
  v3 = v12;
  v13 = v2;
  v14 = v4;
  v15 = v5;
  v6 = (a1(0, &v12) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);

  v8 = v1 + v7 + v6[15];
  (*(*(v3 - 8) + 8))(v8, v3);
  v12 = v3;
  v13 = v2;
  v14 = v4;
  v15 = v5;
  v9 = type metadata accessor for AppearanceAnimationView(0, &v12);
  v10 = *(*(v2 - 8) + 8);
  v10(&v8[*(v9 + 52)], v2);
  v10(&v8[*(v9 + 56)], v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14(uint64_t a1)
{

  outlined consume of Environment<String?>.Content(*(v1 + 56), *(v1 + 64), *(v1 + 72));

  return swift_deallocObject();
}

uint64_t initializeWithCopy for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v18 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v18;

  return a1;
}

uint64_t destroy for GlassContainer.Effect(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }
}

uint64_t *assignWithCopy for MaterialEffect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  v4 = a2[2];
  v5 = *(a2 + 24);
  outlined copy of Material.ID(v4, v5);
  v6 = a1[2];
  a1[2] = v4;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

double MaterialEffectState.updateValue()()
{
  v1 = v0;
  v90 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v69 - v10);
  type metadata accessor for ObservationTracking._AccessList?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v69 - v16;
  Value = AGGraphGetValue();
  v18 = *Value;
  v19 = *(Value + 8);
  v20 = *(Value + 16) == 1 && v19 == 1;
  if (!v20 || ((*(*v18 + 120))() & 1) == 0)
  {
    outlined copy of Material.ID(v18, v19);

    *(v0 + 16) = 0;
    v42 = *AGGraphGetValue();

    v43 = *AGGraphGetValue();
    v85 = 0;
    v86 = v42;
    v87 = v43;
    LODWORD(v88) = 0;

    AGGraphSetOutputValue();
    outlined consume of Material.ID(v18, v19);

    goto LABEL_15;
  }

  v75 = v8;
  outlined copy of Material.ID(v18, 1u);
  outlined copy of Material.ID(v18, 1u);
  v21 = AGGraphGetValue();
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v87) = 0;
  BYTE4(v87) = 1;
  v88 = 0;
  v89 = 0;
  v85 = v22;
  v86 = v23;
  LODWORD(v87) = *(v1 + 24);
  BYTE4(v87) = 0;
  v76 = v3;
  v24 = one-time initialization token for _current;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static ObservationCenter._current;
  swift_beginAccess();
  v26 = pthread_getspecific(v25[2]);
  if (!v26)
  {
    v27 = swift_slowAlloc();
    pthread_setspecific(v25[2], v27);
    v84 = type metadata accessor for ObservationCenter();
    *&v82 = v25[3];
    outlined init with take of Any(&v82, v27);

    v26 = v27;
  }

  outlined init with copy of Any(v26, &v82);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v28 = v81[1];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_37:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v80 + 24) = v11;
    goto LABEL_17;
  }

  v70 = v5;
  v71 = CurrentAttribute;
  v73 = v11;
  swift_beginAccess();
  v72 = *(v28 + 24);
  *(v28 + 24) = MEMORY[0x1E69E7CC0];
  v25 = v76;
  v30 = v14;
  v31 = v79;
  (v76[7])(v79, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v33 = *(StatusReg + 848);
  *(StatusReg + 848) = v31;
  v78 = v1;
  v81[0] = *(v1 + 16);
  v34 = v18;
  v35 = *(*v18 + 128);

  v74 = v34;
  v35(&v82, v81, &v85);

  *(StatusReg + 848) = v33;
  v36 = v82;
  outlined init with copy of ObservationTracking._AccessList?(v31, v30);
  v37 = (v25[6])(v30, 1, v2);
  v38 = v2;
  v80 = v28;
  v77 = v36;
  if (v37 == 1)
  {
    v5 = v2;
    outlined destroy of ObservationTracking._AccessList?(v31);
    v39 = v30;
    v40 = v78;
    v41 = v28;
    goto LABEL_20;
  }

  v2 = v25[4];
  v45 = v73;
  (v2)(v73, v30, v38);
  v5 = v38;
  (v25[2])(v75, v45, v38);
  v11 = *(v28 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_17:
  v40 = v78;
  v48 = v11[2];
  v47 = v11[3];
  if (v48 >= v47 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v11);
  }

  v11[2] = v48 + 1;
  (v2)(v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v25[9] * v48, v75, v5);
  v41 = v80;
  *(v80 + 24) = v11;
  (v25[1])(v73, v5);
  v39 = v79;
  v36 = v77;
LABEL_20:
  outlined destroy of ObservationTracking._AccessList?(v39);
  v49 = *(v41 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v53 = v25[2];
    v51 = (v25 + 2);
    v52 = v53;
    v54 = v49 + ((v51[64] + 32) & ~v51[64]);
    v55 = *(v51 + 7);
    v79 = *(v41 + 24);

    v56 = v71;
    v57 = v70;
    do
    {
      v52(v57, v54, v5);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v56, v57);
      v41 = v80;
      (*(v51 - 1))(v57, v5);
      v54 += v55;
      --v50;
    }

    while (v50);

    v36 = v77;
    v40 = v78;
  }

  *(v41 + 24) = v72;

  v58 = *(v40 + 16);
  v59 = v74;
  if (v36)
  {
    if (v58)
    {
      if (v36 != v58)
      {
        v60 = *(*v36 + 88);
        swift_retain_n();

        v62 = v60(v61);

        if ((v62 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_30;
    }

LABEL_32:

LABEL_33:

    *(v40 + 16) = v36;
    v63 = v88;
    v64 = v89;

    v65 = *AGGraphGetValue();
    *&v82 = v36;
    *(&v82 + 1) = v63;
    v83 = v64;
    LODWORD(v84) = v65;
    AGGraphSetOutputValue();
    outlined consume of Material.ID(v59, 1u);
    outlined consume of Material.ID(v59, 1u);

    goto LABEL_15;
  }

  if (v58)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (AGGraphGetOutputValue())
  {
    outlined consume of Material.ID(v59, 1u);

    outlined consume of Material.ID(v59, 1u);
  }

  else
  {
    v66 = *(v40 + 16);

    v67 = *AGGraphGetValue();

    v68 = *AGGraphGetValue();
    *&v82 = v66;
    *(&v82 + 1) = v67;
    v83 = v68;
    LODWORD(v84) = 0;

    AGGraphSetOutputValue();
    outlined consume of Material.ID(v59, 1u);
    outlined consume of Material.ID(v59, 1u);
  }

LABEL_15:

  return result;
}

void StatefulMaterialProviderBox.updateState(_:in:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v32 = a3;
  v5 = *(*v3 + 208);
  v6 = *(*v3 + 200);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = *a1;
  v31 = v6;
  if (v21)
  {
    v33 = v21;
    swift_getAssociatedConformanceWitness();
    AnyEquatable.as<A>(type:)();

    if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
    {
      (*(v11 + 32))(v20, v10, AssociatedTypeWitness);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v11 + 56))(v10, 1, 1, AssociatedTypeWitness, v18);
  }

  (*(v5 + 48))(v6, v5);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    (*(v27 + 8))(v10, v28);
  }

LABEL_7:
  v22 = *(v11 + 16);
  v22(v16, v20, AssociatedTypeWitness);
  (*(v5 + 56))(v16, v30, v31, v5);
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v23 = *(v11 + 8);
    v23(v16, AssociatedTypeWitness);
    v23(v20, AssociatedTypeWitness);
  }

  else
  {
    v24 = v29;
    v22(v29, v16, AssociatedTypeWitness);
    AnyEquatable.init<A>(_:)(v24, AssociatedTypeWitness, &v33);
    v25 = *(v11 + 8);
    v25(v16, AssociatedTypeWitness);
    v25(v20, AssociatedTypeWitness);
    v21 = v33;
  }

  *v32 = v21;
}

uint64_t _AnyEquatableBox.as<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for _AnyEquatableBox(0, a1, a2, a3);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a4, v6 + *(*v6 + 128), a1);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a1 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a4, v8, 1, a1);
}

uint64_t MaterialEffectUpdatedFill.value.getter@<X0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  LODWORD(v5) = *(Value + 8);
  v6 = *(Value + 12);
  v7 = *(Value + 16);
  if (v7 != 1 || v5 != 1)
  {
    v10 = *Value;
    v11 = v5;
LABEL_6:
    result = outlined copy of Material.ID(v10, v11);
    goto LABEL_7;
  }

  if (((*(*v4 + 120))() & 1) == 0)
  {
    LOBYTE(v5) = 1;
    v10 = v4;
    v11 = 1;
    goto LABEL_6;
  }

  outlined copy of Material.ID(v4, 1u);
  outlined copy of Material.ID(v4, 1u);
  v12 = *AGGraphGetValue();
  v5 = *(*v4 + 136);

  v5(&v13, &v12);
  outlined consume of Material.ID(v4, 1u);

  v8 = v13;
  LOBYTE(v5) = v14;
  v6 = v15;
  result = outlined consume of Material.ID(v4, 1u);
  v4 = v8;
LABEL_7:
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t StatefulMaterialProviderBox.applyingState(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *v2;
  v6 = v5[26];
  v7 = v5[25];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v27 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v27 - v13;
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  v22 = *a1;
  v23 = v5[27];
  v33 = v14;
  (*(v14 + 16))(v17, &v3[v23], v7, v19);
  if (v22)
  {
    v36 = v22;
    swift_getAssociatedConformanceWitness();
    v24 = v32;
    AnyEquatable.as<A>(type:)();

    if ((*(v11 + 48))(v24, 1, AssociatedTypeWitness) != 1)
    {
      v25 = v34;
      (*(v11 + 32))(v34, v24, AssociatedTypeWitness);
      goto LABEL_7;
    }
  }

  else
  {
    v24 = v32;
    (*(v11 + 56))(v32, 1, 1, AssociatedTypeWitness);
  }

  v25 = v34;
  (*(v6 + 48))(v7, v6);
  if ((*(v11 + 48))(v24, 1, AssociatedTypeWitness) != 1)
  {
    (*(v28 + 8))(v24, v29);
  }

LABEL_7:
  (*(v6 + 64))(v25, v7, v6);
  (*(v11 + 8))(v25, AssociatedTypeWitness);
  (*(v33 + 8))(v17, v7);
  (*(*v3 + 240))(v21);
  return (*(v30 + 8))(v21, v31);
}

uint64_t AnimatableStatefulMaterialProviderBox.makeMaterial(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness, v5);
  swift_getAssociatedConformanceWitness();
  return Material.init<A>(provider:)(v7, AssociatedTypeWitness, a2);
}

uint64_t specialized AnimatableMaterialProviderBox.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, v2);
  (*(*(*(*v1 + 200) - 8) + 32))(v1 + *(*v1 + 216), v4);
  return v1;
}

double MaterialEffectEnvironment.value.getter@<D0>(uint64_t a2@<X8>)
{
  if (*(AGGraphGetValue() + 16) == 1)
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v4 = Value[1];
    *&v23 = *Value;
    *(&v23 + 1) = v4;

    v6 = AGGraphGetValue();
    if (*(v6 + 8) == 1)
    {
      v7 = *v6;
      outlined copy of Material.ID(*v6, 1u);
      v8 = AGGraphGetValue();
      v9 = *(v8 + 12);
      v10 = *(v8 + 8);
      v20 = *v8;
      v21 = v10;
      v22 = v9;
      v11 = *(*v7 + 112);
      outlined copy of Material.ID(v20, v10);
      v11(&v23, &v20);
      outlined consume of Material.ID(v7, 1u);
      outlined consume of Material.ID(v20, v21);
    }

    else
    {
      v16 = AGGraphGetValue();
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v18 | (*(v16 + 12) << 32);
      outlined copy of Material.ID(*v16, v18);
      swift_retain_n();
      outlined copy of Material.ID(v17, v18);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(&v23, v17, v19);

      outlined consume of Material.ID(v17, v18);
      if (v4)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v5, v23);
      }

      outlined consume of Material.ID(v17, v18);
    }

    result = *&v23;
    *a2 = v23;
  }

  else
  {
    v12 = AGGraphGetValue();
    v14 = *v12;
    v13 = v12[1];
    *a2 = v14;
    *(a2 + 8) = v13;
  }

  return result;
}

uint64_t MaterialProviderBox.foregroundEnvironment(_:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 3);
  v7 = *a2;
  v8 = v4;
  v9 = v5;
  return (*(*(v3 + 208) + 40))(a1, &v7, *(v3 + 200));
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v238 = *MEMORY[0x1E69E9840];
  v217 = type metadata accessor for OSSignpostID();
  v214 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v9 = (v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v198 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v215 = (v198 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v198 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v216 = v198 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v206 = v198 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 17) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 17) == 1)
  {
LABEL_9:
    v26 = *(a1 + 8);
    v218 = a2;
    if (v26 == 1)
    {
      v27 = *a1;
      v28 = *(**a1 + 144);

      v28(&v229, v29);
      outlined consume of Material.ID(v27, 1u);
      if (v229)
      {
        v235 = v229;
        v236 = v230;
        v237 = v231;
        goto LABEL_16;
      }
    }

    else
    {
      v231 = 0;
      v229 = 0u;
      v230 = 0u;
    }

    if (one-time initialization token for empty != -1)
    {
      goto LABEL_206;
    }

    goto LABEL_14;
  }

LABEL_135:
  v159 = *(a4 + 56);
  if (!v159)
  {
    return result;
  }

  if (*(a1 + 8) == 1)
  {
    v160 = *a1;
    v161 = *(**a1 + 144);

    v162 = outlined copy of Material.ID(v160, 1u);
    v161(&v223, v162);
    outlined consume of Material.ID(v160, 1u);
    if (v223)
    {
      v229 = v223;
      v230 = v224;
      v231 = v225;
      goto LABEL_144;
    }
  }

  else
  {
    v225 = 0;
    v223 = 0u;
    v224 = 0u;
  }

  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v229);
  if (v223)
  {
    outlined destroy of HitTestableEvent?(&v223, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
  }

LABEL_144:
  LOBYTE(v223) = 0;
  v163 = specialized AnimatorState.update(_:at:environment:)(&v229, v5, v24);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v64 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(Counter) = 0;
  }

  else
  {
    LODWORD(Counter) = CurrentAttribute;
  }

  if (v163)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v196 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v196;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v223) = Counter;
        BYTE4(v223) = CurrentAttribute == v64;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v203 = a4;
      v207 = a1;
      v165 = one-time initialization token for animationState;
      v205 = v159;

      if (v165 == -1)
      {
        goto LABEL_155;
      }

      goto LABEL_210;
    }

    __break(1u);
    goto LABEL_208;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_208:
    v197 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v197;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v223) = Counter;
      BYTE4(v223) = CurrentAttribute == v64;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    specialized AnimatorState.nextUpdate()();
    goto LABEL_198;
  }

  __break(1u);
LABEL_210:
  swift_once();
LABEL_155:
  v63 = *(&static Signpost.animationState + 1);
  v72 = static Signpost.animationState;
  v71 = word_1ED5283E8;
  v166 = HIBYTE(word_1ED5283E8);
  v167 = byte_1ED5283EA;
  v168 = static os_signpost_type_t.end.getter();
  v223 = __PAIR128__(v63, v72);
  LOBYTE(v224) = v71;
  BYTE1(v224) = v166;
  BYTE2(v224) = v167;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_197;
  }

  LODWORD(v215) = v168;
  v169 = one-time initialization token for _signpostLog;
  v69 = v205;

  if (v169 != -1)
  {
    swift_once();
  }

  v68 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v64)
  {
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    v215 = v74;
    v210 = v75;
    v211 = v73;
    v213 = v76;
    swift_once();
    v75 = v210;
    v73 = v211;
    v76 = v213;
    v74 = v215;
LABEL_49:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v77 = v64;
        v78 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v79 = v63 == v78;
          v215 = *(static CustomEventTrace.recorder + 24);
          *(v215 + 2) = 322;
          v80 = Counter[2];
          LODWORD(v229) = v77;
          BYTE4(v229) = v79;
          *(&v229 + 1) = &type metadata for MaterialEffect.Fill;
          *&v230 = v74;
          *(&v230 + 1) = v73;
          v231 = v76;
          v232[0] = v75;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v213 = v81;

          v82 = v80;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v68, v69, v71, v70, v72, v218);
          LODWORD(Counter) = v78;
        }

        else
        {
          outlined consume of Animation.Function(v68, v69, v71, v70, v72, v218);
          LODWORD(Counter) = v78;
        }
      }

      else
      {
        outlined consume of Animation.Function(v68, v69, v71, v70, v72, v218);
      }

      v124 = one-time initialization token for animationState;
      v69 = v202;

      if (v124 == -1)
      {
LABEL_97:
        v98 = *(&static Signpost.animationState + 1);
        v90 = static Signpost.animationState;
        LOBYTE(v91) = word_1ED5283E8;
        LOBYTE(v44) = HIBYTE(word_1ED5283E8);
        v125 = byte_1ED5283EA;
        v126 = static os_signpost_type_t.begin.getter();
        v229 = __PAIR128__(v98, v90);
        LOBYTE(v230) = v91;
        BYTE1(v230) = v44;
        BYTE2(v230) = v125;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {

          a4 = v203;
          *(v203 + 56) = v69;
          goto LABEL_133;
        }

        LODWORD(v215) = v126;
        v127 = one-time initialization token for _signpostLog;

        if (v127 != -1)
        {
          goto LABEL_220;
        }

        goto LABEL_99;
      }
    }

    swift_once();
    goto LABEL_97;
  }

  v69 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v170 = MEMORY[0x1E69E6870];
  *(v70 + 56) = MEMORY[0x1E69E6810];
  *(v70 + 64) = v170;
  *(v70 + 32) = Counter;
  v171 = AGGraphGetCurrentAttribute();
  if (v171 == v64)
  {
    goto LABEL_214;
  }

  v172 = MEMORY[0x1E69E76D0];
  *(v70 + 96) = MEMORY[0x1E69E7668];
  *(v70 + 104) = v172;
  *(v70 + 72) = v171;
  v218 = v70;
  *(v70 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v218 + 144) = v173;
  *(v218 + 112) = 0xD00000000000002BLL;
  *(v218 + 120) = 0x800000018DD7EBF0;
  v174 = v218;
  if (v166)
  {
    LOBYTE(v221) = v215;
    *&v233[0] = &dword_18D018000;
    v227 = v68;
    *&v223 = v72;
    *(&v223 + 1) = v63;
    LOBYTE(v224) = v71;
    *&v235 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v235 + 1) = 37;
    LOBYTE(v236) = 2;
    v222 = v218;
    v175 = v206;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v221, v233, &v227, &v223, v206, &v235, &v222);

    (*(v214 + 8))(v175, v217);
    goto LABEL_196;
  }

  v176 = v72;
  if (v72 == 20)
  {
    a4 = 3;
  }

  else
  {
    a4 = 4;
  }

  v17 = bswap32(v72) | (4 * WORD1(v72));
  v12 = v215;
  v177 = v214 + 16;
  v208 = *(v214 + 16);
  v178 = v208(v216, v206, v217);
  v5 = 0;
  LOBYTE(v235) = 1;
  v214 = v177;
  v212 = (16 * a4);
  v213 = (v177 - 8);
  v210 = v176;
  v211 = (v174 + 32);
  v209 = a4;
  do
  {
    v215 = v198;
    MEMORY[0x1EEE9AC00](v178);
    a1 = (v198 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = a1 + 1;
    v180 = a4;
    v181 = a1 + 1;
    do
    {
      *(v181 - 1) = 0;
      *v181 = 0;
      v181 += 2;
      --v180;
    }

    while (v180);
    v182 = &v211[40 * v5];
    while (1)
    {
      v183 = *(v218 + 16);
      if (v5 == v183)
      {
        break;
      }

      if (v5 >= v183)
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        swift_once();
LABEL_14:
        outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v235);
        if (v229)
        {
          outlined destroy of HitTestableEvent?(&v229, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
        }

LABEL_16:
        outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, &v229, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
        if (!v229)
        {
          outlined destroy of HitTestableEvent?(&v229, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
          goto LABEL_134;
        }

        v201 = v17;
        v233[0] = v229;
        v233[1] = v230;
        v234 = v231;
        v30 = v229;
        if (v235 == v229 && ((*(v235 + 88))(&v235 + 8, v233 + 8) & 1) != 0)
        {
          outlined destroy of _AnyAnimatableData(v233);
          goto LABEL_134;
        }

        v207 = a1;
        v212 = v9;
        v198[0] = v12;
        AGGraphClearUpdate();
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill, type metadata accessor for AnimatableAttributeHelper);
        Counter = *AGGraphGetValue();

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill, &type metadata for MaterialEffect.Fill, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v32 = Transaction.effectiveAnimation.getter(Counter);
        if (v32)
        {
          v33 = v32;
          goto LABEL_25;
        }

        v33 = v218;
        if (!v218)
        {
          outlined destroy of _AnyAnimatableData(v233);

          a1 = v207;
          goto LABEL_134;
        }

LABEL_25:
        v34 = v207;
        outlined init with copy of _AnyAnimatableData(&v235, &v227);
        v35 = v227;
        if (v227 == v30)
        {
          v227[13](v228, v233 + 8);
        }

        else if (v35 == type metadata accessor for ZeroVTable())
        {
          outlined destroy of _AnyAnimatableData(&v227);
          outlined init with copy of _AnyAnimatableData(v233, &v227);
          (v227[14])(v228);
        }

        v24 = *AGGraphGetValue();
        v203 = a4;
        v36 = *(a4 + 56);
        v200 = v5;
        v198[1] = v33;
        v199 = Counter;
        if (!v36)
        {
          outlined init with copy of _AnyAnimatableData(&v227, &v229);
          v222 = &type metadata for MaterialEffect.Fill;
          type metadata accessor for MaterialEffect.Fill.Type();
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type, &type metadata for _AnyAnimatableData);
          v58 = swift_dynamicCast();
          if (v58)
          {
            v59 = v223;
          }

          else
          {
            v59 = 0;
          }

          if (v58)
          {
            v60 = *(&v223 + 1);
          }

          else
          {
            v60 = 0;
          }

          v202 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v61, &v229, Counter, v59, v60, v24);
          v62 = AGGraphGetCurrentAttribute();
          LODWORD(v63) = v62;
          LODWORD(Counter) = *MEMORY[0x1E698D3F8];
          if (v62 == *MEMORY[0x1E698D3F8])
          {
            v64 = 0;
          }

          else
          {
            v64 = v62;
          }

          v65 = *v34;
          v66 = *(v34 + 8);
          outlined copy of Material.ID(*v34, v66);
          v67 = outlined consume of Material.ID(v65, v66);
          (*(*v33 + 96))(&v223, v67);
          v69 = *(&v223 + 1);
          v68 = v223;
          v70 = *(&v224 + 1);
          v71 = v224;
          v72 = v225;
          v221 = 0x7FF8000000000000;
          v222 = 0x7FF8000000000000;
          v219 = 0x7FF8000000000000;
          v220 = 0x3FF0000000000000;
          v229 = v223;
          v230 = v224;
          v231 = v225;
          LODWORD(v218) = v226;
          LOBYTE(v232[0]) = v226;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v229, &v222, &v221, &v220, &v219);
          v73 = v221;
          v74 = v222;
          v75 = v219;
          v76 = v220;
          if (one-time initialization token for enabledCategories != -1)
          {
            goto LABEL_215;
          }

          goto LABEL_49;
        }

        LOBYTE(v229) = 0;
        v202 = v36;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, &v227, Counter, v5, v24);
        v37 = AGGraphGetCurrentAttribute();
        LODWORD(Counter) = v37;
        v38 = *MEMORY[0x1E698D3F8];
        if (v37 == *MEMORY[0x1E698D3F8])
        {
          v39 = 0;
        }

        else
        {
          v39 = v37;
        }

        v40 = *v34;
        v41 = *(v34 + 8);
        outlined copy of Material.ID(*v34, v41);
        v42 = outlined consume of Material.ID(v40, v41);
        (*(*v33 + 96))(&v223, v42);
        v43 = v223;
        v44 = *(&v224 + 1);
        v45 = v224;
        v46 = v225;
        v47 = v226;
        v221 = 0x7FF8000000000000;
        v222 = 0x7FF8000000000000;
        v219 = 0x7FF8000000000000;
        v220 = 0x3FF0000000000000;
        v229 = v223;
        v230 = v224;
        v231 = v225;
        LOBYTE(v232[0]) = v226;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v229, &v222, &v221, &v220, &v219);
        v48 = v221;
        v49 = v222;
        v50 = v219;
        v51 = v220;
        if (one-time initialization token for enabledCategories != -1)
        {
          v218 = v222;
          v212 = v221;
          v213 = v220;
          v211 = v219;
          swift_once();
          v50 = v211;
          v48 = v212;
          v51 = v213;
          v49 = v218;
        }

        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_212:
          swift_once();
          goto LABEL_59;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v52 = v39;
          v53 = v47;
          v54 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            v55 = Counter == v38;
            v218 = *(static CustomEventTrace.recorder + 24);
            *(v218 + 4) = 1602;
            v56 = *(v54 + 16);
            LODWORD(v229) = v52;
            BYTE4(v229) = v55;
            *(&v229 + 1) = &type metadata for MaterialEffect.Fill;
            *&v230 = v49;
            *(&v230 + 1) = v48;
            v231 = v51;
            v232[0] = v50;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
            v213 = v57;

            Counter = v56;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v43, *(&v43 + 1), v45, v44, v46, v53);

            goto LABEL_58;
          }

          v84 = *(&v43 + 1);
          v83 = v43;
          v85 = v45;
          v86 = v44;
          v87 = v46;
          v88 = v53;
        }

        else
        {
          v84 = *(&v43 + 1);
          v83 = v43;
          v85 = v45;
          v86 = v44;
          v87 = v46;
          v88 = v47;
        }

        outlined consume of Animation.Function(v83, v84, v85, v86, v87, v88);
LABEL_58:
        LODWORD(v44) = v38;
        v89 = one-time initialization token for animationState;

        if (v89 != -1)
        {
          goto LABEL_212;
        }

LABEL_59:
        v91 = *(&static Signpost.animationState + 1);
        v90 = static Signpost.animationState;
        v92 = word_1ED5283E8;
        v93 = HIBYTE(word_1ED5283E8);
        v94 = byte_1ED5283EA;
        v95 = static os_signpost_type_t.event.getter();
        v229 = __PAIR128__(v91, v90);
        LOBYTE(v230) = v92;
        BYTE1(v230) = v93;
        BYTE2(v230) = v94;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {

          a4 = v203;
          goto LABEL_133;
        }

        LODWORD(v213) = v95;
        v96 = one-time initialization token for _signpostLog;

        if (v96 != -1)
        {
          swift_once();
        }

        v97 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v44)
        {
          __break(1u);
        }

        else
        {
          v99 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v100 = MEMORY[0x1E69E6870];
          *(v98 + 56) = MEMORY[0x1E69E6810];
          *(v98 + 64) = v100;
          *(v98 + 32) = Counter;
          v101 = AGGraphGetCurrentAttribute();
          if (v101 != v44)
          {
            v102 = MEMORY[0x1E69E76D0];
            *(v98 + 96) = MEMORY[0x1E69E7668];
            *(v98 + 104) = v102;
            *(v98 + 72) = v101;
            v218 = v98;
            *(v98 + 136) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v218 + 144) = v103;
            *(v218 + 112) = 0xD00000000000002BLL;
            *(v218 + 120) = 0x800000018DD7EBF0;
            v104 = v218;
            if (v93)
            {
              LOBYTE(v219) = v213;
              v221 = v97;
              v222 = &dword_18D018000;
              *&v229 = v90;
              *(&v229 + 1) = v91;
              LOBYTE(v230) = v92;
              *&v223 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v223 + 1) = 39;
              LOBYTE(v224) = 2;
              v220 = v218;
              v105 = v201;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v219, &v222, &v221, &v229, v201, &v223, &v220);

              (*(v214 + 8))(v105, v217);
            }

            else
            {
              v106 = v90;
              if (v90 == 20)
              {
                v107 = 3;
              }

              else
              {
                v107 = 4;
              }

              a4 = bswap32(v90) | (4 * WORD1(v90));
              LODWORD(v5) = v213;
              v108 = (v214 + 16);
              v204 = *(v214 + 16);
              v109 = v204(v215, v201, v217);
              v17 = 0;
              LOBYTE(v223) = 1;
              v213 = v107;
              v205 = v108;
              v210 = 16 * v107;
              v211 = v108 - 8;
              v208 = v106;
              v209 = v104 + 32;
              do
              {
                v212 = v198;
                MEMORY[0x1EEE9AC00](v109);
                a1 = (v198 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
                v9 = a1 + 1;
                v111 = v213;
                v112 = a1 + 1;
                do
                {
                  *(v112 - 1) = 0;
                  *v112 = 0;
                  v112 += 2;
                  v111 = (v111 - 1);
                }

                while (v111);
                v113 = v209 + 40 * v17;
                v12 = v213;
                while (1)
                {
                  v114 = *(v218 + 16);
                  if (v17 == v114)
                  {
                    break;
                  }

                  if (v17 >= v114)
                  {
                    goto LABEL_204;
                  }

                  ++v17;
                  outlined init with copy of AnyTrackedValue(v113, &v229);
                  v115 = *(&v230 + 1);
                  v116 = v231;
                  __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
                  *(v9 - 1) = CVarArg.kdebugValue(_:)(a4 | v5, v115, v116);
                  *v9 = v117 & 1;
                  v9 += 2;
                  __swift_destroy_boxed_opaque_existential_1(&v229);
                  v113 += 40;
                  if (!--v12)
                  {
                    goto LABEL_79;
                  }
                }

                LOBYTE(v223) = 0;
LABEL_79:
                v118 = v208;
                if (v208 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (*(a1 + 8) == 1)
                {
                  kdebug_trace_string();
                }

                if (*(a1 + 24) == 1)
                {
                  kdebug_trace_string();
                }

                if (*(a1 + 40) == 1)
                {
                  kdebug_trace_string();
                }

                if (v118 != 20 && *(a1 + 56) == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v119 = *v211;
                v120 = v215;
                v121 = v217;
                (*v211)(v215, v217);
                v122 = __swift_project_value_buffer(v121, static OSSignpostID.continuation);
                v109 = v204(v120, v122, v121);
              }

              while ((v223 & 1) != 0);

              v123 = v217;
              v119(v215, v217);
              v119(v201, v123);
            }

            a4 = v203;
            goto LABEL_133;
          }
        }

        __break(1u);
LABEL_220:
        swift_once();
LABEL_99:
        v128 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == Counter)
        {
          __break(1u);
LABEL_222:
          __break(1u);
        }

        v130 = Counter;
        v131 = AGGraphGetAttributeGraph();
        v132 = AGGraphGetCounter();

        v133 = MEMORY[0x1E69E6870];
        *(v129 + 56) = MEMORY[0x1E69E6810];
        *(v129 + 64) = v133;
        *(v129 + 32) = v132;
        v134 = AGGraphGetCurrentAttribute();
        if (v134 == v130)
        {
          goto LABEL_222;
        }

        v135 = MEMORY[0x1E69E76D0];
        *(v129 + 96) = MEMORY[0x1E69E7668];
        *(v129 + 104) = v135;
        *(v129 + 72) = v134;
        v218 = v129;
        *(v129 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v218 + 144) = v136;
        *(v218 + 112) = 0xD00000000000002BLL;
        *(v218 + 120) = 0x800000018DD7EBF0;
        v137 = v218;
        if (v44)
        {
          LOBYTE(v219) = v215;
          v221 = v128;
          v222 = &dword_18D018000;
          *&v229 = v90;
          *(&v229 + 1) = v98;
          LOBYTE(v230) = v91;
          *&v223 = "Animation: (%p) [%d] %{public}@ started";
          *(&v223 + 1) = 39;
          LOBYTE(v224) = 2;
          v220 = v218;
          v138 = v198[0];
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v219, &v222, &v221, &v229, v198[0], &v223, &v220);
          v139 = v202;

          (*(v214 + 8))(v138, v217);
        }

        else
        {
          v140 = v90;
          if (v90 == 20)
          {
            v141 = 3;
          }

          else
          {
            v141 = 4;
          }

          a1 = (bswap32(v90) | (4 * WORD1(v90)));
          v17 = v215;
          v142 = (v214 + 16);
          v204 = *(v214 + 16);
          v143 = v204(v212, v198[0], v217);
          v12 = 0;
          LOBYTE(v223) = 1;
          v215 = v141;
          v205 = v142;
          v210 = 16 * v141;
          v211 = v142 - 8;
          v208 = v140;
          v209 = v137 + 32;
          do
          {
            v213 = v198;
            MEMORY[0x1EEE9AC00](v143);
            v5 = v198 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
            v9 = (v5 + 8);
            v145 = v215;
            v146 = (v5 + 8);
            do
            {
              *(v146 - 1) = 0;
              *v146 = 0;
              v146 += 16;
              v145 = (v145 - 1);
            }

            while (v145);
            v147 = v209 + 40 * v12;
            a4 = v215;
            while (1)
            {
              v148 = *(v218 + 16);
              if (v12 == v148)
              {
                break;
              }

              if (v12 >= v148)
              {
                goto LABEL_205;
              }

              ++v12;
              outlined init with copy of AnyTrackedValue(v147, &v229);
              v149 = *(&v230 + 1);
              v150 = v231;
              __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
              *(v9 - 1) = CVarArg.kdebugValue(_:)(a1 | v17, v149, v150);
              *v9 = v151 & 1;
              v9 += 2;
              __swift_destroy_boxed_opaque_existential_1(&v229);
              v147 += 40;
              if (!--a4)
              {
                goto LABEL_116;
              }
            }

            LOBYTE(v223) = 0;
LABEL_116:
            v152 = v208;
            if (v208 == 20)
            {
              v153 = v212;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v153 = v212;
            }

            if (*(v5 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v5 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v152 != 20 && *(v5 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v154 = *v211;
            v155 = v217;
            (*v211)(v153, v217);
            v156 = __swift_project_value_buffer(v155, static OSSignpostID.continuation);
            v143 = v204(v153, v156, v155);
          }

          while ((v223 & 1) != 0);
          v139 = v202;

          v157 = v217;
          v154(v153, v217);
          v154(v198[0], v157);
        }

        a4 = v203;
        *(v203 + 56) = v139;
LABEL_133:
        specialized AnimatorState.addListeners(transaction:)(v199);

        outlined destroy of _AnyAnimatableData(&v227);
        outlined destroy of _AnyAnimatableData(v233);
        a1 = v207;
        LODWORD(v5) = v200;
LABEL_134:
        result = outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
        v158 = v236;
        *(a4 + 16) = v235;
        *(a4 + 32) = v158;
        *(a4 + 48) = v237;
        goto LABEL_135;
      }

      ++v5;
      outlined init with copy of AnyTrackedValue(v182, &v223);
      v184 = *(&v224 + 1);
      v185 = v225;
      __swift_project_boxed_opaque_existential_1(&v223, *(&v224 + 1));
      *(v9 - 1) = CVarArg.kdebugValue(_:)(v17 | v12, v184, v185);
      *v9 = v186 & 1;
      v9 += 2;
      __swift_destroy_boxed_opaque_existential_1(&v223);
      v182 += 40;
      if (!--a4)
      {
        goto LABEL_181;
      }
    }

    LOBYTE(v235) = 0;
LABEL_181:
    v187 = v210;
    if (v210 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a4 = v209;
    if (*(a1 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a1 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v187 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v188 = *v213;
    v190 = v216;
    v189 = v217;
    (*v213)(v216, v217);
    v191 = __swift_project_value_buffer(v189, static OSSignpostID.continuation);
    v178 = v208(v190, v191, v189);
  }

  while ((v235 & 1) != 0);

  v192 = v217;
  v188(v216, v217);
  v188(v206, v192);
LABEL_196:

LABEL_197:
  specialized AnimatorState.removeListeners()();

  *(v203 + 56) = 0;
  a1 = v207;
LABEL_198:
  outlined init with copy of _AnyAnimatableData(&v229, &v223);
  outlined init with copy of _AnyAnimatableData(&v223, &v235);
  if (*(a1 + 8) == 1)
  {
    v193 = *a1;
    v194 = *(**a1 + 152);

    v195 = v194(&v235);
    outlined consume of Material.ID(v193, 1u);

    outlined destroy of _AnyAnimatableData(&v235);
    outlined destroy of _AnyAnimatableData(&v223);
    outlined destroy of _AnyAnimatableData(&v229);
    result = outlined consume of Material.ID(*a1, *(a1 + 8));
    *a1 = v195;
    *(a1 + 8) = 1;
  }

  else
  {

    outlined destroy of _AnyAnimatableData(&v235);
    outlined destroy of _AnyAnimatableData(&v223);
    result = outlined destroy of _AnyAnimatableData(&v229);
  }

  *(a1 + 17) = 1;
  return result;
}

uint64_t AnimatableMaterialProviderBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v2 + *(v4 + 216), v5, v6);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(v4 + 240), v10, a2);
}

float Color.Resolved.animatableData.getter(float a1, float a2, float a3, float32_t a4)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v9, a1, LODWORD(a2), a3, a4);
    a1 = v9.f32[0];
  }

  return a1 * 128.0;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 3);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 4);
          v16 = v12[40];
          v17 = *(v12 + 11);
          v18 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v18;
          *(v12 - 2) = v14;
          *(v12 - 1) = v13;
          *v12 = v15;
          v12[8] = v16;
          *(v12 + 3) = v17;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t initializeWithCopy for _ShapeSet.Element(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 7);

  return a1;
}

uint64_t *assignWithCopy for PathSet(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

_DWORD *specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, void (**a2)(void, void), unsigned int a3, unsigned int *a4)
{
  v257 = *MEMORY[0x1E69E9840];
  v230 = type metadata accessor for OSSignpostID();
  v226 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v11 = &v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v208 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v228 = &v208 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v208 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v208 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v219 = &v208 - v23;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  result = AGGraphGetValue();
  if (a4[12] != *result >> 1)
  {
    specialized AnimatableAttributeHelper.reset()(v28);
    *(a1 + 16) = 1;
LABEL_11:
    _ShapeSet.Wrapper.animatableData.getter(&v238);
    v30 = *(a4 + 2);
    v31 = v238;
    if (!v30)
    {
      goto LABEL_127;
    }

    v227 = v11;
    v4 = *(a4 + 4);
    v32 = a4[6];
    v33 = v239;
    *&v5 = v240;

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVySiAC04_AnyE4DataV_G_Tt1g5(v31, v30) & 1) != 0 && ((v33 ^ v32) & 1) == 0 && *&v5 == v4)
    {

      goto LABEL_127;
    }

    v225 = a2;
    v210 = v19;
    v209 = v14;
    v213 = v30;
    v214 = a3;
    AGGraphClearUpdate();
    v34 = *(a4 + 1);
    v253 = *a4;
    v254 = v34;
    v255 = *(a4 + 2);
    v218 = a4;
    v256 = a4[12];
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v253, &v247, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper, type metadata accessor for AnimatableAttributeHelper);
    v35 = *AGGraphGetValue();

    v36 = v35;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v253, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v215 = Transaction.effectiveAnimation.getter(v35);
    if (v215)
    {
      a3 = v214;
      v37 = v213;
    }

    else
    {
      a3 = v214;
      v37 = v213;
      if (!v225)
      {

        a4 = v218;
        goto LABEL_127;
      }
    }

    v38 = *(&v255 + 1);
    v235 = v31;
    v236 = v33;
    v237 = *&v5;

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v235, v37, v32 & 1);
    v39 = *&v5 - v4;
    v237 = v39;
    v26 = *AGGraphGetValue();
    v220 = a1;
    v211 = v36;
    if (*&v38 != 0.0)
    {
      v40 = v235;
      v41 = v236;

      LOBYTE(v247) = 0;
      v42 = a3;
      v43 = v215;
      v212 = v38;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v215, v40, v41, v36, v42, v39, v26);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v38) = CurrentAttribute;
      v45 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v46) = 0;
      }

      else
      {
        LODWORD(v46) = CurrentAttribute;
      }

      (*(*v43 + 96))(&v241);
      v47 = v241;
      v48 = v242;
      v49 = v243;
      v50 = v244;
      v51 = v245;
      v52 = v246;
      v234 = NAN;
      v233 = NAN;
      v232 = 0x3FF0000000000000;
      v231 = 0x7FF8000000000000;
      v247 = v241;
      v248 = v242;
      v249 = *&v243;
      v250 = v244;
      v251 = v245;
      LOBYTE(v252) = v246;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v247, &v234, &v233, &v232, &v231);
      v4 = v234;
      *&v5 = v233;
      v53 = v232;
      v54 = v231;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_215;
      }

      goto LABEL_25;
    }

    v62 = v235;
    v63 = v236;
    v241 = &type metadata for _ShapeSet.Wrapper;
    type metadata accessor for _ShapeSet.Wrapper.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Type, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);

    v64 = swift_dynamicCast();
    if (v64)
    {
      v65 = v247;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = v248;
    }

    else
    {
      v66 = 0;
    }

    v67 = v215;

    v69 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA05KeyedU5ArrayVySiAA04_AnyU4DataVG12CoreGraphics7CGFloatVG_Tt4B5(v68, v62, v63, v36, v65, v66, v39, v26);
    v70 = AGGraphGetCurrentAttribute();
    v71 = v70;
    v45 = *MEMORY[0x1E698D3F8];
    if (v70 == *MEMORY[0x1E698D3F8])
    {
      v72 = 0;
    }

    else
    {
      v72 = v70;
    }

    LODWORD(v228) = v72;
    (*(*v67 + 96))(&v241);
    v73 = v241;
    v74 = v242;
    v75 = v243;
    v76 = v244;
    v77 = v245;
    v78 = v246;
    v234 = NAN;
    v233 = NAN;
    v232 = 0x3FF0000000000000;
    v231 = 0x7FF8000000000000;
    v247 = v241;
    v248 = v242;
    v249 = *&v243;
    v250 = v244;
    v251 = v245;
    LOBYTE(v252) = v246;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v247, &v234, &v233, &v232, &v231);
    v4 = v234;
    *&v5 = v233;
    v79 = v232;
    v80 = v231;
    if (one-time initialization token for enabledCategories != -1)
    {
      v225 = v232;
      v224 = v231;
      swift_once();
      v80 = v224;
      v79 = v225;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v81 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v212 = v69;
      if (v81)
      {
        v224 = v76;
        LODWORD(v225) = v78;
        v82 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v83 = *(v82 + 16);
          LODWORD(v247) = v228;
          BYTE4(v247) = v71 == v45;
          v248 = &type metadata for _ShapeSet.Wrapper;
          v249 = v4;
          v250 = v5;
          v251 = v79;
          v252 = v80;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v84 = v83;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v73, v74, v75, v224, v77, v225);
        }

        else
        {
          outlined consume of Animation.Function(v73, v74, v75, v224, v77, v225);
        }
      }

      else
      {
        outlined consume of Animation.Function(v73, v74, v75, v76, v77, v78);
      }

      v127 = one-time initialization token for animationState;

      if (v127 == -1)
      {
        goto LABEL_89;
      }
    }

    swift_once();
LABEL_89:
    v38 = *(&static Signpost.animationState + 1);
    v91 = static Signpost.animationState;
    v93 = word_1ED5283E8;
    v96 = HIBYTE(word_1ED5283E8);
    v128 = byte_1ED5283EA;
    v94 = static os_signpost_type_t.begin.getter();
    v247 = v91;
    v248 = v38;
    LOBYTE(v249) = v93;
    BYTE1(v249) = v96;
    BYTE2(v249) = v128;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v138 = v212;

      goto LABEL_125;
    }

    v129 = one-time initialization token for _signpostLog;

    if (v129 != -1)
    {
      goto LABEL_222;
    }

    goto LABEL_91;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_11;
  }

  v29 = *(a4 + 5);
  if (!v29)
  {
    return result;
  }

  while (1)
  {
    v218 = a4;

    _ShapeSet.Wrapper.animatableData.getter(&v238);
    LOBYTE(v253) = 0;
    v160 = specialized AnimatorState.update(_:at:environment:)(&v238, a3, v26);
    v161 = AGGraphGetCurrentAttribute();
    v45 = *MEMORY[0x1E698D3F8];
    v162 = v161 == *MEMORY[0x1E698D3F8] ? 0 : v161;
    v220 = a1;
    v217 = v29;
    if ((v160 & 1) == 0)
    {
      break;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v206 = v161;
      swift_once();
      v161 = v206;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_210;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v253) = v162;
      BYTE4(v253) = v161 == v45;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v163 = one-time initialization token for animationState;

    if (v163 != -1)
    {
      goto LABEL_212;
    }

LABEL_139:
    v47 = *(&static Signpost.animationState + 1);
    v46 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v164 = byte_1ED5283EA;
    v50 = static os_signpost_type_t.end.getter();
    v253 = __PAIR128__(v47, v46);
    LOBYTE(v254) = v52;
    BYTE1(v254) = v49;
    BYTE2(v254) = v164;
    v51 = &v253;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_181:
      specialized AnimatorState.removeListeners()();

      *(v218 + 5) = 0;
      goto LABEL_182;
    }

    v165 = one-time initialization token for _signpostLog;

    if (v165 != -1)
    {
      swift_once();
    }

    v48 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v38 = COERCE_DOUBLE(swift_allocObject());
    *(v38 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v45)
    {
      __break(1u);
    }

    else
    {
      v51 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v167 = MEMORY[0x1E69E6870];
      *(v38 + 56) = MEMORY[0x1E69E6810];
      *(v38 + 64) = v167;
      *(v38 + 32) = Counter;
      v168 = AGGraphGetCurrentAttribute();
      if (v168 != v45)
      {
        v169 = MEMORY[0x1E69E76D0];
        *(v38 + 96) = MEMORY[0x1E69E7668];
        *(v38 + 104) = v169;
        *(v38 + 72) = v168;
        *(v38 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v38 + 144) = v170;
        *(v38 + 112) = 0x72657070617257;
        *(v38 + 120) = 0xE700000000000000;
        if (v49)
        {
          LOBYTE(v233) = v50;
          v241 = &dword_18D018000;
          v235 = v48;
          *&v253 = v46;
          *(&v253 + 1) = v47;
          LOBYTE(v254) = v52;
          v247 = "Animation: (%p) [%d] %{public}@ ended";
          v248 = 37;
          LOBYTE(v249) = 2;
          v234 = *&v38;
          v171 = v219;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v233, &v241, &v235, &v253, v219, &v247, &v234);

          (*(v226 + 8))(v171, v230);
        }

        else
        {
          v172 = v46;
          if (v46 == 20)
          {
            v173 = 3;
          }

          else
          {
            v173 = 4;
          }

          v115 = bswap32(v46) | (4 * WORD1(v46));
          v109 = v50;
          v174 = v226 + 16;
          v221 = *(v226 + 16);
          v175 = v221(v229, v219, v230);
          v176 = 0;
          LOBYTE(v247) = 1;
          v228 = v173;
          v224 = 16 * v173;
          v226 = v174;
          v225 = (v174 - 8);
          v223 = v38 + 32;
          v222 = v172;
          do
          {
            v227 = &v208;
            MEMORY[0x1EEE9AC00](v175);
            v178 = &v208 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
            v106 = (v178 + 8);
            v179 = v228;
            v180 = v178 + 8;
            do
            {
              *(v180 - 1) = 0;
              *v180 = 0;
              v180 += 16;
              --v179;
            }

            while (v179);
            v181 = v223 + 40 * v176;
            v182 = v228;
            while (1)
            {
              v183 = *(v38 + 16);
              if (v176 == v183)
              {
                break;
              }

              if (v176 >= v183)
              {
                __break(1u);
                goto LABEL_203;
              }

              ++v176;
              outlined init with copy of AnyTrackedValue(v181, &v253);
              v184 = *(&v254 + 1);
              v185 = v255;
              __swift_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
              *(v106 - 8) = CVarArg.kdebugValue(_:)(v115 | v109, v184, v185);
              *v106 = v186 & 1;
              v106 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v253);
              v181 += 40;
              if (!--v182)
              {
                goto LABEL_165;
              }
            }

            LOBYTE(v247) = 0;
LABEL_165:
            v187 = v222;
            if (v222 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v178[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v178[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v178[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v187 != 20 && v178[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v188 = *v225;
            v189 = v229;
            v190 = v230;
            (*v225)(v229, v230);
            v191 = __swift_project_value_buffer(v190, static OSSignpostID.continuation);
            v175 = v221(v189, v191, v190);
          }

          while ((v247 & 1) != 0);

          v192 = v230;
          v188(v229, v230);
          v188(v219, v192);
        }

        a1 = v220;
        goto LABEL_181;
      }
    }

    __break(1u);
LABEL_215:
    v227 = v53;
    v225 = v54;
    swift_once();
    v54 = v225;
    v53 = v227;
LABEL_25:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v55 = v46;
        v56 = v51;
        v57 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v58 = v38 == v45;
          LODWORD(v227) = v52;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v59 = *(v57 + 16);
          LODWORD(v247) = v55;
          BYTE4(v247) = v58;
          v248 = &type metadata for _ShapeSet.Wrapper;
          v249 = v4;
          v250 = v5;
          v251 = v53;
          v252 = v54;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
          v225 = v60;

          v61 = v59;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v47, v48, v49, v50, v56, v227);

          goto LABEL_49;
        }

        v85 = v47;
        v86 = v48;
        v87 = v49;
        v88 = v50;
        v89 = v56;
      }

      else
      {
        v85 = v47;
        v86 = v48;
        v87 = v49;
        v88 = v50;
        v89 = v51;
      }

      outlined consume of Animation.Function(v85, v86, v87, v88, v89, v52);
LABEL_49:
      v90 = one-time initialization token for animationState;

      if (v90 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_217;
    }

    __break(1u);
LABEL_217:
    swift_once();
LABEL_50:
    v92 = *(&static Signpost.animationState + 1);
    v91 = static Signpost.animationState;
    v93 = word_1ED5283E8;
    v94 = HIBYTE(word_1ED5283E8);
    v95 = byte_1ED5283EA;
    v96 = static os_signpost_type_t.event.getter();
    v247 = v91;
    v248 = v92;
    LOBYTE(v249) = v93;
    BYTE1(v249) = v94;
    BYTE2(v249) = v95;
    if (Signpost.isEnabled.getter())
    {
      v97 = one-time initialization token for _signpostLog;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v38 = COERCE_DOUBLE(swift_allocObject());
      *(v38 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v45)
      {
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        swift_once();
LABEL_91:
        v130 = COERCE_DOUBLE(_signpostLog);
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v45)
        {
          __break(1u);
LABEL_224:
          __break(1u);
        }

        v131 = AGGraphGetAttributeGraph();
        v132 = AGGraphGetCounter();

        v133 = MEMORY[0x1E69E6870];
        *(v106 + 56) = MEMORY[0x1E69E6810];
        *(v106 + 64) = v133;
        *(v106 + 32) = v132;
        v134 = AGGraphGetCurrentAttribute();
        if (v134 == v45)
        {
          goto LABEL_224;
        }

        v135 = MEMORY[0x1E69E76D0];
        *(v106 + 96) = MEMORY[0x1E69E7668];
        *(v106 + 104) = v135;
        *(v106 + 72) = v134;
        *(v106 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v106 + 144) = v136;
        *(v106 + 112) = 0x72657070617257;
        *(v106 + 120) = 0xE700000000000000;
        if (v96)
        {
          LOBYTE(v231) = v94;
          v234 = COERCE_DOUBLE(&dword_18D018000);
          v233 = v130;
          v247 = v91;
          v248 = v38;
          LOBYTE(v249) = v93;
          v241 = "Animation: (%p) [%d] %{public}@ started";
          v242 = 39;
          LOBYTE(v243) = 2;
          v232 = v106;
          v137 = v209;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v231, &v234, &v233, &v247, v209, &v241, &v232);
          v138 = v212;

          (*(v226 + 8))(v137, v230);
        }

        else
        {
          if (v91 == 20)
          {
            v38 = 3;
          }

          else
          {
            v38 = 4;
          }

          v139 = bswap32(v91) | (4 * (v91 >> 16));
          v115 = v94;
          v140 = v226 + 16;
          v216 = *(v226 + 16);
          v141 = v216(v227, v209, v230);
          v142 = 0;
          LOBYTE(v241) = 1;
          v224 = 16 * v38;
          v217 = v140;
          v225 = (v140 - 8);
          v223 = v106 + 32;
          v222 = v91;
          v221 = v38;
          do
          {
            v228 = &v208;
            MEMORY[0x1EEE9AC00](v141);
            v144 = &v208 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
            v109 = (v144 + 8);
            v145 = v38;
            v146 = v144 + 8;
            do
            {
              *(v146 - 1) = 0;
              *v146 = 0;
              v146 += 16;
              --v145;
            }

            while (v145);
            v147 = v223 + 40 * v142;
            while (1)
            {
              v148 = *(v106 + 16);
              if (v142 == v148)
              {
                break;
              }

              if (v142 >= v148)
              {
                goto LABEL_206;
              }

              ++v142;
              outlined init with copy of AnyTrackedValue(v147, &v247);
              v149 = v250;
              v150 = v251;
              __swift_project_boxed_opaque_existential_1(&v247, v250);
              *(v109 - 8) = CVarArg.kdebugValue(_:)(v139 | v115, v149, v150);
              *v109 = v151 & 1;
              v109 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v247);
              v147 += 40;
              --v38;
              if (*&v38 == 0.0)
              {
                goto LABEL_108;
              }
            }

            LOBYTE(v241) = 0;
LABEL_108:
            v152 = v222;
            if (v222 == 20)
            {
              v153 = v227;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v153 = v227;
            }

            v38 = v221;
            if (v144[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v144[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v144[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v152 != 20 && v144[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v154 = *v225;
            v155 = v230;
            (*v225)(v153, v230);
            v156 = __swift_project_value_buffer(v155, static OSSignpostID.continuation);
            v141 = v216(v153, v156, v155);
          }

          while ((v241 & 1) != 0);
          v138 = v212;

          v157 = v230;
          v154(v227, v230);
          v154(v209, v157);
        }

LABEL_125:
        a4 = v218;
        *(v218 + 5) = v138;
        goto LABEL_126;
      }

      v99 = AGGraphGetAttributeGraph();
      v100 = AGGraphGetCounter();

      v101 = MEMORY[0x1E69E6870];
      *(v38 + 56) = MEMORY[0x1E69E6810];
      *(v38 + 64) = v101;
      *(v38 + 32) = v100;
      v102 = AGGraphGetCurrentAttribute();
      if (v102 == v45)
      {
        goto LABEL_221;
      }

      v103 = MEMORY[0x1E69E76D0];
      *(v38 + 96) = MEMORY[0x1E69E7668];
      *(v38 + 104) = v103;
      *(v38 + 72) = v102;
      *(v38 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 144) = v104;
      *(v38 + 112) = 0x72657070617257;
      *(v38 + 120) = 0xE700000000000000;
      if (v94)
      {
        LOBYTE(v231) = v96;
        v234 = COERCE_DOUBLE(&dword_18D018000);
        v233 = v98;
        v247 = v91;
        v248 = v92;
        LOBYTE(v249) = v93;
        v241 = "Animation: (%p) [%d] %{public}@ updated";
        v242 = 39;
        LOBYTE(v243) = 2;
        v232 = v38;
        v105 = v210;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v231, &v234, &v233, &v247, v210, &v241, &v232);

        (*(v226 + 8))(v105, v230);
      }

      else
      {
        v106 = v91;
        if (v91 == 20)
        {
          v107 = 3;
        }

        else
        {
          v107 = 4;
        }

        v108 = bswap32(v91) | (4 * (v91 >> 16));
        v109 = v96;
        v110 = v226 + 16;
        v216 = *(v226 + 16);
        v111 = v216(v228, v210, v230);
        v112 = 0;
        LOBYTE(v241) = 1;
        v224 = 16 * v107;
        v217 = v110;
        v225 = (v110 - 8);
        v223 = v38 + 32;
        v222 = v106;
        v221 = v107;
        do
        {
          v227 = &v208;
          MEMORY[0x1EEE9AC00](v111);
          v114 = &v208 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
          v115 = (v114 + 8);
          v116 = v107;
          v117 = v114 + 8;
          do
          {
            *(v117 - 1) = 0;
            *v117 = 0;
            v117 += 16;
            --v116;
          }

          while (v116);
          v118 = v223 + 40 * v112;
          while (1)
          {
            v119 = *(v38 + 16);
            if (v112 == v119)
            {
              break;
            }

            if (v112 >= v119)
            {
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            ++v112;
            outlined init with copy of AnyTrackedValue(v118, &v247);
            v120 = v250;
            v106 = v251;
            __swift_project_boxed_opaque_existential_1(&v247, v250);
            *(v115 - 8) = CVarArg.kdebugValue(_:)(v108 | v109, v120, v106);
            *v115 = v121 & 1;
            v115 += 16;
            __swift_destroy_boxed_opaque_existential_1(&v247);
            v118 += 40;
            if (!--v107)
            {
              goto LABEL_70;
            }
          }

          LOBYTE(v241) = 0;
LABEL_70:
          v106 = v222;
          if (v222 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v107 = v221;
          if (v114[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v114[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v114[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v106 != 20 && v114[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v122 = *v225;
          v123 = v228;
          v124 = v230;
          (*v225)(v228, v230);
          v125 = __swift_project_value_buffer(v124, static OSSignpostID.continuation);
          v111 = v216(v123, v125, v124);
        }

        while ((v241 & 1) != 0);

        v126 = v230;
        v122(v228, v230);
        v122(v210, v126);
      }
    }

    else
    {
    }

    a4 = v218;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v211);

    v31 = v238;
    a1 = v220;
    a3 = v214;
LABEL_127:

    v158 = v239;
    v159 = v240;
    *(a4 + 2) = v31;
    *(a4 + 3) = v158;
    *(a4 + 4) = v159;
    v29 = *(a4 + 5);
    if (!v29)
    {
      return result;
    }
  }

  if (one-time initialization token for enabledCategories == -1)
  {
    goto LABEL_147;
  }

LABEL_210:
  v207 = v161;
  swift_once();
  v161 = v207;
LABEL_147:
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
LABEL_212:
    swift_once();
    goto LABEL_139;
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
    LODWORD(v253) = v162;
    BYTE4(v253) = v161 == v45;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
    AGGraphAddTraceEvent();
  }

  specialized AnimatorState.nextUpdate()();
LABEL_182:
  v115 = v238;
  v26 = v240;
  v109 = *a1;
  v106 = *(*a1 + 16);
  v38 = *(v238 + 16);
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_207;
  }

  for (; v106; v109 = specialized _ArrayBuffer._consumeAndCreateNew()(v109))
  {
    v193 = 0;
    v194 = 0;
    v195 = (v115 + 32);
LABEL_185:
    if (v194 == v38)
    {
      break;
    }

    v196 = &v195[48 * v194];
    v197 = *(v109 + 16);
    if (v193 > v197)
    {
      v197 = v193;
    }

    v198 = (v109 + 32 + 32 * v193);
    while (v197 != v193)
    {
      if (v194 >= *(v115 + 16))
      {
        goto LABEL_205;
      }

      v199 = *(v198 + 1);
      if (v199 == *v196)
      {
        outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(v196, &v253, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>);
        outlined init with copy of _AnyAnimatableData(&v253 + 1, &v247);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v201 = *v198;
        if (isUniquelyReferenced_nonNull_native)
        {
          outlined init with copy of _AnyAnimatableData(&v247, &v241);
          (*(*v201 + 104))(&v241);
          outlined destroy of _AnyAnimatableData(&v247);
        }

        else
        {
          v202 = (*(*v201 + 120))(&v247);
          v203 = v195;
          v204 = v202;
          outlined destroy of _AnyAnimatableData(&v247);
          *v198 = v204;
          v195 = v203;
        }

        outlined destroy of _AnyAnimatableData(&v253 + 8);
        ++v193;
LABEL_199:
        ++v194;
        if (v193 < v106)
        {
          goto LABEL_185;
        }

        goto LABEL_200;
      }

      if (v199 >= *v196)
      {
        goto LABEL_199;
      }

      ++v193;
      v198 += 32;
      if (v193 >= v106)
      {
        goto LABEL_200;
      }
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    ;
  }

LABEL_200:
  v205 = v220;
  *v220 = v109;

  result = swift_bridgeObjectRelease_n();
  *(v205 + 1) = v26;
  *(v205 + 16) = 1;
  return result;
}