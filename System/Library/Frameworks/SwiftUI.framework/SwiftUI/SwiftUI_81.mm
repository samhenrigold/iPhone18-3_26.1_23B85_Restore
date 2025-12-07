uint64_t getEnumTag for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 64);
  v5 = ((((v4 + ((v4 + *(v3 + 80) + ((v4 + *(v3 + 80)) & ~*(v3 + 80))) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v5 > v4)
  {
    v4 = v5;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  result = a1[v4];
  if (result >= 3)
  {
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
        return result;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | ((result - 3) << (8 * v4))) + 3;
    v10 = v8 + 3;
    if (v4 >= 4)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

void destructiveInjectEnumTag for AnimatedValueTrack<A>.VectorPath.Element(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = ((((v6 + 7 + ((v6 + *(v5 + 80) + ((v6 + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (a2 > 2)
  {
    if (v7 > v6)
    {
      v6 = v7;
    }

    if (v6 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v6;
    }

    v9 = a2 - 3;
    if (v8 < 4)
    {
      a1[v8] = (v9 >> (8 * v8)) + 3;
      if (v8)
      {
        v10 = v9 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v10;
          a1[2] = BYTE2(v10);
        }

        else if (v8 == 2)
        {
          *a1 = v10;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      a1[v8] = 3;
      bzero(a1, v8);
      *a1 = v9;
    }
  }

  else
  {
    if (v7 > v6)
    {
      v6 = v7;
    }

    if (v6 <= 8)
    {
      v6 = 8;
    }

    a1[v6] = a2;
  }
}

uint64_t ScrollTargetVisibilityChangeModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = *(v2 + 24);
  v49 = *(v2 + 24);
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(&v43 + 1) = *v2;
  *&v44 = v5;
  *(&v44 + 1) = v6;

  swift_getWitnessTable(protocol conformance descriptor for ScrollTargetVisibilityChangeModifier<A>, a2);
  v9 = type metadata accessor for _ViewModifier_Content();
  v11 = type metadata accessor for PrimitiveTargetVisibilityModifier(0, v7, v8, v10);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v9);
  MEMORY[0x18D00A570](&v49, &v43, v9, v11, WitnessTable);

  LOBYTE(v35) = v49;
  *(&v35 + 1) = *(&v49 + 1);
  v36 = v50;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  v14 = *(v3 + 16);
  *(v13 + 32) = *v3;
  *(v13 + 48) = v14;
  *(v13 + 64) = *(v3 + 32);

  outlined init with copy of State<Bool>(&v41, &v43);
  v15 = type metadata accessor for ModifiedContent();
  v34[0] = WitnessTable;
  v34[1] = &protocol witness table for PrimitiveTargetVisibilityModifier<A>;
  v16 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v34);
  View.onAppear(perform:)();

  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v8;
  v19 = *(v3 + 16);
  *(v18 + 32) = *v3;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(v3 + 32);

  outlined init with copy of State<Bool>(&v41, &v49);
  v20 = type metadata accessor for ModifiedContent();
  v21 = MEMORY[0x1E69805D0];
  v33[0] = v17;
  v33[1] = MEMORY[0x1E69805D0];
  v22 = swift_getWitnessTable(v16, v20, v33);
  View.onDisappear(perform:)();

  v42[0] = v35;
  v42[1] = v36;
  v42[2] = v37;
  v42[3] = v38;
  (*(*(v20 - 8) + 8))(v42, v20);
  v29 = v51;
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v27 = v49;
  v28 = v50;
  v23 = type metadata accessor for ModifiedContent();
  v26[0] = v22;
  v26[1] = v21;
  swift_getWitnessTable(v16, v23, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v43 = v27;
  v44 = v28;
  v24 = *(*(v23 - 8) + 8);
  v24(&v43, v23);
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v27 = v35;
  v28 = v36;
  static ViewBuilder.buildExpression<A>(_:)();
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v49 = v27;
  v50 = v28;
  return (v24)(&v49, v23);
}

double static PrimitiveTargetVisibilityModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v32 = a6;
  v56 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v48 = *(a2 + 32);
  v49 = v9;
  v11 = *(a2 + 48);
  v50 = *(a2 + 64);
  v12 = *(a2 + 16);
  v47[0] = *a2;
  v47[1] = v12;
  v43 = v48;
  v44 = v11;
  v45 = *(a2 + 64);
  v13 = *a1;
  v51 = *(a2 + 80);
  v46 = *(a2 + 80);
  v41 = v47[0];
  v42 = v10;
  outlined init with copy of _ViewInputs(v47, v54);
  PreferenceKeys.add(_:)();
  v52[2] = v43;
  v52[3] = v44;
  v52[4] = v45;
  v53 = v46;
  v52[0] = v41;
  v52[1] = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v35 = v41;
  v36 = v42;
  v14 = outlined init with copy of _ViewInputs(v52, v54);
  a3(v33, v14, &v35);
  v54[2] = v37;
  v54[3] = v38;
  v54[4] = v39;
  v55 = v40;
  v54[0] = v35;
  v54[1] = v36;
  outlined destroy of _ViewInputs(v54);
  v15 = *v33;
  *&v16 = *&v33[8];
  *&v35 = *v33;
  v31 = v16;
  DWORD2(v35) = *&v33[8];
  v17 = PreferencesOutputs.subscript.getter();
  if ((v17 & 0x100000000) == 0)
  {
    v19 = v17;
    *v33 = v13;
    type metadata accessor for PrimitiveTargetVisibilityModifier(255, a4, a5, v18);
    type metadata accessor for _GraphValue();
    v20 = _GraphValue.value.getter();
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v35);
    v21 = DWORD2(v35);
    v22 = BYTE12(v35);
    v23 = static Array._allocateUninitialized(_:)();
    *v33 = v20;
    *&v33[4] = v19;
    v33[8] = 0;
    *&v33[12] = v35;
    *&v33[20] = v21;
    v33[24] = v22;
    *&v33[28] = -1;
    v34 = v23;
    MEMORY[0x1EEE9AC00](v23);
    v25 = type metadata accessor for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(0, a4, a5, v24);
    v30[2] = v25;
    v30[3] = swift_getWitnessTable(protocol conformance descriptor for PrimitiveTargetVisibilityModifier<A>.VisibilityActionDispatcher, v25);
    _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v33, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v30, v25, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
    v35 = *v33;
    v36 = *&v33[16];
    *&v37 = v34;
    (*(*(v25 - 8) + 8))(&v35, v25);
    AGGraphSetFlags();
  }

  v37 = v43;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v35 = v41;
  v36 = v42;
  outlined destroy of _ViewInputs(&v35);
  v28 = v32;
  *v32 = v15;
  result = *&v31;
  v28[1] = v31;
  return result;
}

void PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = v4[1];
  v33[0] = *v4;
  v33[1] = v7;
  v34 = *(v4 + 4);
  v8 = v4[1];
  v30 = *v4;
  v31 = v8;
  v32 = *(v4 + 4);
  if (specialized PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.modifier.getter(a1, a2, a3, a4))
  {
    PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()(a1);
    if (v9)
    {
      v10 = v9;
      if (UpdateCycleDetector.dispatch(label:isDebug:)())
      {
        v11 = v4[1];
        v27 = *v4;
        v28 = v11;
        v29 = *(v4 + 4);
        v22 = *v4;
        v24 = v4[1];
        v26 = *(v4 + 4);
        v12 = *(a1 - 8);
        (*(v12 + 16))(&v30, &v27, a1);
        PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)(v10, a1, v13, v14);

        v30 = v22;
        v31 = v24;
        v32 = v26;
        (*(v12 + 8))(&v30, a1);
      }

      else
      {
      }
    }

    v21 = 1;
  }

  else
  {
    if (BYTE8(v33[0]) == 1)
    {
      v15 = static Array._allocateUninitialized(_:)();
      v16 = *(a1 - 8);
      v17 = *(v16 + 8);
      v17(v33, a1);
      *(v5 + 4) = v15;
      v29 = v15;
      v18 = v5[1];
      v27 = *v5;
      v28 = v18;
      v23 = *v5;
      v25 = v5[1];
      (*(v16 + 16))(&v30, &v27, a1);
      PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)(v15, a1, v19, v20);
      v30 = v23;
      v31 = v25;
      v32 = v15;
      v17(&v30, a1);
    }

    v21 = 0;
  }

  *(v5 + 8) = v21;
}

void PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()(uint64_t a1)
{
  v29 = static Array._allocateUninitialized(_:)();
  type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
  v3 = *AGGraphGetValue();
  v4 = v1[1];
  v26 = *v1;
  v27 = v4;
  v22 = v1;
  v28 = *(v1 + 4);

  specialized PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.modifier.getter(a1, v5, v6, v7);
  v8 = v3 + 64;
  v9 = 1 << *(v3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v3 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v24 = v3 + 64;
  v25 = v3;
  v23 = v12;
  while (v11)
  {
LABEL_10:
    v15 = *(*(v3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        outlined init with copy of _Benchmark(v17, &v26);
        v18 = v28;
        v19 = __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
        v20 = MEMORY[0x1EEE9AC00](v19);
        (*(v18 + 24))(partial apply for closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs(), v20);
        __swift_destroy_boxed_opaque_existential_1(&v26);
        v17 += 40;
        --v16;
      }

      while (v16);

      v8 = v24;
      v3 = v25;
      v12 = v23;
    }

    v11 &= v11 - 1;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  v21 = static Array<A>.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
  }

  *(v22 + 4) = v29;
}

uint64_t closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()(unsigned int *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = *&a6;
  v48[1] = a4;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v48 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48[0] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = v48 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 1);
  v21 = *(a1 + 11);
  v50 = *(a1 + 10);
  v49 = v21;
  v22 = *(a1 + 12);
  v23 = *(a1 + 13);
  v25 = *(a1 + 14);
  v24 = *(a1 + 15);
  v57 = __PAIR64__(v19, v18);
  v58 = v20;

  _ViewList_ID.explicitID<A>(for:)();

  v26 = v13;
  if ((*(v13 + 48))(v12, 1, a5) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v28 = v51;
  (*(v26 + 32))(v51, v12, a5);
  v57 = __PAIR64__(v19, v18);
  v58 = v20;
  v29 = *(a1 + 2);
  v59 = *(a1 + 1);
  v60 = v29;
  v30 = *(a1 + 4);
  v61 = *(a1 + 3);
  v62 = v30;
  v31 = v50;
  v32 = v49;
  v63 = v50;
  v64 = v49;
  v65 = v22;
  v66 = v23;
  v67 = v25;
  v68 = v24;
  ScrollableCollectionSubview.frame.getter();
  v52 = a2;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v56.origin.x = v33;
  v56.origin.y = v35;
  v56.size.width = v37;
  v56.size.height = v39;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v55 = 2;
  v57 = v31;
  v58 = v32;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  *&v60 = v25;
  *(&v60 + 1) = v24;

  CGRect.convertAndClipToScrollView(to:transform:)();

  outlined destroy of CoordinateSpace(v53);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v38;
  v69.size.height = v40;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v38;
  v70.size.height = v40;
  v42 = Width * CGRectGetHeight(v70);
  x = v56.origin.x;
  y = v56.origin.y;
  v45 = v56.size.width;
  height = v56.size.height;
  v47 = CGRectGetWidth(v56);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = v45;
  v71.size.height = height;
  if (v47 * CGRectGetHeight(v71) / v42 >= v52)
  {
    (*(v26 + 16))(v48[0], v28, a5);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return (*(v26 + 8))(v28, a5);
}

double closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = v7;
  v9[6] = a2;

  static Update.enqueueAction(reason:_:)();

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PrimitiveTargetVisibilityModifier<A>.VisibilityActionDispatcher(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PrimitiveTargetVisibilityModifier<A>.VisibilityActionDispatcher, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PrimitiveTargetVisibilityModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PrimitiveTargetVisibilityModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.onScrollTargetVisibilityChange<A>(idType:threshold:_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v15[0] = 0;
  v16 = 0;
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *v12 = a1;
  v12[1] = a3;
  v12[2] = a4;
  v13 = 0;
  v14 = 0;
  v10 = type metadata accessor for ScrollTargetVisibilityChangeModifier(0, a6, a8, a5);

  MEMORY[0x18D00A570](v12, a5, v10, a7);

  return outlined destroy of State<Bool>(v15);
}

uint64_t outlined destroy of State<Bool>(uint64_t a1)
{
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for OnScrollVisibilityChangeModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnScrollVisibilityChangeModifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t partial apply for closure #1 in ScrollTargetVisibilityChangeModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 64))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

uint64_t initializeWithCopy for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithCopy for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for OnScrollVisibilityGeometryAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t CircularProgressViewStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t CircularProgressViewStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  return result;
}

uint64_t CircularProgressViewStyle.makeBody(configuration:)(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v9[1] = *v1;
  v9[2] = v6;
  v10 = *(v1 + 32);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  closure #1 in CircularProgressViewStyle.makeBody(configuration:)(a1, &v5[*(v7 + 44)]);
  Spacing.init()();
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>, MEMORY[0x1E6981870]);
  View.spacing(_:)();

  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v5, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
}

unint64_t lazy protocol witness table accessor for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size()
{
  result = lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size;
  if (!lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CircularProgressViewStyle.Size, &type metadata for CircularProgressViewStyle.Size, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size);
  }

  return result;
}

void Toggle<>.init(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  v4 = *(a1 + 40);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  if (v8)
  {
    v11 = a1[6];
  }

  else
  {
    v11 = 0;
  }

  *a2 = a1[3];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v7 & 1;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  v18 = v11;
  if (v8)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  outlined copy of ToggleStyleConfiguration.Effect(v5, v6, v7, v8, v9, v10);

  outlined consume of ToggleStyleConfiguration.Effect(v5, v6, v7, v8, v9, v10);
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v8;
  *(a2 + 56) = v17;
  *(a2 + 64) = v16;
}

uint64_t Toggle.init<A>(isOn:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  Toggle.init<A>(toggledOn:label:)(v17, a2, a3, a4, a5, *(*(a6 + 8) + 8), a7);
  return (*(v14 + 8))(a1, a4);
}

uint64_t closure #2 in Toggle.init<A>(toggledOn:label:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v19[-v15];
  v17 = *a1;
  (*(v9 + 16))(v11, a4, a6, v14);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  while (v20)
  {
    v19[8] = v17 == 0;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

double Toggle<>.init(_:isOn:)@<D0>(uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;

  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  v25 = v18 & 1;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v12;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v12;

  Binding.init(get:set:)();

  *a8 = v22;
  *(a8 + 8) = v23;
  *(a8 + 16) = v24;
  *(a8 + 24) = v13;
  *(a8 + 32) = v15;
  *(a8 + 40) = v25;
  *(a8 + 48) = v17;
  result = 0.0;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0u;
  return result;
}

uint64_t Toggle<>.init<A>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63400;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;
  memset(&v23[8], 0, 48);

  closure #1 in Toggle<>.init<A>(_:isOn:)(a1, v22 + 8);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;

  Binding.init(get:set:)();

  LOBYTE(v22[0]) = v21;
  v16 = *&v23[32];
  *(a7 + 64) = *&v23[16];
  *(a7 + 80) = v16;
  *(a7 + 96) = *&v23[48];
  v17 = v22[0];
  *a7 = v20;
  *(a7 + 16) = v17;
  v18 = *v23;
  *(a7 + 32) = v22[1];
  *(a7 + 48) = v18;
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in Toggle<>.init<A>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

__n128 Toggle<>.init<A>(_:isOn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, v20, v21, v17);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  Toggle.init<A>(isOn:label:)(v19, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138], a7, v30);

  (*(v16 + 8))(a5, a6);
  v22 = v30[5];
  *(a8 + 64) = v30[4];
  *(a8 + 80) = v22;
  *(a8 + 96) = v31;
  v23 = v30[1];
  *a8 = v30[0];
  *(a8 + 16) = v23;
  result = v30[3];
  *(a8 + 32) = v30[2];
  *(a8 + 48) = result;
  return result;
}

__n128 Toggle<>.init<A>(_:sources:isOn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v17 = *(a7 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, v22, v18);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  Toggle.init<A>(sources:isOn:label:)(v20, a6, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v28, MEMORY[0x1E6981148], a7, MEMORY[0x1E6981138], v27, v33);

  (*(v17 + 8))(a5, a7);
  v23 = v33[5];
  *(a9 + 64) = v33[4];
  *(a9 + 80) = v23;
  *(a9 + 96) = v34;
  v24 = v33[1];
  *a9 = v33[0];
  *(a9 + 16) = v24;
  result = v33[3];
  *(a9 + 32) = v33[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t Toggle<>.init<A, B>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, v15);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  Toggle.init<A>(isOn:label:)(v17, partial apply for closure #1 in Toggle<>.init<A, B>(_:isOn:), MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], a6, v28);
  (*(v14 + 8))(a2, a4);
  v18 = v28[5];
  *(a7 + 64) = v28[4];
  *(a7 + 80) = v18;
  *(a7 + 96) = v29;
  v19 = v28[1];
  *a7 = v28[0];
  *(a7 + 16) = v19;
  v20 = v28[3];
  *(a7 + 32) = v28[2];
  *(a7 + 48) = v20;
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t Toggle<>.init<A, B>(_:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, v17);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a1;
  Toggle.init<A>(sources:isOn:label:)(v19, a3, partial apply for closure #1 in Toggle<>.init<A, B>(_:sources:isOn:), v24, MEMORY[0x1E6981148], a5, MEMORY[0x1E6981138], a7, v30);
  (*(v16 + 8))(a2, a5);
  v20 = v30[5];
  *(a8 + 64) = v30[4];
  *(a8 + 80) = v20;
  *(a8 + 96) = v31;
  v21 = v30[1];
  *a8 = v30[0];
  *(a8 + 16) = v21;
  v22 = v30[3];
  *(a8 + 32) = v30[2];
  *(a8 + 48) = v22;
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in Toggle<>.init<A, B>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t Toggle<>.init(_:image:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v45 = a5;
  v38 = a2;
  v39 = a4;
  LODWORD(v42) = a3;
  v41 = a1;
  v14 = type metadata accessor for ImageResource();
  v37 = *(v14 - 8);
  v15 = v37;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  v43 = a7;
  v44 = a6;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = a8;
  v22 = *(v15 + 16);
  v22(v20, a5, v14);

  v23 = Text.init(_:tableName:bundle:comment:)();
  v41 = v24;
  v42 = v23;
  v40 = v25;
  v49 = v26 & 1;
  v22(v17, v20, v14);
  v27 = Image.init(_:)();
  v28 = *(v37 + 8);
  v28(v20, v14);

  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v21;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v21;

  Binding.init(get:set:)();

  v31 = v47;
  v32 = v48;
  v33 = v49;
  *a9 = v46;
  *(a9 + 8) = v31;
  *(a9 + 16) = v32;
  v34 = v41;
  *(a9 + 24) = v42;
  *(a9 + 32) = v34;
  *(a9 + 40) = v33;
  *(a9 + 48) = v40;
  *(a9 + 56) = v27;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  return (v28)(v45, v14);
}

uint64_t Toggle<>.init<A>(_:image:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _OWORD *a8@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;

  closure #1 in Toggle<>.init<A>(_:image:isOn:)(a1, a2, a6, v25 + 8);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;

  Binding.init(get:set:)();

  LOBYTE(v25[0]) = v24;
  v18 = v27;
  a8[4] = v26;
  a8[5] = v18;
  a8[6] = v28;
  v19 = v25[0];
  *a8 = v23;
  a8[1] = v19;
  v20 = v25[2];
  a8[2] = v25[1];
  a8[3] = v20;
  v21 = type metadata accessor for ImageResource();
  (*(*(v21 - 8) + 8))(a2, v21);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

double closure #1 in Toggle<>.init<A>(_:image:isOn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3, v14);
  (*(v10 + 16))(v12, a2, v9);
  Label<>.init<A>(_:image:)(v16, v12, a3, &v21);
  v18 = v22;
  result = *&v21;
  v20 = v23;
  *a5 = v21;
  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  return result;
}

uint64_t Toggle<>.init<A>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v33 = a7;
  v18 = *(a8 - 8);
  v32 = a10;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, v23, v19);
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for Label<Text, Image>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Toggle.init<A>(sources:isOn:label:)(v21, v33, partial apply for closure #1 in Toggle<>.init<A>(_:image:sources:isOn:), v34, v25, a8, v26, v32, v40);

  (*(v18 + 8))(a6, a8);
  v27 = v40[5];
  a9[4] = v40[4];
  a9[5] = v27;
  a9[6] = v40[6];
  v28 = v40[1];
  *a9 = v40[0];
  a9[1] = v28;
  v29 = v40[3];
  a9[2] = v40[2];
  a9[3] = v29;
  v30 = type metadata accessor for ImageResource();
  return (*(*(v30 - 8) + 8))(a5, v30);
}

uint64_t closure #1 in Toggle<>.init<A>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, unsigned int a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v26[1] = a1;
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(v9 + 16);
  v16(v26 - v14, a5, v8, v13);

  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  v28 = v22 & 1;
  (v16)(v11, v15, v8);
  v23 = Image.init(_:)();
  result = (*(v9 + 8))(v15, v8);
  v25 = v28;
  *a6 = v17;
  *(a6 + 8) = v19;
  *(a6 + 16) = v25;
  *(a6 + 24) = v21;
  *(a6 + 32) = v23;
  return result;
}

uint64_t Toggle<>.init<A, B>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v31 = a4;
  v32 = a1;
  v17 = *(a6 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, v22, v18);
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a1;
  v39 = a2;
  type metadata accessor for Label<Text, Image>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Toggle.init<A>(sources:isOn:label:)(v20, v31, partial apply for closure #1 in Toggle<>.init<A, B>(_:image:sources:isOn:), v33, v24, a6, v25, a8, v40);
  (*(v17 + 8))(a3, a6);
  v26 = v40[5];
  a9[4] = v40[4];
  a9[5] = v26;
  a9[6] = v40[6];
  v27 = v40[1];
  *a9 = v40[0];
  a9[1] = v27;
  v28 = v40[3];
  a9[2] = v40[2];
  a9[3] = v28;
  v29 = type metadata accessor for ImageResource();
  (*(*(v29 - 8) + 8))(a2, v29);
  return (*(*(a5 - 8) + 8))(v32, a5);
}

double closure #1 in Toggle<>.init<A, B>(_:image:sources:isOn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3, v14);
  (*(v10 + 16))(v12, a2, v9);
  Label<>.init<A>(_:image:)(v16, v12, a3, &v21);
  v18 = v22;
  result = *&v21;
  v20 = v23;
  *a5 = v21;
  *(a5 + 16) = v18;
  *(a5 + 24) = v20;
  return result;
}

void Toggle.init(isOn:lnAction:perform:label:)(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v14 = (a8 + *(type metadata accessor for Toggle(0, a6, a7, a4) + 40));
  KeyPath = swift_getKeyPath();
  a5();
  *v14 = KeyPath;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  type metadata accessor for LocationBox<AppIntentExecutingLocation<ToggleState>>(0);
  swift_allocObject();

  v16 = a2;

  outlined copy of Environment<AppIntentExecutor?>.Content(KeyPath, 0, 0);
  v17 = v16;

  v18 = LocationBox.init(_:)();
  outlined consume of Environment<AppIntentExecutor?>.Content(KeyPath, 0, 0);

  *a8 = 0;
  *(a8 + 8) = v18;
  *(a8 + 16) = (a1 & 1) == 0;
}

uint64_t specialized closure #1 in Toggle.init<A>(toggledOn:label:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]();
  return static ToggleState.stateFor<A, B>(item:in:)();
}

void type metadata accessor for Label<Text, Image>()
{
  if (!lazy cache variable for type metadata for Label<Text, Image>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E6981148];
    v4[1] = MEMORY[0x1E6981748];
    v4[2] = MEMORY[0x1E6981138];
    v4[3] = MEMORY[0x1E6981710];
    v2 = type metadata accessor for Label(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Label<Text, Image>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>()
{
  result = lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>;
  if (!lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>)
  {
    type metadata accessor for Label<Text, Image>();
    result = swift_getWitnessTable(protocol conformance descriptor for Label<A, B>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>);
  }

  return result;
}

void type metadata accessor for LocationBox<AppIntentExecutingLocation<ToggleState>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LocationBox<AppIntentExecutingLocation<ToggleState>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for AppIntentExecutingLocation<ToggleState>, MEMORY[0x1E697DD58], type metadata accessor for AppIntentExecutingLocation);
    lazy protocol witness table accessor for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>();
    v1 = type metadata accessor for LocationBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LocationBox<AppIntentExecutingLocation<ToggleState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>()
{
  result = lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>;
  if (!lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for AppIntentExecutingLocation<ToggleState>, MEMORY[0x1E697DD58], type metadata accessor for AppIntentExecutingLocation);
    result = swift_getWitnessTable(protocol conformance descriptor for AppIntentExecutingLocation<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Toggle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = (v7 + v12) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v7 + v13) & 0xFFFFFFFFFFFFFFF8;
    if (*(v16 + 24) < 0xFFFFFFFFuLL)
    {
      v23 = *v16;
      v24 = *(v16 + 32);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 32) = v24;
      *v15 = v23;
      return a1;
    }

    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v16, v18, v19);
    *v15 = v17;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    v20 = *(v16 + 24);
    *(v15 + 24) = v20;
    v21 = *(v16 + 40);
    *(v15 + 32) = *(v16 + 32);
    *(v15 + 40) = v21;
    v22 = v20;
  }

  return a1;
}

uint64_t initializeWithTake for Toggle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11[1];
  v12 = v11[2];
  *v10 = *v11;
  v10[1] = v13;
  v10[2] = v12;
  return a1;
}

uint64_t *assignWithTake for Toggle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 17) & ~v8;
  v10 = (a2 + v8 + 17) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16));

