uint64_t CoreViewRemoveFromSuperview(int a1, void *a2)
{
  if (a1)
  {
    return [a2 removeFromSuperview];
  }

  else
  {
    return [a2 removeFromSuperlayer];
  }
}

void specialized MutableCollection.swapAt(_:_:)(unint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), __n128 a4)
{
  if (a1 != a2)
  {
    v9 = *v4;
    if ((*v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AC03C0](a1, *v4, a4);
      v11 = MEMORY[0x193AC03C0](a2, v9);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 > a1)
      {
        if (v10 > a2)
        {
          v5 = *(v9 + 32 + 8 * a1);
          v11 = *(v9 + 32 + 8 * a2);

LABEL_7:
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
          {
            v9 = a3(v9);
            v12 = (v9 >> 62) & 1;
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v13 = v9 & 0xFFFFFFFFFFFFFF8;
          *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v11;

          if ((v9 & 0x8000000000000000) == 0 && !v12)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v9 = a3(v9);
          v13 = v9 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v13 + 16) > a2)
            {
              *(v13 + 8 * a2 + 32) = v5;

              *v4 = v9;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t specialized DynamicContainerInfo.tryRemovingItem(at:disableTransitions:)(unint64_t a1, char a2)
{
  v5 = *(v2 + 136);
  v6 = v5 + 8 * a1;
  v7 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v8 = *(v6 + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v8 = MEMORY[0x193AC03C0](a1, *(v2 + 136));
LABEL_5:
  swift_beginAccess();
  v9 = *(v8 + 84);

  if (v9 > 2)
  {
    return 0;
  }

  if (v9 == 1)
  {
    if (a2)
    {
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = *(MEMORY[0x193AC03C0](a1, v5) + 48);
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = *(v2 + 188);
        if ((v11 + 1) > 1)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 1;
        }

        *(v2 + 188) = v12;
        v13 = MEMORY[0x193AC03C0](a1, v5);
LABEL_31:
        *(v13 + 72) = v12;

        ++*(v2 + 160);
        if (v7)
        {
          v19 = MEMORY[0x193AC03C0](a1, v5);
LABEL_36:
          swift_beginAccess();
          *(v19 + 84) = 2;

          if (v7)
          {
            if (!*(MEMORY[0x193AC03C0](a1, v5) + 56))
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          if ((a1 & 0x8000000000000000) == 0)
          {
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
            {
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v23 = *(v6 + 32);

            if (!*(v23 + 56))
            {
              goto LABEL_39;
            }

LABEL_38:

            swift_weakAssign();
LABEL_39:

            specialized static GraphHost.currentHost.getter();
            AGGraphGetCurrentAttribute();
            v20 = AGCreateWeakAttribute();
            type metadata accessor for ViewGraph();
            swift_dynamicCastClassUnconditional();
            type metadata accessor for DynamicAnimationListener();
            v21 = swift_allocObject();
            swift_weakInit();
            *(v21 + 32) = 0;
            swift_weakAssign();

            *(v21 + 24) = v20;
            if (v7)
            {
              v22 = MEMORY[0x193AC03C0](a1, v5);
LABEL_48:
              *(v22 + 56) = v21;

              ++*(v21 + 32);
              v24 = 17;

              static Update.enqueueAction(reason:_:)(&v24, partial apply for closure #1 in DynamicContainerInfo.tryRemovingItem(at:disableTransitions:), v21);

              return 0;
            }

            if ((a1 & 0x8000000000000000) == 0)
            {
              if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
              {
                v22 = *(v6 + 32);

                goto LABEL_48;
              }

              goto LABEL_64;
            }

            goto LABEL_62;
          }

          goto LABEL_59;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v19 = *(v6 + 32);

          goto LABEL_36;
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      goto LABEL_22;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        if (*(*(v5 + 32 + 8 * a1) + 48))
        {
          v18 = *(v2 + 188);
          if ((v18 + 1) > 1)
          {
            v12 = v18 + 1;
          }

          else
          {
            v12 = 1;
          }

          *(v2 + 188) = v12;
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
            goto LABEL_60;
          }

          goto LABEL_31;
        }

LABEL_22:
        specialized DynamicContainerInfo.eraseItem(at:)(a1);
        return 1;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v9 != 2)
  {
LABEL_66:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v7)
  {
    v14 = MEMORY[0x193AC03C0](a1, v5);
    goto LABEL_20;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v14 = *(v6 + 32);

LABEL_20:
  v15 = *(v14 + 56);

  if (!v15)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = *(v15 + 32);

  if (!v16)
  {
    goto LABEL_22;
  }

  return 0;
}

void specialized Array.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, Swift::Int a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *v6 >> 62;
  if (!v13)
  {
    if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a5)
    {
      goto LABEL_3;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__CocoaSet.count.getter() < a5)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (a5 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < a6)
  {
    goto LABEL_30;
  }

  if (a6 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_12:

    goto LABEL_16;
  }

  if (a6 < a5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a5 == a6)
  {
    goto LABEL_12;
  }

  if (a5 >= a6)
  {
LABEL_34:
    __break(1u);
    return;
  }

  type metadata accessor for DynamicContainer.ItemInfo();

  v15 = a5;
  do
  {
    v16 = v15 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v15);
    v15 = v16;
  }

  while (a6 != v16);
LABEL_16:

  if (v13)
  {
    _CocoaArrayWrapper.subscript.getter();
    v18 = v20;
    v19 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v19 = a5;
  }

  if (v18 + 8 * v19 == a2 + 8 * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_33;
  }

LABEL_20:

  specialized Array.replaceSubrange<A>(_:with:)(a5, a6, a1, a2, a3, a4, v17);
}

uint64_t StoredLocationBase.BeginUpdate.combine<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v27 = 1;
    v17 = type metadata accessor for Optional();
    (*(*(v17 - 8) + 8))(&v26, v17);
    return 0;
  }

  v27 = 0;
  v12 = *(a2 - 8);
  (*(v12 + 32))(v28, &v26, a2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_8:
    (*(v12 + 8))(v28, a2);
    return 0;
  }

  v14 = Strong;
  v15 = swift_weakLoadStrong();
  if (!v15)
  {

    goto LABEL_8;
  }

  v16 = v15;

  if (v16 == v14)
  {
    swift_beginAccess();
    v19 = *(v14 + 16);
    v22 = type metadata accessor for StoredLocationBase.Data(0, v4, v20, v21);
    v25[0] = (*(*(v22 - 8) + 80) + 20) & ~*(*(v22 - 8) + 80);
    v25[1] = v22;

    os_unfair_lock_lock(v19 + 4);
    v23 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6310], v23);
    swift_getWitnessTable(MEMORY[0x1E69E6348], v23, WitnessTable);
    RangeReplaceableCollection<>.removeLast()();
    (*(v5 + 8))(v7, v4);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(v19 + 4);

    (*(v12 + 8))(v28, a2);

    return 1;
  }

  (*(v12 + 8))(v28, a2);

  return 0;
}

uint64_t outlined init with take of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL closure #2 in closure #1 in static Transaction.dispatchPending()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DispatchTime();
  type metadata accessor for Transaction.PendingListeners.WeakListener(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E8000]);
  return (dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0;
}

void specialized DynamicLayoutComputer.updateValue()()
{
  AGGraphGetValue();
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 4);
    Value = AGGraphGetValue();
    v3 = *(Value + 8);
    v4 = *(Value + 32);
    v5 = *(Value + 40);
    v6 = *(Value + 44);
    v8[0] = *Value;
    v8[1] = v3;
    v9 = *(Value + 16);
    v10 = v4;
    v11 = v5;
    v12 = v6;

    v7 = specialized DynamicLayoutMap.attributes(info:)(v8);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v1, v7);
  }
}

{
  Value = AGGraphGetValue();
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    v3 = *Value;
    v4 = AGGraphGetValue();
    v5 = *(v4 + 8);
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10[0] = *v4;
    v10[1] = v5;
    v11 = *(v4 + 16);
    v12 = v6;
    v13 = v7;
    v14 = v8;

    v9 = specialized DynamicLayoutMap.attributes(info:)(v10);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v3, v2, v9);
  }
}

{
  Value = AGGraphGetValue();
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    v3 = *Value;

    v4 = AGGraphGetValue();
    v5 = *(v4 + 8);
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    v8 = *(v4 + 44);
    v10[0] = *v4;
    v10[1] = v5;
    v11 = *(v4 + 16);
    v12 = v6;
    v13 = v7;
    v14 = v8;

    v9 = specialized DynamicLayoutMap.attributes(info:)(v10);

    specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v3, v2, v9);
  }
}

void specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = CurrentAttribute;
    v7 = CurrentAttribute | (CurrentAttribute << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v2, v7, a1, v6, a2);
  }
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v18[39] = *MEMORY[0x1E69E9840];
  v14[5] = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      v18[0] = v9;
      v18[1] = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5(a3, a4, a5, v18);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5(v18, v14);
    AGGraphSetOutputValue();
  }
}

uint64_t closure #1 in ValueActionDispatcher.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v18 = a1;
  v19 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(a3 + 24);
  v14(a2, a3, v11);
  (v14)(a2, a3);
  swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v9, AssociatedTypeWitness);
  result = (v16)(v13, AssociatedTypeWitness);
  *v19 = (v15 & 1) == 0;
  return result;
}

uint64_t closure #1 in AnimationBox.isEqual(to:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v5 = *(*a2 + 160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v14 = *(v6 + 16);
  (v14)(&v17 - v11, *v13 + *(**v13 + 176), v5, v10);
  v14(v8, &v3[*(*v3 + 176)], v5);
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  result = (v15)(v12, v5);
  *a3 = v3 & 1;
  return result;
}

uint64_t AnimationBox.isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnimationBox(0, *(*v4 + 160), *(*v4 + 168), a4);
  if (swift_dynamicCastClass())
  {
  }

  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnimationBox.isEqual(to:), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v5, &v7);

  return v7 & 1;
}

uint64_t static _AnimationModifier.== infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (*a1)
  {
    if (v6)
    {
      v7 = *(**a1 + 104);

      v9 = v7(v8);

      if (v9)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v6)
  {
LABEL_4:
    type metadata accessor for _AnimationModifier(0, a3, a4, a4);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = (v3 + 16);
  v14 = *(v3 + 16);
  v15 = v14[2];
  if (!v15)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    v14 = result;
  }

  if (v15 > v14[2])
  {
    __break(1u);
    return result;
  }

  v17 = &v14[5 * v15];
  v18 = v17[2];
  v19 = v17[3];
  __swift_mutable_project_boxed_opaque_existential_1((v17 - 1), v18);
  result = (*(v19 + 16))(a1, a2, v25, v18, v19);
  *v13 = v14;
  if ((result & 1) == 0)
  {
LABEL_6:
    v20 = *(v6 + 16);
    v20(v12, a1, a2, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *v13 = v14;
    }

    v23 = v14[2];
    v22 = v14[3];
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
      *v13 = v14;
    }

    (v20)(v8, v12, a2);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, v8, v13, a2, v25);
    result = (*(v6 + 8))(v12, a2);
    *v13 = v14;
  }

  return result;
}

void Image.Resolved.modifyTransition(state:to:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v23[4] = a2[4];
  v24[0] = v4;
  *(v24 + 12) = *(a2 + 92);
  v5 = a2[1];
  v23[0] = *a2;
  v23[1] = v5;
  v6 = a2[3];
  v23[2] = a2[2];
  v23[3] = v6;
  v7 = v2[1];
  v25[0] = *v2;
  v25[1] = v7;
  v8 = v2[2];
  v9 = v2[3];
  *(v26 + 12) = *(v2 + 92);
  v10 = v2[5];
  v25[4] = v2[4];
  v26[0] = v10;
  v25[2] = v8;
  v25[3] = v9;
  v11 = *&v25[0];
  v12 = BYTE8(v25[0]);
  v13 = *&v23[0];
  v14 = BYTE8(v23[0]);
  if (BYTE8(v25[0]) <= 1u)
  {
    if (BYTE8(v25[0]))
    {
      if (BYTE8(v25[0]) != 1)
      {
        goto LABEL_17;
      }

      if (BYTE8(v23[0]) != 1)
      {
        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 1;
        goto LABEL_20;
      }
    }

    else if (BYTE8(v23[0]))
    {
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = 0;
      goto LABEL_20;
    }

    v16 = *&v25[0] == *&v23[0];
  }

  else
  {
    if (BYTE8(v25[0]) == 2)
    {
      if (BYTE8(v23[0]) == 2)
      {
        if (*(*&v23[0] + 44) != 1)
        {
          v17 = 0x8000000001;
          v19 = *a1;
          v20 = *(a1 + 8) | (*(a1 + 12) << 32);
          v21 = *(a1 + 13);
          outlined init with copy of GraphicsImage(v23, v22);
          outlined init with copy of GraphicsImage(v25, v22);
          outlined consume of ContentTransition.Storage(v19, v20, v21);
          outlined consume of GraphicsImage.Contents?(v11, 2u);
          outlined consume of GraphicsImage.Contents?(v13, 2u);
LABEL_23:
          *a1 = v17;
          *(a1 + 12) = 3;
          *(a1 + 8) = 0x2000000;
          return;
        }

        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 2;
        v14 = 2;
      }

      else
      {
        outlined init with copy of GraphicsImage(v23, v22);
        outlined init with copy of GraphicsImage(v25, v22);
        v15 = 2;
      }

      goto LABEL_20;
    }

    if (BYTE8(v25[0]) != 3)
    {
      if (BYTE8(v25[0]) == 255)
      {
        outlined init with copy of GraphicsImage(v23, v22);
        v15 = -1;
LABEL_20:
        outlined consume of GraphicsImage.Contents?(v11, v15);
        outlined consume of GraphicsImage.Contents?(v13, v14);
LABEL_21:
        if ((*(a1 + 24) & 2) != 0)
        {
          return;
        }

        outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
        v17 = 0x8000000002;
        goto LABEL_23;
      }

LABEL_17:
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = v12;
      goto LABEL_20;
    }

    if (BYTE8(v23[0]) != 3)
    {
      outlined init with copy of GraphicsImage(v23, v22);
      outlined init with copy of GraphicsImage(v25, v22);
      v15 = 3;
      goto LABEL_20;
    }

    v16 = *(*&v25[0] + 16) == *(*&v23[0] + 16);
  }

  v18 = v16;
  outlined init with copy of GraphicsImage(v23, v22);
  outlined init with copy of GraphicsImage(v25, v22);
  outlined consume of GraphicsImage.Contents?(v11, v12);
  outlined consume of GraphicsImage.Contents?(v13, v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }
}

uint64_t assignWithCopy for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

void *assignWithCopy for ClosestFitCache(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v54 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *a1 & 3;
  result = CoreViewSubviewsCount(v6, a2);
  if (result < 0)
  {
    goto LABEL_27;
  }

  v8 = result;
  if (result)
  {
    v9 = result;
    v42 = v6;
    v41 = result;
    while (v8 >= v9)
    {
      --v9;
      LOBYTE(v46) = v6;
      v11 = CoreViewSubviewAtIndex(v6, v4, v9, &v46);
      v10 = v5;
      if (v46 != v6)
      {
        if (one-time initialization token for caLayer != -1)
        {
          swift_once();
        }

        v10 = static DisplayList.ViewUpdater.Platform.caLayer;
      }

      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v13)
      {
        v43 = v10;
        v14 = v5;
        v15 = v4;
        v16 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v3[1];
        *&v46 = v18;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v18 = v46;
        }

        v19 = v16;
        v20 = *(v18 + 56) + 20 * v16;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 17);
        specialized _NativeDictionary._delete(at:)(v19, v18);
        v3[1] = v18;
        if (v24)
        {
          v25 = 256;
        }

        else
        {
          v25 = 0;
        }

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22, v25 | v23);
        v4 = v15;
        v5 = v14;
        v6 = v42;
        v8 = v41;
        v10 = v43;
        if (v27)
        {
          v28 = v26;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v30 = *v3;
          v45 = *v3;
          if (!v29)
          {
            specialized _NativeDictionary.copy()();
            v30 = v45;
          }

          v31 = (*(v30 + 56) + (v28 << 7));
          v33 = v31[2];
          v32 = v31[3];
          v34 = v31[1];
          v46 = *v31;
          v47 = v34;
          v48 = v33;
          v49 = v32;
          v35 = v31[4];
          v36 = v31[5];
          v37 = v31[7];
          v52 = v31[6];
          v53 = v37;
          v50 = v35;
          v51 = v36;
          specialized _NativeDictionary._delete(at:)(v28, v30);
          *v3 = v30;
          v38 = v50;
          if (v50 <= 0x12u && ((1 << v50) & 0x57C21) != 0)
          {
            v39 = v46;
            v44 = v46;
            DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(&v44, *(&v47 + 1));
            if (v38 == 14)
            {
              v40 = CoreViewMaskView((v39 & 3), *(&v46 + 1));
              if (v40)
              {
                v44 = v39;
                DisplayList.ViewUpdater.ViewCache.removeChildren(platform:container:)(&v44, v40);
                swift_unknownObjectRelease();
              }
            }
          }

          outlined destroy of DisplayList.ViewUpdater.ViewInfo(&v46);
          v10 = v43;
        }
      }

      CoreViewRemoveFromSuperview(v10 & 3, v11);
      result = swift_unknownObjectRelease();
      if (!v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v9 setDefaultColorSpace_];
  [v9 setDeviceScale_];
  LODWORD(v10) = 1.0;
  v11 = [v9 beginCGContextWithAlpha_];
  v12 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v12 push];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static TextDrawingContext.shared;
  if (v4[27])
  {
    v14 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v14 = 0;
  }

  (*(*v4 + 296))(1, v14, v13, a1, 0.0, 0.0, a2, a3, a2, a3);
  [v12 pop];

  [v9 endCGContext];
  v15 = [v9 moveContents];

  return v15;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance BezierAnimation(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v4 = *(a1 + 24);
  v8[0] = *(a1 + 8);
  v8[1] = v4;
  v8[2] = *(a1 + 40);
  v5 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v5;
  v7[2] = *(a2 + 40);
  return specialized static GlassContainer.TransitionSettings.== infix(_:_:)(v8, v7);
}

BOOL specialized static GlassContainer.TransitionSettings.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t assignWithCopy for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue()(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v33 = a4;
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _EnvironmentKeyWritingModifier(255, v8, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v27 - v14;
  v31 = a1;
  v35 = *a1;
  v16 = *(v12 + 16);
  v29 = a2;
  v16(v27 - v14, a2, TupleTypeMetadata2, v13);
  v17 = *v15;
  v18 = *(v10 - 8);
  v19 = *(v18 + 8);
  v20 = v18 + 8;

  v27[1] = v20;
  v28 = v19;
  v19(v15, v10);
  v34 = v17;
  type metadata accessor for WritableKeyPath();
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v20)
  {
    v21 = *(v10 + 28);
    (v16)(v15, v29, TupleTypeMetadata2);
    v22 = v32;
    v23 = v30;
    (*(v32 + 16))(v30, &v15[*(v10 + 28)], a3);
    v24 = v28(v15, v10);
    MEMORY[0x1EEE9AC00](v24);
    v27[-4] = a3;
    v27[-3] = v23;
    LODWORD(v27[-2]) = 2;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31 + v21, partial apply for closure #1 in compareValues<A>(_:_:options:), &v27[-6], a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v25);
    LOBYTE(v21) = v35;
    (*(v22 + 8))(v23, a3);
    v26 = v21 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  *v33 = v26 & 1;
}

void key path getter for EnvironmentValues.backgroundMaterial : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v3, v7);

    v4 = v7[0];
    v5 = v7[1];
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*a1);
    if (v6)
    {
      v4 = v6[9];
      v5 = v6[10];
      outlined copy of Material?(v4, v5);
    }

    else
    {
      v4 = 0;
      v5 = 255;
    }
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t closure #2 in KeyPath.makeGetFunction()(uint64_t a1, void *a2)
{
  v2 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, v4);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s7SwiftUI16IndirectOptionalOAASQRzlE2eeoiySbACyxG_AEtFZAA5ImageVAAE13LayoutMetricsV_Tt1B5(float64x2_t *a1, float64x2_t *a2)
{
  if (a1)
  {
    if (!a2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1) == 0)
    {
      return 0;
    }

    if (a1[3].f64[0] != a2[3].f64[0] || a1[3].f64[1] != a2[3].f64[1])
    {
      return 0;
    }

    return a1[4].f64[0] == a2[4].f64[0] && a1[4].f64[1] == a2[4].f64[1];
  }

  return !a2;
}