LABEL_5:
    v19 = *v13;
    v20 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v20;
    *v12 = v19;
    return a1;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
  v18 = *(v12 + 24);
  *(v12 + 24) = *(v13 + 24);

  *(v12 + 32) = *(v13 + 32);

  return a1;
}

_BYTE *storeEnumTagSinglePayload for Toggle(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void specialized closure #2 in Toggle.init<A>(toggledOn:label:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 40;
    do
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();

      v3 += 24;
      --v2;
    }

    while (v2);
  }
}

double TableColumn<>.init<A>(_:value:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a9;
  v31 = a7;
  v26 = a2;
  v27 = a6;
  v29 = a4;
  v28 = a3;
  v25 = a1;
  v13 = (*a5 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = type metadata accessor for KeyPathComparator();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v19 = v13[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v15 - 8) + 56))(v18, 0, 1, v15);
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = a8;
  v20[4] = v19;
  v20[5] = a10;
  v20[6] = a11;
  v20[7] = a12;
  v21 = v26;
  v20[8] = v27;
  v20[9] = v31;
  v32 = v25;
  v33 = v21;
  v34 = v28;
  v35 = v29;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v15);
  TableColumn.init(comparator:content:label:)(v18, partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:), v20, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v14, v15, a8, v30, MEMORY[0x1E6981148], a10, WitnessTable, a11, MEMORY[0x1E6981138]);

  return result;
}

uint64_t TableColumn<>.init<A>(_:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a8;
  v28 = a1;
  v34 = a9;
  v35 = a7;
  v30 = a2;
  v31 = a6;
  v33 = a4;
  v32 = a3;
  v29 = a11;
  v14 = (*a5 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = type metadata accessor for KeyPathComparator();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = v14[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = a8;
  v21[4] = v20;
  v21[5] = a10;
  v22 = v29;
  v21[6] = v29;
  v21[7] = a12;
  v21[8] = v31;
  v21[9] = v35;
  v36 = a1;
  v23 = v30;
  v37 = v30;
  LOBYTE(v20) = v32 & 1;
  v38 = v32 & 1;
  v39 = v33;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v16);
  TableColumn.init(comparator:content:label:)(v19, partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:), v21, partial apply for closure #2 in TableColumn<>.init<A>(_:value:content:), v15, v16, v27, v34, MEMORY[0x1E6981148], a10, WitnessTable, v22, MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(v28, v23, v20);
}

uint64_t TableColumn<>.init<A, B>(_:value:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = a9;
  v30 = a10;
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = type metadata accessor for KeyPathComparator();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = v14[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = a5;
  v29 = a5;
  v23 = v30;
  v22 = v31;
  v21[4] = v31;
  v21[5] = v20;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = v23;
  v21[9] = a11;
  v21[10] = v32;
  v21[11] = v33;
  v36 = v15;
  v37 = a5;
  v38 = v22;
  v39 = v20;
  v24 = v22;
  v40 = a7;
  v41 = a8;
  v42 = v23;
  v43 = a11;
  v25 = v34;
  v44 = v34;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v16);
  TableColumn.init(comparator:content:label:)(v19, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:content:), v21, partial apply for closure #2 in TableColumn<>.init<A, B>(_:value:content:), v15, v16, v29, v35, MEMORY[0x1E6981148], a7, WitnessTable, a8, MEMORY[0x1E6981138]);

  return (*(*(v24 - 8) + 8))(v25, v24);
}

uint64_t closure #1 in TableColumn<>.init<A, B>(_:value:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t closure #2 in TableColumn<>.init<A, B>(_:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t closure #1 in TableColumn<>.init<A>(_:value:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v14(*v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v12, a5);
}

uint64_t partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:)(uint64_t a1)
{
  return closure #1 in TableColumn<>.init<A>(_:value:content:)(a1, v1[8], v1[9], v1[2], v1[3]);
}

{
  return closure #1 in TableColumn<>.init<A>(_:value:content:)(a1, v1[8], v1[9], v1[2], v1[3]);
}