BOOL specialized static _ShapeStyle_ResolverMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 10);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 10);
  if (!*a1)
  {
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v3 == v6;
    }

    if (v12)
    {
      return v4 == v7;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for NSBundle();
  v8 = v5;
  v9 = v2;
  v10 = static NSObject.== infix(_:_:)();

  result = 0;
  if ((v10 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

void specialized _ColorMatrix.init(_:premultiplied:)(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[4];
  v6 = a1[6];
  v59 = a1[5];
  v60[0] = v6;
  *(v60 + 12) = *(a1 + 108);
  v7 = a1[1];
  v55[0] = *a1;
  v55[1] = v7;
  v8 = a1[3];
  v56 = a1[2];
  v57 = v8;
  v58 = v5;
  v61[2] = v56;
  v61[3] = v8;
  v61[0] = v55[0];
  v61[1] = v7;
  *(v62 + 12) = *(v60 + 12);
  v61[5] = v59;
  v62[0] = v6;
  v61[4] = v5;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v61))
  {
    case 1u:
    case 2u:
    case 3u:
    case 0x12u:
    case 0x15u:
    case 0x16u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      outlined destroy of GraphicsFilter(v55);
      goto LABEL_4;
    case 6u:
      v25 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (*(v25 + 80) != (a2 & 1))
      {
        goto LABEL_4;
      }

      v14 = *v25;
      v21 = *(v25 + 4);
      v9 = *(v25 + 12);
      v15 = *(v25 + 16);
      v10 = *(v25 + 20);
      v16 = *(v25 + 24);
      v22 = *(v25 + 28);
      v18 = *(v25 + 36);
      v23 = *(v25 + 40);
      v19 = *(v25 + 48);
      v11 = *(v25 + 52);
      v20 = *(v25 + 56);
      v13 = *(v25 + 60);
      v12 = *(v25 + 76);
      v17 = 0;
      break;
    case 7u:
      v24 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      specialized _ColorMatrix.init(colorMultiply:premultiplied:)(a2 & 1, &v41, *v24, v24[1], v24[2], v24[3]);
      goto LABEL_31;
    case 8u:
      v26 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      specialized _ColorMatrix.init(alphaMultiply:premultiplied:)(a2 & 1, &v41, *v26, v26[1], v26[2], v26[3]);
      goto LABEL_31;
    case 9u:
      v29 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      specialized _ColorMatrix.init(hueRotation:)(&v41, *v29);
      goto LABEL_31;
    case 0xAu:
      v37 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v11 = 0;
      v12 = 0;
      v38 = *v37;
      if (*v37 <= 0.0)
      {
        v38 = 0.0;
      }

      v39 = v38;
      v14 = (v39 * 0.7873) + 0.2126;
      v21 = vsub_f32(0x3D93DD983F371759, vmul_n_f32(0x3D93DD983F371759, v39));
      v16 = (v39 * 0.2848) + 0.7152;
      v19 = (v39 * 0.9278) + 0.0722;
      v23 = vdup_lane_s32(v21, 0);
      *v23.i32 = 0.2126 - (v39 * 0.2126);
      v13 = xmmword_18DD85540;
      v10 = *v23.i32;
      v22 = vzip2_s32(v21, 0);
      v15 = 0.0;
      v18 = 0.0;
      v20 = 0.0;
      v17 = 0;
      break;
    case 0xBu:
      v27 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v21 = 0;
      v15 = *v27;
      v14 = 1.0;
      v16 = 1.0;
      v18 = v15;
      v19 = 1.0;
      goto LABEL_18;
    case 0xCu:
      v28 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v14 = *v28;
      v15 = (1.0 - v14) * 0.5;
      v21 = 0;
      v16 = v14;
      v18 = v15;
      v19 = v14;
LABEL_18:
      v20 = v15;
      goto LABEL_19;
    case 0xDu:
      v30 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v31 = *v30;
      v32 = 1.0;
      v33 = 1.0;
      v34 = 1.0;
      v35 = 1.0;
      v36 = 0.0;
      goto LABEL_30;
    case 0xEu:
      v40 = _s7SwiftUI14GraphicsFilterOWOj6_(v61);
      if (a2)
      {
        goto LABEL_4;
      }

      v31 = *(v40 + 20);
      v36 = *(v40 + 24);
      v34 = *(v40 + 8);
      v35 = *(v40 + 12);
      v32 = *v40;
      v33 = *(v40 + 4);
LABEL_30:
      specialized _ColorMatrix.init(colorMonochrome:amount:bias:)(&v41, v32, v33, v34, v35, v31, v36);
LABEL_31:
      v14 = v41;
      v21 = v42;
      v9 = v43;
      v15 = v44;
      v10 = v45;
      v16 = v46;
      v22 = v47;
      v18 = v48;
      v23 = v49;
      v19 = v50;
      v11 = v51;
      v20 = v52;
      v13 = v53;
      v12 = v54;
      v17 = 0;
      break;
    case 0x17u:
      goto LABEL_4;
    case 0x18u:
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DE0AF20;
      v21 = 0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      goto LABEL_19;
    case 0x19u:
      if (a2)
      {
        goto LABEL_4;
      }

      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = xmmword_18DD85540;
      v21 = 0;
      v15 = 1.0;
      v14 = -1.0;
      v16 = -1.0;
      v18 = 1.0;
      v19 = -1.0;
      v20 = 1.0;
LABEL_19:
      v22 = 0;
      v23 = 0;
      v17 = 0;
      break;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v61);
LABEL_4:
      v9 = 0;
      v10 = 0.0;
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 1;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      break;
  }

  *a3 = v14;
  *(a3 + 4) = v21;
  *(a3 + 12) = v9;
  *(a3 + 16) = v15;
  *(a3 + 20) = v10;
  *(a3 + 24) = v16;
  *(a3 + 28) = v22;
  *(a3 + 36) = v18;
  *(a3 + 40) = v23;
  *(a3 + 48) = v19;
  *(a3 + 52) = v11;
  *(a3 + 56) = v20;
  *(a3 + 60) = v13;
  *(a3 + 76) = v12;
  *(a3 + 80) = v17;
}

uint64_t ImageResolutionContext.willUpdateVectorGlyph(to:variableValue:)(id a1, double a2)
{
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 1;
  }

  v6 = type metadata accessor for ImageResolutionContext(0);
  if ((*(v2 + *(v6 + 40)) & 8) != 0 || *(v2 + *(v6 + 28)) == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  v8 = v3;
  v9 = [v8 glyph];
  if (!v9 || (v10 = v9, v9, v10 != a1))
  {
    AGGraphClearUpdate();
    v11 = *AGGraphGetValue();

    AGGraphSetUpdate();
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
    if (v12 && (v12[9] & 1) != 0)
    {
      goto LABEL_9;
    }

    v13 = *v2;
    if (*(v2 + 8))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v13, &aBlock);

      v14 = aBlock;
      v15 = DWORD2(aBlock) | (BYTE12(aBlock) << 32);
      v16 = BYTE13(aBlock);
      v17 = BYTE14(aBlock);
      v18 = v105;
    }

    else
    {
      v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v13);
      if (v20)
      {
        v14 = v20[9];
        v21 = *(v20 + 84);
        v22 = *(v20 + 20);
        v15 = v22 | (v21 << 32);
        v16 = *(v20 + 85);
        v17 = *(v20 + 86);
        v23 = v20[11];
        *&aBlock = v14;
        BYTE12(aBlock) = v21;
        DWORD2(aBlock) = v22;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v14 = static ContentTransition.State.defaultValue;
        v15 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v16 = BYTE13(static ContentTransition.State.defaultValue);
        v17 = BYTE14(static ContentTransition.State.defaultValue);
        v23 = off_1ED536620;
        *&aBlock = static ContentTransition.State.defaultValue;
        BYTE12(aBlock) = BYTE12(static ContentTransition.State.defaultValue);
        DWORD2(aBlock) = DWORD2(static ContentTransition.State.defaultValue);
      }

      outlined copy of ContentTransition.Storage(v14, v15, v16);
      v18 = v23;
    }

    v103 = v16;
    v100 = v17;
    if (v16)
    {
      v28 = outlined copy of ContentTransition.Storage(v14, v15, v16);
      v29 = v14;
      v30 = v15;
      if (v16 != 2)
      {
        goto LABEL_32;
      }

LABEL_26:
      v31 = [v8 glyph];
      if (!v31)
      {
LABEL_29:
        LOBYTE(v16) = 2;
        goto LABEL_32;
      }

      v32 = v31;
      if ([v31 canBeInterpolatedWith_])
      {

        goto LABEL_29;
      }

      v102 = v15;
      outlined consume of ContentTransition.Storage(v29, v30, 2);
      v60 = *MEMORY[0x1E69C7250];
      *(&v105 + 1) = MEMORY[0x1E69E7668];
      LODWORD(aBlock) = v29;
      outlined init with take of Any(&aBlock, &v109);
      v61 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v61;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v60, isUniquelyReferenced_nonNull_native);
      v63 = v108;
      v64 = *MEMORY[0x1E69C7218];
      *(&v105 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(aBlock) = BYTE4(v29) & 1;
      outlined init with take of Any(&aBlock, &v109);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v63;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v64, v65);
      v66 = v108;
      v67 = *MEMORY[0x1E69C7260];
      *(&v105 + 1) = MEMORY[0x1E69E6448];
      LODWORD(aBlock) = v30;
      outlined init with take of Any(&aBlock, &v109);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v66;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v67, v68);
      v69 = v108;
      if (v18)
      {
        v70 = v18;
      }

      else
      {
        v91 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
        if (!v91 || (v70 = v91[9]) == 0)
        {
LABEL_66:
          v78 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
          if (v78)
          {
            v79 = v78[9];
          }

          else
          {
            v79 = 0;
          }

          v92 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
          if (v92)
          {
            v93 = v92[9];
          }

          else
          {
            v93 = 0;
          }

          if (v79 | v93)
          {
            v94 = swift_allocObject();
            *(v94 + 16) = v79;
            *(v94 + 24) = v93;
            v106 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
            v107 = v94;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v105 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
            *(&v105 + 1) = &block_descriptor_42;
            v95 = _Block_copy(&aBlock);

            v101 = *MEMORY[0x1E69C7230];
            *(&v105 + 1) = swift_getObjectType();
            *&aBlock = v95;
            outlined init with take of Any(&aBlock, &v109);
            _Block_copy(v95);
            v96 = swift_isUniquelyReferenced_nonNull_native();
            v108 = v69;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v101, v96);
            _Block_release(v95);
          }

          type metadata accessor for RBSymbolAnimationOptionKey(0);
          lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v98 = [v8 addAnimation:6 options:isa];

          if (v98)
          {
            if (v79)
            {
              v99 = (*(*v79 + 88))();
            }

            if (v93)
            {
              (*(*v93 + 88))(v99);
            }
          }

          else
          {
          }

          goto LABEL_54;
        }
      }

      v71 = *MEMORY[0x1E69C7268];
      v72 = objc_allocWithZone(MEMORY[0x1E69C7098]);

      v73 = [v72 init];
      (*(*v70 + 96))(&aBlock);
      v109 = aBlock;
      v110 = v105;
      v111 = v106;
      v112 = v107;
      Animation.Function.apply(to:)(v73, *&aBlock, *&v105, v74, v75, v76);
      outlined consume of Animation.Function(v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112);
      *(&v105 + 1) = type metadata accessor for RBAnimation();
      *&aBlock = v73;
      outlined init with take of Any(&aBlock, &v109);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v69;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v71, v77);

      v69 = v108;
      goto LABEL_66;
    }

    if (((v14 >> 38) & 3) <= 1)
    {
      goto LABEL_31;
    }

    if (v14 > 0x8000000001)
    {
      v33 = v18;
      outlined copy of ContentTransition.Storage(v14, v15, 0);
      LOBYTE(v16) = 0;
      v30 = v15;
      v29 = v14;
      if (v18)
      {
        goto LABEL_33;
      }

      goto LABEL_59;
    }

    if (v14 ^ 0x8000000000 | v15 & 0xFFFFFF)
    {
LABEL_31:
      outlined copy of ContentTransition.Storage(v14, v15, 0);
      LOBYTE(v16) = 0;
      v30 = v15;
      v29 = v14;
      goto LABEL_32;
    }

    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v80 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_75:
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v81 = &static ContentTransition.identity;
        goto LABEL_111;
      }
    }

    else if (static Semantics.forced < v80)
    {
      goto LABEL_75;
    }

    if (one-time initialization token for interpolate != -1)
    {
      swift_once();
    }

    v81 = &static ContentTransition.interpolate;
LABEL_111:
    v100 = *(v81 + 14);
    v16 = *(v81 + 13);
    v30 = *(v81 + 2) | (*(v81 + 12) << 32);
    v29 = *v81;
    v28 = outlined copy of ContentTransition.Storage(*v81, v30, *(v81 + 13));
    if (v16 == 2)
    {
      goto LABEL_26;
    }

LABEL_32:
    v33 = v18;
    if (v18)
    {
LABEL_33:
      v102 = v15;
      v34 = v33;
      goto LABEL_34;
    }

LABEL_59:
    v59 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
    if (!v59 || (v34 = v59[9]) == 0)
    {

      outlined consume of ContentTransition.Storage(v14, v15, v103);
      outlined consume of ContentTransition.Storage(v29, v30, v16);
      return 0;
    }

    v102 = v15;

LABEL_34:
    v35 = *MEMORY[0x1E69C7268];
    v36 = objc_allocWithZone(MEMORY[0x1E69C7098]);

    v37 = [v36 init];
    (*(*v34 + 96))(&aBlock);
    v109 = aBlock;
    v110 = v105;
    v111 = v106;
    v112 = v107;
    Animation.Function.apply(to:)(v37, *&aBlock, *&v105, v38, v39, v40);
    outlined consume of Animation.Function(v109, *(&v109 + 1), v110, *(&v110 + 1), v111, v112);
    *(&v105 + 1) = type metadata accessor for RBAnimation();
    *&aBlock = v37;
    outlined init with take of Any(&aBlock, &v109);
    v41 = MEMORY[0x1E69E7CC8];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v41;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v35, v42);
    v43 = v108;
    if (one-time initialization token for interpolate != -1)
    {
      swift_once();
    }

    v44 = byte_1ED5280EE;
    *&aBlock = v29;
    BYTE12(aBlock) = BYTE4(v30);
    DWORD2(aBlock) = v30;
    BYTE13(aBlock) = v16;
    *&v109 = static ContentTransition.interpolate;
    WORD6(v109) = word_1ED5280EC;
    DWORD2(v109) = dword_1ED5280E8;
    outlined copy of ContentTransition.Storage(static ContentTransition.interpolate, dword_1ED5280E8 | (word_1ED5280EC << 32), SHIBYTE(word_1ED5280EC));
    v45 = specialized static ContentTransition.Storage.== infix(_:_:)(&aBlock, &v109);
    outlined consume of ContentTransition.Storage(v109, DWORD2(v109) | (BYTE12(v109) << 32), SBYTE13(v109));
    outlined consume of ContentTransition.Storage(aBlock, DWORD2(aBlock) | (BYTE12(aBlock) << 32), SBYTE13(aBlock));
    if (v45 & 1) == 0 || ((v100 ^ v44))
    {
      v46 = *MEMORY[0x1E69C7228];
      *(&v105 + 1) = MEMORY[0x1E69E7668];
      LODWORD(aBlock) = 1;
      outlined init with take of Any(&aBlock, &v109);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v46, v47);
      v43 = v108;
    }

    v48 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
    if (v48)
    {
      v49 = v48[9];
    }

    else
    {
      v49 = 0;
    }

    v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v11);
    if (v50)
    {
      v51 = v50[9];

      if (!(v49 | v51))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v51 = 0;
      if (!v49)
      {
LABEL_45:
        type metadata accessor for RBSymbolAnimationOptionKey(0);
        lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
        v56 = Dictionary._bridgeToObjectiveC()().super.isa;

        v57 = [v8 addAnimation:7 options:v56];

        if (v57)
        {
          if (v49)
          {
            v58 = (*(*v49 + 88))();
          }

          if (v51)
          {
            (*(*v51 + 88))(v58);
          }
        }

        else
        {
        }

LABEL_54:

        outlined consume of ContentTransition.Storage(v14, v102, v103);

LABEL_55:

        return 0;
      }
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v49;
    *(v52 + 24) = v51;
    v106 = partial apply for closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:);
    v107 = v52;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v105 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
    *(&v105 + 1) = &block_descriptor_7;
    v53 = _Block_copy(&aBlock);

    v54 = *MEMORY[0x1E69C7230];
    *(&v105 + 1) = swift_getObjectType();
    *&aBlock = v53;
    outlined init with take of Any(&aBlock, &v109);
    _Block_copy(v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v43;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v54, v55);
    _Block_release(v53);
    goto LABEL_45;
  }

  [v8 variableValue];
  if (v19 == a2)
  {
    goto LABEL_13;
  }

  AGGraphClearUpdate();
  v24 = *AGGraphGetValue();

  AGGraphSetUpdate();
  v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v24);
  if (!v25 || (v25[9] & 1) == 0)
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26RBSymbolAnimationOptionKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v24);
    if (v26)
    {
      v27 = v26[9];
    }

    else
    {
      v27 = 0;
    }

    v82 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v24);
    if (v82)
    {
      v83 = v82[9];
    }

    else
    {
      v83 = 0;
    }

    if (v27 | v83)
    {
      v84 = swift_allocObject();
      *(v84 + 16) = v27;
      *(v84 + 24) = v83;
      v106 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
      v107 = v84;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v105 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
      *(&v105 + 1) = &block_descriptor_49;
      v85 = _Block_copy(&aBlock);

      v86 = *MEMORY[0x1E69C7230];
      *(&v105 + 1) = swift_getObjectType();
      *&aBlock = v85;
      outlined init with take of Any(&aBlock, &v109);
      _Block_copy(v85);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v109, v86, v87);
      _Block_release(v85);
    }

    type metadata accessor for RBSymbolAnimationOptionKey(0);
    lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
    v88 = Dictionary._bridgeToObjectiveC()().super.isa;

    v89 = [v8 addAnimation:0 options:v88];

    if (v89)
    {
      if (v27)
      {
        v90 = (*(*v27 + 88))();
      }

      if (v83)
      {
        (*(*v83 + 88))(v90);
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

LABEL_9:

LABEL_13:

  return 0;
}

uint64_t assignWithCopy for Image.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128), v20);
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128), v23);
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v27 = *(a1 + 136);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26, v27);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v28 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v28;
  v29 = *(a1 + 176);
  v30 = *(a2 + 176);
  *(a1 + 176) = v30;
  v31 = v30;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  return a1;
}

uint64_t HomogenousDiscontiguousIndexLookupTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL specialized static Image.Resolved.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v65 = a1[4];
  v66[0] = v3;
  *(v66 + 12) = *(a1 + 92);
  v4 = a1[1];
  v62[0] = *a1;
  v62[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v63 = a1[2];
  v64 = v5;
  v8 = a2[3];
  v9 = a2[5];
  v70 = a2[4];
  v71[0] = v9;
  *(v71 + 12) = *(a2 + 92);
  v10 = a2[1];
  v67[0] = *a2;
  v67[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v68 = a2[2];
  v69 = v11;
  v14 = a1[5];
  v60 = v65;
  v61[0] = v14;
  *(v61 + 12) = *(a1 + 92);
  v56 = v7;
  v57 = v6;
  v16 = *(a1 + 14);
  v15 = *(a1 + 15);
  v18 = *(a1 + 16);
  v17 = *(a1 + 17);
  v49 = *(a1 + 18);
  v47 = *(a1 + 19);
  v45 = *(a1 + 160);
  v43 = *(a1 + 161);
  v58 = v63;
  v59 = v2;
  v19 = a2[5];
  v54 = v70;
  v55[0] = v19;
  *(v55 + 12) = *(a2 + 92);
  v20 = *(a1 + 41);
  v39 = *(a1 + 22);
  v37 = *(a1 + 186);
  v38 = *(a1 + 92);
  v22 = *(a2 + 14);
  v21 = *(a2 + 15);
  v24 = *(a2 + 16);
  v23 = *(a2 + 17);
  v48 = *(a2 + 18);
  v46 = *(a2 + 19);
  v44 = *(a2 + 160);
  v41 = *(a1 + 168);
  v42 = *(a2 + 161);
  v50 = v13;
  v51 = v12;
  v25 = *(a2 + 41);
  v40 = *(a2 + 168);
  v36 = *(a2 + 22);
  v34 = *(a2 + 186);
  v35 = *(a2 + 92);
  v52 = v68;
  v53 = v8;
  outlined init with copy of GraphicsImage(v62, v74);
  outlined init with copy of GraphicsImage(v67, v74);
  v26 = specialized static GraphicsImage.== infix(_:_:)(&v56, &v50);
  v72[4] = v54;
  v73[0] = v55[0];
  *(v73 + 12) = *(v55 + 12);
  v72[0] = v50;
  v72[1] = v51;
  v72[2] = v52;
  v72[3] = v53;
  outlined destroy of GraphicsImage(v72);
  v74[4] = v60;
  v75[0] = v61[0];
  *(v75 + 12) = *(v61 + 12);
  v74[0] = v56;
  v74[1] = v57;
  v74[2] = v58;
  v74[3] = v59;
  outlined destroy of GraphicsImage(v74);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
    if (v24 >> 1 == 0xFFFFFFFF)
    {
      outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
      goto LABEL_11;
    }

LABEL_7:
    outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined consume of AccessibilityImageLabel?(v22, v21, v24, v23);
    return 0;
  }

  *&v56 = v16;
  *(&v56 + 1) = v15;
  *&v57 = v18;
  *(&v57 + 1) = v17;
  if (v24 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined consume of AccessibilityImageLabel(v16, v15, v18, v17);
    goto LABEL_7;
  }

  *&v50 = v22;
  *(&v50 + 1) = v21;
  *&v51 = v24;
  *(&v51 + 1) = v23;
  outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
  outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
  v29 = outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
  v30 = static AccessibilityImageLabel.== infix(_:_:)(&v56, &v50, v29);
  outlined consume of AccessibilityImageLabel(v50, *(&v50 + 1), v51, *(&v51 + 1));
  outlined consume of AccessibilityImageLabel(v56, *(&v56 + 1), v57, *(&v57 + 1));
  outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
  if (!v30)
  {
    return 0;
  }

LABEL_11:
  if (v49)
  {
    if (v49 != v48)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v27 = 0;
  if (_s7SwiftUI16IndirectOptionalOAASQRzlE2eeoiySbACyxG_AEtFZAA5ImageVAAE13LayoutMetricsV_Tt1B5(v47, v46) && ((v45 ^ v44) & 1) == 0)
  {
    if (v43 == 3)
    {
      if (v42 == 3)
      {
        goto LABEL_22;
      }

      return 0;
    }

    v27 = 0;
    if (v42 != 3 && v43 == v42)
    {
LABEL_22:
      if (v41)
      {
        if (v40)
        {
LABEL_28:
          *&v56 = v39;
          WORD4(v56) = v38;
          BYTE10(v56) = v37;
          *&v50 = v36;
          WORD4(v50) = v35;
          BYTE10(v50) = v34;
          v32 = v36;
          v33 = v39;
          v27 = specialized static _ShapeStyle_ResolverMode.== infix(_:_:)(&v56, &v50);

          return v27;
        }
      }

      else
      {
        v31 = v40;
        if (v20 != v25)
        {
          v31 = 1;
        }

        if ((v31 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      return 0;
    }
  }

  return v27;
}

uint64_t storeEnumTagSinglePayload for Image.Resolved(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 186) = 0;
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 187) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 187) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 120) = 0;
      *(result + 128) = 2 * ~a2;
      *(result + 136) = 0;
    }
  }

  return result;
}

uint64_t specialized static GraphicsImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *(a1 + 52);
  v10 = *(a1 + 60);
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  v13 = *(a1 + 105);
  v14 = *(a1 + 106);
  v15 = *(a1 + 107);
  v16 = *a2;
  v17 = *(a2 + 8);
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v22 = *(a2 + 44);
  v23 = *(a2 + 52);
  v24 = *(a2 + 60);
  v25 = *(a2 + 64);
  v26 = *(a1 + 88);
  v27 = *(a1 + 72);
  v28 = *(a2 + 88);
  v29 = *(a2 + 72);
  v30 = *(a2 + 104);
  v31 = *(a2 + 105);
  v32 = *(a2 + 106);
  v33 = *(a2 + 107);
  if (v3 == 255)
  {
    v46 = *(a1 + 44);
    v47 = *(a1 + 52);
    v36 = *(a2 + 72);
    v37 = *(a2 + 88);
    v38 = *(a1 + 72);
    v39 = *(a1 + 88);
    v48 = *(a2 + 104);
    v49 = *(a1 + 104);
    v40 = *(a2 + 105);
    v41 = *(a2 + 106);
    v42 = *(a2 + 107);
    v43 = *(a1 + 106);
    v44 = *(a1 + 105);
    v45 = *(a1 + 107);
    outlined copy of GraphicsImage.Contents?(v2, 0xFFu);
    if (v17 == 255)
    {
      outlined copy of GraphicsImage.Contents?(v16, 0xFFu);
      outlined consume of GraphicsImage.Contents?(v2, 0xFFu);
      result = 0;
      if (v5 != v19)
      {
        return result;
      }

LABEL_11:
      if (v4 != v18 || v6 != v20)
      {
        return result;
      }

      if (((0x507030104060200uLL >> (8 * v7)) & 7) == ((0x507030104060200uLL >> (8 * v21)) & 7))
      {
        if (v11)
        {
          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v25)
          {
            return 0;
          }

          v50 = v46;
          v51 = v47;
          v52 = v10;
          v53 = v22;
          v54 = v23;
          v55 = v24;
          if (!specialized static Color.ResolvedHDR.== infix(_:_:)(&v50, &v53))
          {
            return 0;
          }
        }

        if (v49 == 2)
        {
          if (v48 == 2)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = 0;
          if (v48 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v38, v36), vceqq_f64(v39, v37)), xmmword_18DDA9F30)) & 0xF) != 0)
          {
            return result;
          }

          if (((v48 ^ v49) & 1) == 0)
          {
LABEL_21:
            if (v45 == v42)
            {
              return (v43 == v41) & ~(v44 ^ v40);
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return 0;
    }

    outlined copy of GraphicsImage.Contents?(v16, v17);
LABEL_9:
    outlined consume of GraphicsImage.Contents?(v2, v3);
    outlined consume of GraphicsImage.Contents?(v16, v17);
    return 0;
  }

  v53 = *a1;
  LOBYTE(v54) = v3;
  if (v17 == 255)
  {
    outlined copy of GraphicsImage.Contents?(v2, v3);
    outlined copy of GraphicsImage.Contents?(v16, 0xFFu);
    outlined copy of GraphicsImage.Contents?(v2, v3);
    outlined consume of GraphicsImage.Contents(v2, v3);
    goto LABEL_9;
  }

  v46 = v8;
  v47 = v9;
  v36 = v29;
  v37 = v28;
  v38 = v27;
  v39 = v26;
  v48 = v30;
  v49 = v12;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v14;
  v44 = v13;
  v45 = v15;
  v50 = v16;
  LOBYTE(v51) = v17;
  outlined copy of GraphicsImage.Contents?(v2, v3);
  outlined copy of GraphicsImage.Contents?(v16, v17);
  outlined copy of GraphicsImage.Contents?(v2, v3);
  v34 = specialized static GraphicsImage.Contents.== infix(_:_:)(&v53, &v50);
  outlined consume of GraphicsImage.Contents(v50, v51);
  outlined consume of GraphicsImage.Contents(v53, v54);
  outlined consume of GraphicsImage.Contents?(v2, v3);
  result = 0;
  if ((v34 & 1) != 0 && v5 == v19)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized static GraphicsImage.Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          outlined copy of GraphicsImage.Contents(*a2, 1u);
          outlined copy of GraphicsImage.Contents(v2, 1u);
          outlined consume of GraphicsImage.Contents(v2, 1u);
          v6 = v4;
          v7 = 1;
LABEL_23:
          outlined consume of GraphicsImage.Contents(v6, v7);
          v19 = v2 == v4;
          return v19 & 1;
        }
      }

      else if (v5 == 2)
      {
        v22 = *(v2 + 6);
        v23 = *(v2 + 45);
        v24 = *(v2 + 44);
        v25 = *(v2 + 10);
        v26 = *(v2 + 4);
        v27 = *(v2 + 24);
        v28 = *(v2 + 2);
        v29 = *(v4 + 2);
        v30 = *(v4 + 24);
        v31 = *(v4 + 4);
        v32 = *(v4 + 10);
        v33 = *(v4 + 44);
        v34 = *(v4 + 45);
        v44 = *(v4 + 6);
        v45 = v28;
        v46 = v27;
        v47 = v26;
        v48 = v25;
        v49 = v24;
        v50 = v23;
        v51 = v22;
        v38 = v29;
        v39 = v30;
        v40 = v31;
        v41 = v32;
        v42 = v33;
        v43 = v34;
        outlined copy of GraphicsImage.Contents(v4, 2u);
        outlined copy of GraphicsImage.Contents(v2, 2u);
        v19 = specialized static ResolvedVectorGlyph.== infix(_:_:)(&v45, &v38);
        outlined consume of GraphicsImage.Contents(v2, 2u);
        outlined consume of GraphicsImage.Contents(v4, 2u);
        return v19 & 1;
      }
    }

    else if (!*(a2 + 8))
    {
      outlined copy of GraphicsImage.Contents(*a2, 0);
      outlined copy of GraphicsImage.Contents(v2, 0);
      outlined consume of GraphicsImage.Contents(v2, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (v3 == 3)
  {
    if (v5 == 3)
    {
      v20 = *(v2 + 2);
      v21 = *(v4 + 2);
      outlined copy of GraphicsImage.Contents(*a2, 3u);
      outlined copy of GraphicsImage.Contents(v2, 3u);
      outlined consume of GraphicsImage.Contents(v2, 3u);
      outlined consume of GraphicsImage.Contents(v4, 3u);
      v19 = v20 == v21;
      return v19 & 1;
    }

    goto LABEL_28;
  }

  if (v3 != 4 || v5 != 4)
  {
LABEL_28:
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    outlined copy of GraphicsImage.Contents(v2, v3);
    outlined consume of GraphicsImage.Contents(v2, v3);
    outlined consume of GraphicsImage.Contents(v4, v5);
LABEL_29:
    v19 = 0;
    return v19 & 1;
  }

  v36 = v2[8];
  v37 = v2[7];
  v9 = v2[5];
  v8 = v2[6];
  v10 = v2[4];
  v11 = v4[4];
  v12 = v4[5];
  v13 = v4[6];
  v14 = v4[7];
  v15 = v4[8];
  outlined copy of GraphicsImage.Contents(v4, 4u);
  outlined copy of GraphicsImage.Contents(v2, 4u);
  outlined consume of GraphicsImage.Contents(v2, 4u);
  outlined consume of GraphicsImage.Contents(v4, 4u);
  if (v10 != v11 || v9 != v12 || v8 != v13 || v37 != v14)
  {
    goto LABEL_29;
  }

  v19 = v36 == v15;
  return v19 & 1;
}

uint64_t specialized static ResolvedVectorGlyph.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1 == *a2 && *(a1 + 24) == *(a2 + 24);
  if (v3 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    v4 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v4;
    outlined copy of Image.Location(v4);
    outlined copy of Image.Location(v6);
    v2 = specialized static Image.Location.== infix(_:_:)(&v7, &v6);
    outlined consume of Image.Location(v6);
    outlined consume of Image.Location(v7);
  }

  return v2 & 1;
}

uint64_t specialized static Image.Location.== infix(_:_:)(id *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (v3)
    {
      goto LABEL_8;
    }

    outlined consume of Image.Location(0);
    v5 = 0;
LABEL_11:
    outlined consume of Image.Location(v5);
    v4 = 1;
    return v4 & 1;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v4 = 1;
      outlined consume of Image.Location(1);
      outlined consume of Image.Location(1);
      return v4 & 1;
    }

LABEL_8:
    outlined copy of Image.Location(*a2);
    outlined copy of Image.Location(v2);
    outlined consume of Image.Location(v2);
    outlined consume of Image.Location(v3);
    v4 = 0;
    return v4 & 1;
  }

  if (v3 < 2)
  {
    goto LABEL_8;
  }

  if (v2 == v3)
  {
    outlined copy of Image.Location(*a1);
    outlined copy of Image.Location(v2);
    outlined consume of Image.Location(v2);
    v5 = v2;
    goto LABEL_11;
  }

  outlined copy of Image.Location(*a2);
  outlined copy of Image.Location(v2);
  v6 = [v2 bundlePath];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v3 bundlePath];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  outlined consume of Image.Location(v2);
  outlined consume of Image.Location(v3);

  return v4 & 1;
}

BOOL specialized static AccessibilityImageLabel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v5)
      {
        if (v9)
        {
          v10 = *(*v2 + 96);
          outlined copy of AccessibilityImageLabel(*a2, a2[1], v9, v8);
          v11 = outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
          if (v10(v7, v11))
          {
            goto LABEL_22;
          }

          goto LABEL_15;
        }
      }

      else if ((v9 & 1) == 0)
      {
        if (v2 == v7 && v3 == v6)
        {
          outlined copy of AccessibilityImageLabel(*a1, v3, v9, v8);
          outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
          goto LABEL_22;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of AccessibilityImageLabel(v7, v6, v9, v8);
        outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
        if (v16)
        {
LABEL_22:
          _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v4, v8);
          v18 = v17;
          outlined consume of AccessibilityImageLabel(v2, v3, v5, v4);
          outlined consume of AccessibilityImageLabel(v7, v6, v9, v8);
          return (v18 & 1) != 0;
        }

LABEL_15:
        outlined consume of AccessibilityImageLabel(v2, v3, v5, v4);
        outlined consume of AccessibilityImageLabel(v7, v6, v9, v8);
        return 0;
      }
    }

LABEL_14:
    outlined copy of AccessibilityImageLabel(*a2, a2[1], v9, v8);
    outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
    goto LABEL_15;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v12 = *a1;
  if (v2 == v7 && v3 == v6)
  {
    outlined copy of AccessibilityImageLabel(v12, v3, v9, v8);
    outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
    outlined consume of AccessibilityImageLabel(v2, v3, v5, v4);
    outlined consume of AccessibilityImageLabel(v2, v3, v9, v8);
    return 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AccessibilityImageLabel(v7, v6, v9, v8);
    outlined copy of AccessibilityImageLabel(v2, v3, v5, v4);
    outlined consume of AccessibilityImageLabel(v2, v3, v5, v4);
    outlined consume of AccessibilityImageLabel(v7, v6, v9, v8);
    return v14 & 1;
  }
}