uint64_t TableColumn<>.init<A, B>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46 = a9;
  v47 = a8;
  v42 = a2;
  v43 = a7;
  v39 = a6;
  v40 = a1;
  v45 = a4;
  v44 = a3;
  v37 = a12;
  v38 = a13;
  v36 = a10;
  v15 = *a5;
  v41 = *(a11 - 8);
  v16 = v41;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + *MEMORY[0x1E69E77B0]);
  v20 = type metadata accessor for KeyPathComparator();
  v21 = type metadata accessor for Optional();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  (*(v16 + 16))(v18, a6, a11, v22);
  v25 = *(v15 + *MEMORY[0x1E69E77B0] + 8);

  v35 = a11;
  KeyPathComparator.init<A, B>(_:comparator:)(v26, v18, v19, v25, a11, a14);
  (*(*(v20 - 8) + 56))(v24, 0, 1, v20);
  v27 = swift_allocObject();
  v29 = v36;
  v28 = v37;
  v27[2] = v19;
  v27[3] = v29;
  v27[4] = v25;
  v27[5] = a11;
  v30 = v38;
  v27[6] = v28;
  v27[7] = v30;
  v31 = v43;
  v27[8] = a14;
  v27[9] = v31;
  v27[10] = v47;
  v48 = v40;
  v49 = v42;
  v50 = v44;
  v51 = v45;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v20);
  TableColumn.init(comparator:content:label:)(v24, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:comparator:content:), v27, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v19, v20, v29, v46, MEMORY[0x1E6981148], v28, WitnessTable, v30, MEMORY[0x1E6981138]);

  return (*(v41 + 8))(v39, v35);
}

uint64_t KeyPathComparator.init<A, B>(_:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  KeyPathComparator.init<A, B>(_:comparator:)();
  return (*(v8 + 8))(a2, a5);
}

uint64_t TableColumn<>.init<A, B>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v50 = a8;
  v51 = a1;
  v46 = a7;
  v43 = a2;
  v44 = a6;
  v48 = a4;
  v49 = a9;
  v47 = a3;
  v41 = a12;
  v42 = a13;
  v39 = a10;
  v16 = *a5;
  v45 = *(a11 - 8);
  v17 = v45;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + *MEMORY[0x1E69E77B0]);
  v21 = type metadata accessor for KeyPathComparator();
  v22 = type metadata accessor for Optional();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v38 - v24;
  (*(v17 + 16))(v19, a6, a11, v23);
  v26 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v40 = a5;

  v38 = a11;
  KeyPathComparator.init<A, B>(_:comparator:)(v27, v19, v20, v26, a11, a14);
  (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
  v28 = swift_allocObject();
  v29 = v39;
  v28[2] = v20;
  v28[3] = v29;
  v28[4] = v26;
  v28[5] = a11;
  v31 = v41;
  v30 = v42;
  v28[6] = v41;
  v28[7] = v30;
  v32 = v46;
  v28[8] = a14;
  v28[9] = v32;
  v33 = v51;
  v28[10] = v50;
  v34 = v43;
  v52 = v33;
  v53 = v43;
  v35 = v47 & 1;
  v54 = v47 & 1;
  v55 = v48;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v21);
  TableColumn.init(comparator:content:label:)(v25, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:comparator:content:), v28, partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:), v20, v21, v29, v49, MEMORY[0x1E6981148], v31, WitnessTable, v30, MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v51, v34, v35);

  return (*(v45 + 8))(v44, v38);
}

uint64_t TableColumn<>.init<A, B, C>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a7;
  v42 = a3;
  v47 = a9;
  v48 = a6;
  v44 = a4;
  v45 = a5;
  v46 = a1;
  v40 = a11;
  v39 = a10;
  v16 = *a2;
  v43 = *(a8 - 8);
  v17 = v43;
  v38[0] = a12;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + *MEMORY[0x1E69E77B0]);
  v21 = type metadata accessor for KeyPathComparator();
  v22 = type metadata accessor for Optional();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v38 - v24;
  (*(v17 + 16))(v19, a3, a8, v23);
  v26 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v38[1] = a2;

  KeyPathComparator.init<A, B>(_:comparator:)(v27, v19, v20, v26, a8, a13);
  (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
  v28 = swift_allocObject();
  v29 = v48;
  v28[2] = v20;
  v28[3] = v29;
  v30 = v41;
  v28[4] = v41;
  v28[5] = v26;
  v31 = v39;
  v28[6] = a8;
  v28[7] = v31;
  v32 = v40;
  v33 = v38[0];
  v28[8] = v40;
  v28[9] = v33;
  v34 = v44;
  v28[10] = a13;
  v28[11] = v34;
  v28[12] = v45;
  v49 = v20;
  v50 = v29;
  v51 = v30;
  v52 = v26;
  v53 = a8;
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v35 = v46;
  v57 = a13;
  v58 = v46;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v21);
  TableColumn.init(comparator:content:label:)(v25, partial apply for closure #1 in TableColumn<>.init<A, B, C>(_:value:comparator:content:), v28, partial apply for closure #2 in TableColumn<>.init<A, B, C>(_:value:comparator:content:), v20, v21, v48, v47, MEMORY[0x1E6981148], v31, WitnessTable, v32, MEMORY[0x1E6981138]);

  (*(v43 + 8))(v42, a8);
  return (*(*(v30 - 8) + 8))(v35, v30);
}

uint64_t closure #1 in TableColumn<>.init<A, B, C>(_:value:comparator:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(v10);
  static ViewBuilder.buildExpression<A>(_:)();
  v14 = *(v6 + 8);
  v14(v8, a5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v14)(v12, a5);
}

uint64_t closure #2 in TableColumn<>.init<A, B, C>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t TableColumn<>.init<>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a1;
  v32 = a3;
  v31 = a2;
  v33 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for KeyPathComparator();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v28 - v21;
  (*(v14 + 16))(v16, a6, v13, v20);
  v23 = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v24, v16, v17, MEMORY[0x1E69E6158], v13, v23);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v25 = swift_allocObject();
  *(v25 + 16) = a7;
  *(v25 + 24) = a5;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = a4;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v18);
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v25, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v17, v18, MEMORY[0x1E6981148], v33, MEMORY[0x1E6981148], a7, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(v14 + 8))(v29, v13);
}

{
  v35 = a7;
  v36 = a4;
  v32 = a6;
  v34 = a3;
  v37 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v33 = *(v13 - 8);
  v14 = v33;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for KeyPathComparator();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v30 - v21;
  v23 = *(v14 + 16);
  v31 = v13;
  v23(v16, a6, v13, v20);
  v24 = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v25, v16, v17, MEMORY[0x1E69E6158], v13, v24);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v26 = swift_allocObject();
  v27 = v35;
  *(v26 + 16) = v35;
  *(v26 + 24) = a5;
  v38 = a1;
  v39 = a2;
  LOBYTE(v24) = v34 & 1;
  v40 = v34 & 1;
  v41 = v36;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v18);
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v26, partial apply for closure #2 in TableColumn<>.init<A>(_:value:content:), v17, v18, MEMORY[0x1E6981148], v37, MEMORY[0x1E6981148], v27, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(a1, a2, v24);

  return (*(v33 + 8))(v32, v31);
}

{
  v28 = a6;
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v32 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for SortDescriptor();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v27 - v21;
  (*(v14 + 16))(v16, a6, v13, v20);

  SortDescriptor.init<A>(_:comparator:)(v23, v16, v17, MEMORY[0x1E69682C0]);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a5;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = a4;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69683C0], v18);
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:comparator:), v24, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v17, v18, MEMORY[0x1E6981148], v32, MEMORY[0x1E6981148], a7, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(v14 + 8))(v28, v13);
}

{
  v33 = a7;
  v34 = a4;
  v8 = a6;
  v31 = a6;
  v32 = a3;
  v29 = a1;
  v35 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v30 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for SortDescriptor();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v28 - v21;
  (*(v14 + 16))(v16, v8, v13, v20);

  SortDescriptor.init<A>(_:comparator:)(v23, v16, v17, MEMORY[0x1E69682C0]);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v33;
  *(v24 + 24) = a5;
  v36 = a1;
  v37 = a2;
  LOBYTE(v8) = v32 & 1;
  v38 = v32 & 1;
  v39 = v34;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69683C0], v18);
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:comparator:), v24, partial apply for closure #2 in TableColumn<>.init(_:value:content:), v17, v18, MEMORY[0x1E6981148], v35, MEMORY[0x1E6981148], v25, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v29, a2, v8);

  return (*(v14 + 8))(v31, v30);
}

unint64_t lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator()
{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    v3 = type metadata accessor for String.StandardComparator();
    result = swift_getWitnessTable(MEMORY[0x1E6969DA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

uint64_t TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a3;
  v30 = a6;
  v31 = a1;
  v32 = a7;
  v11 = *a2;
  v12 = type metadata accessor for String.StandardComparator();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + *MEMORY[0x1E69E77B0]);
  v17 = type metadata accessor for KeyPathComparator();
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v29 - v20;
  (*(v13 + 16))(v15, a3, v12, v19);
  v22 = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v23, v15, v16, MEMORY[0x1E69E6158], v12, v22);
  (*(*(v17 - 8) + 56))(v21, 0, 1, v17);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v25 = v30;
  v26 = v31;
  v24[4] = v30;
  v24[5] = a2;
  v33 = v16;
  v34 = a4;
  v35 = a5;
  v36 = v25;
  v37 = v26;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6968898], v17);
  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init<A>(_:value:), v24, partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:), v16, v17, MEMORY[0x1E6981148], v32, MEMORY[0x1E6981148], a5, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  (*(v13 + 8))(v29, v12);
  return (*(*(a4 - 8) + 8))(v26, a4);
}

{
  v28 = a3;
  v29 = a6;
  v30 = a1;
  v31 = a7;
  v11 = *a2;
  v12 = type metadata accessor for String.StandardComparator();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + *MEMORY[0x1E69E77B0]);
  v17 = type metadata accessor for SortDescriptor();
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  (*(v13 + 16))(v15, a3, v12, v19);

  SortDescriptor.init<A>(_:comparator:)(v22, v15, v16, MEMORY[0x1E69682C0]);
  (*(*(v17 - 8) + 56))(v21, 0, 1, v17);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v24 = v29;
  v25 = v30;
  v23[4] = v29;
  v23[5] = a2;
  v32 = v16;
  v33 = a4;
  v34 = a5;
  v35 = v24;
  v36 = v25;

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69683C0], v17);
  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init<A>(_:value:comparator:), v23, partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:), v16, v17, MEMORY[0x1E6981148], v31, MEMORY[0x1E6981148], a5, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  (*(v13 + 8))(v28, v12);
  return (*(*(a4 - 8) + 8))(v25, a4);
}

uint64_t closure #2 in TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X8>)
{
  return closure #2 in TableColumn<>.init<A>(_:value:comparator:)(*(v1 + 48), a1);
}

{
  return closure #2 in TableColumn<>.init<A>(_:value:comparator:)(*(v1 + 48), a1);
}

uint64_t _s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v60 = a2;
  v61 = a1;
  v62 = a14;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v54 = a4;
    v55 = a10;
    v56 = a8;
    v57 = a11;
    v58 = a9;
    v19 = type metadata accessor for _TaskValueModifier2(0, a12, a14, v18);
    v20 = *(v19 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v22 = &v50 - v21;
    v53 = &v50;
    v24 = MEMORY[0x1EEE9AC00](v23);
    v26 = &v50 - v25;
    (*(v27 + 16))(&v50 - v25, v61, a12, v24);
    v59 = a13;
    if (a3)
    {
      v28 = a3;
      v29 = v60;
    }

    else
    {
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v64, "View.task @ ");
      BYTE5(v64[1]) = 0;
      HIWORD(v64[1]) = -5120;
      MEMORY[0x18D00C9B0](v50, v51);
      MEMORY[0x18D00C9B0](58, 0xE100000000000000);
      v63 = v52;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v44);

      v29 = v64[0];
      v28 = v64[1];
    }

    v45 = type metadata accessor for TaskPriority();
    v46 = MEMORY[0x1EEE9AC00](v45);
    v48 = &v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48, v54, v46);
    _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC(v26, v29, v28, 0, 0, v48, v56, v55, v22, a12, v62);

    MEMORY[0x18D00A570](v22, v57, v19, v59);
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v58 = type metadata accessor for _TaskValueModifier(0, a12, a14, v18);
    v60 = *(v58 - 8);
    MEMORY[0x1EEE9AC00](v58);
    v31 = &v50 - v30;
    v57 = &v50;
    v33 = MEMORY[0x1EEE9AC00](v32);
    v35 = &v50 - v34;
    (*(v36 + 16))(&v50 - v34, v61, a12, v33);
    v37 = type metadata accessor for TaskPriority();
    v61 = &v50;
    v38 = MEMORY[0x1EEE9AC00](v37);
    v40 = &v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40, a4, v38);
    _TaskValueModifier.init(value:priority:action:)(v35, v40, a8, a10, a12, v62, v31);
    v42 = v58;
    MEMORY[0x18D00A570](v31, a11, v58, a13);
    return (*(v60 + 8))(v31, v42);
  }
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _TaskModifier.InnerModifier(a3, v11, type metadata accessor for TaskPriority?);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of _TaskModifier(v11, type metadata accessor for TaskPriority?);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _TaskModifier.init(priority:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for _TaskModifier(0) + 20);
  v9 = type metadata accessor for TaskPriority();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a1, v9);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for _TaskModifier2(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TaskPriority();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v16 = &a8[*(v12 + 28)];
  *v16 = a6;
  *(v16 + 1) = a7;
  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task4name18executorPreference8priority4file4line6actionQrSSSg_Sch_pScPSSSiyyYaYAcntF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a5;
  v33 = a4;
  v35 = a9;
  v36 = a13;
  v34 = a12;
  v31 = a10;
  v20 = type metadata accessor for _TaskModifier2(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v23 = a2;
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;

    v30 = v13;
    _StringGuts.grow(_:)(17);

    strcpy(v38, "View.task @ ");
    BYTE5(v38[1]) = 0;
    HIWORD(v38[1]) = -5120;
    MEMORY[0x18D00C9B0](a6, a7);
    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v37 = a8;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v24);

    a1 = v38[0];
    v23 = v38[1];
  }

  v25 = *(v20 + 24);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 16))(&v22[v25], v32, v26);
  *v22 = a1;
  *(v22 + 1) = v23;
  v27 = v33;
  *(v22 + 2) = a3;
  *(v22 + 3) = v27;
  v28 = &v22[*(v20 + 28)];
  *v28 = v31;
  v28[1] = a11;

  swift_unknownObjectRetain();
  MEMORY[0x18D00A570](v22, v34, v20, v36);

  return outlined destroy of _TaskModifier(v22, type metadata accessor for _TaskModifier2);
}