uint64_t specialized closure #1 in StatefulRule<>.update<A>(to:)(_OWORD *a1, __int128 *a2)
{
  v3 = a2[9];
  v28 = a2[8];
  v29 = v3;
  v30[0] = a2[10];
  *(v30 + 11) = *(a2 + 171);
  v4 = a2[5];
  v24 = a2[4];
  v25 = v4;
  v5 = a2[7];
  v26 = a2[6];
  v27 = v5;
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  v8 = a1[9];
  v31[8] = a1[8];
  v31[9] = v8;
  v32[0] = a1[10];
  *(v32 + 11) = *(a1 + 171);
  v9 = a1[5];
  v31[4] = a1[4];
  v31[5] = v9;
  v10 = a1[7];
  v31[6] = a1[6];
  v31[7] = v10;
  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  v12 = a1[3];
  v31[2] = a1[2];
  v31[3] = v12;
  outlined destroy of ResolvedImageLayoutEngine(v31);
  v13 = v29;
  a1[8] = v28;
  a1[9] = v13;
  a1[10] = v30[0];
  *(a1 + 171) = *(v30 + 11);
  v14 = v25;
  a1[4] = v24;
  a1[5] = v14;
  v15 = v27;
  a1[6] = v26;
  a1[7] = v15;
  v16 = v21;
  *a1 = v20;
  a1[1] = v16;
  v17 = v23;
  a1[2] = v22;
  a1[3] = v17;
  return outlined init with copy of ResolvedImageLayoutEngine(&v20, &v19);
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(_OWORD *a1)
{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

{
  v3 = *(v1 + 16);
  v27 = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v30 = v3[3];
  v31 = v6;
  v28 = v4;
  v29 = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[8];
  v34 = v3[7];
  v35 = v9;
  v32 = v7;
  v33 = v8;
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  *(v38 + 9) = *(v3 + 185);
  v37 = v11;
  v38[0] = v12;
  v36 = v10;
  v13 = a1[3];
  v39[2] = a1[2];
  v39[3] = v13;
  v14 = a1[1];
  v39[0] = *a1;
  v39[1] = v14;
  v15 = a1[7];
  v39[6] = a1[6];
  v39[7] = v15;
  v16 = a1[5];
  v39[4] = a1[4];
  v39[5] = v16;
  *&v40[9] = *(a1 + 185);
  v17 = a1[11];
  v39[10] = a1[10];
  *v40 = v17;
  v18 = a1[9];
  v39[8] = a1[8];
  v39[9] = v18;
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v39, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
  v19 = v38[0];
  a1[10] = v37;
  a1[11] = v19;
  *(a1 + 185) = *(v38 + 9);
  v20 = v34;
  a1[6] = v33;
  a1[7] = v20;
  v21 = v36;
  a1[8] = v35;
  a1[9] = v21;
  v22 = v30;
  a1[2] = v29;
  a1[3] = v22;
  v23 = v32;
  a1[4] = v31;
  a1[5] = v23;
  v24 = v28;
  *a1 = v27;
  a1[1] = v24;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v27, &v26, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

uint64_t _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFyqd__zXEfU_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v27 = v3[2];
  v28 = v6;
  v25 = v4;
  v26 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[7];
  v31 = v3[6];
  v32 = v9;
  v29 = v7;
  v30 = v8;
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  *(v35 + 11) = *(v3 + 171);
  v34 = v11;
  v35[0] = v12;
  v33 = v10;
  v13 = a1[3];
  v36[2] = a1[2];
  v36[3] = v13;
  v14 = a1[1];
  v36[0] = *a1;
  v36[1] = v14;
  v15 = a1[7];
  v36[6] = a1[6];
  v36[7] = v15;
  v16 = a1[5];
  v36[4] = a1[4];
  v36[5] = v16;
  *&v37[11] = *(a1 + 171);
  v17 = a1[10];
  v36[9] = a1[9];
  *v37 = v17;
  v36[8] = a1[8];
  outlined destroy of ResolvedImageLayoutEngine(v36);
  v18 = v34;
  a1[8] = v33;
  a1[9] = v18;
  a1[10] = v35[0];
  *(a1 + 171) = *(v35 + 11);
  v19 = v30;
  a1[4] = v29;
  a1[5] = v19;
  v20 = v32;
  a1[6] = v31;
  a1[7] = v20;
  v21 = v26;
  *a1 = v25;
  a1[1] = v21;
  v22 = v28;
  a1[2] = v27;
  a1[3] = v22;
  return outlined init with copy of ResolvedImageLayoutEngine(&v25, &v24);
}

unsigned int *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RoundedRectangle(unsigned int *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV_Tt1B5(a1, v4);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16RoundedRectangleV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v10[0] = v6;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v2;
    v10[4] = v5;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    v15 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>()
{
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttribute);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatableAttribute<RoundedRectangle> and conformance AnimatableAttribute<A>);
  }
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  LODWORD(v9) = a3;
  v213 = *MEMORY[0x1E69E9840];
  v194 = type metadata accessor for OSSignpostID();
  v191 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v192 = (&v175 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v175 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v184 = &v175 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 17) = 1;
  }

  else if (*(a1 + 17) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == *&v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v179 = v9;
  v190 = v13;
  v176 = v16;
  AGGraphClearUpdate();
  v29 = *(a4 + 1);
  v209 = *a4;
  v210 = v29;
  v211 = *(a4 + 2);
  v181 = a4;
  v212 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  v30 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
    LODWORD(v9) = v179;
  }

  else
  {
    LODWORD(v9) = v179;
    if (!a2)
    {

      a4 = v181;
      goto LABEL_120;
    }

    v32 = a2;
  }

  v33 = *(&v211 + 1);
  v34 = v6 - *&v5;
  v35 = v7 - v4;
  v28 = *AGGraphGetValue();
  v180 = a1;
  v177 = v30;
  if (!v33)
  {
    *&v199.f64[0] = &type metadata for RoundedRectangle;
    type metadata accessor for RoundedRectangle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v204;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = *(&v204 + 1);
    }

    else
    {
      v55 = 0;
    }

    v178 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v56, v30, v54, v55, v34, v35, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v58 = CurrentAttribute;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v60 = 0;
    }

    else
    {
      v60 = CurrentAttribute;
    }

    LODWORD(v189) = v60;
    v61 = *(*v32 + 96);
    v175 = v32;
    v61(&v199);
    v62 = v199;
    v63 = v200;
    v64 = v202;
    v198 = NAN;
    *&v197 = NAN;
    v196 = 0x3FF0000000000000;
    v195 = 0x7FF8000000000000;
    v204 = v199;
    v205 = *&v200;
    v65 = v201;
    v206 = v201;
    v207 = v202;
    LODWORD(v192) = v203;
    LOBYTE(v208) = v203;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v204, &v198, &v197, &v196, &v195);
    v4 = v198;
    v5 = v197;
    v66 = v196;
    v67 = v195;
    if (one-time initialization token for enabledCategories != -1)
    {
      v188 = v196;
      v187 = v195;
      swift_once();
      v67 = v187;
      v66 = v188;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v68 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v69 = v58 == v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v70 = v59;
          v59 = *(v68 + 16);
          LODWORD(v204) = v189;
          BYTE4(v204) = v69;
          *(&v204 + 1) = &type metadata for RoundedRectangle;
          v205 = v4;
          v206 = v5;
          v207 = v66;
          v208 = v67;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v71 = v59;
          LODWORD(v59) = v70;
          v72 = v71;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
        }

        else
        {
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
        }

        a1 = v180;
        LODWORD(v9) = v179;
      }

      else
      {
        outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
      }

      v108 = one-time initialization token for animationState;

      if (v108 == -1)
      {
LABEL_85:
        v74 = *(&static Signpost.animationState + 1);
        v73 = static Signpost.animationState;
        LOBYTE(v80) = word_1ED5283E8;
        LOBYTE(v32) = HIBYTE(word_1ED5283E8);
        v109 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v204 = __PAIR128__(v74, v73);
        LOBYTE(v205) = v80;
        BYTE1(v205) = v32;
        BYTE2(v205) = v109;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v120 = v178;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          a4 = v181;
          *(v181 + 5) = v120;
          goto LABEL_119;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v176 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v204) = 0;
  v36.n128_f64[0] = v34;
  v37.n128_f64[0] = v35;
  v178 = v33;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v9, v36, v37, v28);
  v38 = AGGraphGetCurrentAttribute();
  v39 = v38;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    v41 = 0;
  }

  else
  {
    v41 = v38;
  }

  LODWORD(v188) = v41;
  (*(*v32 + 96))(&v199);
  v42 = *&v199.f64[1];
  v43 = *&v199.f64[0];
  v44 = v200;
  a4 = v201;
  v198 = NAN;
  *&v197 = NAN;
  v196 = 0x3FF0000000000000;
  v195 = 0x7FF8000000000000;
  v204 = v199;
  v205 = *&v200;
  v206 = v201;
  v207 = v202;
  v45 = v202;
  LODWORD(v190) = v203;
  LOBYTE(v208) = v203;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v204, &v198, &v197, &v196, &v195);
  v4 = v198;
  v5 = v197;
  v46 = v196;
  v47 = v195;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v48 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v189) = Counter;
    if (v48)
    {
      v175 = v32;
      v49 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v50 = *(v49 + 16);
        LODWORD(v204) = v188;
        BYTE4(v204) = v39 == Counter;
        *(&v204 + 1) = &type metadata for RoundedRectangle;
        v205 = v4;
        v206 = v5;
        v207 = v46;
        v208 = v47;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v188 = v51;

        v52 = v50;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
      }

      else
      {
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
      }

      v32 = v175;
    }

    else
    {
      outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v176;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v73 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v74 = word_1ED5283E8;
    v75 = HIBYTE(word_1ED5283E8);
    v76 = byte_1ED5283EA;
    v77 = static os_signpost_type_t.event.getter();
    v204 = __PAIR128__(v73, v9);
    LOBYTE(v205) = v74;
    BYTE1(v205) = v75;
    BYTE2(v205) = v76;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v180;
      a4 = v181;
      LODWORD(v9) = v179;
      goto LABEL_119;
    }

    LODWORD(v190) = v77;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v78 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18DDAF080;
    v79 = AGGraphGetCurrentAttribute();
    v80 = v189;
    if (v79 == v189)
    {
      __break(1u);
    }

    else
    {
      v81 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v82 = MEMORY[0x1E69E6870];
      *(v59 + 56) = MEMORY[0x1E69E6810];
      *(v59 + 64) = v82;
      *(v59 + 32) = Counter;
      v83 = AGGraphGetCurrentAttribute();
      if (v83 != v80)
      {
        v84 = MEMORY[0x1E69E76D0];
        *(v59 + 96) = MEMORY[0x1E69E7668];
        *(v59 + 104) = v84;
        *(v59 + 72) = v83;
        *(v59 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v59 + 144) = v85;
        *(v59 + 112) = 0xD000000000000010;
        *(v59 + 120) = 0x800000018DD78EF0;
        if ((v75 & 1) == 0)
        {
          v175 = v32;
          if (v9 == 20)
          {
            v87 = 3;
          }

          else
          {
            v87 = 4;
          }

          v88 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v190;
          v89 = (v191 + 16);
          v182 = *(v191 + 16);
          v90 = v182(v192, v176, v194);
          v91 = 0;
          LOBYTE(v199.f64[0]) = 1;
          v190 = v87;
          v187 = 16 * v87;
          v183 = v89;
          v188 = (v89 - 1);
          v186 = v59 + 32;
          v185 = v9;
          do
          {
            v189 = &v175;
            MEMORY[0x1EEE9AC00](v90);
            a4 = &v175 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
            v45 = (a4 + 8);
            v94 = v190;
            v95 = a4 + 8;
            do
            {
              *(v95 - 1) = 0;
              *v95 = 0;
              v95 += 16;
              --v94;
            }

            while (v94);
            v96 = v186 + 40 * v91;
            v97 = v190;
            while (1)
            {
              v98 = *(v59 + 16);
              if (v91 == v98)
              {
                break;
              }

              if (v91 >= v98)
              {
                goto LABEL_178;
              }

              ++v91;
              outlined init with copy of AnyTrackedValue(v96, &v204);
              v99 = v206;
              v100 = v207;
              v101 = __swift_project_boxed_opaque_existential_1(&v204, v206);
              v102 = v99;
              v89 = v101;
              *(v45 - 8) = CVarArg.kdebugValue(_:)(v88 | a1, v102, v100);
              *v45 = v103 & 1;
              v45 += 16;
              v92 = __swift_destroy_boxed_opaque_existential_1(&v204);
              v96 += 40;
              if (!--v97)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v199.f64[0]) = 0;
LABEL_67:
            v104 = v185;
            if (v185 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v104 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v188;
            v89 = v192;
            v105 = v194;
            (*v188)(v192, v194);
            v106 = __swift_project_value_buffer(v105, static OSSignpostID.continuation);
            v90 = v182(v89, v106, v105);
          }

          while ((LOBYTE(v199.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
          v107 = v194;
          v9(v192, v194);
          v9(v176, v107);

          a1 = v180;
          a4 = v181;
          LODWORD(v9) = v179;
          goto LABEL_119;
        }

        LOBYTE(v195) = v190;
        v198 = COERCE_DOUBLE(&dword_18D018000);
        v197 = v78;
        *&v204 = v9;
        *(&v204 + 1) = v73;
        LOBYTE(v205) = v74;
        *&v199.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v199.f64[1] = 39;
        LOBYTE(v200) = 2;
        v196 = v59;
        v86 = v176;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v204, v176, &v199, &v196);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
        (*(v191 + 8))(v86, v194);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v192) = Counter;
    v111 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v59)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v114;
    *(a1 + 32) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == v59)
    {
      goto LABEL_196;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v116;
    *(a1 + 72) = v115;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 144) = v117;
    *(a1 + 112) = 0xD000000000000010;
    *(a1 + 120) = 0x800000018DD78EF0;
    if (v32)
    {
      LOBYTE(v195) = v192;
      v198 = COERCE_DOUBLE(&dword_18D018000);
      v197 = v111;
      *&v204 = v73;
      *(&v204 + 1) = v74;
      LOBYTE(v205) = v80;
      *&v199.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v199.f64[1] = 39;
      LOBYTE(v200) = 2;
      v196 = a1;
      v118 = v176;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v204, v176, &v199, &v196);
      v119 = v178;

      (*(v191 + 8))(v118, v194);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v181;
      *(v181 + 5) = v119;
      a1 = v180;
    }

    else
    {
      v121 = v73;
      v122 = v73 == 20 ? 3 : 4;
      v97 = bswap32(v73) | (4 * WORD1(v73));
      v45 = v192;
      v89 = (v191 + 16);
      v182 = *(v191 + 16);
      v123 = v182(v190, v176, v194);
      v91 = 0;
      LOBYTE(v199.f64[0]) = 1;
      v192 = v122;
      v187 = 16 * v122;
      v183 = v89;
      v188 = (v89 - 1);
      v186 = a1 + 32;
      v185 = v121;
      do
      {
        v189 = &v175;
        MEMORY[0x1EEE9AC00](v123);
        v125 = &v175 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v125 + 8;
        v126 = v192;
        v127 = v125 + 8;
        do
        {
          *(v127 - 1) = 0;
          *v127 = 0;
          v127 += 16;
          v126 = (v126 - 1);
        }

        while (v126);
        v128 = v186 + 40 * v91;
        v129 = v192;
        while (1)
        {
          v130 = *(a1 + 16);
          if (v91 == v130)
          {
            break;
          }

          if (v91 >= v130)
          {
            goto LABEL_179;
          }

          ++v91;
          outlined init with copy of AnyTrackedValue(v128, &v204);
          v131 = v206;
          v132 = v207;
          v133 = __swift_project_boxed_opaque_existential_1(&v204, v206);
          v134 = v131;
          v89 = v133;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v97 | v45, v134, v132);
          *a4 = v135 & 1;
          a4 += 16;
          v92 = __swift_destroy_boxed_opaque_existential_1(&v204);
          v128 += 40;
          v129 = (v129 - 1);
          if (!v129)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v199.f64[0]) = 0;
LABEL_104:
        v136 = v185;
        if (v185 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v125[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v125[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v125[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v136 != 20 && v125[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v137 = *v188;
        v138 = v190;
        v89 = v194;
        (*v188)(v190, v194);
        v139 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
        v123 = v182(v138, v139, v89);
      }

      while ((LOBYTE(v199.f64[0]) & 1) != 0);
      v9 = v178;

      v140 = v194;
      v137(v138, v194);
      v137(v176, v140);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v181;
      *(v181 + 5) = v9;
      a1 = v180;
      LODWORD(v9) = v179;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v177);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v97 = *(a4 + 5);
    if (!v97)
    {
      return;
    }

    v199 = *a1;

    LOBYTE(v209) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v199, v9, v28);
    v92 = AGGraphGetCurrentAttribute();
    v45 = *MEMORY[0x1E698D3F8];
    if (v92 == v45)
    {
      LODWORD(v91) = 0;
    }

    else
    {
      LODWORD(v91) = v92;
    }

    v89 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v152 = v89[77];
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v209) = v91;
        BYTE4(v209) = v92 == v45;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v44 = *(&static Signpost.animationState + 1);
    v91 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v39 = HIBYTE(word_1ED5283E8);
    v144 = byte_1ED5283EA;
    v32 = static os_signpost_type_t.end.getter();
    v209 = __PAIR128__(v44, v91);
    LOBYTE(v210) = Counter;
    BYTE1(v210) = v39;
    BYTE2(v210) = v144;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v181 = a4;
    v145 = one-time initialization token for _signpostLog;
    v43 = v183;

    if (v145 != -1)
    {
      swift_once();
    }

    v180 = a1;
    v42 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v45)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v187 = v46;
    v186 = v47;
    swift_once();
    v47 = v186;
    v46 = v187;
  }

  v43 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v45)
  {
    goto LABEL_186;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  v89 = 0x800000018DD78EF0;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000010;
  *(a4 + 15) = 0x800000018DD78EF0;
  if (v39)
  {
    LOBYTE(v195) = v32;
    v198 = COERCE_DOUBLE(&dword_18D018000);
    v197 = v42;
    *&v209 = v91;
    *(&v209 + 1) = v44;
    LOBYTE(v210) = Counter;
    *&v204 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v204 + 1) = 37;
    LOBYTE(v205) = 2;
    v196 = a4;
    v151 = v184;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v209, v184, &v204, &v196);

    (*(v191 + 8))(v151, v194);
    goto LABEL_173;
  }

  v153 = v91;
  if (v91 == 20)
  {
    v154 = 3;
  }

  else
  {
    v154 = 4;
  }

  v45 = bswap32(v91) | (4 * WORD1(v91));
  LODWORD(v91) = v32;
  v155 = v191 + 16;
  v185 = *(v191 + 16);
  v156 = (v185)(v193, v184, v194);
  v97 = 0;
  LOBYTE(v204) = 1;
  v189 = (16 * v154);
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  v186 = v154;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = (a1 + 8);
    v159 = v154;
    v160 = (a1 + 8);
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      --v159;
    }

    while (v159);
    v161 = &v188[40 * v97];
    while (1)
    {
      v162 = *(a4 + 2);
      if (v97 == v162)
      {
        break;
      }

      if (v97 >= v162)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v173 = v92;
        swift_once();
        v92 = v173;
LABEL_127:
        v142 = v89[77];
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v209) = v91;
            BYTE4(v209) = v92 == v45;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v183 = v97;

          if (v143 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v174 = v92;
        swift_once();
        v92 = v174;
        goto LABEL_140;
      }

      ++v97;
      outlined init with copy of AnyTrackedValue(v161, &v209);
      v163 = *(&v210 + 1);
      v164 = v211;
      v165 = __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v166 = v163;
      v89 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v45 | v91, v166, v164);
      *v158 = v167 & 1;
      v158 += 16;
      v92 = __swift_destroy_boxed_opaque_existential_1(&v209);
      v161 += 40;
      if (!--v154)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v204) = 0;
LABEL_158:
    v168 = v187;
    if (v187 == 20)
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

    if (v168 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v193;
    v89 = v194;
    (*v190)(v193, v194);
    v171 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
    v156 = (v185)(v170, v171, v89);
    v154 = v186;
  }

  while ((v204 & 1) != 0);

  v172 = v194;
  v169(v193, v194);
  v169(v184, v172);
LABEL_173:

  a1 = v180;
  a4 = v181;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v199;
  *(a1 + 17) = 1;
}