uint64_t _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for _TaskValueModifier2(0, a10, a11, a4);
  v19 = (a9 + v18[10]);
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v20 = (a9 + v18[9]);
  *v20 = a2;
  v20[1] = a3;
  *v19 = a4;
  v19[1] = a5;
  v21 = v18[11];
  v22 = type metadata accessor for TaskPriority();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a6, v22);
  v24 = (a9 + v18[12]);
  *v24 = a7;
  v24[1] = a8;
  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task2id4name18executorPreference8priority4file4line_Qrqd___SSSgSch_pScPSSSiyyYaYAcntSQRd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v35 = a7;
  v36 = a8;
  v41 = a6;
  v42 = a5;
  v44 = a4;
  v45 = a9;
  v37 = a2;
  v46 = a15;
  v43 = a13;
  v47 = a12;
  v39 = a11;
  v38 = type metadata accessor for TaskPriority();
  v18 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a16;
  v26 = type metadata accessor for _TaskValueModifier2(0, a14, a16, v25);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v35 - v29;
  (*(v21 + 16))(v24, a1, a14, v28);
  if (a3)
  {

    v31 = a3;
    v32 = v37;
  }

  else
  {
    v49[0] = 0;
    v49[1] = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    strcpy(v49, "View.task @ ");
    BYTE5(v49[1]) = 0;
    HIWORD(v49[1]) = -5120;
    MEMORY[0x18D00C9B0](v35, v36);
    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v48 = a10;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v33);

    v32 = v49[0];
    v31 = v49[1];
  }

  (*(v18 + 16))(v20, v41, v38);
  _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC(v24, v32, v31, v44, v42, v20, v39, v47, v30, a14, v40);

  swift_unknownObjectRetain();
  MEMORY[0x18D00A570](v30, v43, v26, v46);

  return (*(v27 + 8))(v30, v26);
}

uint64_t _TaskModifier.action.getter()
{
  v1 = *v0;

  return v1;
}

void _TaskModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t _TaskModifier.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _TaskModifier.priority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static _TaskModifier._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier, protocol conformance descriptor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier, protocol conformance descriptor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

void key path setter for _TaskModifier.action : _TaskModifier(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *a2 = a6;
  a2[1] = v10;
}

uint64_t _TaskValueModifier.action.getter()
{
  v1 = *v0;

  return v1;
}

void _TaskValueModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t _TaskValueModifier.priority.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _TaskValueModifier.priority.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t _TaskModifier2.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _TaskModifier2.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void _s7SwiftUI14_TaskModifier2V12taskExecutorSch_pSgvs(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t _TaskModifier2.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _TaskModifier2.priority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvpACTK@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _TaskModifier2(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  *a2 = &_sIeAgH_ytIeAgHr_TRTA_137Tu;
  a2[1] = v8;
  swift_unknownObjectRetain();

  return result;
}

void _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvpACTk(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = v3;
  v8 = (a2 + *(type metadata accessor for _TaskModifier2(0) + 28));
  swift_unknownObjectRetain();

  *v8 = &_sytIeAgHr_IeAgH_TRTA_132Tu;
  v8[1] = v7;
}

uint64_t _sytIeAgHr_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v6();
}

uint64_t _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvg()
{
  v1 = *(v0 + *(type metadata accessor for _TaskModifier2(0) + 28));

  return v1;
}

void _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvs(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _TaskModifier2(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t static _TaskModifier2._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier, protocol conformance descriptor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskModifier2._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier, protocol conformance descriptor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static _TaskModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), const char *a7)
{
  a4(0);
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(a5, a6, a7);
  return static ViewModifier.viewListCount(inputs:body:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _TaskModifier.Child@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance _TaskModifier.Child@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(uint64_t, uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  a1(0);
  Value = AGGraphGetValue();
  a2(Value, a4);
  result = a3(0);
  v9 = (a4 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

double closure #1 in _TaskModifier2.InnerModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = (a1 + *(type metadata accessor for _TaskModifier2.InnerModifier(0) + 20));
  v9 = v8[1];
  v24 = *v8;
  v25 = v9;
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (!v23[5])
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = type metadata accessor for _TaskModifier2(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, a1 + v13, v14);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = (a1 + *(v12 + 28));
    v18 = *v16;
    v17 = v16[1];
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    outlined init with copy of _TaskModifier.InnerModifier(v7, v4, type metadata accessor for TaskPriority?);
    LODWORD(v18) = (*(v15 + 48))(v4, 1, v14);
    swift_unknownObjectRetain();

    if (v18 == 1)
    {
      outlined destroy of _TaskModifier(v4, type metadata accessor for TaskPriority?);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v15 + 8))(v4, v14);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> ();
    *(v20 + 24) = v19;
    swift_unknownObjectRetain();

    if (v10 != 1)
    {
      v23[1] = 6;
      v23[2] = 0;
      v23[3] = v10;
      v23[4] = v11;
    }

    v21 = swift_task_create();
    outlined destroy of _TaskModifier(v7, type metadata accessor for TaskPriority?);
    swift_unknownObjectRelease();

    v24 = v21;
    if (v9)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v5();
}

double closure #2 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + *(a2(0) + 20) + 8);
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v4)
  {
    MEMORY[0x18D00D010](v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (v2)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance _TaskModifier2.InnerModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  outlined init with copy of _TaskModifier.InnerModifier(v3, &v15 - v9, type metadata accessor for _TaskModifier2.InnerModifier);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of _TaskModifier2(v10, v12 + v11, type metadata accessor for _TaskModifier2.InnerModifier);
  outlined init with copy of _TaskModifier.InnerModifier(v3, v7, type metadata accessor for _TaskModifier2.InnerModifier);
  v13 = swift_allocObject();
  result = outlined init with take of _TaskModifier2(v7, v13 + v11, type metadata accessor for _TaskModifier2.InnerModifier);
  *a3 = partial apply for closure #1 in _TaskModifier2.InnerModifier.body(content:);
  a3[1] = v12;
  a3[2] = partial apply for closure #2 in _TaskModifier2.InnerModifier.body(content:);
  a3[3] = v13;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TaskModifier2(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier, protocol conformance descriptor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TaskModifier2(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier, protocol conformance descriptor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance _TaskModifier(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unint64_t *a7, uint64_t (*a8)(uint64_t), const char *a9)
{
  a6(0);
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(a7, a8, a9);
  return static ViewModifier.viewListCount(inputs:body:)();
}

uint64_t _TaskValueModifier2.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t _TaskValueModifier2.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void _s7SwiftUI19_TaskValueModifier2V12taskExecutorSch_pSgvs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));
  swift_unknownObjectRelease();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t _TaskValueModifier2.priority.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _TaskValueModifier2.priority.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvpSQRzlACyxGTK@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = (a1 + *(type metadata accessor for _TaskValueModifier2(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a4) + 48));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v8;
  v11[5] = v7;
  *a5 = &_sIeAgH_ytIeAgHr_TRTATu;
  a5[1] = v11;
  swift_unknownObjectRetain();

  return result;
}

void _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvpSQRzlACyxGTk(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v8;
  v11[5] = v7;
  v13 = (a2 + *(type metadata accessor for _TaskValueModifier2(0, v5, v6, v12) + 48));
  swift_unknownObjectRetain();

  *v13 = &_sytIeAgHr_IeAgH_TRTATu;
  v13[1] = v11;
}

uint64_t _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvg(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

void _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t static _TaskValueModifier2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _TaskValueModifier2(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v9 = type metadata accessor for _TaskValueModifier2.InnerModifier(0, a5, a6, v8);
  v11 = type metadata accessor for _TaskValueModifier2.Child(0, a5, a6, v10);
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.Child, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.InnerModifier, v9);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskValueModifier2._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _TaskValueModifier2(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v9 = type metadata accessor for _TaskValueModifier2.InnerModifier(0, a5, a6, v8);
  v11 = type metadata accessor for _TaskValueModifier2.Child(0, a5, a6, v10);
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.Child, v11);
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.InnerModifier, v9);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static _TaskValueModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t), const char *a7)
{
  v8 = a6(0, a4, a5);
  swift_getWitnessTable(a7, v8);
  return static ViewModifier._viewListCount(inputs:body:)();
}

uint64_t _TaskValueModifier.Child.modifier.getter@<X0>(uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = a2(0);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t _TaskValueModifier2.Child.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(255, a2, a3, x3_0);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v13 = type metadata accessor for _TaskValueModifier2(0, a2, a3, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  _TaskValueModifier.Child.modifier.getter(type metadata accessor for _TaskValueModifier2, &v17 - v14);
  (*(*(v8 - 8) + 56))(v11, 1, 1, v8);
  return _TaskValueModifier.InnerModifier.init(base:taskState:)(v15, v11, a2, a3, type metadata accessor for _TaskValueModifier2, type metadata accessor for _TaskValueModifier2.InnerModifier, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState, a4);
}

uint64_t _TaskValueModifier.InnerModifier.init(base:taskState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, void (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v15 = a5(0, a3, a4);
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  a6(0, a3, a4);
  return property wrapper backing initializer of _TaskValueModifier.InnerModifier.taskState(a2, a3, a4, a7);
}

uint64_t property wrapper backing initializer of _TaskValueModifier.InnerModifier.taskState(uint64_t a1, void x1_0, void x2_0, uint64_t (*a2)(uint64_t))
{
  a2(255);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v4);
}

void *_TaskValueModifier.InnerModifier.taskState.getter(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 16), *(a1 + 24));
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.wrappedValue.getter();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _TaskValueModifier<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t a3@<X8>)
{
  v4 = a2(0, *(a1 + 16), *(a1 + 24));
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TaskValueModifier2<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.Child, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t _TaskValueModifier2.InnerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  swift_getWitnessTable(protocol conformance descriptor for _TaskValueModifier2<A>.InnerModifier, v8);
  v45 = type metadata accessor for _ViewModifier_Content();
  v47 = type metadata accessor for ModifiedContent();
  v11 = *(a2 + 16);
  v39 = *(a2 + 24);
  v12 = v39;
  v49 = type metadata accessor for _ValueActionModifier2();
  v50 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v48 = &v39 - v18;
  v55 = *(v5 + 16);
  v43 = v10;
  v56 = v3;
  v55(v10, v3, a2, v17);
  v40 = *(v5 + 80);
  v19 = (v40 + 32) & ~v40;
  v42 = v6;
  v20 = swift_allocObject();
  v41 = v11;
  *(v20 + 16) = v11;
  *(v20 + 24) = v12;
  v54 = *(v5 + 32);
  v54(v20 + v19, v10, a2);
  v21 = v44;
  (v55)(v44, v3, a2);
  v22 = v19;
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v11;
  *(v23 + 24) = v24;
  v54(v23 + v22, v21, a2);
  *&v60 = partial apply for closure #1 in _TaskValueModifier2.InnerModifier.body(content:);
  *(&v60 + 1) = v20;
  *&v61 = partial apply for closure #2 in _TaskValueModifier2.InnerModifier.body(content:);
  *(&v61 + 1) = v23;
  v25 = v45;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v45);
  MEMORY[0x18D00A570](v62, &v60, v25, MEMORY[0x1E69805D8], WitnessTable);

  v60 = v62[0];
  v61 = v62[1];
  v27 = v43;
  (v55)(v43, v56, a2);
  v28 = swift_allocObject();
  *(v28 + 16) = v41;
  *(v28 + 24) = v24;
  v54(v28 + v22, v27, a2);
  v29 = MEMORY[0x1E69805D0];
  v59[0] = WitnessTable;
  v59[1] = MEMORY[0x1E69805D0];
  v30 = MEMORY[0x1E697E858];
  v31 = swift_getWitnessTable(MEMORY[0x1E697E858], v47, v59);
  v32 = v46;
  View.onChange<A>(of:initial:_:)();

  v33 = v61;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v60, *(&v60 + 1));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v33, *(&v33 + 1));
  v34 = swift_getWitnessTable(MEMORY[0x1E697FDE0], v49);
  v58[0] = v31;
  v58[1] = v34;
  v57[0] = swift_getWitnessTable(v30, v50, v58);
  v57[1] = v29;
  v35 = v51;
  swift_getWitnessTable(v30, v51, v57);
  v36 = v48;
  static ViewBuilder.buildExpression<A>(_:)();
  v37 = *(v52 + 8);
  v37(v32, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v37)(v36, v35);
}

uint64_t closure #1 in _TaskValueModifier2.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v14 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(255, a2, a3, v13);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v53 = type metadata accessor for _TaskValueModifier2.InnerModifier(0, a2, a3, v21);
  _TaskValueModifier.InnerModifier.taskState.getter(v53, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  v50 = *(v14 - 8);
  v22 = *(v50 + 48);
  v52 = v14;
  v23 = v22(v20, 1, v14);
  v24 = *(v16 + 8);
  v54 = v16 + 8;
  v55 = v15;
  result = v24(v20, v15);
  if (v23 == 1)
  {
    v48 = a3;
    v27 = type metadata accessor for _TaskValueModifier2(0, a2, a3, v26);
    v28 = v27[11];
    v29 = (a1 + v27[10]);
    v30 = *v29;
    v47 = v29[1];
    v31 = type metadata accessor for TaskPriority();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v12, a1 + v28, v31);
    (*(v32 + 56))(v12, 0, 1, v31);
    v33 = v27[12];
    v49 = a1;
    v34 = (a1 + v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    outlined init with copy of _TaskModifier.InnerModifier(v12, v9, type metadata accessor for TaskPriority?);
    LODWORD(v35) = (*(v32 + 48))(v9, 1, v31);
    swift_unknownObjectRetain();

    if (v35 == 1)
    {
      outlined destroy of _TaskModifier(v9, type metadata accessor for TaskPriority?);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v32 + 8))(v9, v31);
    }

    v38 = swift_allocObject();
    *(v38 + 16) = &thunk for @escaping @callee_guaranteed @async () -> ()partial apply;
    *(v38 + 24) = v37;
    swift_unknownObjectRetain();

    v39 = v48;
    if (v30 != 1)
    {
      v58 = 6;
      v59 = 0;
      v60 = v30;
      v61 = v47;
    }

    v40 = swift_task_create();
    outlined destroy of _TaskModifier(v12, type metadata accessor for TaskPriority?);
    swift_unknownObjectRelease();

    v42 = v56;
    v41 = v57;
    (*(v57 + 16))(v56, v49, a2);
    v43 = v51;
    *v51 = v40;
    v45 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(0, a2, v39, v44);
    (*(v41 + 32))(v43 + *(v45 + 36), v42, a2);
    (*(v50 + 56))(v43, 0, 1, v52);
    specialized _TaskValueModifier.InnerModifier.taskState.setter(v43, v53, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
    return v24(v43, v55);
  }

  return result;
}

uint64_t closure #2 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, double), uint64_t (*a6)(uint64_t, void, void))
{
  v25 = a6;
  v9 = a4(255);
  v26 = type metadata accessor for Optional();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - v19);
  v21 = a3;
  v22 = v25;
  v23 = a5(0, a2, v21, v18);
  _TaskValueModifier.InnerModifier.taskState.getter(v23, v22);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    return (*(v10 + 8))(v15, v26);
  }

  (*(v16 + 32))(v20, v15, v9);
  MEMORY[0x18D00D010](*v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  (*(v16 + 56))(v12, 1, 1, v9);
  specialized _TaskValueModifier.InnerModifier.taskState.setter(v12, v23, v22);
  (*(v10 + 8))(v12, v26);
  return (*(v16 + 8))(v20, v9);
}