{
  LODWORD(v9) = a3;
  v212 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v190 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v13 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v174 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v191 = (&v174 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v192 = &v174 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v174 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == *&v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v178 = v9;
  v189 = v13;
  v175 = v16;
  AGGraphClearUpdate();
  v29 = *(a4 + 1);
  v208 = *a4;
  v209 = v29;
  v210 = *(a4 + 2);
  v180 = a4;
  v211 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  v30 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
    LODWORD(v9) = v178;
  }

  else
  {
    LODWORD(v9) = v178;
    if (!a2)
    {

      a4 = v180;
      goto LABEL_120;
    }

    v32 = a2;
  }

  v33 = *(&v210 + 1);
  v34 = v6 - *&v5;
  v35 = v7 - v4;
  v28 = *AGGraphGetValue();
  v179 = a1;
  v176 = v30;
  if (!v33)
  {
    *&v198.f64[0] = &type metadata for _OffsetEffect;
    type metadata accessor for _OffsetEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v203;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = *(&v203 + 1);
    }

    else
    {
      v55 = 0;
    }

    v177 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v56, v30, v54, v55, v34, v35, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v58 = CurrentAttribute;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v60 = 0;
    }

    else
    {
      v60 = CurrentAttribute;
    }

    LODWORD(v188) = v60;
    v61 = *(*v32 + 96);
    v174 = v32;
    v61(&v198);
    v62 = v198;
    v63 = v199;
    v64 = v201;
    v197 = NAN;
    v196 = NAN;
    v195 = 0x3FF0000000000000;
    v194 = NAN;
    v203 = v198;
    v204 = *&v199;
    v65 = v200;
    v205 = v200;
    v206 = v201;
    LODWORD(v191) = v202;
    LOBYTE(v207) = v202;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v197, &v196, &v195, &v194);
    v4 = v197;
    *&v5 = v196;
    v66 = v195;
    v67 = v194;
    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = v195;
      *&v186 = v194;
      swift_once();
      v67 = *&v186;
      v66 = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v68 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v69 = v58 == v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v70 = v59;
          v59 = *(v68 + 16);
          LODWORD(v203) = v188;
          BYTE4(v203) = v69;
          *(&v203 + 1) = &type metadata for _OffsetEffect;
          v204 = v4;
          v205 = v5;
          v206 = v66;
          v207 = v67;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v71 = v59;
          LODWORD(v59) = v70;
          v72 = v71;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v191);
        }

        else
        {
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v191);
        }

        a1 = v179;
        LODWORD(v9) = v178;
      }

      else
      {
        outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v191);
      }

      v107 = one-time initialization token for animationState;

      if (v107 == -1)
      {
LABEL_85:
        v74 = *(&static Signpost.animationState + 1);
        v73 = static Signpost.animationState;
        LOBYTE(v80) = word_1ED5283E8;
        LOBYTE(v32) = HIBYTE(word_1ED5283E8);
        v108 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v203 = __PAIR128__(v74, v73);
        LOBYTE(v204) = v80;
        BYTE1(v204) = v32;
        BYTE2(v204) = v108;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v119 = v177;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          a4 = v180;
          *(v180 + 40) = v119;
          goto LABEL_119;
        }

        v109 = one-time initialization token for _signpostLog;

        if (v109 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v175 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v203) = 0;
  v36.n128_f64[0] = v34;
  v37.n128_f64[0] = v35;
  v177 = v33;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v9, v36, v37, v28);
  v38 = AGGraphGetCurrentAttribute();
  v39 = v38;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    v41 = 0;
  }

  else
  {
    v41 = v38;
  }

  LODWORD(v187) = v41;
  (*(*v32 + 96))(&v198);
  v42 = *&v198.f64[1];
  v43 = *&v198.f64[0];
  v44 = v199;
  a4 = v200;
  v197 = NAN;
  v196 = NAN;
  v195 = 0x3FF0000000000000;
  v194 = NAN;
  v203 = v198;
  v204 = *&v199;
  v205 = v200;
  v206 = v201;
  v45 = v201;
  LODWORD(v189) = v202;
  LOBYTE(v207) = v202;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v197, &v196, &v195, &v194);
  v4 = v197;
  *&v5 = v196;
  v46 = v195;
  v47 = v194;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v48 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v188) = Counter;
    if (v48)
    {
      v174 = v32;
      v49 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v50 = *(v49 + 16);
        LODWORD(v203) = v187;
        BYTE4(v203) = v39 == Counter;
        *(&v203 + 1) = &type metadata for _OffsetEffect;
        v204 = v4;
        v205 = v5;
        v206 = v46;
        v207 = v47;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v187 = v51;

        v52 = v50;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v189);
      }

      else
      {
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v189);
      }

      v32 = v174;
    }

    else
    {
      outlined consume of Animation.Function(v43, v42, v44, a4, v45, v189);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v175;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v73 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v74 = word_1ED5283E8;
    v75 = HIBYTE(word_1ED5283E8);
    v76 = byte_1ED5283EA;
    v77 = static os_signpost_type_t.event.getter();
    v203 = __PAIR128__(v73, v9);
    LOBYTE(v204) = v74;
    BYTE1(v204) = v75;
    BYTE2(v204) = v76;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v179;
      a4 = v180;
      LODWORD(v9) = v178;
      goto LABEL_119;
    }

    LODWORD(v189) = v77;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v78 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18DDAF080;
    v79 = AGGraphGetCurrentAttribute();
    v80 = v188;
    if (v79 == v188)
    {
      __break(1u);
    }

    else
    {
      v81 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v82 = MEMORY[0x1E69E6870];
      *(v59 + 56) = MEMORY[0x1E69E6810];
      *(v59 + 64) = v82;
      *(v59 + 32) = Counter;
      v83 = AGGraphGetCurrentAttribute();
      if (v83 != v80)
      {
        v84 = MEMORY[0x1E69E76D0];
        *(v59 + 96) = MEMORY[0x1E69E7668];
        *(v59 + 104) = v84;
        *(v59 + 72) = v83;
        *(v59 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v59 + 144) = v85;
        strcpy((v59 + 112), "_OffsetEffect");
        *(v59 + 126) = -4864;
        if ((v75 & 1) == 0)
        {
          v174 = v32;
          if (v9 == 20)
          {
            v87 = 3;
          }

          else
          {
            v87 = 4;
          }

          v88 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v189;
          v43 = v190 + 16;
          v181 = *(v190 + 16);
          v89 = v181(v191, v175, v193);
          v90 = 0;
          LOBYTE(v198.f64[0]) = 1;
          v189 = v87;
          v186 = 16 * v87;
          v182 = v43;
          v187 = (v43 - 8);
          *&v185 = v59 + 32;
          v184 = v9;
          do
          {
            v188 = &v174;
            MEMORY[0x1EEE9AC00](v89);
            a4 = &v174 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
            v45 = (a4 + 8);
            v93 = v189;
            v94 = a4 + 8;
            do
            {
              *(v94 - 1) = 0;
              *v94 = 0;
              v94 += 16;
              --v93;
            }

            while (v93);
            v95 = *&v185 + 40 * v90;
            v96 = v189;
            while (1)
            {
              v97 = *(v59 + 16);
              if (v90 == v97)
              {
                break;
              }

              if (v90 >= v97)
              {
                goto LABEL_178;
              }

              ++v90;
              outlined init with copy of AnyTrackedValue(v95, &v203);
              v98 = v205;
              v99 = v206;
              v100 = __swift_project_boxed_opaque_existential_1(&v203, v205);
              v101 = v98;
              v43 = v100;
              *(v45 - 8) = CVarArg.kdebugValue(_:)(v88 | a1, v101, v99);
              *v45 = v102 & 1;
              v45 += 16;
              v91 = __swift_destroy_boxed_opaque_existential_1(&v203);
              v95 += 40;
              if (!--v96)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v198.f64[0]) = 0;
LABEL_67:
            v103 = v184;
            if (v184 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v103 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v187;
            v43 = v191;
            v104 = v193;
            (*v187)(v191, v193);
            v105 = __swift_project_value_buffer(v104, static OSSignpostID.continuation);
            v89 = v181(v43, v105, v104);
          }

          while ((LOBYTE(v198.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
          v106 = v193;
          v9(v191, v193);
          v9(v175, v106);

          a1 = v179;
          a4 = v180;
          LODWORD(v9) = v178;
          goto LABEL_119;
        }

        LOBYTE(v194) = v189;
        v197 = COERCE_DOUBLE(&dword_18D018000);
        v196 = v78;
        *&v203 = v9;
        *(&v203 + 1) = v73;
        LOBYTE(v204) = v74;
        *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v198.f64[1] = 39;
        LOBYTE(v199) = 2;
        v195 = v59;
        v86 = v175;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v203, v175, &v198, &v195);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
        (*(v190 + 8))(v86, v193);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v191) = Counter;
    v110 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v59)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v111 = AGGraphGetAttributeGraph();
    v112 = AGGraphGetCounter();

    v113 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v113;
    *(a1 + 32) = v112;
    v114 = AGGraphGetCurrentAttribute();
    if (v114 == v59)
    {
      goto LABEL_196;
    }

    v115 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v115;
    *(a1 + 72) = v114;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 144) = v116;
    strcpy((a1 + 112), "_OffsetEffect");
    *(a1 + 126) = -4864;
    if (v32)
    {
      LOBYTE(v194) = v191;
      v197 = COERCE_DOUBLE(&dword_18D018000);
      v196 = v110;
      *&v203 = v73;
      *(&v203 + 1) = v74;
      LOBYTE(v204) = v80;
      *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v198.f64[1] = 39;
      LOBYTE(v199) = 2;
      v195 = a1;
      v117 = v175;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v203, v175, &v198, &v195);
      v118 = v177;

      (*(v190 + 8))(v117, v193);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v180;
      *(v180 + 40) = v118;
      a1 = v179;
    }

    else
    {
      v120 = v73;
      v121 = v73 == 20 ? 3 : 4;
      v96 = bswap32(v73) | (4 * WORD1(v73));
      v45 = v191;
      v43 = v190 + 16;
      v181 = *(v190 + 16);
      v122 = v181(v189, v175, v193);
      v90 = 0;
      LOBYTE(v198.f64[0]) = 1;
      v191 = v121;
      v186 = 16 * v121;
      v182 = v43;
      v187 = (v43 - 8);
      *&v185 = a1 + 32;
      v184 = v120;
      do
      {
        v188 = &v174;
        MEMORY[0x1EEE9AC00](v122);
        v124 = &v174 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v124 + 8;
        v125 = v191;
        v126 = v124 + 8;
        do
        {
          *(v126 - 1) = 0;
          *v126 = 0;
          v126 += 16;
          v125 = (v125 - 1);
        }

        while (v125);
        v127 = *&v185 + 40 * v90;
        v128 = v191;
        while (1)
        {
          v129 = *(a1 + 16);
          if (v90 == v129)
          {
            break;
          }

          if (v90 >= v129)
          {
            goto LABEL_179;
          }

          ++v90;
          outlined init with copy of AnyTrackedValue(v127, &v203);
          v130 = v205;
          v131 = v206;
          v132 = __swift_project_boxed_opaque_existential_1(&v203, v205);
          v133 = v130;
          v43 = v132;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v96 | v45, v133, v131);
          *a4 = v134 & 1;
          a4 += 16;
          v91 = __swift_destroy_boxed_opaque_existential_1(&v203);
          v127 += 40;
          v128 = (v128 - 1);
          if (!v128)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v198.f64[0]) = 0;
LABEL_104:
        v135 = v184;
        if (v184 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v124[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v124[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v124[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v135 != 20 && v124[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v136 = *v187;
        v137 = v189;
        v43 = v193;
        (*v187)(v189, v193);
        v138 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
        v122 = v181(v137, v138, v43);
      }

      while ((LOBYTE(v198.f64[0]) & 1) != 0);
      v9 = v177;

      v139 = v193;
      v136(v137, v193);
      v136(v175, v139);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v180;
      *(v180 + 40) = v9;
      a1 = v179;
      LODWORD(v9) = v178;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v176);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v96 = *(a4 + 5);
    if (!v96)
    {
      return;
    }

    v198 = *a1;

    LOBYTE(v208) = 0;
    v140 = specialized AnimatorState.update(_:at:environment:)(&v198, v9, v28);
    v91 = AGGraphGetCurrentAttribute();
    v45 = *MEMORY[0x1E698D3F8];
    if (v91 == v45)
    {
      LODWORD(v90) = 0;
    }

    else
    {
      LODWORD(v90) = v91;
    }

    v43 = &type metadata instantiation cache for TupleTypeDescription;
    if (v140)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v151 = *(v43 + 616);
    if (*(v151 + 16) >= 0x43uLL)
    {
      if (*(v151 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v208) = v90;
        BYTE4(v208) = v91 == v45;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v44 = *(&static Signpost.animationState + 1);
    v90 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v39 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v32 = static os_signpost_type_t.end.getter();
    v208 = __PAIR128__(v44, v90);
    LOBYTE(v209) = Counter;
    BYTE1(v209) = v39;
    BYTE2(v209) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v180 = a4;
    v144 = one-time initialization token for _signpostLog;
    v43 = v182;

    if (v144 != -1)
    {
      swift_once();
    }

    v179 = a1;
    *&v42 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v45)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v186 = v46;
    v185 = v47;
    swift_once();
    v47 = v185;
    v46 = v186;
  }

  v43 = AGGraphGetAttributeGraph();
  v145 = AGGraphGetCounter();

  v146 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v146;
  *(a4 + 4) = v145;
  v147 = AGGraphGetCurrentAttribute();
  if (v147 == v45)
  {
    goto LABEL_186;
  }

  v148 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v148;
  *(a4 + 18) = v147;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v149;
  strcpy(a4 + 112, "_OffsetEffect");
  *(a4 + 63) = -4864;
  if (v39)
  {
    LOBYTE(v194) = v32;
    v197 = COERCE_DOUBLE(&dword_18D018000);
    v196 = *&v42;
    *&v208 = v90;
    *(&v208 + 1) = v44;
    LOBYTE(v209) = Counter;
    *&v203 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v203 + 1) = 37;
    LOBYTE(v204) = 2;
    v195 = a4;
    v150 = v183;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v208, v183, &v203, &v195);

    (*(v190 + 8))(v150, v193);
    goto LABEL_173;
  }

  v152 = v90;
  if (v90 == 20)
  {
    v153 = 3;
  }

  else
  {
    v153 = 4;
  }

  v45 = bswap32(v90) | (4 * WORD1(v90));
  LODWORD(v90) = v32;
  v154 = v190 + 16;
  v184 = *(v190 + 16);
  v155 = (v184)(v192, v183, v193);
  v96 = 0;
  LOBYTE(v203) = 1;
  v188 = (16 * v153);
  v190 = v154;
  v189 = (v154 - 8);
  v187 = (a4 + 32);
  v186 = v152;
  v185 = *&v153;
  do
  {
    v191 = &v174;
    MEMORY[0x1EEE9AC00](v155);
    a1 = &v174 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = (a1 + 8);
    v158 = v153;
    v159 = (a1 + 8);
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      --v158;
    }

    while (v158);
    v160 = &v187[5 * v96];
    while (1)
    {
      v161 = *(a4 + 2);
      if (v96 == v161)
      {
        break;
      }

      if (v96 >= v161)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v172 = v91;
        swift_once();
        v91 = v172;
LABEL_127:
        v141 = *(v43 + 616);
        if (*(v141 + 16) >= 0x43uLL)
        {
          if (*(v141 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v208) = v90;
            BYTE4(v208) = v91 == v45;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v142 = one-time initialization token for animationState;
          v182 = v96;

          if (v142 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v173 = v91;
        swift_once();
        v91 = v173;
        goto LABEL_140;
      }

      ++v96;
      outlined init with copy of AnyTrackedValue(v160, &v208);
      v162 = *(&v209 + 1);
      v163 = v210;
      v164 = __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
      v165 = v162;
      v43 = v164;
      *(v157 - 1) = CVarArg.kdebugValue(_:)(v45 | v90, v165, v163);
      *v157 = v166 & 1;
      v157 += 16;
      v91 = __swift_destroy_boxed_opaque_existential_1(&v208);
      v160 += 40;
      if (!--v153)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v203) = 0;
LABEL_158:
    v167 = v186;
    if (v186 == 20)
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

    if (v167 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v168 = *v189;
    v169 = v192;
    v43 = v193;
    (*v189)(v192, v193);
    v170 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
    v155 = (v184)(v169, v170, v43);
    v153 = *&v185;
  }

  while ((v203 & 1) != 0);

  v171 = v193;
  v168(v192, v193);
  v168(v183, v171);
LABEL_173:

  a1 = v179;
  a4 = v180;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v198;
  *(a1 + 16) = 1;
}

{
  LODWORD(v9) = a3;
  v213 = *MEMORY[0x1E69E9840];
  v194 = type metadata accessor for OSSignpostID();
  v191 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v192 = (&v175 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v175 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v184 = &v175 - v25;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_121;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (a4[32])
  {
    goto LABEL_120;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  if (v6 == *&v5 && v7 == v4)
  {
    goto LABEL_120;
  }

  v179 = v9;
  v190 = v13;
  v176 = v16;
  AGGraphClearUpdate();
  v29 = *(a4 + 1);
  v209 = *a4;
  v210 = v29;
  v211 = *(a4 + 2);
  v181 = a4;
  v212 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  v30 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v31 = Transaction.effectiveAnimation.getter(v30);
  if (v31)
  {
    v32 = v31;
    LODWORD(v9) = v179;
  }

  else
  {
    LODWORD(v9) = v179;
    if (!a2)
    {

      a4 = v181;
      goto LABEL_120;
    }

    v32 = a2;
  }

  v33 = *(&v211 + 1);
  v34 = v6 - *&v5;
  v35 = v7 - v4;
  v28 = *AGGraphGetValue();
  v180 = a1;
  v177 = v30;
  if (!v33)
  {
    *&v199.f64[0] = &type metadata for KickModifier;
    type metadata accessor for KickModifier.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v204;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = *(&v204 + 1);
    }

    else
    {
      v55 = 0;
    }

    v178 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v56, v30, v54, v55, v34, v35, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v58 = CurrentAttribute;
    LODWORD(v59) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v60 = 0;
    }

    else
    {
      v60 = CurrentAttribute;
    }

    LODWORD(v189) = v60;
    v61 = *(*v32 + 96);
    v175 = v32;
    v61(&v199);
    v62 = v199;
    v63 = v200;
    v64 = v202;
    v198 = NAN;
    v197 = NAN;
    v196 = 0x3FF0000000000000;
    v195 = NAN;
    v204 = v199;
    v205 = *&v200;
    v65 = v201;
    v206 = v201;
    v207 = v202;
    LODWORD(v192) = v203;
    LOBYTE(v208) = v203;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v204, &v198, &v197, &v196, &v195);
    v4 = v198;
    *&v5 = v197;
    v66 = v196;
    v67 = v195;
    if (one-time initialization token for enabledCategories != -1)
    {
      v188 = v196;
      *&v187 = v195;
      swift_once();
      v67 = *&v187;
      v66 = v188;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v68 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v69 = v58 == v59;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v70 = v59;
          v59 = *(v68 + 16);
          LODWORD(v204) = v189;
          BYTE4(v204) = v69;
          *(&v204 + 1) = &type metadata for KickModifier;
          v205 = v4;
          v206 = v5;
          v207 = v66;
          v208 = v67;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v71 = v59;
          LODWORD(v59) = v70;
          v72 = v71;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
        }

        else
        {
          outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
        }

        a1 = v180;
        LODWORD(v9) = v179;
      }

      else
      {
        outlined consume of Animation.Function(*&v62.f64[0], *&v62.f64[1], v63, v65, v64, v192);
      }

      v108 = one-time initialization token for animationState;

      if (v108 == -1)
      {
LABEL_85:
        v74 = *(&static Signpost.animationState + 1);
        v73 = static Signpost.animationState;
        LOBYTE(v80) = word_1ED5283E8;
        LOBYTE(v32) = HIBYTE(word_1ED5283E8);
        v109 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v204 = __PAIR128__(v74, v73);
        LOBYTE(v205) = v80;
        BYTE1(v205) = v32;
        BYTE2(v205) = v109;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v120 = v178;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          a4 = v181;
          *(v181 + 5) = v120;
          goto LABEL_119;
        }

        v110 = one-time initialization token for _signpostLog;

        if (v110 != -1)
        {
          goto LABEL_194;
        }

        goto LABEL_87;
      }
    }

    swift_once();
    goto LABEL_85;
  }

  v176 = v21;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v204) = 0;
  v36.n128_f64[0] = v34;
  v37.n128_f64[0] = v35;
  v178 = v33;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v32, v30, v9, v36, v37, v28);
  v38 = AGGraphGetCurrentAttribute();
  v39 = v38;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    v41 = 0;
  }

  else
  {
    v41 = v38;
  }

  LODWORD(v188) = v41;
  (*(*v32 + 96))(&v199);
  v42 = *&v199.f64[1];
  v43 = *&v199.f64[0];
  v44 = v200;
  a4 = v201;
  v198 = NAN;
  v197 = NAN;
  v196 = 0x3FF0000000000000;
  v195 = NAN;
  v204 = v199;
  v205 = *&v200;
  v206 = v201;
  v207 = v202;
  v45 = v202;
  LODWORD(v190) = v203;
  LOBYTE(v208) = v203;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v204, &v198, &v197, &v196, &v195);
  v4 = v198;
  *&v5 = v197;
  v46 = v196;
  v47 = v195;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_46;
    }

    v48 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v189) = Counter;
    if (v48)
    {
      v175 = v32;
      v49 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v50 = *(v49 + 16);
        LODWORD(v204) = v188;
        BYTE4(v204) = v39 == Counter;
        *(&v204 + 1) = &type metadata for KickModifier;
        v205 = v4;
        v206 = v5;
        v207 = v46;
        v208 = v47;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v188 = v51;

        v52 = v50;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
      }

      else
      {
        outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
      }

      v32 = v175;
    }

    else
    {
      outlined consume of Animation.Function(v43, v42, v44, a4, v45, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v176;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_189;
    }

LABEL_46:
    v73 = *(&static Signpost.animationState + 1);
    v9 = static Signpost.animationState;
    v74 = word_1ED5283E8;
    v75 = HIBYTE(word_1ED5283E8);
    v76 = byte_1ED5283EA;
    v77 = static os_signpost_type_t.event.getter();
    v204 = __PAIR128__(v73, v9);
    LOBYTE(v205) = v74;
    BYTE1(v205) = v75;
    BYTE2(v205) = v76;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
LABEL_54:
      a1 = v180;
      a4 = v181;
      LODWORD(v9) = v179;
      goto LABEL_119;
    }

    LODWORD(v190) = v77;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v209, &v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v78 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18DDAF080;
    v79 = AGGraphGetCurrentAttribute();
    v80 = v189;
    if (v79 == v189)
    {
      __break(1u);
    }

    else
    {
      v81 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v82 = MEMORY[0x1E69E6870];
      *(v59 + 56) = MEMORY[0x1E69E6810];
      *(v59 + 64) = v82;
      *(v59 + 32) = Counter;
      v83 = AGGraphGetCurrentAttribute();
      if (v83 != v80)
      {
        v84 = MEMORY[0x1E69E76D0];
        *(v59 + 96) = MEMORY[0x1E69E7668];
        *(v59 + 104) = v84;
        *(v59 + 72) = v83;
        *(v59 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v59 + 144) = v85;
        *(v59 + 112) = 0xD000000000000033;
        *(v59 + 120) = 0x800000018DD7EE10;
        if ((v75 & 1) == 0)
        {
          v175 = v32;
          if (v9 == 20)
          {
            v87 = 3;
          }

          else
          {
            v87 = 4;
          }

          v88 = bswap32(v9) | (4 * (v9 >> 16));
          a1 = v190;
          v89 = (v191 + 16);
          v182 = *(v191 + 16);
          v90 = v182(v192, v176, v194);
          v91 = 0;
          LOBYTE(v199.f64[0]) = 1;
          v190 = v87;
          v187 = 16 * v87;
          v183 = v89;
          v188 = (v89 - 1);
          *&v186 = v59 + 32;
          v185 = v9;
          do
          {
            v189 = &v175;
            MEMORY[0x1EEE9AC00](v90);
            a4 = &v175 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
            v45 = (a4 + 8);
            v94 = v190;
            v95 = a4 + 8;
            do
            {
              *(v95 - 1) = 0;
              *v95 = 0;
              v95 += 16;
              --v94;
            }

            while (v94);
            v96 = *&v186 + 40 * v91;
            v97 = v190;
            while (1)
            {
              v98 = *(v59 + 16);
              if (v91 == v98)
              {
                break;
              }

              if (v91 >= v98)
              {
                goto LABEL_178;
              }

              ++v91;
              outlined init with copy of AnyTrackedValue(v96, &v204);
              v99 = v206;
              v100 = v207;
              v101 = __swift_project_boxed_opaque_existential_1(&v204, v206);
              v102 = v99;
              v89 = v101;
              *(v45 - 8) = CVarArg.kdebugValue(_:)(v88 | a1, v102, v100);
              *v45 = v103 & 1;
              v45 += 16;
              v92 = __swift_destroy_boxed_opaque_existential_1(&v204);
              v96 += 40;
              if (!--v97)
              {
                goto LABEL_67;
              }
            }

            LOBYTE(v199.f64[0]) = 0;
LABEL_67:
            v104 = v185;
            if (v185 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v104 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v9 = *v188;
            v89 = v192;
            v105 = v194;
            (*v188)(v192, v194);
            v106 = __swift_project_value_buffer(v105, static OSSignpostID.continuation);
            v90 = v182(v89, v106, v105);
          }

          while ((LOBYTE(v199.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
          v107 = v194;
          v9(v192, v194);
          v9(v176, v107);

          a1 = v180;
          a4 = v181;
          LODWORD(v9) = v179;
          goto LABEL_119;
        }

        LOBYTE(v195) = v190;
        v198 = COERCE_DOUBLE(&dword_18D018000);
        v197 = v78;
        *&v204 = v9;
        *(&v204 + 1) = v73;
        LOBYTE(v205) = v74;
        *&v199.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v199.f64[1] = 39;
        LOBYTE(v200) = 2;
        v196 = v59;
        v86 = v176;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v204, v176, &v199, &v196);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
        (*(v191 + 8))(v86, v194);

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_87:
    LODWORD(v192) = Counter;
    v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v59)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v114;
    *(a1 + 32) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == v59)
    {
      goto LABEL_196;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v116;
    *(a1 + 72) = v115;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 144) = v117;
    *(a1 + 112) = 0xD000000000000033;
    *(a1 + 120) = 0x800000018DD7EE10;
    if (v32)
    {
      LOBYTE(v195) = v192;
      v198 = COERCE_DOUBLE(&dword_18D018000);
      v197 = v111;
      *&v204 = v73;
      *(&v204 + 1) = v74;
      LOBYTE(v205) = v80;
      *&v199.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v199.f64[1] = 39;
      LOBYTE(v200) = 2;
      v196 = a1;
      v118 = v176;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v204, v176, &v199, &v196);
      v119 = v178;

      (*(v191 + 8))(v118, v194);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      a4 = v181;
      *(v181 + 5) = v119;
      a1 = v180;
    }

    else
    {
      v121 = v73;
      v122 = v73 == 20 ? 3 : 4;
      v97 = bswap32(v73) | (4 * WORD1(v73));
      v45 = v192;
      v89 = (v191 + 16);
      v182 = *(v191 + 16);
      v123 = v182(v190, v176, v194);
      v91 = 0;
      LOBYTE(v199.f64[0]) = 1;
      v192 = v122;
      v187 = 16 * v122;
      v183 = v89;
      v188 = (v89 - 1);
      *&v186 = a1 + 32;
      v185 = v121;
      do
      {
        v189 = &v175;
        MEMORY[0x1EEE9AC00](v123);
        v125 = &v175 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v125 + 8;
        v126 = v192;
        v127 = v125 + 8;
        do
        {
          *(v127 - 1) = 0;
          *v127 = 0;
          v127 += 16;
          v126 = (v126 - 1);
        }

        while (v126);
        v128 = *&v186 + 40 * v91;
        v129 = v192;
        while (1)
        {
          v130 = *(a1 + 16);
          if (v91 == v130)
          {
            break;
          }

          if (v91 >= v130)
          {
            goto LABEL_179;
          }

          ++v91;
          outlined init with copy of AnyTrackedValue(v128, &v204);
          v131 = v206;
          v132 = v207;
          v133 = __swift_project_boxed_opaque_existential_1(&v204, v206);
          v134 = v131;
          v89 = v133;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v97 | v45, v134, v132);
          *a4 = v135 & 1;
          a4 += 16;
          v92 = __swift_destroy_boxed_opaque_existential_1(&v204);
          v128 += 40;
          v129 = (v129 - 1);
          if (!v129)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v199.f64[0]) = 0;
LABEL_104:
        v136 = v185;
        if (v185 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v125[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v125[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v125[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v136 != 20 && v125[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v137 = *v188;
        v138 = v190;
        v89 = v194;
        (*v188)(v190, v194);
        v139 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
        v123 = v182(v138, v139, v89);
      }

      while ((LOBYTE(v199.f64[0]) & 1) != 0);
      v9 = v178;

      v140 = v194;
      v137(v138, v194);
      v137(v176, v140);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v209, &lazy cache variable for type metadata for AnimatableAttributeHelper<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for AnimatableAttributeHelper);
      a4 = v181;
      *(v181 + 5) = v9;
      a1 = v180;
      LODWORD(v9) = v179;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v177);

LABEL_120:
    *(a4 + 2) = v6;
    *(a4 + 3) = v7;
    a4[32] = 0;
LABEL_121:
    v97 = *(a4 + 5);
    if (!v97)
    {
      return;
    }

    v199 = *a1;

    LOBYTE(v209) = 0;
    v141 = specialized AnimatorState.update(_:at:environment:)(&v199, v9, v28);
    v92 = AGGraphGetCurrentAttribute();
    v45 = *MEMORY[0x1E698D3F8];
    if (v92 == v45)
    {
      LODWORD(v91) = 0;
    }

    else
    {
      LODWORD(v91) = v92;
    }

    v89 = &type metadata instantiation cache for TupleTypeDescription;
    if (v141)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v152 = v89[77];
    if (*(v152 + 16) >= 0x43uLL)
    {
      if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v209) = v91;
        BYTE4(v209) = v92 == v45;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v44 = *(&static Signpost.animationState + 1);
    v91 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v39 = HIBYTE(word_1ED5283E8);
    v144 = byte_1ED5283EA;
    v32 = static os_signpost_type_t.end.getter();
    v209 = __PAIR128__(v44, v91);
    LOBYTE(v210) = Counter;
    BYTE1(v210) = v39;
    BYTE2(v210) = v144;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v181 = a4;
    v145 = one-time initialization token for _signpostLog;
    v43 = v183;

    if (v145 != -1)
    {
      swift_once();
    }

    v180 = a1;
    *&v42 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v45)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v187 = v46;
    v186 = v47;
    swift_once();
    v47 = v186;
    v46 = v187;
  }

  v43 = AGGraphGetAttributeGraph();
  v146 = AGGraphGetCounter();

  v147 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v147;
  *(a4 + 4) = v146;
  v148 = AGGraphGetCurrentAttribute();
  if (v148 == v45)
  {
    goto LABEL_186;
  }

  v149 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v149;
  *(a4 + 18) = v148;
  v89 = 0x800000018DD7EE10;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v150;
  *(a4 + 14) = 0xD000000000000033;
  *(a4 + 15) = 0x800000018DD7EE10;
  if (v39)
  {
    LOBYTE(v195) = v32;
    v198 = COERCE_DOUBLE(&dword_18D018000);
    v197 = *&v42;
    *&v209 = v91;
    *(&v209 + 1) = v44;
    LOBYTE(v210) = Counter;
    *&v204 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v204 + 1) = 37;
    LOBYTE(v205) = 2;
    v196 = a4;
    v151 = v184;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v195, &v198, &v197, &v209, v184, &v204, &v196);

    (*(v191 + 8))(v151, v194);
    goto LABEL_173;
  }

  v153 = v91;
  if (v91 == 20)
  {
    v154 = 3;
  }

  else
  {
    v154 = 4;
  }

  v45 = bswap32(v91) | (4 * WORD1(v91));
  LODWORD(v91) = v32;
  v155 = v191 + 16;
  v185 = *(v191 + 16);
  v156 = (v185)(v193, v184, v194);
  v97 = 0;
  LOBYTE(v204) = 1;
  v189 = (16 * v154);
  v191 = v155;
  v190 = (v155 - 8);
  v188 = a4 + 32;
  v187 = v153;
  v186 = *&v154;
  do
  {
    v192 = &v175;
    MEMORY[0x1EEE9AC00](v156);
    a1 = &v175 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
    v158 = (a1 + 8);
    v159 = v154;
    v160 = (a1 + 8);
    do
    {
      *(v160 - 1) = 0;
      *v160 = 0;
      v160 += 16;
      --v159;
    }

    while (v159);
    v161 = &v188[40 * v97];
    while (1)
    {
      v162 = *(a4 + 2);
      if (v97 == v162)
      {
        break;
      }

      if (v97 >= v162)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v173 = v92;
        swift_once();
        v92 = v173;
LABEL_127:
        v142 = v89[77];
        if (*(v142 + 16) >= 0x43uLL)
        {
          if (*(v142 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v209) = v91;
            BYTE4(v209) = v92 == v45;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v143 = one-time initialization token for animationState;
          v183 = v97;

          if (v143 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v174 = v92;
        swift_once();
        v92 = v174;
        goto LABEL_140;
      }

      ++v97;
      outlined init with copy of AnyTrackedValue(v161, &v209);
      v163 = *(&v210 + 1);
      v164 = v211;
      v165 = __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      v166 = v163;
      v89 = v165;
      *(v158 - 1) = CVarArg.kdebugValue(_:)(v45 | v91, v166, v164);
      *v158 = v167 & 1;
      v158 += 16;
      v92 = __swift_destroy_boxed_opaque_existential_1(&v209);
      v161 += 40;
      if (!--v154)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v204) = 0;
LABEL_158:
    v168 = v187;
    if (v187 == 20)
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

    if (v168 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v169 = *v190;
    v170 = v193;
    v89 = v194;
    (*v190)(v193, v194);
    v171 = __swift_project_value_buffer(v89, static OSSignpostID.continuation);
    v156 = (v185)(v170, v171, v89);
    v154 = *&v186;
  }

  while ((v204 & 1) != 0);

  v172 = v194;
  v169(v193, v194);
  v169(v184, v172);
LABEL_173:

  a1 = v180;
  a4 = v181;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_175:
  *a1 = v199;
  *(a1 + 16) = 1;
}

{
  LODWORD(v8) = a3;
  v212 = *MEMORY[0x1E69E9840];
  v193 = type metadata accessor for OSSignpostID();
  v190 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v12 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v172 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v191 = &v172 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v172 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v172 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v183 = &v172 - v24;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v26)
    {
      v27 = *Value;
    }

    else
    {
      v27 = -INFINITY;
    }
  }

  else
  {
    v27 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_124;
  }

  v28 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  if (a4[32])
  {
    goto LABEL_123;
  }

  v5 = *(a4 + 2);
  v4 = *(a4 + 3);
  v6 = v28.f64[1];
  v29 = v28.f64[0] == *&v5 && v28.f64[1] == v4;
  if (v29)
  {
    goto LABEL_123;
  }

  v177 = v8;
  v189 = v12;
  v174 = v15;
  v178 = v28;
  AGGraphClearUpdate();
  v30 = *(a4 + 1);
  v208 = *a4;
  v209 = v30;
  v210 = *(a4 + 2);
  v180 = a4;
  v211 = *(a4 + 12);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
  v31 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v32 = Transaction.effectiveAnimation.getter(v31);
  if (v32)
  {
    v33 = v32;
    LODWORD(v8) = v177;
  }

  else
  {
    LODWORD(v8) = v177;
    if (!a2)
    {

      a4 = v180;
      goto LABEL_122;
    }

    v33 = a2;
  }

  v34 = *(&v210 + 1);
  v35 = v178.f64[0] - *&v5;
  v36 = v6 - v4;
  v27 = *AGGraphGetValue();
  v179 = a1;
  v175 = v31;
  if (!v34)
  {
    *&v198.f64[0] = &type metadata for UnitPoint;
    type metadata accessor for UnitPoint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v52 = swift_dynamicCast();
    if (v52)
    {
      v53 = v203;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = *(&v203 + 1);
    }

    else
    {
      v54 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v55, v31, v53, v54, v35, v36, v27);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = CurrentAttribute;
    LODWORD(v58) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v59 = 0;
    }

    else
    {
      v59 = CurrentAttribute;
    }

    LODWORD(v188) = v59;
    v60 = *(*v33 + 96);
    v173 = v33;
    v60(&v198);
    v61 = v198;
    v62 = v199;
    v63 = v201;
    v197 = NAN;
    v196 = NAN;
    *&v195 = 1.0;
    v194 = NAN;
    v203 = v198;
    v204 = *&v199;
    v205 = v200;
    v64 = v200;
    v206 = v201;
    LODWORD(v191) = v202;
    LOBYTE(v207) = v202;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v197, &v196, &v195, &v194);
    v4 = v197;
    *&v5 = v196;
    v6 = *&v195;
    v65 = v194;
    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = v194;
      swift_once();
      v65 = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v66 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v67 = v57 == v58;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v68 = v58;
          v58 = *(v66 + 16);
          LODWORD(v203) = v188;
          BYTE4(v203) = v67;
          *(&v203 + 1) = &type metadata for UnitPoint;
          v204 = v4;
          v205 = v5;
          v206 = *&v6;
          v207 = v65;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

          v69 = v58;
          LODWORD(v58) = v68;
          v70 = v69;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v191);
        }

        else
        {
          outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v191);
        }

        a1 = v179;
        LODWORD(v8) = v177;
      }

      else
      {
        outlined consume of Animation.Function(*&v61.f64[0], *&v61.f64[1], v62, v64, v63, v191);
      }

      v105 = one-time initialization token for animationState;

      if (v105 == -1)
      {
LABEL_87:
        v72 = *(&static Signpost.animationState + 1);
        v71 = static Signpost.animationState;
        LOBYTE(v78) = word_1ED5283E8;
        LOBYTE(v33) = HIBYTE(word_1ED5283E8);
        v106 = byte_1ED5283EA;
        LODWORD(Counter) = static os_signpost_type_t.begin.getter();
        v203 = __PAIR128__(v72, v71);
        LOBYTE(v204) = v78;
        BYTE1(v204) = v33;
        BYTE2(v204) = v106;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v117 = v176;

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
          a4 = v180;
          *(v180 + 40) = v117;
          goto LABEL_121;
        }

        v107 = one-time initialization token for _signpostLog;

        if (v107 != -1)
        {
          goto LABEL_197;
        }

        goto LABEL_89;
      }
    }

    swift_once();
    goto LABEL_87;
  }

  v174 = v20;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v203) = 0;
  v37.n128_f64[0] = v35;
  v38.n128_f64[0] = v36;
  v176 = v34;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v33, v31, v8, v37, v38, v27);
  v39 = AGGraphGetCurrentAttribute();
  v40 = v39;
  LODWORD(Counter) = *MEMORY[0x1E698D3F8];
  if (v39 == *MEMORY[0x1E698D3F8])
  {
    v42 = 0;
  }

  else
  {
    v42 = v39;
  }

  LODWORD(v187) = v42;
  (*(*v33 + 96))(&v198);
  v43 = *&v198.f64[1];
  v44 = *&v198.f64[0];
  v45 = v199;
  a4 = v200;
  v197 = NAN;
  v196 = NAN;
  *&v195 = 1.0;
  v194 = NAN;
  v203 = v198;
  v204 = *&v199;
  v205 = v200;
  v46 = v201;
  v206 = v201;
  LODWORD(v189) = v202;
  LOBYTE(v207) = v202;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v203, &v197, &v196, &v195, &v194);
  v4 = v197;
  *&v5 = v196;
  v6 = *&v195;
  v47 = v194;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_48;
    }

    v29 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v188) = Counter;
    if (v29)
    {
      v173 = v33;
      v48 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v49 = *(v48 + 16);
        LODWORD(v203) = LODWORD(v187);
        BYTE4(v203) = v40 == Counter;
        *(&v203 + 1) = &type metadata for UnitPoint;
        v204 = v4;
        v205 = v5;
        v206 = *&v6;
        v207 = v47;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v187 = v50;

        v51 = v49;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v44, v43, v45, a4, v46, v189);
      }

      else
      {
        outlined consume of Animation.Function(v44, v43, v45, a4, v46, v189);
      }

      v33 = v173;
    }

    else
    {
      outlined consume of Animation.Function(v44, v43, v45, a4, v46, v189);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
    LODWORD(Counter) = v174;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_192;
    }

LABEL_48:
    v71 = *(&static Signpost.animationState + 1);
    v8 = static Signpost.animationState;
    v72 = word_1ED5283E8;
    v73 = HIBYTE(word_1ED5283E8);
    v74 = byte_1ED5283EA;
    v75 = static os_signpost_type_t.event.getter();
    v203 = __PAIR128__(v71, v8);
    LOBYTE(v204) = v72;
    BYTE1(v204) = v73;
    BYTE2(v204) = v74;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
LABEL_56:
      a1 = v179;
      a4 = v180;
      LODWORD(v8) = v177;
      goto LABEL_121;
    }

    LODWORD(v189) = v75;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v208, &v203, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v76 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v58 = COERCE_DOUBLE(swift_allocObject());
    *(v58 + 16) = xmmword_18DDAF080;
    v77 = AGGraphGetCurrentAttribute();
    v78 = v188;
    if (v77 == v188)
    {
      __break(1u);
    }

    else
    {
      v79 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v80 = MEMORY[0x1E69E6870];
      *(v58 + 56) = MEMORY[0x1E69E6810];
      *(v58 + 64) = v80;
      *(v58 + 32) = Counter;
      v81 = AGGraphGetCurrentAttribute();
      if (v81 != v78)
      {
        v82 = MEMORY[0x1E69E76D0];
        *(v58 + 96) = MEMORY[0x1E69E7668];
        *(v58 + 104) = v82;
        *(v58 + 72) = v81;
        *(v58 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v58 + 144) = v83;
        *(v58 + 112) = 0x6E696F5074696E55;
        *(v58 + 120) = 0xE900000000000074;
        if ((v73 & 1) == 0)
        {
          v173 = v33;
          if (v8 == 20)
          {
            v85 = 3;
          }

          else
          {
            v85 = 4;
          }

          v86 = bswap32(v8) | (4 * (v8 >> 16));
          a1 = v189;
          v44 = v190 + 16;
          v181 = *(v190 + 16);
          v87 = v181(v191, v174, v193);
          v88 = 0;
          LOBYTE(v198.f64[0]) = 1;
          v189 = v85;
          v186 = 16 * v85;
          v182 = v44;
          *&v187 = v44 - 8;
          v185 = v58 + 32;
          v184 = v8;
          do
          {
            v188 = &v172;
            MEMORY[0x1EEE9AC00](v87);
            a4 = &v172 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
            v46 = (a4 + 8);
            v91 = v189;
            v92 = a4 + 8;
            do
            {
              *(v92 - 1) = 0;
              *v92 = 0;
              v92 += 16;
              --v91;
            }

            while (v91);
            v93 = v185 + 40 * v88;
            v94 = v189;
            while (1)
            {
              v95 = *(v58 + 16);
              if (v88 == v95)
              {
                break;
              }

              if (v88 >= v95)
              {
                goto LABEL_181;
              }

              ++v88;
              outlined init with copy of AnyTrackedValue(v93, &v203);
              v96 = v205;
              v97 = v206;
              v98 = __swift_project_boxed_opaque_existential_1(&v203, v205);
              v99 = v96;
              v44 = v98;
              *(v46 - 8) = CVarArg.kdebugValue(_:)(v86 | a1, v99, v97);
              *v46 = v100 & 1;
              v46 += 16;
              v89 = __swift_destroy_boxed_opaque_existential_1(&v203);
              v93 += 40;
              if (!--v94)
              {
                goto LABEL_69;
              }
            }

            LOBYTE(v198.f64[0]) = 0;
LABEL_69:
            v101 = v184;
            if (v184 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a4[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a4[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v101 != 20 && a4[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v8 = **&v187;
            v44 = v191;
            v102 = v193;
            (**&v187)(v191, v193);
            v103 = __swift_project_value_buffer(v102, static OSSignpostID.continuation);
            v87 = v181(v44, v103, v102);
          }

          while ((LOBYTE(v198.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
          v104 = v193;
          v8(v191, v193);
          v8(v174, v104);

          a1 = v179;
          a4 = v180;
          LODWORD(v8) = v177;
          goto LABEL_121;
        }

        LOBYTE(v194) = v189;
        v197 = COERCE_DOUBLE(&dword_18D018000);
        v196 = v76;
        *&v203 = v8;
        *(&v203 + 1) = v71;
        LOBYTE(v204) = v72;
        *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
        *&v198.f64[1] = 39;
        LOBYTE(v199) = 2;
        v195 = v58;
        v84 = v174;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v203, v174, &v198, &v195);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
        (*(v190 + 8))(v84, v193);

        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_89:
    LODWORD(v191) = Counter;
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v58)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v109 = AGGraphGetAttributeGraph();
    v110 = AGGraphGetCounter();

    v111 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v111;
    *(a1 + 32) = v110;
    v112 = AGGraphGetCurrentAttribute();
    if (v112 == v58)
    {
      goto LABEL_199;
    }

    v113 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v113;
    *(a1 + 72) = v112;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a1 + 144) = v114;
    *(a1 + 112) = 0x6E696F5074696E55;
    *(a1 + 120) = 0xE900000000000074;
    if (v33)
    {
      LOBYTE(v194) = v191;
      v197 = COERCE_DOUBLE(&dword_18D018000);
      v196 = v108;
      *&v203 = v71;
      *(&v203 + 1) = v72;
      LOBYTE(v204) = v78;
      *&v198.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v198.f64[1] = 39;
      LOBYTE(v199) = 2;
      v195 = a1;
      v115 = v174;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v203, v174, &v198, &v195);
      v116 = v176;

      (*(v190 + 8))(v115, v193);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
      a4 = v180;
      *(v180 + 40) = v116;
      a1 = v179;
    }

    else
    {
      v118 = v71;
      v119 = v71 == 20 ? 3 : 4;
      v94 = (bswap32(v71) | (4 * WORD1(v71)));
      v46 = v191;
      v44 = v190 + 16;
      v181 = *(v190 + 16);
      v120 = v181(v189, v174, v193);
      v88 = 0;
      LOBYTE(v198.f64[0]) = 1;
      v191 = v119;
      v186 = 16 * v119;
      v182 = v44;
      *&v187 = v44 - 8;
      v185 = a1 + 32;
      v184 = v118;
      do
      {
        v188 = &v172;
        MEMORY[0x1EEE9AC00](v120);
        v122 = &v172 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = v122 + 8;
        v123 = v191;
        v124 = v122 + 8;
        do
        {
          *(v124 - 1) = 0;
          *v124 = 0;
          v124 += 16;
          --v123;
        }

        while (v123);
        v125 = v185 + 40 * v88;
        v126 = v191;
        while (1)
        {
          v127 = *(a1 + 16);
          if (v88 == v127)
          {
            break;
          }

          if (v88 >= v127)
          {
            goto LABEL_182;
          }

          ++v88;
          outlined init with copy of AnyTrackedValue(v125, &v203);
          v128 = v205;
          v129 = v206;
          v130 = __swift_project_boxed_opaque_existential_1(&v203, v205);
          v131 = v128;
          v44 = v130;
          *(a4 - 1) = CVarArg.kdebugValue(_:)(v94 | v46, v131, v129);
          *a4 = v132 & 1;
          a4 += 16;
          v89 = __swift_destroy_boxed_opaque_existential_1(&v203);
          v125 += 40;
          if (!--v126)
          {
            goto LABEL_106;
          }
        }

        LOBYTE(v198.f64[0]) = 0;
LABEL_106:
        v133 = v184;
        if (v184 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v122[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v122[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v122[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v133 != 20 && v122[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v134 = **&v187;
        v135 = v189;
        v44 = v193;
        (**&v187)(v189, v193);
        v136 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
        v120 = v181(v135, v136, v44);
      }

      while ((LOBYTE(v198.f64[0]) & 1) != 0);
      v8 = v176;

      v137 = v193;
      v134(v135, v193);
      v134(v174, v137);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v208, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnitPoint>, lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint, &type metadata for UnitPoint, type metadata accessor for AnimatableAttributeHelper);
      a4 = v180;
      *(v180 + 40) = v8;
      a1 = v179;
      LODWORD(v8) = v177;
    }

LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v175);

LABEL_122:
    v28 = v178;
LABEL_123:
    *(a4 + 1) = v28;
    a4[32] = 0;
LABEL_124:
    v94 = *(a4 + 5);
    if (!v94)
    {
      return;
    }

    v198 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));

    LOBYTE(v208) = 0;
    v138 = specialized AnimatorState.update(_:at:environment:)(&v198, v8, v27);
    v89 = AGGraphGetCurrentAttribute();
    v46 = *MEMORY[0x1E698D3F8];
    if (v89 == v46)
    {
      LODWORD(v88) = 0;
    }

    else
    {
      LODWORD(v88) = v89;
    }

    v44 = &type metadata instantiation cache for TupleTypeDescription;
    if (v138)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v149 = *(v44 + 616);
    if (*(v149 + 16) >= 0x43uLL)
    {
      if (*(v149 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v208) = v88;
        BYTE4(v208) = v89 == v46;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v45 = *(&static Signpost.animationState + 1);
    v88 = static Signpost.animationState;
    LODWORD(Counter) = word_1ED5283E8;
    v40 = HIBYTE(word_1ED5283E8);
    v141 = byte_1ED5283EA;
    v33 = static os_signpost_type_t.end.getter();
    v208 = __PAIR128__(v45, v88);
    LOBYTE(v209) = Counter;
    BYTE1(v209) = v40;
    BYTE2(v209) = v141;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v180 = a4;
    v142 = one-time initialization token for _signpostLog;
    v44 = v182;

    if (v142 != -1)
    {
      swift_once();
    }

    v179 = a1;
    *&v43 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v46)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    *&v186 = v47;
    swift_once();
    v47 = *&v186;
  }

  v44 = AGGraphGetAttributeGraph();
  v143 = AGGraphGetCounter();

  v144 = MEMORY[0x1E69E6870];
  *(a4 + 7) = MEMORY[0x1E69E6810];
  *(a4 + 8) = v144;
  *(a4 + 4) = v143;
  v145 = AGGraphGetCurrentAttribute();
  if (v145 == v46)
  {
    goto LABEL_189;
  }

  v146 = MEMORY[0x1E69E76D0];
  *(a4 + 12) = MEMORY[0x1E69E7668];
  *(a4 + 13) = v146;
  *(a4 + 18) = v145;
  *(a4 + 17) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a4 + 18) = v147;
  *(a4 + 14) = 0x6E696F5074696E55;
  *(a4 + 15) = 0xE900000000000074;
  if (v40)
  {
    LOBYTE(v194) = v33;
    v197 = COERCE_DOUBLE(&dword_18D018000);
    v196 = *&v43;
    *&v208 = v88;
    *(&v208 + 1) = v45;
    LOBYTE(v209) = Counter;
    *&v203 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v203 + 1) = 37;
    LOBYTE(v204) = 2;
    v195 = a4;
    v148 = v183;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v194, &v197, &v196, &v208, v183, &v203, &v195);

    (*(v190 + 8))(v148, v193);
    goto LABEL_176;
  }

  v150 = v88;
  if (v88 == 20)
  {
    v151 = 3;
  }

  else
  {
    v151 = 4;
  }

  v94 = (bswap32(v88) | (4 * WORD1(v88)));
  LODWORD(v88) = v33;
  v152 = v190 + 16;
  v184 = *(v190 + 16);
  v153 = (v184)(v192, v183, v193);
  v46 = 0;
  LOBYTE(v203) = 1;
  v188 = (16 * v151);
  v190 = v152;
  v189 = (v152 - 8);
  *&v187 = a4 + 32;
  v186 = v150;
  v185 = v151;
  do
  {
    v191 = &v172;
    MEMORY[0x1EEE9AC00](v153);
    a1 = &v172 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    v155 = (a1 + 8);
    v156 = v151;
    v157 = (a1 + 8);
    do
    {
      *(v157 - 1) = 0;
      *v157 = 0;
      v157 += 16;
      --v156;
    }

    while (v156);
    v158 = *&v187 + 40 * v46;
    while (1)
    {
      v159 = *(a4 + 2);
      if (v46 == v159)
      {
        break;
      }

      if (v46 >= v159)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v170 = v89;
        swift_once();
        v89 = v170;
LABEL_130:
        v139 = *(v44 + 616);
        if (*(v139 + 16) >= 0x43uLL)
        {
          if (*(v139 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v208) = v88;
            BYTE4(v208) = v89 == v46;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v140 = one-time initialization token for animationState;
          v182 = v94;

          if (v140 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v171 = v89;
        swift_once();
        v89 = v171;
        goto LABEL_143;
      }

      ++v46;
      outlined init with copy of AnyTrackedValue(v158, &v208);
      v160 = *(&v209 + 1);
      v161 = v210;
      v162 = __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
      v163 = v160;
      v44 = v162;
      *(v155 - 1) = CVarArg.kdebugValue(_:)(v94 | v88, v163, v161);
      *v155 = v164 & 1;
      v155 += 16;
      v89 = __swift_destroy_boxed_opaque_existential_1(&v208);
      v158 += 40;
      if (!--v151)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v203) = 0;
LABEL_161:
    v165 = v186;
    if (v186 == 20)
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

    if (v165 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v166 = *v189;
    v167 = v192;
    v44 = v193;
    (*v189)(v192, v193);
    v168 = __swift_project_value_buffer(v44, static OSSignpostID.continuation);
    v153 = (v184)(v167, v168, v44);
    v151 = v185;
  }

  while ((v203 & 1) != 0);

  v169 = v193;
  v166(v192, v193);
  v166(v183, v169);
LABEL_176:

  a1 = v179;
  a4 = v180;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(a4 + 5) = 0;
LABEL_178:
  *a1 = vmulq_f64(v198, vdupq_n_s64(0x3F80000000000000uLL));
  *(a1 + 16) = 1;
}

void specialized HierarchicalShapeStyle.apply<A>(_:to:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = HIDWORD(a2);
  v7 = *(a3 + 24);
  if (a4)
  {
    v8 = a4;
    if (v7 == 3)
    {
      type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<ForegroundMaterialStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<ForegroundMaterialStyle>, &type metadata for ForegroundMaterialStyle, &protocol witness table for ForegroundMaterialStyle);
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      *(v10 + 28) = v6;
      *(v10 + 32) = v8;
      outlined copy of Material.ID(a1, a2);
      outlined copy of Material.ID(a1, a2);
      outlined consume of Material.ID(a1, a2);
      outlined consume of _ShapeStyle_Shape.Result(*(a3 + 32), *(a3 + 40));
      *(a3 + 32) = v10;
LABEL_6:
      *(a3 + 40) = 2;
      return;
    }

    outlined copy of Material.ID(a1, a2);
    specialized OffsetShapeStyle._apply(to:)(a3, a1, a2 & 0xFFFFFFFF000000FFLL, v8);

    outlined consume of Material.ID(a1, a2);
  }

  else
  {
    if (v7 == 3)
    {
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<ForegroundMaterialStyle>, &type metadata for ForegroundMaterialStyle, &protocol witness table for ForegroundMaterialStyle, type metadata accessor for ShapeStyleBox);
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      *(v12 + 24) = a2;
      *(v12 + 28) = v6;
      v13 = *(a3 + 32);
      v14 = *(a3 + 40);
      outlined copy of Material.ID(a1, a2);
      outlined consume of _ShapeStyle_Shape.Result(v13, v14);
      *(a3 + 32) = v12;
      goto LABEL_6;
    }

    ForegroundMaterialStyle._apply(to:)(a3);
  }
}

void ForegroundMaterialStyle._apply(to:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 == 1)
  {
    outlined copy of Material.ID(*v1, 1u);
LABEL_6:
    (*(*v3 + 88))(a1);

    return;
  }

  v5 = *(v1 + 12);
  v42 = *(a1 + 3);
  v6 = EnvironmentValues.systemMaterialDefinition.getter();
  if (v6)
  {
    v23 = v3;
    v24 = v4;
    v25 = v5;
    (*(v7 + 8))(&v27, &v23, v6, v7);
    if (*(&v28 + 1))
    {
      outlined init with take of AnyTrackedValue(&v27, &v42);
      v8 = *(&v43 + 1);
      v9 = v44;
      v10 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v3 = project #1 <A>(provider:) in EnvironmentValues.materialProvider(for:)(v10, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      goto LABEL_6;
    }

    outlined destroy of MaterialProvider?(&v27);
  }

  if (*(a1 + 24) <= 2u)
  {
    if (!*(a1 + 24))
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (*(a1 + 24) != 1)
    {
      SystemColorsStyle._apply(to:)(a1);
      return;
    }

    v11 = a1[1];
    if (v11 != a1[2])
    {
      v12 = *a1;
      if (v11 <= 4)
      {
        v13 = a1[1];
        if (v13 > 4u)
        {
          __break(1u);
          return;
        }
      }

      else
      {
        LOBYTE(v13) = 4;
      }

      v14 = *(a1 + 3);
      v15 = *(a1 + 5);
      v38 = *(a1 + 4);
      v39[0] = v15;
      *(v39 + 12) = *(a1 + 92);
      v16 = *(a1 + 1);
      v35[0] = *a1;
      v35[1] = v16;
      v17 = *(a1 + 3);
      v19 = *a1;
      v18 = *(a1 + 1);
      v36 = *(a1 + 2);
      v37 = v17;
      v20 = *(a1 + 5);
      v46 = v38;
      *v47 = v20;
      *&v47[12] = *(a1 + 92);
      v42 = v19;
      v43 = v18;
      v44 = v36;
      v45 = v14;
      v26 = v13;
      v23 = v3;
      v24 = v4;
      v25 = v5;
      outlined copy of Material.ID(v3, v4);
      outlined init with copy of _ShapeStyle_Shape(v35, &v27);
      _ShapeStyle_Shape.resolveStyle(id:material:)(&v26, &v23, &v27);
      outlined consume of Material.ID(v23, v24);
      v40[4] = v46;
      v41[0] = *v47;
      *(v41 + 12) = *&v47[12];
      v40[0] = v42;
      v40[1] = v43;
      v40[2] = v44;
      v40[3] = v45;
      outlined destroy of _ShapeStyle_Shape(v40);
      v46 = v31;
      *v47 = v32;
      *&v47[16] = v33;
      v48 = v34;
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v45 = v30;
      v26 = v12;
      if (*(a1 + 40) == 1)
      {
        v21 = a1[4];
        outlined init with copy of _ShapeStyle_Pack.Style(&v42, &v23);
        outlined copy of _ShapeStyle_Shape.Result(v21, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v21, 1u);
        a1[4] = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Style(&v42, &v23);
        v21 = MEMORY[0x1E69E7CC0];
      }

      v23 = v21;
      _ShapeStyle_Pack.subscript.setter(&v27, &v26, v11);
      outlined destroy of _ShapeStyle_Pack.Style(&v42);
      v22 = v23;
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v22;
      *(a1 + 40) = 1;
    }
  }
}

uint64_t EnvironmentValues.systemMaterialDefinition.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024SystemMaterialDefinitionI033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024SystemMaterialDefinitionI033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v12)
    {
      v19[0] = *(v12 + 9);
    }

    else
    {
      v19[0] = 0u;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for SystemMaterialDefinitionKey.Wrapper?, &type metadata for SystemMaterialDefinitionKey.Wrapper, MEMORY[0x1E69E6720]);
    v11(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
      v15 = v13[10];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *&v19[0] = v14;
    *(&v19[0] + 1) = v15;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>(0);
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v14;
    v20[1] = v15;
    specialized Dictionary.subscript.setter(v20, v6);
  }

LABEL_14:
  v17 = *&v19[0];
  os_unfair_lock_unlock((v3 + 16));

  return v17;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>);
    }
  }
}