uint64_t closure #3 in _TaskValueModifier2.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v50 - v10;
  v12 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(255, a2, a3, v11);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v61 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v50 - v21);
  v59 = type metadata accessor for _TaskValueModifier2.InnerModifier(0, a2, a3, v23);
  _TaskValueModifier.InnerModifier.taskState.getter(v59, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  if ((*(v19 + 48))(v18, 1, v12) == 1)
  {
    return (*(v14 + 8))(v18, v13);
  }

  v56 = v14;
  v57 = v13;
  (*(v19 + 32))(v22, v18, v12);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return (*(v19 + 8))(v22, v12);
  }

  v52 = v22;
  MEMORY[0x18D00D010](*v22, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  v53 = a3;
  v26 = type metadata accessor for _TaskValueModifier2(0, a2, a3, v25);
  v27 = v26[11];
  v28 = (a1 + v26[10]);
  v29 = *v28;
  v51 = v28[1];
  v30 = type metadata accessor for TaskPriority();
  v31 = *(v30 - 8);
  v32 = v60;
  (*(v31 + 16))(v60, a1 + v27, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = v26[12];
  v54 = a1;
  v34 = (a1 + v33);
  v35 = v29;
  v37 = *v34;
  v36 = v34[1];
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;
  v55 = v38;
  v39 = v58;
  outlined init with copy of _TaskModifier.InnerModifier(v32, v58, type metadata accessor for TaskPriority?);
  LODWORD(v37) = (*(v31 + 48))(v39, 1, v30);
  swift_unknownObjectRetain();

  if (v37 == 1)
  {
    outlined destroy of _TaskModifier(v39, type metadata accessor for TaskPriority?);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v31 + 8))(v39, v30);
  }

  v40 = swift_allocObject();
  v41 = v55;
  *(v40 + 16) = &thunk for @escaping @callee_guaranteed @async () -> ()partial apply;
  *(v40 + 24) = v41;
  swift_unknownObjectRetain();

  v43 = v53;
  v42 = v54;
  v44 = v63;
  if (v35 != 1)
  {
    v64 = 6;
    v65 = 0;
    v66 = v35;
    v67 = v51;
  }

  v45 = swift_task_create();
  outlined destroy of _TaskModifier(v32, type metadata accessor for TaskPriority?);
  swift_unknownObjectRelease();

  v46 = v62;
  (*(v44 + 16))(v62, v42, a2);
  v47 = v61;
  *v61 = v45;
  v49 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(0, a2, v43, v48);
  (*(v44 + 32))(v47 + *(v49 + 36), v46, a2);
  (*(v19 + 56))(v47, 0, 1, v12);
  specialized _TaskValueModifier.InnerModifier.taskState.setter(v47, v59, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  (*(v56 + 8))(v47, v57);
  return (*(v19 + 8))(v52, v12);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child;
  if (!lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TaskModifier2.Child, &unk_1EFFAFBC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child);
  }

  return result;
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *a4 = a3;
  a4[1] = v8;

  return result;
}

char *initializeBufferWithCopyOfBuffer for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = v5;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v9 = type metadata accessor for TaskPriority();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v7], &a2[v7], v9);
  }

  return a1;
}

char *initializeWithTake for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_OWORD *assignWithTake for _TaskModifier(_OWORD *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 40))(a1 + v6, &a2[v6], v7);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for _TaskValueModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-17 - v8) | v8) - v9 - v12) | v12) - *(*(v10 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v6;
    v17 = a2[1];
    *a1 = *a2;
    a1[1] = v17;
    v18 = a2 + v8;
    v19 = (a1 + v8 + 16) & ~v8;
    v20 = (v18 + 16) & ~v8;
    v21 = *(v7 + 16);

    v21(v19, v20, v16);
    (*(v11 + 16))((v19 + v9 + v12) & ~v12, (v20 + v9 + v12) & ~v12, v10);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  return a1;
}

_OWORD *initializeWithTake for _TaskValueModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 32))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 32))((*(v8 + 32) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 32) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

_OWORD *assignWithTake for _TaskValueModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 40))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((*(v8 + 24) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 24) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for TaskPriority() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
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
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 16) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
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
      v21 = ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + *(v8 + 64);
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

  return v14 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for _TaskValueModifier(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for TaskPriority() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
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
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((a1 + v12 + 16) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

char *initializeBufferWithCopyOfBuffer for _TaskModifier2(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 1);
    v6 = *(a3 + 24);
    v9 = type metadata accessor for TaskPriority();
    v10 = *(*(v9 - 8) + 16);

    swift_unknownObjectRetain();
    v10(&v3[v6], a2 + v6, v9);
    v11 = *(a3 + 28);
    v12 = &v3[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
  }

  return v3;
}

double destroy for _TaskModifier2(uint64_t a1, uint64_t a2)
{

  swift_unknownObjectRelease();
  v4 = *(a2 + 24);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  return result;
}

uint64_t initializeWithCopy for _TaskModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 16);

  swift_unknownObjectRetain();
  v9(a1 + v7, a2 + v7, v8);
  v10 = *(a3 + 28);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

char *assignWithCopy for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 28);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;

  return a1;
}

char *initializeWithTake for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];
  return a1;
}