void TextForegroundKeyColorModifier.modify(style:environment:)(uint64_t a1, _OWORD *a2)
{
  v6 = *(a1 + 16);
  *v5 = *a2;
  v3 = outlined copy of Text.Style.TextStyleColor(v6);
  v4 = Text.Style.TextStyleColor.baseStyle(in:)(v5, v3);
  outlined consume of Gradient.ProviderTag(v6);
  outlined consume of Gradient.ProviderTag(*(a1 + 16));
  *(a1 + 16) = v4 | 0x4000000000000000;
}

double _ShapeStyle_Shape.resolveStyle(id:material:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 105);
  v12 = *(v3 + 106);
  v34 = v9;
  v35 = v10;
  *&v32[0] = v6;
  BYTE8(v32[0]) = v7;
  HIDWORD(v32[0]) = v8;

  v13 = EnvironmentValues.materialProvider(for:)(v32);
  if (v13)
  {
    v19 = v5;
    v26 = 1;
    v25 = 1;
    *&v27 = v9;
    *(&v27 + 1) = v10;
    LOBYTE(v28) = 3;
    BYTE1(v28) = v12;
    v29 = 0;
    *&v30 = 0;
    BYTE8(v30) = 1;
    memset(v31, 0, 24);
    v31[24] = 1;
    v22 = v30;
    v23[0] = 0uLL;
    *(v23 + 9) = *&v31[9];
    v20 = v27;
    v21 = v28;
    v14 = v11;
    v15 = *(*v13 + 80);
    outlined copy of Material.ID(v6, v7);
    outlined init with copy of Material.Context(&v27, &v34);
    v15(&v24, &v20);
    v11 = v14;

    v32[2] = v22;
    v33[0] = v23[0];
    *(v33 + 9) = *(v23 + 9);
    v32[0] = v20;
    v32[1] = v21;
    outlined destroy of Material.Context(v32);
    v34 = v9;
    v35 = v10;
    v36 = 3;
    v5 = v19;
    v37 = v12;
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v44 = 1;
    outlined destroy of Material.Context(&v34);
    v16 = v24;
    outlined consume of Material.ID(v6, v7);
    v7 = 2;
    outlined copy of Material.ID(v16, 2u);
    outlined consume of Material.ID(v16, 2u);
    v6 = v16;
  }

  else
  {
    v34 = v9;
    v35 = v10;
    v8 |= specialized Material.ResolvedMaterial.Flags.init(environment:)(&v34);
    outlined copy of Material.ID(v6, v7);
  }

  *(a3 + 88) = 1065353216;
  v17 = 1.0;
  *(a3 + 96) = 0;
  *(a3 + 104) = -1;
  if ((v8 & 1) == 0)
  {
    v17 = 0.0;
  }

  *(a3 + 112) = MEMORY[0x1E69E7CC0];
  *a3 = v17;
  *(a3 + 4) = v17;
  *(a3 + 8) = v17;
  result = 2.24711695e307;
  *(a3 + 12) = 0x7FC000003F800000;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 36) = v8;
  *(a3 + 40) = v5;
  *(a3 + 41) = v11;
  *(a3 + 85) = 2;
  return result;
}

uint64_t specialized Material.ResolvedMaterial.Flags.init(environment:)(uint64_t *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v1 = v10;
  v11 = v2;
  EnvironmentValues.colorScheme.getter(&v9);
  v3 = v9;
  v10 = v1;
  v11 = v2;
  v4 = EnvironmentValues._accessibilityReduceTransparency.getter();
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v1, &v10);

    v5 = v10;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v1);
    if (v6)
    {
      v5 = *(v6 + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v3 | 2;
  if ((v4 & 1) == 0)
  {
    v7 = v3;
  }

  if (v5)
  {
    return v7 | 4;
  }

  else
  {
    return v7;
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilityReduceTransparencyI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 2;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 2;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>(0);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>);
    }
  }
}

uint64_t _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a2 + 80);
  v195 = *(a2 + 64);
  v196 = v8;
  v197 = *(a2 + 96);
  v198 = *(a2 + 112);
  v9 = *(a2 + 16);
  v191 = *a2;
  v192 = v9;
  v10 = *(a2 + 48);
  v193 = *(a2 + 32);
  v194 = v10;
  v11 = *a3;
  v12 = *(v3 + 128);
  v13 = *(v3 + 136);
  Value = AGGraphGetValue();
  v15 = *Value;
  v142 = v11;
  if (*(Value + 8))
  {

    swift_retain_n();
    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15);
  }

  else
  {

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v17);
    if (v18)
    {
      v16 = v18[9];
    }

    else
    {
      v16 = 1.0;
    }
  }

  v19 = ResolvedStyledText.layers(for:renderer:deviceScale:)(v5, v12, v13, v16);
  v21 = v20;
  v23 = v22;
  v24 = (*(*v6 + 184))();
  v26 = v25;
  swift_beginAccess();
  v27 = *(v6 + 168);
  v28 = -(v26 - *(v6 + 176));
  swift_beginAccess();
  v148 = v6;
  if ((*(v6 + 43) & 1) == 0)
  {
    v28 = v28 - *(v6 + 104);
  }

  v143 = v19;
  v29 = MEMORY[0x1E69C7148];
  v30 = v7 | 0x200;
  v150 = v24 - v27;
  if (!v5)
  {
    v30 = v7;
  }

  v149 = v30;
  if (v23)
  {
    v31 = *(v3 + 108);
    v32 = *(v3 + 192);
    [swift_unknownObjectRetain() boundingRect];
    x = v199.origin.x;
    y = v199.origin.y;
    width = v199.size.width;
    height = v199.size.height;
    IsNull = CGRectIsNull(v199);
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    if (!IsNull)
    {
      v38 = x;
      v39 = y;
      v40 = width;
      v41 = height;
    }

    v200 = CGRectIntegral(*&v38);
    v42 = v200.origin.x;
    v43 = v200.origin.y;
    v44 = v200.size.width;
    v45 = v200.size.height;
    v46 = swift_allocObject();
    *(v46 + 16) = v23;
    *(v46 + 24) = v42;
    *(v46 + 32) = v43;
    v47 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = static RasterizationOptions.Flags.defaultFlags | v149;
    *(v46 + 40) = -1;
    *(v46 + 44) = 768;
    *(v46 + 48) = v48;
    *(v46 + 52) = 3;
    v175.f64[0] = v28 + v42;
    v175.f64[1] = v43 - v150;
    *&v176 = v44;
    *(&v176 + 1) = v45;
    *&v177 = v32;
    *(&v177 + 1) = v46 | 0xC000000000000000;
    *&v179 = 0;
    v178 = v31;
    DWORD2(v179) = 0;
    v158 = 0uLL;
    LOBYTE(v159) = 3;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v183 = 0u;
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v158, &v183, v4);
    v50 = *(v4 + 200);
    v49 = *(v4 + 208);
    v51 = *(v4 + 216);
    v52 = *(v4 + 224);
    outlined init with copy of DisplayList.Item(&v175, &v183);
    outlined consume of DisplayList.Item.Value(v50, v49, v51, v52);
    *(v4 + 200) = v46 | 0xC000000000000000;
    *(v4 + 208) = v31;
    *(v4 + 216) = 0;
    *(v4 + 224) = 0;
    v53 = v176;
    *(v4 + 160) = vaddq_f64(v175, *(v4 + 160));
    *(v4 + 176) = v53;
    _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
    outlined destroy of DisplayList.Item(&v175);
    swift_unknownObjectRelease();
  }

  v145 = v29[1];
  v146 = *v29;
  v54 = v29[3];
  v144 = v29[2];
  v55 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) init];
  v56 = *(v21 + 16);
  v147 = v55;
  if (v56)
  {
    v57 = *MEMORY[0x1E69C7138];

    v58 = (v21 + 16 * v56 + 24);
    while (1)
    {
      v59 = *(v58 - 1);
      if ((v59 & 0x8000000000000000) != 0)
      {
        break;
      }

      v60 = *(v148 + 264);
      if (v59 >= *(v60 + 16))
      {
        goto LABEL_38;
      }

      v61 = v28;
      v62 = *v58;
      v63 = v60 + 120 * v59;
      v64 = *(v63 + 32);
      v65 = *(v63 + 48);
      v66 = *(v63 + 80);
      v185 = *(v63 + 64);
      v186 = v66;
      v183 = v64;
      v184 = v65;
      v67 = *(v63 + 96);
      v68 = *(v63 + 112);
      v69 = *(v63 + 128);
      v190 = *(v63 + 144);
      v188 = v68;
      v189 = v69;
      v187 = v67;
      swift_unknownObjectRetain();
      outlined init with copy of _ShapeStyle_Pack.Style(&v183, &v175);
      [v55 removeAll];
      LODWORD(v70) = -1.0;
      LODWORD(v71) = -1.0;
      LODWORD(v72) = vcvts_n_f32_u64(v59, 0xAuLL);
      LODWORD(v73) = v57;
      LODWORD(v75) = v145;
      LODWORD(v74) = v146;
      LODWORD(v76) = v144;
      LODWORD(v77) = v54;
      [v55 addColorReplacementFrom:2 to:v70 colorSpace:{v71, v72, v73, v74, v75, v76, v77}];
      v154 = *(v4 + 108);
      v78 = *(v4 + 192);
      v79 = [v55 copyApplyingToDisplayList_];
      [v79 boundingRect];
      v80 = v201.origin.x;
      v81 = v201.origin.y;
      v82 = v201.size.width;
      v83 = v201.size.height;
      v84 = CGRectIsNull(v201);
      if (v84)
      {
        v85 = 0.0;
      }

      else
      {
        v85 = v80;
      }

      if (v84)
      {
        v86 = 0.0;
      }

      else
      {
        v86 = v81;
      }

      if (v84)
      {
        v87 = 0.0;
      }

      else
      {
        v87 = v82;
      }

      if (v84)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = v83;
      }

      v202 = CGRectIntegral(*&v85);
      v89 = v202.origin.x;
      v90 = v202.origin.y;
      v91 = v202.size.width;
      v92 = v202.size.height;
      v93 = swift_allocObject();
      *(v93 + 16) = v79;
      *(v93 + 24) = v89;
      *(v93 + 32) = v90;
      v94 = one-time initialization token for defaultFlags;
      swift_unknownObjectRetain();
      if (v94 != -1)
      {
        swift_once();
      }

      v95 = static RasterizationOptions.Flags.defaultFlags;
      swift_unknownObjectRelease();
      *(v93 + 40) = -1;
      *(v93 + 44) = 768;
      *(v93 + 48) = v149 | v95 | 0x40;
      *(v93 + 52) = 3;
      v96 = v61 + v89;
      v28 = v61;
      *&v167 = v96;
      *(&v167 + 1) = v90 - v150;
      *&v168 = v91;
      *(&v168 + 1) = v92;
      *&v169 = v78;
      *(&v169 + 1) = v93 | 0xC000000000000000;
      v170 = v154;
      v171 = 0;
      v172 = 0;
      v165[0] = v59;
      v165[1] = 0;
      v166 = 1;
      v163[0] = v188;
      v163[1] = v189;
      v164 = v190;
      v158 = v183;
      v159 = v184;
      v160 = v185;
      v161 = v186;
      v162 = v187;
      outlined init with copy of _ShapeStyle_Pack.Style(&v183, v156);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v165, &v158, v4);
      v179 = v162;
      v180 = v163[0];
      v181 = v163[1];
      v175 = v158;
      v176 = v159;
      v182 = v164;
      v177 = v160;
      v178 = v161;
      outlined destroy of _ShapeStyle_Pack.Style?(&v175, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v97 = v172;
      v98 = v171 & 0xFFFFFFFFC000FFFFLL;
      v99 = *(v4 + 64);
      v100 = *(v4 + 80);
      v101 = *(v4 + 32);
      v173[3] = *(v4 + 48);
      v173[4] = v99;
      v174[0] = v100;
      *(v174 + 12) = *(v4 + 92);
      v102 = *(v4 + 16);
      v173[0] = *v4;
      v173[1] = v102;
      v173[2] = v101;
      v153 = v169;
      v155 = v167;
      v151 = v170;
      v152 = v168;
      outlined init with copy of DisplayList.Item(&v167, &v158);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v173);
      *v4 = v155;
      *(v4 + 16) = v152;
      *(v4 + 32) = v153;
      *(v4 + 48) = v151;
      *(v4 + 64) = v98;
      *(v4 + 72) = v97 | 0x100000000;
      *(v4 + 104) = 0x80000000;
      v163[0] = v188;
      v163[1] = v189;
      v164 = v190;
      v158 = v183;
      v159 = v184;
      v160 = v185;
      v161 = v186;
      v162 = v187;
      _ShapeStyle_RenderedShape.render(style:)(&v158);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
      outlined destroy of DisplayList.Item(&v167);
      swift_unknownObjectRelease();
      outlined destroy of _ShapeStyle_Pack.Style(&v183);
      if (v56 == 1)
      {
        goto LABEL_39;
      }

      --v56;
      v58 -= 2;
      v55 = v147;
      if (v56 > *(v21 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    v55 = v147;
  }

  if (v143)
  {
    v103 = one-time initialization token for foregroundKeyColorAnyAlpha;
    swift_unknownObjectRetain();
    if (v103 != -1)
    {
      swift_once();
    }

    v104 = static RBColor.foregroundKeyColorAnyAlpha;
    v105 = dword_1ED566B70;
    v106 = dword_1ED566B74;
    [v55 removeAll];
    LODWORD(v108) = HIDWORD(v104);
    LODWORD(v107) = v104;
    LODWORD(v109) = v105;
    LODWORD(v110) = v106;
    LODWORD(v112) = v145;
    LODWORD(v111) = v146;
    LODWORD(v113) = v144;
    LODWORD(v114) = v54;
    [v55 addColorReplacementFrom:2 to:v107 colorSpace:{v108, v109, v110, v111, v112, v113, v114}];
    v115 = *(v4 + 108);
    v116 = *(v4 + 192);
    v117 = [v55 copyApplyingToDisplayList_];
    [v117 boundingRect];
    v118 = v203.origin.x;
    v119 = v203.origin.y;
    v120 = v203.size.width;
    v121 = v203.size.height;
    v122 = CGRectIsNull(v203);
    v123 = 0.0;
    if (v122)
    {
      v124 = 0.0;
    }

    else
    {
      v124 = v118;
    }

    if (v122)
    {
      v125 = 0.0;
    }

    else
    {
      v125 = v119;
    }

    if (v122)
    {
      v126 = 0.0;
    }

    else
    {
      v126 = v120;
    }

    if (!v122)
    {
      v123 = v121;
    }

    v204 = CGRectIntegral(*(&v123 - 3));
    v127 = v204.origin.x;
    v128 = v204.origin.y;
    v129 = v204.size.width;
    v130 = v204.size.height;
    v131 = swift_allocObject();
    *(v131 + 16) = v117;
    *(v131 + 24) = v127;
    *(v131 + 32) = v128;
    v132 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v132 != -1)
    {
      swift_once();
    }

    v133 = static RasterizationOptions.Flags.defaultFlags;
    swift_unknownObjectRelease();
    *(v131 + 40) = -1;
    *(v131 + 44) = 768;
    *(v131 + 48) = v149 | v133 | 0x40;
    *(v131 + 52) = 3;
    v134 = v131 | 0xC000000000000000;
    v135 = v28 + v127;
    v136 = v128 - v150;
    *v156 = v135;
    *&v156[1] = v136;
    *&v156[2] = v129;
    *&v156[3] = v130;
    v156[4] = v116;
    v156[5] = v134;
    v156[7] = 0;
    v156[8] = 0;
    v156[6] = v115;
    v157 = 0;
    v158 = v142;
    LOBYTE(v159) = 0;
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v182 = v198;
    v175 = v191;
    v176 = v192;
    v177 = v193;
    v178 = v194;
    outlined init with copy of _ShapeStyle_Pack.Style(&v191, &v183);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v158, &v175, v4);
    v187 = v179;
    v188 = v180;
    v189 = v181;
    v190 = v182;
    v183 = v175;
    v184 = v176;
    v185 = v177;
    v186 = v178;
    outlined destroy of _ShapeStyle_Pack.Style?(&v183, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v137 = *(v4 + 64);
    v138 = *(v4 + 80);
    v139 = *(v4 + 32);
    v161 = *(v4 + 48);
    v162 = v137;
    v163[0] = v138;
    *(v163 + 12) = *(v4 + 92);
    v140 = *(v4 + 16);
    v158 = *v4;
    v159 = v140;
    v160 = v139;
    outlined init with copy of DisplayList.Item(v156, &v175);
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v158);
    *v4 = v135;
    *(v4 + 8) = v136;
    *(v4 + 16) = v129;
    *(v4 + 24) = v130;
    *(v4 + 32) = v116;
    *(v4 + 40) = v134;
    *(v4 + 48) = v115;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0x100000000;
    *(v4 + 104) = 0x80000000;
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v182 = v198;
    v175 = v191;
    v176 = v192;
    v177 = v193;
    v178 = v194;
    _ShapeStyle_RenderedShape.render(style:)(&v175);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
    outlined destroy of DisplayList.Item(v156);

    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_57:
  }

  return swift_unknownObjectRelease();
}

id ResolvedStyledText.layers(for:renderer:deviceScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(a1, a2, a3, a4);
  if (!ResolvedStyledText.needsStyledRendering.getter())
  {
    return 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) init];
  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v8) = HIDWORD(static RBColor.foregroundKeyColorAnyAlpha);
  LODWORD(v7) = static RBColor.foregroundKeyColorAnyAlpha;
  LODWORD(v9) = dword_1ED566B70;
  LODWORD(v10) = dword_1ED566B74;
  [v6 addConditionWithFillColor:2 colorSpace:{v7, v8, v9, v10}];
  v11 = &selRef_newInterpolatorWithFrom_to_options_;
  v12 = [v6 copyFilteredDisplayList_];
  v13 = &selRef_newInterpolatorWithFrom_to_options_;
  v32 = v12;
  if ([v12 isEmpty])
  {
    v33 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = v12;
  }

  v15 = *(*(v4 + 264) + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E69C7138];
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      [v6 removeAll];
      *&v19 = vcvts_n_f32_u64(v16, 0xAuLL);
      LODWORD(v20) = -1.0;
      LODWORD(v21) = -1.0;
      LODWORD(v22) = v17;
      [v6 addConditionWithFillColor:2 colorSpace:{v20, v21, v19, v22}];
      v23 = [v6 v11[184]];
      if ([v23 v13[185]])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v18);
        }

        v18[2] = v25 + 1;
        v26 = &v18[2 * v25];
        v26[4] = v16;
        v26[5] = v23;
        v11 = &selRef_newInterpolatorWithFrom_to_options_;
        v13 = &selRef_newInterpolatorWithFrom_to_options_;
      }

      ++v16;
    }

    while (v15 != v16);
  }

  [v6 removeAll];
  if (one-time initialization token for keyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v28) = HIDWORD(static RBColor.keyColorAnyAlpha);
  LODWORD(v27) = static RBColor.keyColorAnyAlpha;
  LODWORD(v29) = dword_1ED566B58;
  LODWORD(v30) = unk_1ED566B5C;
  [v6 addConditionWithFillColor:2 colorSpace:{v27, v28, v29, v30}];
  [v6 setInvertsResult_];
  v31 = [objc_msgSend(v6 v11[184]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v31)
  {
    swift_unknownObjectRelease();
  }

  return v33;
}

char *CoreMaterialCache.subscript.getter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(v1 + 8);
  v9 = v4 | (v5 << 32);
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v4 | (v5 << 32), v6 | (v7 << 8)), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v12 = specialized CoreMaterialCache.loadEffects(style:)(&v15);
    outlined copy of Material.ID(v3, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v3, v9, v6 | (v7 << 8), isUniquelyReferenced_nonNull_native);
    outlined consume of Material.ID(v3, v4);
    *(v2 + 8) = v15;
  }

  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = HIDWORD(a2);
  v7 = BYTE1(a3);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v10);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v7);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0xFFFFFFFF000000FFLL, v3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = a2;
    v21 = HIDWORD(a2);
    v19 = HIBYTE(a3);
    v20 = a3;
    v9 = ~v5;
    do
    {
      v10 = *(v23 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 12);
      v14 = *(v10 + 16);
      v15 = *(v10 + 17);
      v26 = v11;
      v27 = v12;
      v24 = a1;
      v25 = v7;
      outlined copy of Material.ID(v11, v12);
      outlined copy of Material.ID(v11, v12);
      outlined copy of Material.ID(a1, v7);
      v16 = specialized static Material.ID.== infix(_:_:)(&v26, &v24);
      outlined consume of Material.ID(v24, v25);
      outlined consume of Material.ID(v26, v27);
      if ((v16 & 1) != 0 && v13 == v21)
      {
        outlined consume of Material.ID(v11, v12);
        if (v14 == v20 && v19 == v15)
        {
          return v6;
        }
      }

      else
      {
        outlined consume of Material.ID(v11, v12);
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t specialized Array<A>.popColorMultiply(drawable:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    goto LABEL_10;
  }

  memmove(__dst, (v2 + (v3 << 7) - 96), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 7)
  {
    goto LABEL_10;
  }

  v6 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
  v7 = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8 || !v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = v8;
  swift_getObjectType();
  v10 = (*(v9 + 32))();
  result = swift_unknownObjectRelease();
  if ((v10 & 1) == 0)
  {
LABEL_10:
    result = 0;
    v13 = 1;
LABEL_11:
    LOBYTE(__dst[0]) = v13;
    return result;
  }

  if (*(v2 + 16))
  {
    specialized Array._customRemoveLast()(&v18);
    v32[4] = v22;
    v32[5] = v23;
    v33[0] = v24[0];
    *(v33 + 12) = *(v24 + 12);
    v32[0] = v18;
    v32[1] = v19;
    v32[2] = v20;
    v32[3] = v21;
    if (_s7SwiftUI14GraphicsFilterOSgWOg(v32) == 1)
    {
      v14[4] = v22;
      v14[5] = v23;
      v15[0] = v24[0];
      *(v15 + 12) = *(v24 + 12);
      v14[0] = v18;
      v14[1] = v19;
      v14[2] = v20;
      v14[3] = v21;
      outlined destroy of HitTestableEvent?(v14, &lazy cache variable for type metadata for GraphicsFilter?, &type metadata for GraphicsFilter);
      specialized Array.remove(at:)(*(*a1 + 16) - 1, &v25);
      v16[4] = v29;
      v16[5] = v30;
      v17[0] = v31[0];
      *(v17 + 12) = *(v31 + 12);
      v16[0] = v25;
      v16[1] = v26;
      v16[2] = v27;
      v16[3] = v28;
      v12 = v16;
    }

    else
    {
      v29 = v22;
      v30 = v23;
      v31[0] = v24[0];
      *(v31 + 12) = *(v24 + 12);
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v12 = &v25;
    }

    outlined destroy of GraphicsFilter(v12);
    v13 = 0;
    result = v6;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t static Material.regular.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for regular != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.regular;
  v3 = dword_1ED520074;
  *a1 = static Material.regular;
  v4 = byte_1ED520070;
  *(a1 + 8) = byte_1ED520070;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void one-time initialization function for regular()
{
  dword_1ED520074 = 0;
  static Material.regular = 2;
  byte_1ED520070 = 3;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.FeatureSettingModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

void one-time initialization function for interpolate()
{
  static ContentTransition.interpolate = 0x8000000003;
  LOBYTE(word_1ED5280EC) = 3;
  dword_1ED5280E8 = 0x2000000;
  *(&word_1ED5280EC + 1) = 0;
}

float one-time initialization function for foregroundKeyColorAnyAlpha()
{
  result = *MEMORY[0x1E69C7138];
  __asm { FMOV            V1.2S, #-1.0 }

  static RBColor.foregroundKeyColorAnyAlpha = _D1;
  dword_1ED566B70 = -1082130432;
  dword_1ED566B74 = LODWORD(result);
  return result;
}

float one-time initialization function for keyColorAnyAlpha()
{
  result = *MEMORY[0x1E69C7138];
  __asm { FMOV            V1.2S, #-1.0 }

  static RBColor.keyColorAnyAlpha = _D1;
  dword_1ED566B58 = LODWORD(result);
  unk_1ED566B5C = LODWORD(result);
  return result;
}

void one-time initialization function for shared()
{
  static CoreMaterialCache.shared = 0;
  qword_1ED526080 = MEMORY[0x1E69E7CC8];
  unk_1ED526088 = MEMORY[0x1E69E7CC8];
}

{
  static ViewDecoders.shared = 0;
  off_1EAB0F5C8 = MEMORY[0x1E69E7CC8];
  byte_1EAB0F5D0 = 0;
}

char *specialized CoreMaterialCache.loadEffects(style:)(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  *v71 = *a1;
  v71[8] = v1;
  *&v71[12] = v2;
  *&v71[16] = v3;
  v4 = ContentStyle.MaterialStyle.coreMaterialDescription.getter();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x737265746C6966, 0xE700000000000000), (v6 & 1) == 0) || (outlined init with copy of Any(*(v4 + 56) + 32 * v5, v71), type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for [[String : Any]], type metadata accessor for [String : Any], MEMORY[0x1E69E62F8]), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v62 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v70[0];
  v8 = *(v70[0] + 16);
  if (!v8)
  {

    v9 = 0;
    v62 = 0;
LABEL_23:
    v23 = 0;
    v10 = 0;
    v11 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v63 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v9 = 0;
  v61 = 0;
  v62 = 0;
  v55 = 0;
  v56 = 0;
  v10 = 0;
  v11 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v63 = 1;
  v12 = 32;
  do
  {
    v13 = *(v7 + v12);
    if (!*(v13 + 16))
    {
      goto LABEL_7;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if ((v15 & 1) == 0 || (outlined init with copy of Any(*(v13 + 56) + 32 * v14, v71), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_7;
    }

    v57 = v9;
    v16 = v11;
    v17 = v10;
    if (__PAIR128__(0x800000018DD7A490, 0xD000000000000012) == v75[0])
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (!*(v13 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A4B0), (v20 & 1) == 0))
    {
LABEL_20:

      v10 = v17;
LABEL_21:
      v11 = v16;
      v9 = v57;
      goto LABEL_7;
    }

    outlined init with copy of Any(*(v13 + 56) + 32 * v19, v75);

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSValue, 0x1E696B098);
    v10 = v17;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = v67[0];
    memset(&v71[4], 0, 20);
    *v71 = 1065353216;
    *&v71[24] = 1065353216;
    memset(&v71[28], 0, 20);
    LODWORD(v72[0]) = 1065353216;
    *(v72 + 12) = 0;
    *(v72 + 4) = 0;
    DWORD1(v72[1]) = 0;
    *(&v72[1] + 1) = 1065353216;
    v22 = v71;
    [v67[0] getValue_];

    if ((v63 & 1) == 0)
    {
      v70[0] = v57;
      v70[1] = v62;
      v70[2] = v56;
      v70[3] = v55;
      v70[4] = v17;
      v70[5] = v16;
      v70[6] = v61;
      v70[7] = v60;
      v70[8] = v59;
      v70[9] = v58;
      v69[2] = *&v71[32];
      v69[3] = v72[0];
      v69[4] = v72[1];
      v69[0] = *v71;
      v69[1] = *&v71[16];
      v22 = v64;
      specialized static _ColorMatrix.* infix(_:_:)(v69, v70, v64, *&v71[16]);
    }

    v63 = 0;
    v55 = v22[3];
    v56 = v22[2];
    v10 = v22[4];
    v11 = v22[5];
    v60 = v22[7];
    v61 = v22[6];
    v58 = v22[9];
    v59 = v22[8];
    v9 = *v22;
    v62 = v22[1];
LABEL_7:
    v12 += 8;
    --v8;
  }

  while (v8);

  v23 = v55;
  v8 = v56;
  if (!*(v4 + 16))
  {
LABEL_35:

    v26 = 0;
    v28 = 0;
    LODWORD(v30) = 0;
    goto LABEL_36;
  }

LABEL_24:
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6C6F43746E6974, 0xE900000000000072);
  if ((v25 & 1) == 0)
  {
    goto LABEL_35;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v24, v71);

  outlined init with take of Any(v71, v75);
  outlined init with copy of Any(v75, v71);
  v26 = specialized static CoreMaterialCache.parseColor(_:)(v71);
  v28 = v27;
  v30 = v29;
  outlined destroy of Any?(v71);
  __swift_destroy_boxed_opaque_existential_1(v75);
  if ((v30 & 0x100000000) != 0)
  {
LABEL_36:
    v36 = 1;
    if ((v63 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    *v67 = _Q0;
    v68 = 2143289344;
    v65[0] = v26;
    v65[1] = v28;
    v66 = v30;
    v36 = specialized static Color.ResolvedHDR.== infix(_:_:)(v65, v67);
    if (v36)
    {
      v26 = 0;
      v28 = 0;
      LODWORD(v30) = 0;
    }

    if ((v63 & 1) == 0)
    {
LABEL_29:
      v37 = swift_allocObject();
      *v71 = v9;
      *&v71[8] = v62;
      *&v71[16] = v8;
      *&v71[24] = v23;
      *&v71[32] = v10;
      *&v71[40] = v11;
      *&v72[0] = v61;
      *(&v72[0] + 1) = v60;
      *&v72[1] = v59;
      *(&v72[1] + 1) = v58;
      LODWORD(v73) = 2139095040;
      BYTE4(v73) = 0;
      _s7SwiftUI14GraphicsFilterOWOi14_(v71);
      v38 = v73;
      v37[5] = v72[1];
      v37[6] = v38;
      v37[7] = v74[0];
      *(v37 + 124) = *(v74 + 12);
      v39 = *&v71[16];
      v37[1] = *v71;
      v37[2] = v39;
      v40 = v72[0];
      v37[3] = *&v71[32];
      v37[4] = v40;
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v44 = &v41[16 * v43];
      *(v44 + 4) = v37;
LABEL_32:
      *(v44 + 10) = 0;
      v45 = 10;
LABEL_33:
      v44[44] = v45;
      return v41;
    }
  }

  if (v36)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*&v26 != 1.0 || *(&v26 + 1) != 1.0 || *&v28 != 1.0)
  {
    v47 = swift_allocObject();
    *v71 = v26;
    *&v71[8] = v28;
    *&v71[16] = v30;
    _s7SwiftUI14GraphicsFilterOWOi6_(v71);
    v48 = v73;
    v47[5] = v72[1];
    v47[6] = v48;
    v47[7] = v74[0];
    *(v47 + 124) = *(v74 + 12);
    v49 = *&v71[16];
    v47[1] = *v71;
    v47[2] = v49;
    v50 = v72[0];
    v47[3] = *&v71[32];
    v47[4] = v50;
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v52 = *(v41 + 2);
    v51 = *(v41 + 3);
    if (v52 >= v51 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v41);
    }

    *(v41 + 2) = v52 + 1;
    v44 = &v41[16 * v52];
    *(v44 + 4) = v47;
    goto LABEL_32;
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (*(&v28 + 1) != 1.0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v54 = *(v41 + 2);
    v53 = *(v41 + 3);
    if (v54 >= v53 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v41);
    }

    *(v41 + 2) = v54 + 1;
    v44 = &v41[16 * v54];
    *(v44 + 4) = HIDWORD(v28);
    *(v44 + 10) = 0;
    v45 = 4;
    goto LABEL_33;
  }

  return v41;
}

uint64_t sub_18D24F2E0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

unint64_t ContentStyle.MaterialStyle.coreMaterialDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = Material.ResolvedMaterial.coreMaterialRecipe.getter();
  if (v2 == 1)
  {
    v4 = *MEMORY[0x1E6997F30];
  }

  else
  {
    v4 = *MEMORY[0x1E6997F20];
    if (v2 == 2)
    {
      v5 = MEMORY[0x1E6997F58];
      goto LABEL_13;
    }
  }

  v5 = MEMORY[0x1E6997F40];
  v6 = MEMORY[0x1E6997F48];
  if (!v2)
  {
    v6 = MEMORY[0x1E6997F60];
  }

  v7 = MEMORY[0x1E6997F50];
  if (v1 != 1)
  {
    v7 = MEMORY[0x1E6997F60];
  }

  if (v1)
  {
    v5 = v7;
  }

  if (v1 > 2)
  {
    v5 = v6;
  }

LABEL_13:
  v8 = *v5;
  Material.ResolvedMaterial.coreMaterialOptions.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = MTVisualStylingCreateDictionaryRepresentation();

  if (v10)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v13);
  }
}

id Material.ResolvedMaterial.coreMaterialRecipe.getter()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  if (!*(v0 + 8))
  {

    JUMPOUT(0x193ABEC20);
  }

  if (*(v0 + 8) != 3)
  {
    goto LABEL_29;
  }

  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        if (v2)
        {
          v3 = MEMORY[0x1E6997EE8];
        }

        else
        {
          v3 = MEMORY[0x1E6997EF0];
        }
      }

      else if (v2)
      {
        v3 = MEMORY[0x1E6997EC8];
      }

      else
      {
        v3 = MEMORY[0x1E6997ED0];
      }
    }

    else if (v2)
    {
      v3 = MEMORY[0x1E6997EF8];
    }

    else
    {
      v3 = MEMORY[0x1E6997F00];
    }

    goto LABEL_26;
  }

  if (v1 <= 4)
  {
    if (v2)
    {
      v3 = MEMORY[0x1E6997ED8];
    }

    else
    {
      v3 = MEMORY[0x1E6997EE0];
    }

    goto LABEL_26;
  }

  if (v1 != 5)
  {
LABEL_29:
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v2)
  {
    v3 = MEMORY[0x1E6997EB8];
  }

  else
  {
    v3 = MEMORY[0x1E6997EC0];
  }

LABEL_26:
  v4 = *v3;

  return v4;
}

unint64_t Material.ResolvedMaterial.coreMaterialOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = v6;
  *(inited + 96) = (v3 & 2) != 0;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (String, Any)();
  swift_arrayDestroy();
  v20 = v8;
  if (!v2)
  {
    v9 = *(v1 + 48);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v10;
    v13 = v11;
    if (v9)
    {
      v19 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
      *&v18 = v9;
      outlined init with take of Any(&v18, v17);
      v14 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v12, v13, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v10, v11, &v18);

      outlined destroy of Any?(&v18);
      return v20;
    }
  }

  return v8;
}

void type metadata accessor for [[String : Any]](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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