char *assignWithTake for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRelease();
  *(a1 + 3) = v7;
  v8 = *(a3 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

uint64_t type metadata completion function for _TaskModifier2(uint64_t a1)
{
  result = type metadata accessor for TaskPriority();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TaskValueModifier2(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TaskPriority();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TaskValueModifier2(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v11 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v18[1] = v19[1];
    v20 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v20;
    v22 = *(v9 + 16);

    swift_unknownObjectRetain();
    v22(v21 + 1, v20 + 1, v17);
    v23 = ((v20 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    v25 = ((v21 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v23;
    v25[1] = v24;
  }

  return a1;
}

double destroy for _TaskValueModifier2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 8))((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80), v5);

  return result;
}

uint64_t initializeWithCopy for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v15 = *(v12 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;

  swift_unknownObjectRetain();
  v13(v16, v17, v11);
  v18 = *(v14 + 48) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t assignWithCopy for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  v18 = *(v14 + 40) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t initializeWithTake for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v9 + v14 + 16) & ~v14;
  v16 = (v10 + v14 + 16) & ~v14;
  (*(v12 + 32))(v15, v16, v11);
  *((*(v13 + 32) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 32) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 40))(v16, v17, v12);
  *((*(v14 + 24) + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((*(v14 + 24) + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 16;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v14 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *(v25 + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void storeEnumTagSinglePayload for _TaskValueModifier2(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for TaskPriority() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
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

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v25 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v12 + 16 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          v23[1] = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA13_TaskModifierVGAaBHPxAaBHD1__AfA0cG0HPyHCHCTm(uint64_t a1, double (*a2)(uint64_t), uint64_t a3)
{
  v4 = *(a1 + 8);
  a2(255);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA18_TaskValueModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(void *a1, double (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t *initializeBufferWithCopyOfBuffer for _TaskValueModifier2.InnerModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v11 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = *(v6 + 80);
  v14 = ((v13 + 8) & ~v13) + v7;
  v15 = v13 | 7 | v10;
  if (v15 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + (v13 | 7)) & ~(v13 | 7)) + 8 <= 0x18)
  {
    v20 = v8;
    v42 = v13 + 8;
    v43 = v14 + 7;
    v39 = *(v6 + 84);
    v41 = ~v13;
    __n = ((v13 + 8) & ~v13) + v7;
    v36 = *(v6 + 16);
    v36(a1, a2, v5);
    v44 = a1;
    v38 = a1 + 7;
    v21 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v21[1] = v22[1];
    v40 = v5;
    v23 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v23;
    v25 = *(v9 + 16);

    swift_unknownObjectRetain();
    v25(v24 + 1, v23 + 1, v20);
    v26 = ((v24 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v23 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[1];
    *v26 = *v27;
    v26[1] = v28;
    v29 = (&v38[v12] & 0xFFFFFFFFFFFFFFF8);
    v30 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);

    if (v39 < 0)
    {
      v33 = v41;
      v34 = v42;
      v32 = v40;
      v19 = v44;
      if ((*(v6 + 48))((v30 + v42) & v41))
      {
LABEL_14:
        memcpy(v29, v30, __n);
LABEL_17:
        *((v29 + v43) & 0xFFFFFFFFFFFFFFF8) = *((v30 + v43) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }
    }

    else
    {
      v31 = *v30;
      if (*v30 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      v32 = v40;
      v33 = v41;
      v34 = v42;
      v19 = v44;
      if (v31 != -1)
      {
        goto LABEL_14;
      }
    }

    *v29 = *v30;

    v36(((v29 + v34) & v33), ((v30 + v34) & v33), v32);
    goto LABEL_17;
  }

  v18 = *a2;
  *a1 = *a2;
  v19 = (v18 + ((v15 + 16) & ~v15));
LABEL_18:

  return v19;
}

double destroy for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 8);
  v6(a1, v3);
  v7 = *(v4 + 64) + 7;

  swift_unknownObjectRelease();
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = v9 + 8;
  v11 = *(v9 + 80);
  (*(v9 + 8))((v11 + 16 + ((((v7 + a1) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11, v8);
  v12 = *(v10 + 56) + 7;

  v13 = (v12 + ((v11 + 16 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + 80);
  v15 = ((a1 + (v14 | 7) + v13 + 16) & ~(v14 | 7));
  v16 = ~v14;
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if ((*(v5 + 48))((v15 + v14 + 8) & v16))
    {
      goto LABEL_8;
    }

LABEL_7:

    v6((v15 + v14 + 8) & v16, v3);
    goto LABEL_8;
  }

  v17 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if (v17 == -1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return result;
}

uint64_t initializeWithCopy for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v37 = v6;
  v39 = v5;
  v35 = *(v6 + 16);
  v35();
  v38 = *(v6 + 64);
  v7 = ((v38 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v38 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v15 = *(v12 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;

  swift_unknownObjectRetain();
  v13(v16, v17, v11);
  v18 = *(v14 + 48) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  v22 = a1;
  v23 = *(v6 + 80);
  v24 = ((v18 + ((v15 + 16 + ((((v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v23 | 7) + 16;
  v25 = ((v24 + a1) & ~(v23 | 7));
  v26 = ((v24 + a2) & ~(v23 | 7));
  v27 = *(v37 + 84);
  v28 = ~v23;
  v29 = v23 + 8;
  v30 = (v23 + 8) & ~v23;

  if ((v27 & 0x80000000) != 0)
  {
    v33 = v39;
    v32 = (*(v37 + 48))((v26 + v29) & v28, v27, v39);
  }

  else
  {
    v31 = *v26;
    if (*v26 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    v33 = v39;
  }

  if (v32)
  {
    memcpy(v25, v26, v30 + v38);
  }

  else
  {
    *v25 = *v26;

    (v35)((v25 + v29) & v28, (v26 + v29) & v28, v33);
  }

  *((v25 + v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v22;
}

uint64_t assignWithCopy for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = v6;
  v38 = *(v6 + 24);
  v38(a1, a2, v5);
  v39 = *(v6 + 64);
  v7 = ((v39 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v39 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  v18 = *(v14 + 40) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  v22 = *(v41 + 80);
  v23 = ((v18 + ((v15 + 16 + ((((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v22 | 7) + 16;
  v40 = a1;
  v24 = ((v23 + a1) & ~(v22 | 7));
  v25 = ((v23 + a2) & ~(v22 | 7));
  v26 = *(v41 + 84);
  v27 = ~v22;
  v28 = v22 + 8;
  v29 = (v22 + 8) & ~v22;
  v30 = v29 + v39;
  if ((v26 & 0x80000000) != 0)
  {
    v33 = v29 + v39;
    v34 = *(v41 + 48);
    v35 = v34((v24 + v28) & v27, *(v41 + 84), v5);
    v32 = v34((v25 + v28) & v27, v26, v5);
    v30 = v33;
    if (!v35)
    {
LABEL_5:
      if (!v32)
      {
        *v24 = *v25;

        v38((v24 + v28) & v27, (v25 + v28) & v27, v5);
        goto LABEL_12;
      }

      (*(v41 + 8))((v24 + v28) & v27, v5);
      goto LABEL_9;
    }
  }

  else
  {
    v31 = *v25;
    if (*v25 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    if (*v24 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    *v24 = *v25;
    v36 = *(v41 + 16);

    v36((v24 + v28) & v27, (v25 + v28) & v27, v5);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v24, v25, v30);
LABEL_12:
  *((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v40;
}

unint64_t initializeWithTake for _TaskValueModifier2.InnerModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v30 = *(v6 + 32);
  v30(a1, a2, v5);
  v31 = *(v6 + 64);
  v8 = ((v31 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v31 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v16 = (v10 + v15 + 16) & ~v15;
  v17 = (v11 + v15 + 16) & ~v15;
  (*(v13 + 32))(v16, v17, v12);
  v18 = *(v14 + 32) + 7;
  *((v18 + v16) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v7 + 80);
  v20 = ((v18 + ((v15 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v19 | 7) + 16;
  v21 = ((v20 + a1) & ~(v19 | 7));
  v22 = ((v20 + a2) & ~(v19 | 7));
  v23 = ~v19;
  v24 = v19 + 8;
  v25 = (v19 + 8) & ~v19;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    v27 = (*(v7 + 48))((v22 + v24) & v23);
  }

  else
  {
    v26 = *v22;
    if (*v22 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 + 1;
  }

  v28 = v25 + v31;
  if (v27)
  {
    memcpy(v21, v22, v28);
  }

  else
  {
    *v21 = *v22;
    v30((v21 + v24) & v23, (v22 + v24) & v23, v5);
  }

  *((v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v36 = v6;
  v35 = *(v6 + 40);
  v35(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = ((v7 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];

  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  swift_unknownObjectRelease();
  v10[1] = v12;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = (v10 + v16 + 16) & ~v16;
  v18 = (v11 + v16 + 16) & ~v16;
  (*(v14 + 40))(v17, v18, v13);
  v19 = *(v15 + 24) + 7;
  *((v19 + v17) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v18) & 0xFFFFFFFFFFFFFFF8);

  v20 = a1;
  v21 = *(v36 + 80);
  v22 = ((v19 + ((v16 + 16 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + (v21 | 7) + 16;
  v23 = ((v22 + a1) & ~(v21 | 7));
  v24 = ((v22 + a2) & ~(v21 | 7));
  v25 = *(v36 + 84);
  v26 = ~v21;
  v27 = v21 + 8;
  v28 = ((v21 + 8) & ~v21) + v7;
  if ((v25 & 0x80000000) != 0)
  {
    v34 = ((v21 + 8) & ~v21) + v7;
    v31 = *(v36 + 48);
    v32 = v31((v23 + v27) & v26, v25, v5);
    v30 = v31((v24 + v27) & v26, v25, v5);
    v28 = v34;
    if (!v32)
    {
LABEL_5:
      if (!v30)
      {
        *v23 = *v24;

        v35((v23 + v27) & v26, (v24 + v27) & v26, v5);
        goto LABEL_12;
      }

      (*(v36 + 8))((v23 + v27) & v26, v5);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *v24;
    if (*v24 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 + 1;
    if (*v23 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v30)
  {
    *v23 = *v24;
    (*(v36 + 32))((v23 + v27) & v26, (v24 + v27) & v26, v5);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v28);
LABEL_12:
  *((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v20;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2.InnerModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for TaskPriority();
  v10 = *(v9 - 8);
  v11 = *(v6 + 64);
  v12 = *(v10 + 80);
  if (*(v10 + 84) <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v8 - 1 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v6;
  v16 = *(v6 + 80);
  v17 = v16 | 7;
  v18 = v16 + 8;
  v19 = ((*(*(v9 - 8) + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 16;
  if (v14 >= a2)
  {
    goto LABEL_26;
  }

  v20 = ((v11 + 7 + (v18 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v17) + 8;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v14 + 1;
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
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    v15 = v6;
    if (!v24)
    {
      goto LABEL_26;
    }

    v25 = *(a1 + v20);
    if (!v25)
    {
      goto LABEL_26;
    }

LABEL_48:
    v33 = v25 - 1;
    if (v21)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v14 + (v34 | v33) + 1;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + v20);
  }

  else
  {
    v25 = *(a1 + v20);
  }

  v15 = v6;
  if (v25)
  {
    goto LABEL_48;
  }

LABEL_26:
  if (v8 - 1 <= v13)
  {
    if (v7 == v13)
    {
      v30 = *(v15 + 48);

      return v30(a1, v7, v5);
    }

    else
    {
      v31 = (a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0x80000000) != 0)
      {
        v35 = *(v10 + 48);

        return v35((v12 + 16 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12);
      }

      else
      {
        v32 = *(v31 + 8);
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  else
  {
    v26 = ((a1 + v19) & ~v17);
    if ((v7 & 0x80000000) != 0)
    {
      v28 = (*(v15 + 48))((v26 + v18) & ~v16, v7, v5);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for _TaskValueModifier2.InnerModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for TaskPriority() - 8);
  v12 = *(v8 + 64);
  v13 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v10 - 1;
  if (v10 - 1 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10 - 1;
  }

  v17 = ((*(v11 + 64) + ((v13 + 16 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = *(v8 + 80);
  v19 = ((v18 + 8) & ~v18) + v12;
  v20 = v17 + (v18 | 7);
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + (v20 & ~(v18 | 7)) + 8;
  if (v16 >= a3)
  {
    v24 = 0;
    v25 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) == -8)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) != -8)
    {
      v27 = ~v16 + a2;
      bzero(a1, v21);
      *a1 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *&a1[v21] = v26;
      }

      else
      {
        *&a1[v21] = v26;
      }
    }

    else if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) == -8)
  {
    v22 = a3 - v16 + 1;
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
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2 - v16;
  if (a2 > v16)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v21] = 0;
  }

  else if (v24)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v15 > v14)
  {
    a1 = (&a1[v20] & ~(v18 | 7));
    if (v15 < a2)
    {
      v28 = (v19 + 7) & 0xFFFFFFF8;
      v29 = (v28 + 8);
      if (v28 != -8)
      {
        v30 = a2 - v10;
        v31 = a1;
LABEL_48:
        bzero(v31, v29);
        *a1 = v30;
        return;
      }

      return;
    }

    if (a2 >= v10)
    {
      if (v19 <= 3)
      {
        v35 = ~(-1 << (8 * v19));
      }

      else
      {
        v35 = -1;
      }

      if (v19)
      {
        v36 = v35 & (a2 - v10);
        if (v19 <= 3)
        {
          v37 = v19;
        }

        else
        {
          v37 = 4;
        }

        bzero(a1, v19);
        if (v37 > 2)
        {
          if (v37 == 3)
          {
            *a1 = v36;
            a1[2] = BYTE2(v36);
          }

          else
          {
            *a1 = v36;
          }
        }

        else if (v37 == 1)
        {
          *a1 = v36;
        }

        else
        {
          *a1 = v36;
        }
      }

      return;
    }

    v32 = (a2 + 1);
    if ((v9 & 0x80000000) == 0)
    {
      if ((v32 & 0x80000000) != 0)
      {
        *a1 = (a2 - 0x7FFFFFFF);
      }

      else
      {
        *a1 = a2;
      }

      return;
    }

    v33 = *(v40 + 56);
    v34 = (&a1[v18 + 8] & ~v18);
LABEL_73:

    v33(v34, v32, v9, v7);
    return;
  }

  if (v14 >= a2)
  {
    if (v9 != v14)
    {
      v38 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v39 = *(v11 + 56);

        v39((v13 + 16 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v38 = a2 & 0x7FFFFFFF;
        v38[1] = 0;
      }

      else
      {
        v38[1] = (a2 - 1);
      }

      return;
    }

    v33 = *(v40 + 56);
    v34 = a1;
    v32 = a2;
    goto LABEL_73;
  }

  if (v17)
  {
    v30 = ~v14 + a2;
    v31 = a1;
    v29 = v17;
    goto LABEL_48;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    v3 = v20 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    v8 = type metadata accessor for _TaskModifier2(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 16);

    swift_unknownObjectRetain();
    v11(v3 + v9, a2 + v9, v10);
    v12 = *(v8 + 28);
    v13 = (v3 + v12);
    v14 = (a2 + v12);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    v16 = *(a3 + 20);
    v17 = (v3 + v16);
    v18 = (a2 + v16);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
  }

  return v3;
}

double destroy for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t a2)
{

  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);

  return result;
}

uint64_t initializeWithCopy for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 16);

  swift_unknownObjectRetain();
  v10(a1 + v8, a2 + v8, v9);
  v11 = *(v7 + 28);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

char *assignWithCopy for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 3) = v6;
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = *(v7 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;

  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *&a2[v14];

  *(v15 + 1) = *(v16 + 1);

  return a1;
}

char *initializeWithTake for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  *&a1[*(v7 + 28)] = *&a2[*(v7 + 28)];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRelease();
  *(a1 + 3) = v7;
  v8 = type metadata accessor for _TaskModifier2(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 40))(&a1[v9], &a2[v9], v10);
  *&a1[*(v8 + 28)] = *&a2[*(v8 + 28)];

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *v13;

  *(v12 + 1) = *(v13 + 1);

  return a1;
}

uint64_t type metadata completion function for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  result = a4(319, v6, v7);
  if (v9 <= 0x3F)
  {
    a5(255, v6, v7);
    type metadata accessor for Optional();
    result = type metadata accessor for State();
    if (v10 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _TaskValueModifier.InnerModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = ((v9 + ((v8 + 16) & ~v8) + v12) & ~v12) + v13;
  v15 = ((v12 + 8) & ~v12) + v13;
  v16 = *a2;
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((v14 + (v12 | 7)) & ~(v12 | 7)) + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    __n = ((v12 + 8) & ~v12) + v13;
    v30 = v10;
    v33 = v15 + 7;
    v31 = a2;
    v32 = *(v11 + 84);
    v19 = a2[1];
    *a1 = v16;
    a1[1] = v19;
    v20 = (a1 + v8 + 16) & ~v8;
    v21 = (a2 + v8 + 16) & ~v8;
    v22 = *(v7 + 16);

    v22(v20, v21, v6);
    v23 = v21 + v9 + v12;
    v24 = *(v11 + 16);
    v24((v20 + v9 + v12) & ~v12, v23 & ~v12, v30);
    v25 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v31 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v32 < 0)
    {
      if ((*(v11 + 48))(v26 + 1))
      {
LABEL_14:
        memcpy(v25, v26, __n);
LABEL_17:
        *((v25 + v33) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v33) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }
    }

    else
    {
      v27 = *v26;
      if (*v26 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      if (v27 != -1)
      {
        goto LABEL_14;
      }
    }

    *v25 = *v26;

    v24((v25 + 1), (v26 + 1), v30);
    goto LABEL_17;
  }

  *a1 = v16;
  a1 = (v16 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
LABEL_18:

  return a1;
}

_OWORD *initializeWithTake for _TaskValueModifier.InnerModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 32))((a1 + v9 + 16) & ~v9, v10, v6);
  v11 = *(v8 + 32);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v31 = ~v14;
  v32 = *(a3 + 16);
  v29 = *(v12 + 32);
  v29((v11 + v14 + ((a1 + v9 + 16) & ~v9)) & ~v14, (v11 + v14 + v10) & ~v14);
  v16 = *(v12 + 64);
  v17 = a1;
  v18 = v16 + (v14 | 7) + ((v15 + ((v9 + 16) & ~v9)) & ~v14);
  v19 = ((a1 + v18) & ~(v14 | 7));
  v20 = ((a2 + v18) & ~(v14 | 7));
  v21 = v14 + 8;
  v22 = (v14 + 8) & ~v14;
  if ((*(v13 + 84) & 0x80000000) == 0)
  {
    v23 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = ~v14;
    v25 = v32;
    v26 = v22 + v16;
    if (v23 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v19 = *v20;
    (v29)((v19 + v21) & v24, (v20 + v21) & v24, v25);
    goto LABEL_8;
  }

  v25 = v32;
  v27 = (*(v13 + 48))((v20 + v21) & v31);
  v24 = v31;
  v26 = v22 + v16;
  if (!v27)
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v19, v20, v26);
LABEL_8:
  *((v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v17;
}

_OWORD *assignWithTake for _TaskValueModifier.InnerModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 40))((a1 + v9 + 16) & ~v9, v10, v6);
  v11 = *(v8 + 24);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = ~v14;
  v34 = *(a3 + 16);
  v30 = *(v12 + 40);
  v30((v11 + v14 + ((a1 + v9 + 16) & ~v9)) & ~v14, (v11 + v14 + v10) & ~v14);
  v17 = *(v12 + 64);
  v18 = v17 + (v14 | 7) + ((v15 + ((v9 + 16) & ~v9)) & ~v14);
  v35 = a1;
  v19 = ((a1 + v18) & ~(v14 | 7));
  v20 = ((a2 + v18) & ~(v14 | 7));
  v21 = *(v12 + 84);
  v22 = v14 + 8;
  v23 = ((v14 + 8) & ~v14) + v17;
  v31 = v13;
  v32 = ~v14;
  if ((v21 & 0x80000000) != 0)
  {
    v27 = *(v13 + 48);
    v26 = v34;
    v28 = v27((v19 + v22) & v16, v21, v34);
    v25 = v27((v20 + v22) & v16, v21, v34);
    if (!v28)
    {
LABEL_5:
      if (!v25)
      {
        *v19 = *v20;

        (v30)((v19 + v22) & v32, (v20 + v22) & v32, v26);
        goto LABEL_12;
      }

      (*(v31 + 8))((v19 + v22) & v32, v26);
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *v20;
    if (*v20 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 + 1;
    v26 = v34;
    if (*v19 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v25)
  {
    *v19 = *v20;
    (*(v31 + 32))((v19 + v22) & v32, (v20 + v22) & v32, v26);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v19, v20, v23);
LABEL_12:
  *((v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v35;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier.InnerModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = v17 - 1;
  if (v17 - 1 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 | 7;
  v21 = v13 + 8;
  v22 = ((v12 + ((v11 + 16) & ~v11) + v13) & ~v13) + v14 + (v13 | 7);
  if (v19 >= a2)
  {
    goto LABEL_36;
  }

  v23 = ((v14 + (v21 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + (v22 & ~v20) + 8;
  v24 = a2 - v19;
  v25 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = v24 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v23);
      if (!v29)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = *(a1 + v23);
      if (!v29)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v31 = v29 - 1;
    if (v25)
    {
      v31 = 0;
      v32 = *a1;
    }

    else
    {
      v32 = 0;
    }

    return v19 + (v32 | v31) + 1;
  }

  if (v28)
  {
    v29 = *(a1 + v23);
    if (v29)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  v33 = ~v13;
  if (v18 <= v16)
  {
    if ((v15 & 0x80000000) != 0)
    {
      if (v8 == v16)
      {
        v38 = *(v7 + 48);

        return v38((a1 + v11 + 16) & ~v11, v8, v6);
      }

      else
      {
        v39 = *(v9 + 48);

        return v39((((a1 + v11 + 16) & ~v11) + v12 + v13) & v33);
      }
    }

    else
    {
      v37 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }
  }

  else
  {
    v34 = ((a1 + v22) & ~v20);
    if ((v10 & 0x80000000) != 0)
    {
      v36 = (*(v9 + 48))((v34 + v21) & v33);
    }

    else
    {
      v35 = *v34;
      if (v35 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      v36 = v35 + 1;
    }

    if (v36 >= 2)
    {
      return v36 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for _TaskValueModifier.InnerModifier(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = *(v9 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v11 + 84);
  }

  v20 = v19 - 1;
  if (v19 - 1 <= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19 - 1;
  }

  v22 = ((v14 + ((v13 + 16) & ~v13) + v15) & ~v15) + v16;
  v23 = ((v15 + 8) & ~v15) + v16;
  v24 = v22 + (v15 | 7);
  v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + (v24 & ~(v15 | 7)) + 8;
  if (((v23 + 7) & 0xFFFFFFF8) + (v24 & ~(v15 | 7)) == -8)
  {
    v26 = a3 - v21 + 1;
  }

  else
  {
    v26 = 2;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v21 < a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = a2 - v21;
  if (a2 > v21)
  {
    if (((v23 + 7) & 0xFFFFFFF8) + (v24 & ~(v15 | 7)) != -8)
    {
      v30 = 1;
      bzero(a1, ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + (v24 & ~(v15 | 7)) + 8);
      *a1 = ~v21 + a2;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v29)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v29 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_41;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  v31 = ~v15;
  if (v20 > v18)
  {
    a1 = ((a1 + v24) & ~(v15 | 7));
    if (v20 < a2)
    {
      v32 = (v23 + 7) & 0xFFFFFFF8;
      if (v32 == -8)
      {
        return;
      }

      v33 = a2 - v19;
      bzero(a1, (v32 + 8));
LABEL_79:
      *a1 = v33;
      return;
    }

    if (a2 < v19)
    {
      v36 = (a2 + 1);
      if ((v12 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) != 0)
        {
          v37 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v37 = a2;
        }

LABEL_91:
        *a1 = v37;
        return;
      }

      v40 = *(v11 + 56);
      v41 = (a1 + v15 + 8) & v31;
      goto LABEL_87;
    }

    if (v23 <= 3)
    {
      v38 = ~(-1 << (8 * v23));
    }

    else
    {
      v38 = -1;
    }

    if (!v23)
    {
      return;
    }

    v33 = v38 & (a2 - v19);
    if (v23 <= 3)
    {
      v35 = v23;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v23);
    if (v35 <= 2)
    {
      if (v35 != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_56;
    }

    goto LABEL_77;
  }

  if (v18 < a2)
  {
    if (v22 <= 3)
    {
      v34 = ~(-1 << (8 * v22));
    }

    else
    {
      v34 = -1;
    }

    if (!v22)
    {
      return;
    }

    v33 = v34 & (~v18 + a2);
    if (v22 <= 3)
    {
      v35 = v22;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v22);
    if (v35 <= 2)
    {
      if (v35 != 1)
      {
LABEL_76:
        *a1 = v33;
        return;
      }

LABEL_56:
      *a1 = v33;
      return;
    }

LABEL_77:
    if (v35 == 3)
    {
      *a1 = v33;
      *(a1 + 2) = BYTE2(v33);
      return;
    }

    goto LABEL_79;
  }

  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
      return;
    }

    v37 = (a2 - 1);
    goto LABEL_91;
  }

  if (v10 != v18)
  {
    v40 = *(v11 + 56);
    v41 = (((a1 + v13 + 16) & ~v13) + v14 + v15) & v31;
    v36 = a2;
LABEL_87:

    v40(v41, v36);
    return;
  }

  v39 = *(v9 + 56);

  v39((a1 + v13 + 16) & ~v13, a2, v10, v8);
}

uint64_t type metadata completion function for _TaskValueModifier2.InnerModifier.TaskState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TaskValueModifier2.InnerModifier.TaskState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for _TaskValueModifier2.InnerModifier.TaskState(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t *initializeWithCopy for _TaskValueModifier2.InnerModifier.TaskState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t *assignWithCopy for _TaskValueModifier2.InnerModifier.TaskState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t *assignWithTake for _TaskValueModifier2.InnerModifier.TaskState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2.InnerModifier.TaskState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

void storeEnumTagSinglePayload for _TaskValueModifier2.InnerModifier.TaskState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

char *initializeBufferWithCopyOfBuffer for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    v3 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = v5;
    *(a1 + 1) = v7;
    v9 = *(type metadata accessor for _TaskModifier(0) + 20);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 16);

    v11(&v3[v9], &a2[v9], v10);
    v12 = *(a3 + 20);
    v13 = &v3[v12];
    v14 = &a2[v12];
    v15 = *(v14 + 1);
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  return v3;
}

char *initializeWithTake for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for _TaskModifier(0) + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

_OWORD *assignWithTake for _TaskModifier.InnerModifier(_OWORD *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(type metadata accessor for _TaskModifier(0) + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 40))(a1 + v6, &a2[v6], v7);
  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = &a2[v8];
  *(a1 + v8) = *v10;

  *(v9 + 1) = *(v10 + 1);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata completion function for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with take of _TaskModifier2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_55Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for _TaskValueModifier.InnerModifier(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));

  v10 = type metadata accessor for _TaskValueModifier(0, v5, v6, v9);
  v11 = *(v10 + 36);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = *(v10 + 40);
  v14 = *(*(v5 - 8) + 8);
  v14(v8 + v13, v5);
  v15 = v8 + v7[11];
  v17 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState(0, v5, v6, v16);
  if (!(*(*(v17 - 8) + 48))(v15, 1, v17))
  {

    v14(v15 + *(v17 + 36), v5);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t specialized State.wrappedValue.setter(uint64_t result, uint64_t a2)
{
  if (*(v2 + *(a2 + 28)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v3;
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(type metadata accessor for _TaskModifier2.InnerModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @async () -> ()(a1, v4);
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed @async () -> (@out A)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #2 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, double))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a1(0, v6, v7) - 8);
  return closure #2 in _TaskValueModifier.InnerModifier.body(content:)(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a2, a3, a2);
}

uint64_t objectdestroy_90Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for _TaskValueModifier2.InnerModifier(0, v5, v6, a4) - 8);
  v17 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v8 = *(*(v5 - 8) + 8);
  v8(v4 + v17, v5);
  v10 = type metadata accessor for _TaskValueModifier2(0, v5, v6, v9);

  swift_unknownObjectRelease();
  v11 = *(v10 + 44);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 8))(v4 + v17 + v11, v12);

  v13 = v4 + v17 + v7[11];
  v15 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState(0, v5, v6, v14);
  if (!(*(*(v15 - 8) + 48))(v13, 1, v15))
  {

    v8(v13 + *(v15 + 36), v5);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t specialized _TaskValueModifier.InnerModifier.taskState.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v4 = v3 + *(a2 + 36);
  a3(255, *(a2 + 16), *(a2 + 24));
  type metadata accessor for Optional();
  result = type metadata accessor for State();
  if (*(v4 + *(result + 28)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t _sytIeAgHr_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sytIeAgHr_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier>, type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<_TaskModifier2.InnerModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier2.InnerModifier>)
  {
    type metadata accessor for _TaskModifier2.InnerModifier(255);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier, protocol conformance descriptor for _TaskModifier2.InnerModifier);
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier2.InnerModifier>);
    }
  }
}

uint64_t get_witness_table_SQRzl7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0VyAA010_TaskValueF0V05InnerF033_293A0AF83C78DECE53AFAAF3EDCBA9D4LLVyx_GGAA017_AppearanceActionF0VGAA01_hR9Modifier2VyxGGANGAA0E0HPAsaUHPAoaUHPAlaUHPyHC_AnA0eF0HPyHCHC_AraVHPyHCHC_AnaVHPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);
  swift_getWitnessTable(a3, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for _ValueActionModifier2();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v11 = MEMORY[0x1E69805D0];
  v16[0] = WitnessTable;
  v16[1] = MEMORY[0x1E69805D0];
  v12 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v16);
  v15[1] = swift_getWitnessTable(MEMORY[0x1E697FDE0], v7);
  v14[0] = swift_getWitnessTable(v12, v8, v15);
  v14[1] = v11;
  return swift_getWitnessTable(v12, v9, v14);
}

uint64_t View.navigationTransitionStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(&v8, a3, a5);
  if (v11)
  {
    v5 = v8;
    v14 = v9;
    v6 = v12;
    v15 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v14 = 0uLL;
    v15 = 0;
  }

  v13 = v5;
  v16 = v11;
  v17 = v6;
  View.preference<A>(key:value:)();
  return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(&v13, type metadata accessor for _NavigationTransitionOutputs?);
}

double AutomaticNavigationTransitionStyle._outputs.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *static NavigationTransitionStyle<>.zoom<A>(sourceID:in:)@<X0>(uint64_t a2@<X1>, void *a5@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *a5 = a2;
  return result;
}

void type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable)()
{
  if (!lazy cache variable for type metadata for (namespace: Namespace.ID, sourceID: AnyHashable))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (namespace: Namespace.ID, sourceID: AnyHashable));
    }
  }
}

uint64_t assignWithTake for _NavigationTransitionStyleOutputs(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    if (*(a2 + 32))
    {
      *result = *a2;
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1((result + 8));
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
    }

    else
    {
      v3 = result;
      _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(result, type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable));
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
    }

    return v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t initializeWithCopy for ZoomNavigationTransitionStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

void *assignWithCopy for ZoomNavigationTransitionStyle(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  return a1;
}

uint64_t assignWithTake for ZoomNavigationTransitionStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t destroy for _NavigationTransitionStyleOutputs.Content(uint64_t result)
{
  if (*(result + 32) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 8));
  }

  return result;
}

__n128 assignWithCopy for _NavigationTransitionStyleOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *a1 = result;
    }

    else
    {
      *a1 = *a2;
      v4 = *(a2 + 32);
      *(a1 + 32) = v4;
      *(a1 + 40) = *(a2 + 40);
      (**(v4 - 8))(a1 + 8, a2 + 8);
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    result = *a2;
    v7 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v7;
    *a1 = result;
  }

  else
  {
    *a1 = *a2;
    result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  }

  return result;
}

uint64_t assignWithTake for _NavigationTransitionStyleOutputs.Content(uint64_t result, uint64_t a2)
{
  if (*(result + 32) < 0xFFFFFFFFuLL)
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    if (*(a2 + 32) < 0xFFFFFFFFuLL)
    {
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1((result + 8));
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1((result + 8));
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _NavigationTransitionStyleOutputs.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NavigationTransitionStyleOutputs.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _NavigationTransitionStyleOutputs.Content(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for _NavigationTransitionStyleOutputs.Content(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag(uint64_t a1)
{
  result = type metadata singleton initialization cache for Color.ProviderTag.SwiftUIPlatformTag;
  if (!type metadata singleton initialization cache for Color.ProviderTag.SwiftUIPlatformTag)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  if (*v0)
  {
    return 0x69446E69616C705FLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000018CD44F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x69446E69616C705FLL && a2 == 0xED00007265646976)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Color.ProviderTag.SwiftUIPlatformTag.init(from:)(a1);
  return v2;
}

uint64_t *Color.ProviderTag.SwiftUIPlatformTag.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *(v1 + 16) = v6;

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = *(v1 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

ValueMetadata *Color.ProviderTag.SwiftUIPlatformTag.type.getter()
{
  if (*(v0 + 16))
  {
    v1 = &type metadata for PlainDividerShapeStyle;
    lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle();
  }

  else
  {
    v1 = &type metadata for EmphasizedGroupBackgroundColorProvider;
    lazy protocol witness table accessor for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider()
{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable("Ņ\rbЕ\t", &type metadata for EmphasizedGroupBackgroundColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizedGroupBackgroundColorProvider, &type metadata for EmphasizedGroupBackgroundColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizedGroupBackgroundColorProvider, &type metadata for EmphasizedGroupBackgroundColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizedGroupBackgroundColorProvider, &type metadata for EmphasizedGroupBackgroundColorProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle()
{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainDividerShapeStyle, &type metadata for PlainDividerShapeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainDividerShapeStyle, &type metadata for PlainDividerShapeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainDividerShapeStyle, &type metadata for PlainDividerShapeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainDividerShapeStyle, &type metadata for PlainDividerShapeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

uint64_t specialized Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
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
    *v24 = &type metadata for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
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
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

double protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance BorderedButtonStyle_CarCatalyst@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = type metadata accessor for BorderedButton_CarCatalyst(0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, a2 + *(v7 + 24));
  *a2 = v5;
  *(a2 + 8) = v6;
  v8 = a2 + *(v7 + 28);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;

  return result;
}

uint64_t type metadata accessor for BorderedButton_CarCatalyst(uint64_t a1)
{
  result = type metadata singleton initialization cache for BorderedButton_CarCatalyst;
  if (!type metadata singleton initialization cache for BorderedButton_CarCatalyst)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BorderedButton_CarCatalyst(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v11 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v12 = v9 + v11;
    v13 = &v10[v11];
    type metadata accessor for ButtonAction(0);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v13;
      v30 = *(v13 + 1);
      v31 = v13[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v30, v31);
      *v12 = v29;
      *(v12 + 8) = v30;
      *(v12 + 16) = v31;
      v32 = *(v13 + 5);
      v33 = *(v13 + 24);
      *(v12 + 24) = v33;
      *(v12 + 40) = v32;
      v34 = v33;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *v13;
        v16 = *(v13 + 1);
        v18 = *(v13 + 2);
        v17 = *(v13 + 3);
        v42 = v13[34];
        v19 = *(v13 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v13, v16, v18, v17, v19, v42);
        *v12 = v15;
        *(v12 + 8) = v16;
        *(v12 + 16) = v18;
        *(v12 + 24) = v17;
        *(v12 + 32) = v19;
        *(v12 + 34) = v42;
        v20 = *(v13 + 5);
        v21 = *(v13 + 6);
        v22 = *(v13 + 7);
        v23 = *(v13 + 8);
        v43 = v13[74];
        LOWORD(v18) = *(v13 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v20, v21, v22, v23, v18, v43);
        *(v12 + 40) = v20;
        *(v12 + 48) = v21;
        *(v12 + 56) = v22;
        *(v12 + 64) = v23;
        *(v12 + 72) = v18;
        *(v12 + 74) = v43;
        v24 = *(type metadata accessor for LinkDestination() + 24);
        v25 = v12 + v24;
        v26 = &v13[v24];
        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 16))(v25, v26, v27);
        v28 = type metadata accessor for LinkDestination.Configuration();
        *(v25 + *(v28 + 20)) = v26[*(v28 + 20)];
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v36 = *(a3 + 28);
        v37 = v7 + v36;
        v38 = a2 + v36;
        v39 = *v38;
        v40 = v38[8];
        outlined copy of Environment<Bool>.Content();
        *v37 = v39;
        *(v37 + 8) = v40;
        return v7;
      }

      v35 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 8) = v35;
    }

    goto LABEL_9;
  }

  v7 = v4 + ((v3 + 16) & ~v3);

  return v7;
}

uint64_t destroy for BorderedButton_CarCatalyst(void *a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 24);
  v5 = &v4[*(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24)];
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v5, *(v5 + 1), v5[16]);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 16), v5[34]);
      outlined consume of Environment<OpenURLAction>.Content(*(v5 + 5), *(v5 + 6), *(v5 + 7), *(v5 + 8), *(v5 + 36), v5[74]);
      v7 = *(type metadata accessor for LinkDestination() + 24);
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(&v5[v7], v8);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v9 = a1 + *(a2 + 28);
  v10 = *v9;
  v11 = v9[8];

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

uint64_t initializeWithCopy for BorderedButton_CarCatalyst(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v10 = v7 + v9;
  v11 = &v8[v9];
  type metadata accessor for ButtonAction(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v28 = *v11;
    v29 = *(v11 + 1);
    v30 = v11[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v29, v30);
    *v10 = v28;
    *(v10 + 8) = v29;
    *(v10 + 16) = v30;
    v31 = *(v11 + 5);
    v32 = *(v11 + 24);
    *(v10 + 24) = v32;
    *(v10 + 40) = v31;
    v33 = v32;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v34 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 8) = v34;
    goto LABEL_6;
  }

  v41 = v3;
  v13 = *v11;
  v14 = *(v11 + 1);
  v16 = *(v11 + 2);
  v15 = *(v11 + 3);
  v17 = v11[34];
  v18 = *(v11 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v11, v14, v16, v15, v18, v17);
  *v10 = v13;
  *(v10 + 8) = v14;
  *(v10 + 16) = v16;
  *(v10 + 24) = v15;
  *(v10 + 32) = v18;
  *(v10 + 34) = v17;
  v19 = *(v11 + 5);
  v20 = *(v11 + 6);
  v21 = *(v11 + 7);
  v22 = *(v11 + 8);
  LOBYTE(v14) = v11[74];
  LOWORD(v16) = *(v11 + 36);
  outlined copy of Environment<OpenURLAction>.Content(v19, v20, v21, v22, v16, v14);
  *(v10 + 40) = v19;
  *(v10 + 48) = v20;
  *(v10 + 56) = v21;
  *(v10 + 64) = v22;
  *(v10 + 72) = v16;
  *(v10 + 74) = v14;
  v3 = v41;
  v23 = *(type metadata accessor for LinkDestination() + 24);
  v24 = v10 + v23;
  v25 = &v11[v23];
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 16))(v24, v25, v26);
  v27 = type metadata accessor for LinkDestination.Configuration();
  *(v24 + *(v27 + 20)) = v25[*(v27 + 20)];
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v35 = *(v3 + 28);
  v36 = a1 + v35;
  v37 = a2 + v35;
  v38 = *v37;
  v39 = v37[8];
  outlined copy of Environment<Bool>.Content();
  *v36 = v38;
  *(v36 + 8) = v39;
  return a1;
}

uint64_t *assignWithCopy for BorderedButton_CarCatalyst(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v10 = *(v9 + 24);
    v11 = &v7[v10];
    v12 = &v8[v10];
    outlined destroy of ButtonAction(v11, type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v12;
      v30 = *(v12 + 1);
      v31 = v12[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v12, v30, v31);
      *v11 = v29;
      *(v11 + 8) = v30;
      *(v11 + 16) = v31;
      v32 = *(v12 + 3);
      *(v11 + 24) = v32;
      v33 = *(v12 + 5);
      *(v11 + 32) = *(v12 + 4);
      *(v11 + 40) = v33;
      v34 = v32;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v44 = a3;
        v14 = *v12;
        v15 = *(v12 + 1);
        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        v18 = v12[34];
        v19 = *(v12 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v12, v15, v17, v16, v19, v18);
        *v11 = v14;
        *(v11 + 8) = v15;
        *(v11 + 16) = v17;
        *(v11 + 24) = v16;
        *(v11 + 32) = v19;
        *(v11 + 34) = v18;
        v20 = *(v12 + 5);
        v21 = *(v12 + 6);
        v22 = *(v12 + 7);
        v23 = *(v12 + 8);
        LOBYTE(v15) = v12[74];
        LOWORD(v17) = *(v12 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v20, v21, v22, v23, v17, v15);
        *(v11 + 40) = v20;
        *(v11 + 48) = v21;
        *(v11 + 56) = v22;
        *(v11 + 64) = v23;
        *(v11 + 72) = v17;
        *(v11 + 74) = v15;
        a3 = v44;
        v24 = *(type metadata accessor for LinkDestination() + 24);
        v25 = v11 + v24;
        v26 = &v12[v24];
        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 16))(v25, v26, v27);
        v28 = type metadata accessor for LinkDestination.Configuration();
        *(v25 + *(v28 + 20)) = v26[*(v28 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v35 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 8) = v35;
    }

    goto LABEL_8;
  }

LABEL_9:
  v36 = *(a3 + 28);
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = *v38;
  v40 = v38[8];
  outlined copy of Environment<Bool>.Content();
  v41 = *v37;
  v42 = v37[8];
  *v37 = v39;
  v37[8] = v40;
  outlined consume of Environment<Bool>.Content(v41, v42);
  return a1;
}

uint64_t initializeWithTake for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v10 = (v7 + v9);
  v11 = (v8 + v9);
  v12 = type metadata accessor for ButtonAction(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v13;
    *(v10 + 31) = *(v11 + 31);
    *(v10 + 40) = *(v11 + 40);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 71) = *(v11 + 71);
    v14 = *(type metadata accessor for LinkDestination() + 24);
    v15 = &v10[v14];
    v16 = &v11[v14];
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 32))(v15, v16, v17);
    v18 = type metadata accessor for LinkDestination.Configuration();
    v15[*(v18 + 20)] = v16[*(v18 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  v19 = *(a3 + 28);
  v20 = a1 + v19;
  v21 = a2 + v19;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  return a1;
}

uint64_t *assignWithTake for BorderedButton_CarCatalyst(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v10 = *(v9 + 24);
    v11 = &v7[v10];
    v12 = &v8[v10];
    outlined destroy of ButtonAction(v11, type metadata accessor for ButtonAction);
    v13 = type metadata accessor for ButtonAction(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v14;
      *(v11 + 31) = *(v12 + 31);
      *(v11 + 40) = *(v12 + 40);
      *(v11 + 56) = *(v12 + 56);
      *(v11 + 71) = *(v12 + 71);
      v15 = *(type metadata accessor for LinkDestination() + 24);
      v16 = &v11[v15];
      v17 = &v12[v15];
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 32))(v16, v17, v18);
      v19 = type metadata accessor for LinkDestination.Configuration();
      v16[*(v19 + 20)] = v17[*(v19 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }
  }

  v20 = *(a3 + 28);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *v22;
  LOBYTE(v22) = v22[8];
  v24 = *v21;
  v25 = v21[8];
  *v21 = v23;
  v21[8] = v22;
  outlined consume of Environment<Bool>.Content(v24, v25);
  return a1;
}

uint64_t type metadata completion function for BorderedButton_CarCatalyst(uint64_t a1)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _UnaryViewAdaptor<BorderedButton_CarCatalyst>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<BorderedButton_CarCatalyst>)
  {
    type metadata accessor for BorderedButton_CarCatalyst(255);
    lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type BorderedButton_CarCatalyst and conformance BorderedButton_CarCatalyst, type metadata accessor for BorderedButton_CarCatalyst, protocol conformance descriptor for BorderedButton_CarCatalyst);
    v1 = type metadata accessor for _UnaryViewAdaptor();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _UnaryViewAdaptor<BorderedButton_CarCatalyst>);
    }
  }
}

void BorderedButton_CarCatalyst.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v21 = type metadata accessor for UIButton.Configuration();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for BorderedButton_CarCatalyst(0) + 24);
  v15 = *(v2 + v14);
  outlined init with copy of PrimitiveButtonStyleConfiguration(v2 + v14, v9);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(v9, v17 + v16);
  v25 = 1;
  v24 = 1;
  v23 = 1;
  LOBYTE(v26[0]) = v15;
  v26[1] = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v26[2] = v17;
  LOWORD(v26[3]) = 0;
  *(&v26[3] + 4) = 0;
  BYTE4(v26[4]) = 1;
  *(&v26[4] + 5) = 514;
  v26[5] = 0;
  LOWORD(v26[6]) = 1;
  memset(&v26[7], 0, 24);
  LOBYTE(v26[10]) = 1;
  closure #1 in BorderedButton_CarCatalyst.body.getter(&v26[11]);
  if (*(v2 + 8) == 1)
  {
    static UIButton.Configuration.borderedProminent()();
  }

  else
  {
    static UIButton.Configuration.bordered()();
  }

  (*(v3 + 32))(&v13[*(v11 + 36)], v5, v21);
  memcpy(v13, v26, 0x129uLL);
  v18 = v22;
  outlined init with take of ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(v13, v22);
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>(0);
  *(v18 + *(v19 + 36)) = 257;
}

uint64_t closure #1 in BorderedButton_CarCatalyst.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BorderedButton_CarCatalyst(0);
  KeyPath = swift_getKeyPath();
  v4 = 1;
  v5 = static Edge.Set.all.getter();
  v6 = xmmword_18CD8ADD0;
  v7 = xmmword_18CD8ADD0;
  v8 = 0;
  specialized View.toolbarButtonLabel()(a1);
  return outlined destroy of ButtonAction(&KeyPath, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>);
}

void type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v7 = type metadata accessor for UIKitButton(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), double (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>();
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>()
{
  if (!lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>)
  {
    v0 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
    v4 = v3;
    v6[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>(v5);
    v6[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v1;
    v6[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>(255, a1);
    v5 = v4;
    v6[0] = lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    v6[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for PrimitiveButtonStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E69801E8]);
    v5[1] = MEMORY[0x1E697E5D8];
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697EBE0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance UIKitButton<A>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, protocol conformance descriptor for UIKitButton<A>);
    v5[1] = &protocol witness table for UIKitSystemButtonConfigurationModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for HoverEffectResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for HoverEffectResponder;
  if (!type metadata singleton initialization cache for HoverEffectResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PointerHoverEffectModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v58 = a2[2];
  v59 = v7;
  v60 = a2[4];
  v61 = *(a2 + 20);
  v8 = a2[1];
  v56 = *a2;
  v57 = v8;
  v26 = *(a2 + 6);
  v27 = *(a2 + 14);
  *&v39 = *(a2 + 6);
  DWORD2(v39) = *(a2 + 14);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    UniqueID.init()();
    v9 = v39;
    closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(&v56, v39, a3);
    v10 = v23;
    v11 = v24;
    *&v39 = v23;
    DWORD2(v39) = v24;
    result = PreferencesOutputs.subscript.getter();
    if ((result & 0x100000000) != 0)
    {
LABEL_5:
      *a5 = v10;
      *(a5 + 8) = v11;
      *(a5 + 12) = v25;
      return result;
    }

    v13 = result;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v21 = AGGraphCreateOffsetAttribute2();

    v20 = _ViewOutputs.viewResponders()();

    v19 = _ViewInputs.animatedPosition()();
    *v41 = v58;
    *&v41[16] = v59;
    *&v41[32] = v60;
    *&v41[48] = v61;
    v39 = v56;
    v40 = v57;
    swift_beginAccess();
    v14 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v50 = v56;
    v51 = v57;
    v15 = _ViewInputs.containerPosition.getter();
    v16 = AGGraphCreateOffsetAttribute2();
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v44 = v56;
    v45 = v57;
    v17 = _ViewInputs.isEnabled.getter();
    result = AGSubgraphGetCurrent();
    if (result)
    {
      *&v41[40] = v58;
      *&v41[56] = v59;
      *&v41[72] = v60;
      *&v41[88] = v61;
      *&v41[8] = v56;
      *&v41[24] = v57;
      *&v39 = __PAIR64__(v21, OffsetAttribute2);
      *(&v39 + 1) = __PAIR64__(v19, v20);
      *&v40 = __PAIR64__(v14, HIDWORD(v59));
      *(&v40 + 1) = __PAIR64__(v16, v15);
      *v41 = v17;
      *&v41[4] = v13;
      *&v42 = v9;
      *(&v42 + 1) = result;
      v36 = *&v41[80];
      v37 = v42;
      v32 = *&v41[16];
      v33 = *&v41[32];
      v34 = *&v41[48];
      v35 = *&v41[64];
      v29 = v39;
      v43 = 0;
      v38 = 0;
      v30 = v40;
      v31 = *v41;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      outlined init with copy of _ViewInputs(&v56, v28);
      type metadata accessor for [ViewResponder](0);
      lazy protocol witness table accessor for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of HoverEffectResponderFilter(&v39);
      LOBYTE(v29) = 0;
      v18 = PreferencesOutputs.subscript.setter();
      *&v29 = v26;
      DWORD2(v29) = v27;
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v26, v28);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

      v10 = v23;
      v11 = v24;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    *v41 = v58;
    *&v41[16] = v59;
    *&v41[32] = v60;
    *&v41[48] = v61;
    v39 = v56;
    v40 = v57;
    return (a3)();
  }

  return result;
}

uint64_t closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v6 = a1[1];
  v21 = a1[2];
  v22 = v5;
  v23 = a1[4];
  v7 = a1[1];
  v19 = *a1;
  v20 = v7;
  v9 = a1[3];
  v8 = a1[4];
  v31 = v21;
  v32 = v9;
  v33 = v8;
  v24 = *(a1 + 20);
  v10 = *(a1 + 15);
  v34 = *(a1 + 20);
  v29 = v19;
  v30 = v6;
  outlined init with copy of _ViewInputs(a1, v27);
  *&v29 = __PAIR64__(_ViewInputs.position.getter(), v10);
  *(&v29 + 1) = a2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v25, &v29);
  a3(v11, &v13);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v29 = v19;
  v30 = v20;
  return outlined destroy of _ViewInputs(&v29);
}

uint64_t HoverEffectResponderFilter.responder.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = *(v0 + 136);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = v4;
    v16 = *(v0 + 104);
    v17 = *(v0 + 120);
    v5 = *(v0 + 56);
    v12 = *(v0 + 40);
    v13 = v5;
    v6 = *(v0 + 128);
    type metadata accessor for HoverEffectResponder(0);
    v7 = swift_allocObject();
    *(v7 + 296) = 3;
    *(v7 + 300) = 0;
    *(v7 + 304) = 1;
    *(v7 + 224) = 0u;
    *(v7 + 240) = 0u;
    *(v7 + 256) = 0;
    *(v7 + 264) = 1;
    *(v7 + 272) = 0;
    *(v7 + 268) = 0;
    *(v7 + 280) = 0;
    *(v7 + 288) = 0;
    *(v7 + 216) = v6;
    outlined init with copy of _ViewInputs(&v12, v10);
    *(v7 + 268) = AGCreateWeakAttribute();
    v10[2] = v14;
    v10[3] = v15;
    v10[4] = v16;
    v11 = v17;
    v10[0] = v12;
    v10[1] = v13;
    v8 = v0;
    v1 = DefaultLayoutViewResponder.init(inputs:)();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v8 + 144) = v1;
  }

  return v1;
}

uint64_t HoverEffectResponderFilter.updateValue()()
{
  v39 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v2 = v1;
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  v7 = v6;
  v34 = v5[1];
  v35 = *v5;
  if (((v2 | v6) & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    v8 = HoverEffectResponderFilter.responder.getter();
    v38 = v34;
    v37 = v35;
    *(v8 + 224) = MEMORY[0x18D00B390]();
    *(v8 + 232) = v9;

    v10 = HoverEffectResponderFilter.responder.getter();
    *(v10 + 240) = v3;
    *(v10 + 248) = v4;

    v11 = HoverEffectResponderFilter.responder.getter();
    *(v11 + 256) = AGCreateWeakAttribute();
  }

  v12 = HoverEffectResponderFilter.responder.getter();
  *(v12 + 264) = *AGGraphGetValue();

  v13 = HoverEffectResponderFilter.responder.getter();
  *(v13 + 304) = *AGGraphGetValue();

  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  *(HoverEffectResponderFilter.responder.getter() + 300) = v21;

  *(HoverEffectResponderFilter.responder.getter() + 296) = v17;

  HoverEffectResponderFilter.responder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v22)
  {

    MultiViewResponder.children.setter();
  }

  v23 = HoverEffectResponderFilter.responder.getter();
  v24 = AGGraphGetValue();
  v25 = v4 - v24[1];
  *(v23 + 280) = v3 - *v24;
  *(v23 + 288) = v25;

  if (AGGraphGetOutputValue() && ((v20 & 1) != 0 || (v16 & 1) != 0 || (v7 & 1) != 0 || (v2 & 1) != 0))
  {
    v26 = HoverEffectResponderFilter.responder.getter();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = *(v26 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v30 = type metadata accessor for PointerHost();
      (*(v28 + 16))(v36, v30, v30, ObjectType, v28);
      swift_unknownObjectRelease();
      if (v36[0])
      {
        v31 = v36[1];
        LOBYTE(v36[0]) = 17;
        *(swift_allocObject() + 24) = v31;
        swift_unknownObjectWeakInit();

        static Update.enqueueAction(reason:_:)();

        swift_unknownObjectRelease();
      }
    }
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18CD69590;
    *(v33 + 32) = HoverEffectResponderFilter.responder.getter();
    v36[0] = v33;
    AGGraphSetOutputValue();
  }

  return result;
}

double closure #1 in HoverEffectResponderFilter.updateValue()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double HoverEffectResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter()
{
  result = lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter;
  if (!lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffectResponderFilter, &unk_1EFFB06B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter);
  }

  return result;
}

unint64_t type metadata accessor for PointerHost()
{
  result = lazy cache variable for type metadata for PointerHost;
  if (!lazy cache variable for type metadata for PointerHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PointerHost);
  }

  return result;
}

double destroy for HoverEffectResponderFilter(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  v5 = *(a1 + 136);
  *(a1 + 136) = v4;
  v6 = v4;

  *(a1 + 144) = *(a2 + 144);

  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}