void DOCOperationCombinedProgress.computeNewState()(char *a1@<X8>)
{
  v3 = *v1;
  v4 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v5 = *(v3 + 296);
  v8 = type metadata accessor for DOCOperationProgress(0, v5, v6, v7);
  v9 = MEMORY[0x24C1FB170](v4, v8);

  if (v9 < 1)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v17 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  MEMORY[0x28223BE20](v17, v10);
  v16[2] = v5;
  v11 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.computeNewState(), v16, v11, &type metadata for DOCProgressState, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v17 = v14;

  specialized MutableCollection<>.sort(by:)(&v17);

  if (*(v17 + 2))
  {
    v15 = v17[32];

LABEL_5:
    *a1 = v15;
    return;
  }

  __break(1u);

  __break(1u);
}

void DOCOperationCombinedProgress.computeNewProgressValue()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v7 = type metadata accessor for DOCOperationProgress(0, *(v3 + 296), v5, v6);
  v8 = MEMORY[0x24C1FB170](v4, v7);

  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = DOCOperationCombinedProgress.unorderedOperationProgress.getter();
    MEMORY[0x28223BE20](v11, v9);
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();

    v10 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 9) = v8 < 1;
}

uint64_t DOCGenericOperationCombinedProgress.init(operations:observing:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v22;
    v6 = a1 + 32;
    do
    {
      outlined init with copy of DOCSidebarItemIconProvider(v6, &v19);
      v7 = *(&v20 + 1);
      v8 = __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      *(&v18 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
      v22 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v22;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 72 * v11;
      *(v12 + 32) = v17;
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *(v12 + 96) = v21;
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = v13;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  return specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(v5, a2, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables20DOCOperationProgressCyypGTt0g5Tf4g_n, partial apply for specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:));
}

uint64_t DOCGenericOperationCombinedProgress.add(_:)(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v6[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v7);
  specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, v7);
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMR);
}

uint64_t DOCFileOperationCombinedProgress.__deallocating_deinit(void (*a1)(void, void))
{
  specialized DOCOperationCombinedProgress.deinit(a1);

  return swift_deallocClassInstance();
}

void *key path getter for DOCOperationCombinedProgress.updateHandler : <A>DOCOperationCombinedProgress<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  result = (*(**a1 + 352))();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v8;
    result[4] = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCOperationProgress<A>) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCOperationCombinedProgress.updateHandler : <A>DOCOperationCombinedProgress<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 360);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

double closure #1 in DOCOperationCombinedProgress.reset()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for DOCOperationProgress(255, a2, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(v10, a1, TupleTypeMetadata2);

  result = *v10;
  v9 = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = v9;
  *(a5 + 32) = v11;
  return result;
}

uint64_t specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v2, v3, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMR);
      specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v3, v4);
      result = outlined destroy of CharacterSet?(v3, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMR);
      v2 += 72;
      --v1;
    }

    while (v1);
  }

  return result;
}

void specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
  MEMORY[0x28223BE20](v2, v3);
  v6 = &v10 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    do
    {
      outlined init with copy of DOCGridLayout.Spec?(v8, v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
      specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, &v6[*(v2 + 28)]);
      outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
      v8 += v9;
      --v7;
    }

    while (v7);
  }
}

uint64_t closure #1 in DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for DOCOperationProgress(255, a2, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 16);
  v8 = v7(&v35, a1, TupleTypeMetadata2);
  v9 = (*(*v37 + 560))(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  outlined destroy of AnyHashable(&v35);
  v7(&v35, a1, TupleTypeMetadata2);

  v16 = AnyHashable.description.getter();
  v18 = v17;
  outlined destroy of AnyHashable(&v35);
  v19 = specialized Collection.prefix(_:)(6, v16, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v35 = 0x444967756265645BLL;
  v36 = 0xEB00000000203D20;
  v26 = MEMORY[0x24C1FAE00](v9, v11, v13, v15);
  v28 = v27;

  MEMORY[0x24C1FAEA0](v26, v28);

  MEMORY[0x24C1FAEA0](0x3D204449706F202CLL, 0xE900000000000020);
  v29 = MEMORY[0x24C1FAE00](v19, v21, v23, v25);
  v31 = v30;

  MEMORY[0x24C1FAEA0](v29, v31);

  result = MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
  v33 = v36;
  *a5 = v35;
  a5[1] = v33;
  return result;
}

uint64_t closure #1 in DOCOperationCombinedProgress.unorderedOperationProgress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for DOCOperationProgress(255, a2, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(v9, a1, TupleTypeMetadata2);
  *a5 = v9[5];
  return outlined destroy of AnyHashable(v9);
}

double specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(1);
    specialized DOCOperationCombinedProgress.removeCancelledOperations()(specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCAbstractPacedPropertyUpdater.setNeedsUpdateProperties(notifyImmediately:)(0);
    specialized DOCOperationCombinedProgress.removeCancelledOperations()(specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
  }

  return result;
}

void *closure #1 in DOCOperationCombinedProgress.computeNewProgressValue()(uint64_t *a1, double *a2, _BYTE *a3)
{
  v5 = *a1;
  v6 = (*(**a1 + 488))(&v15);
  v7 = v15;
  v8 = v16;
  v9 = *(*v5 + 512);
  result = v9(&v14, v6);
  if ((v14 & 0xFE) == 2 || (v14 & 1) == 0)
  {
    result = v9(&v13, result);
    v11 = *a2;
    if ((v13 & 0xFE) == 2)
    {
      if (v8)
      {
        *a2 = v11 + 0.0;
        return result;
      }

      v12 = v7 + v11;
    }

    else
    {
      v12 = v11 + 1.0;
    }

    *a2 = v12;
    *a3 = 1;
  }

  return result;
}

double DOCOperationCombinedProgress.__ivar_destroyer()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + direct field offset for DOCOperationCombinedProgress.updateHandler), *(v0 + direct field offset for DOCOperationCombinedProgress.updateHandler + 8));

  return result;
}

uint64_t DOCOperationCombinedProgress.__deallocating_deinit()
{
  DOCOperationCombinedProgress.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of DOCOperationProgress<DOCFileOperation>.OperationWithProvider(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_135:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_173;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_137:
      v80 = v8 + 16;
      v81 = *(v8 + 2);
      if (v81 >= 2)
      {
        while (*a3)
        {
          v82 = &v8[16 * v81];
          v83 = *v82;
          v84 = &v80[2 * v81];
          v85 = v84[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v82), (*a3 + *v84), (*a3 + v85), v7);
          if (v4)
          {
            goto LABEL_144;
          }

          if (v85 < v83)
          {
            goto LABEL_159;
          }

          if (v81 - 2 >= *v80)
          {
            goto LABEL_160;
          }

          *v82 = v83;
          *(v82 + 1) = v85;
          v86 = *v80 - v81;
          if (*v80 < v81)
          {
            goto LABEL_161;
          }

          v81 = *v80 - 1;
          memmove(v84, v84 + 2, 16 * v86);
          *v80 = v81;
          if (v81 <= 1)
          {
            goto LABEL_144;
          }
        }

        goto LABEL_171;
      }

LABEL_144:

      return;
    }

LABEL_167:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_137;
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v5)
    {
      goto LABEL_52;
    }

    v10 = v7[*a3];
    v11 = *(*a3 + v9);
    if (v10)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    if (v10 == 3)
    {
      v12 = 2;
    }

    if (v10 == 2)
    {
      v12 = 1;
    }

    if (v11 == 2)
    {
      v13 = 1;
    }

    else if (v11 == 3)
    {
      v13 = 2;
    }

    else if (v11)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    v7 = (v9 + 2);
    if (v9 + 2 < v5)
    {
      while (1)
      {
        v14 = v7[*a3];
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }

        if (v14 == 3)
        {
          v15 = 2;
        }

        if (v14 == 2)
        {
          v15 = 1;
        }

        if (v10 == 2)
        {
          if (v12 < v13)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v10 == 3)
          {
            v16 = v12 < v13;
            v17 = v15 > 1;
            goto LABEL_35;
          }

          if (v10)
          {
            v16 = v12 < v13;
            v17 = v15 > 2;
LABEL_35:
            v18 = v17;
            if (((v16 ^ v18) & 1) == 0)
            {
              break;
            }

            goto LABEL_22;
          }

          if (v12 < v13 == v15 > 3)
          {
            break;
          }
        }

LABEL_22:
        ++v7;
        LOBYTE(v10) = v14;
        if (v5 == v7)
        {
          v7 = v5;
          if (v12 < v13)
          {
            goto LABEL_44;
          }

          goto LABEL_52;
        }
      }
    }

    if (v12 < v13)
    {
LABEL_44:
      if (v7 < v9)
      {
        goto LABEL_164;
      }

      if (v9 < v7)
      {
        v19 = v7 - 1;
        v20 = v9;
        do
        {
          if (v20 != v19)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_170;
            }

            v22 = v20[v21];
            v20[v21] = v19[v21];
            v19[v21] = v22;
          }

          v17 = ++v20 < v19--;
        }

        while (v17);
        v5 = a3[1];
      }
    }

LABEL_52:
    if (v7 >= v5)
    {
      goto LABEL_84;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_163;
    }

    if (&v7[-v9] >= v6)
    {
      goto LABEL_84;
    }

    if (__OFADD__(v9, v6))
    {
      goto LABEL_165;
    }

    if (v9 + v6 < v5)
    {
      v5 = v9 + v6;
    }

    if (v5 < v9)
    {
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    if (v7 == v5)
    {
      goto LABEL_84;
    }

    v23 = *a3;
    v24 = &v7[*a3];
    v25 = v9 - v7;
LABEL_62:
    v26 = v7[v23];
    v27 = (v26 & 1) != 0 ? 3 : 4;
    v28 = v25;
    v29 = v24;
LABEL_66:
    v30 = *(v29 - 1);
    if (v26 == 3)
    {
      v31 = 2;
    }

    else
    {
      v31 = v27;
    }

    if (v26 == 2)
    {
      v31 = 1;
    }

    if (v30 == 3)
    {
      if (v31 >= 2)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v30 == 2)
      {
        goto LABEL_61;
      }

      if (v30)
      {
        if (v31 >= 3)
        {
          goto LABEL_61;
        }
      }

      else if (v31 > 3)
      {
        goto LABEL_61;
      }
    }

    if (!v23)
    {
      break;
    }

    *v29 = v30;
    *--v29 = v26;
    if (!__CFADD__(v28++, 1))
    {
      goto LABEL_66;
    }

LABEL_61:
    ++v7;
    ++v24;
    --v25;
    if (v7 != v5)
    {
      goto LABEL_62;
    }

    v7 = v5;
LABEL_84:
    if (v7 < v9)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v34 = *(v8 + 2);
    v33 = *(v8 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v8);
    }

    *(v8 + 2) = v35;
    v36 = &v8[16 * v34];
    *(v36 + 4) = v9;
    *(v36 + 5) = v7;
    v37 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_104:
          if (v42)
          {
            goto LABEL_150;
          }

          v55 = &v8[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_153;
          }

          v61 = &v8[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_156;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_157;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        v65 = &v8[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_118:
        if (v60)
        {
          goto LABEL_152;
        }

        v68 = &v8[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_155;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_125:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (!*a3)
        {
          goto LABEL_169;
        }

        v77 = *&v8[16 * v76 + 32];
        v78 = *&v8[16 * v38 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v77), (*a3 + *&v8[16 * v38 + 32]), (*a3 + v78), v37);
        if (v4)
        {
          goto LABEL_144;
        }

        if (v78 < v77)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v76 >= *(v8 + 2))
        {
          goto LABEL_147;
        }

        v79 = &v8[16 * v76];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        specialized Array.remove(at:)(v38);
        v35 = *(v8 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v8[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_148;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_149;
      }

      v50 = &v8[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_151;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_154;
      }

      if (v54 >= v46)
      {
        v72 = &v8[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_158;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_104;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_135;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }

        if (v11 == 3)
        {
          v13 = 2;
        }

        if (v11 == 2)
        {
          v13 = 1;
        }

        if (v12 != 2)
        {
          if (v12 == 3)
          {
            if (v13 < 2)
            {
              goto LABEL_17;
            }
          }

          else if (v12)
          {
            if (v13 < 3)
            {
              goto LABEL_17;
            }
          }

          else if (v13 <= 3)
          {
LABEL_17:
            v14 = v6 + 1;
            if (v7 >= v6 && v7 < v14)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }

        v15 = v4 + 1;
        LOBYTE(v11) = *v4;
        v14 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v15)
          {
            goto LABEL_29;
          }
        }

LABEL_28:
        *v7 = v11;
LABEL_29:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_69;
    }

LABEL_68:
    if (v6 >= v10)
    {
      goto LABEL_69;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_67:
    if (v6 != v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = *v16;
      if (v19)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      if (v18 == 3)
      {
        v21 = 2;
      }

      if (v18 == 2)
      {
        v21 = 1;
      }

      if (v20 == 2)
      {
        goto LABEL_56;
      }

      if (v20 == 3)
      {
        if (v21 < 2)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v21 < 3)
      {
        goto LABEL_59;
      }

LABEL_56:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v18;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_67;
      }
    }

    if (v21 > 3)
    {
      goto LABEL_56;
    }

LABEL_59:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v20;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_68;
  }

LABEL_69:
  memmove(v6, v4, v10 - v4);
  return 1;
}

double partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)(uint64_t a1)
{
  return specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)(a1, v1);
}

{
  return specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:)(a1, v1);
}

uint64_t DOCNodeDiffableDataSource.__allocating_init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(a1, a2, a3);
  return v6;
}

void DOCNodeDiffableDataSource.flatNodes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v12[0] = &type metadata for DOCCollectionSection;
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  v10 = v0[2];
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    _arrayConditionalCast<A, B>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v4[2] = 0;
  v8 = *(v7 + 80);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v9 = *(v7 + 88);
  type metadata accessor for UICollectionViewDiffableDataSource();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = a2;
  v10[5] = a3;
  v11 = UICollectionViewDiffableDataSource.__allocating_init(collectionView:cellProvider:)();
  v12 = v4[2];
  v4[2] = v11;

  return v4;
}

uint64_t closure #1 in DOCNodeDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  (*(v11 + 16))(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  swift_dynamicCast();
  v14 = a4(a1, a2, v16[1]);
  swift_unknownObjectRelease();
  return v14;
}

void DOCNodeDiffableDataSource.indexPath(for:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCNodeDiffableDataSource.indexPath(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - v14;
  DOCNodeDiffableDataSource.diffableItem(from:)(a1, v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.UI);
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a1;
      v27 = v20;
      *v19 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v17, v18, "Conversion of node: %s failed", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    v24 = type metadata accessor for IndexPath();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }

  else
  {
    (*(v11 + 32))(v15, v10, v5);
    DOCNodeDiffableDataSource.indexPath(for:)(v15);
    return (*(v11 + 8))(v15, v5);
  }
}

uint64_t DOCNodeDiffableDataSource.diffableItem(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v23 - v14;
  v24 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v5);
    v18 = *(v11 + 32);
    v18(v15, v10, v5);
    v18(a2, v15, v5);
    v19 = a2;
    v20 = 0;
    return v17(v19, v20, 1, v5);
  }

  v17(v10, 1, 1, v5);
  (*(v7 + 8))(v10, v6);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = a2;
    v20 = 1;
    return v17(v19, v20, 1, v5);
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v24 = [v21 fpfs_fpItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
    v20 = swift_dynamicCast() ^ 1;
    v19 = a2;
    return v17(v19, v20, 1, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path getter for DOCNodeDiffableDataSource.supplementaryViewProvider : <A>DOCNodeDiffableDataSource<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 168))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @guaranteed String, @in_guaranteed IndexPath) -> (@owned UICollectionReusableView?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCNodeDiffableDataSource.supplementaryViewProvider : <A>DOCNodeDiffableDataSource<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UICollectionView, @in_guaranteed String, @in_guaranteed IndexPath) -> (@out UICollectionReusableView?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 176);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.getter();
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCNodeDiffableDataSource.supplementaryViewProvider.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  DOCNodeDiffableDataSource.supplementaryViewProvider.getter();
  *a1 = v3;
  a1[1] = v4;
  return DOCNodeDiffableDataSource.supplementaryViewProvider.modify;
}

void DOCNodeDiffableDataSource.supplementaryViewProvider.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*a1, v3);
    DOCNodeDiffableDataSource.supplementaryViewProvider.setter(v2, v3);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2, v3);
  }

  else
  {
    DOCNodeDiffableDataSource.supplementaryViewProvider.setter(*a1, v3);
  }
}

void DOCNodeDiffableDataSource.shouldCollapseItem(completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v8 = v4;
    v9 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();

    v10 = type metadata accessor for UICollectionViewDiffableDataSource.SectionSnapshotHandlers();
    a3(a1, a2, v10);
    v9(v11, 0);
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.snapshot()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v12[0] = &type metadata for DOCCollectionSection;
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = v12 - v8;
  v10 = v0[2];
  if (v10)
  {
    type metadata accessor for DOCNodeDiffableDataSourceSnapshot(0, v2, v4, v7);
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    swift_allocObject();
    DOCNodeDiffableDataSourceSnapshot.init(with:)(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCNodeDiffableDataSource.level(of:)(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v55 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for IndexPath();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v50 - v17;
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v50 - v21;
  v23 = [objc_opt_self() outlineDisclosure];
  v24 = [v23 isEnabled];

  result = 0;
  if (v24)
  {
    v26 = *(v2 + 16);
    if (v26)
    {
      v27 = v26;
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

      if (!v64)
      {
        return 0;
      }

      v52 = v15;
      v53 = v22;
      v54 = v64;
      v28 = v63;
      v30 = v65;
      v29 = v66;
      v31 = v67;
      swift_getObjectType();
      DOCNode.diffableItem()(&v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v39 = outlined consume of DOCCollectionSection?(v28, v54, v30, v29, v31);
        (*(v61 + 56))(v18, 1, 1, v3, v39);
        (*(v52 + 8))(v18, v14);
        return 0;
      }

      v32 = v28;
      v50 = v30;
      v51 = v29;
      v62 = v31;
      v33 = v61;
      (*(v61 + 56))(v18, 0, 1, v3);
      v34 = v53;
      result = (*(v33 + 32))(v53, v18, v3);
      v35 = *(v2 + 16);
      if (v35)
      {
        v36 = v35;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        v38 = v59;
        v37 = v60;
        if ((*(v59 + 48))(v10, 1, v60) == 1)
        {
          (*(v33 + 8))(v34, v3);
          outlined consume of DOCCollectionSection?(v32, v54, v50, v51, v62);
          outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          return 0;
        }

        v40 = v58;
        (*(v38 + 32))();
        result = IndexPath.section.getter();
        if (result)
        {
          v41 = outlined consume of DOCCollectionSection?(v32, v54, v50, v51, v62);
          (*(v38 + 8))(v40, v37, v41);
          (*(v33 + 8))(v34, v3);
          return 0;
        }

        v42 = *(v2 + 16);
        if (v42)
        {
          v63 = v32;
          v64 = v54;
          v65 = v50;
          v66 = v51;
          v43 = v62;
          v67 = v62;
          v52 = v32;
          v44 = v42;
          v45 = v55;
          UICollectionViewDiffableDataSource.snapshot(for:)();

          v46 = v53;
          v47 = v57;
          v48 = NSDiffableDataSourceSectionSnapshot.level(of:)();
          v49 = outlined consume of DOCCollectionSection?(v52, v54, v50, v51, v43);
          (*(v56 + 8))(v45, v47, v49);
          (*(v38 + 8))(v40, v37);
          (*(v33 + 8))(v46, v3);
          return v48;
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t DOCNode.diffableItem()@<X0>(void *a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
    v6 = lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FINode and conformance NSObject, &lazy cache variable for type metadata for FINode, 0x277D04700);
    result = swift_unknownObjectRetain();
  }

  else
  {
    v4 = [v1 fpfs_fpItem];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
    result = lazy protocol witness table accessor for type FPItem? and conformance <A> A?();
    v6 = result;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = v4;
  return result;
}

void DOCNodeDiffableDataSource.parent(of:)()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v64 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v55 - v8;
  v10 = type metadata accessor for Optional();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v65 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v55 - v15;
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v62 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v61 = v55 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v55 - v26;
  v28 = v0[2];
  if (!v28)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  v30 = v71;
  if (!v71)
  {
    return;
  }

  v60 = v9;
  v69 = v17;
  v63 = v3;
  v31 = v70;
  v33 = v72;
  v32 = v73;
  v34 = v74;
  swift_getObjectType();
  DOCNode.diffableItem()(&v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = outlined consume of DOCCollectionSection?(v31, v30, v33, v32, v34);
    (*(v69 + 56))(v16, 1, 1, v2, v52);
    (*(v67 + 8))(v16, v68);
    return;
  }

  v57 = v31;
  v58 = v32;
  v59 = v33;
  v56 = v34;
  v35 = v69;
  (*(v69 + 56))(v16, 0, 1, v2);
  v55[0] = *(v35 + 32);
  v55[1] = v35 + 32;
  (v55[0])(v27, v16, v2);
  v36 = v1[2];
  if (!v36)
  {
    goto LABEL_14;
  }

  v38 = v57;
  v37 = v58;
  v70 = v57;
  v71 = v30;
  v72 = v59;
  v73 = v58;
  v39 = v56;
  v74 = v56;
  v40 = v36;
  v41 = v60;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v42 = v63;
  LOBYTE(v40) = NSDiffableDataSourceSectionSnapshot.contains(_:)();
  v66 = *(v66 + 8);
  (v66)(v41, v42);
  if ((v40 & 1) == 0)
  {
    (*(v69 + 8))(v27, v2);
    outlined consume of DOCCollectionSection?(v38, v30, v59, v37, v39);
    return;
  }

  v43 = v1[2];
  if (!v43)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v70 = v57;
  v71 = v30;
  v44 = v59;
  v72 = v59;
  v73 = v58;
  v45 = v56;
  v74 = v56;
  v46 = v43;
  v47 = v64;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v48 = v65;
  v49 = v63;
  NSDiffableDataSourceSectionSnapshot.parent(of:)();
  v50 = outlined consume of DOCCollectionSection?(v57, v30, v44, v58, v45);
  (v66)(v47, v49, v50);
  v51 = v69;
  (*(v69 + 8))(v27, v2);
  if ((*(v51 + 48))(v48, 1, v2) == 1)
  {
    (*(v67 + 8))(v48, v68);
  }

  else
  {
    v53 = v61;
    v54 = v55[0];
    (v55[0])(v61, v48, v2);
    v54(v62, v53, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    swift_dynamicCast();
  }
}

void DOCNodeDiffableDataSource.applySnapshotUsingReloadData(_:disclosureProvider:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v9 = *(v6 + 88);
  v20[0] = &type metadata for DOCCollectionSection;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v10 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v20 - v14;
  v16 = v4[2];
  if (v16)
  {
    v17 = *(*a1 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v15, a1 + v17, v11);
    v18 = *(v10 - 8);
    if ((*(v18 + 48))(v15, 1, v10) != 1)
    {
      v19 = v16;
      dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

      (*(v18 + 8))(v15, v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.toggleNodeExpansionEmpty(_:)()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - v10;
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - v15;
  swift_getObjectType();
  DOCNode.diffableItem()(&v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v2);
    (*(v12 + 32))(v16, v11, v2);
    (*(*v0 + 320))(&v33, 0);
    v19 = v0[2];
    if (v19)
    {
      v20 = v35;
      v21 = v37;
      v29 = v33;
      v30 = v36;
      v31 = v34;
      v22 = v19;
      UICollectionViewDiffableDataSource.snapshot(for:)();

      getContiguousArrayStorageType<A>(for:)(v2, v2);
      swift_allocObject();
      v23 = static Array._adoptStorage(_:count:)();
      (*(v12 + 16))(v24, v16, v2);
      _finalizeUninitializedArray<A>(_:)(v23, v2);
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v25);

      v26 = v1[2];
      if (v26)
      {
        v33 = v29;
        v34 = v31;
        v35 = v20;
        v36 = v30;
        v37 = v21;
        v27 = v26;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        (*(v32 + 8))(v6, v3);
        (*(v12 + 8))(v16, v2);

        return;
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
    v18(v11, 1, 1, v2);
    (*(v8 + 8))(v11, v7);
  }
}

void DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v86 = a6;
  v83 = a5;
  v85 = a3;
  v99 = 0;
  v10 = *v7;
  v11 = *v7;
  v88 = v7;
  v94 = *(v10 + 80);
  MEMORY[0x28223BE20](a1, a2);
  v14 = *v13;
  v87 = *v13;
  v93 = v12;
  if (v87 != 2)
  {
    v30 = v12[3];
    v31 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v30);
    if (((*(v31 + 16))(v30, v31) & 1) == 0)
    {
      goto LABEL_24;
    }

    DOCNodeDiffableDataSource.snapshot()();
    v32 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

    v33 = *(v32 + 16);

    if (v33 != 1)
    {
      goto LABEL_24;
    }

    v84 = a7;
    v34 = v85[3];
    v35 = v85[4];
    __swift_project_boxed_opaque_existential_1(v85, v34);
    v36 = (*(v35 + 24))(v34, v35);
    v98 = v82;
    *&v102 = v36;
    MEMORY[0x28223BE20](v36, v37);
    v38 = *(v11 + 88);
    *&v82[-16] = v94;
    *&v82[-8] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    v39 = Sequence.compactMap<A>(_:)();

    *&v100[0] = v39;
    if (a1[2])
    {
      v40 = *(*a1[8] + 112);

      v42 = v40(v41);
      if (v42 >> 62)
      {
        v81 = v42;
        v43 = __CocoaSet.count.getter();
        v42 = v81;
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = v84;
      if (!v43)
      {

        v75 = v44;
LABEL_46:
        (*(*v88 + 264))(v39, v85, v14 & 1, (v14 >> 8) & 1, v86, v75);
LABEL_51:

        return;
      }

      if ((v42 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0);
      }

      else
      {
        if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      if (DOCNode.isCreateDocumentSentinel()())
      {
        DOCNode.diffableItem()(&v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
        swift_dynamicCast();
        type metadata accessor for Array();
        Array.insert(_:at:)();

        swift_unknownObjectRelease();
        v39 = *&v100[0];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    v75 = v84;
    goto LABEL_46;
  }

  v15 = v12[3];
  v16 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v15);
  if ((*(v16 + 16))(v15, v16))
  {
    DOCNodeDiffableDataSource.snapshot()();
    v17 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

    v18 = *(v17 + 16);

    if (v18 == 1)
    {
      v19 = v85[3];
      v20 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v19);
      v21 = (*(v20 + 24))(v19, v20);
      v98 = v82;
      *&v102 = v21;
      MEMORY[0x28223BE20](v21, v22);
      v23 = *(v11 + 88);
      *&v82[-16] = v94;
      *&v82[-8] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
      v24 = Sequence.compactMap<A>(_:)();

      *&v100[0] = v24;
      if (!a1[2])
      {
        goto LABEL_49;
      }

      v27 = *(*a1[8] + 112);

      v29 = v27(v28);
      if (v29 >> 62)
      {
        v76 = v29;
        v77 = __CocoaSet.count.getter();
        v29 = v76;
        if (v77)
        {
          goto LABEL_7;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((v29 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0);
          goto LABEL_10;
        }

        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
LABEL_10:

          swift_getObjectType();
          if (DOCNode.isCreateDocumentSentinel()())
          {
            DOCNode.diffableItem()(&v102);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
            swift_dynamicCast();
            type metadata accessor for Array();
            Array.insert(_:at:)();
          }

          v25 = swift_unknownObjectRelease();
LABEL_49:
          if (v88[2])
          {
            MEMORY[0x28223BE20](v25, v26);
            *&v82[-64] = a1;
            *&v82[-56] = v78;
            *&v82[-48] = v100;
            *&v82[-40] = v85;
            v82[-32] = v83 & 1;
            *&v82[-24] = v86;
            *&v82[-16] = a7;
            v80 = v79;
            UICollectionViewDiffableDataSource._performBatchApplyUsingReloadData(_:)();

            goto LABEL_51;
          }

LABEL_58:
          __break(1u);
          return;
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      goto LABEL_49;
    }
  }

LABEL_24:
  v84 = a7;
  v92 = *(v11 + 88);
  v45 = specialized DOCNodeDiffableDataSource.createEmptySnapshot()(v94, v92);
  v46 = v45;
  v47 = a1[2];
  if (v47)
  {
    v49 = (v14 & 0x100) == 0 || v87 == 2;
    v90 = v49;
    v50 = a1 + 8;
    v89 = xmmword_249B9A480;
    v91 = v45;
    v51 = v94;
    do
    {
      v97 = v50;
      v98 = v47;
      v52 = *(v50 - 4);
      v53 = *(v50 - 3);
      v54 = *(v50 - 1);
      v96 = *(v50 - 2);
      v55 = v96;
      v56 = *v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMR);
      v57 = swift_allocObject();
      *(v57 + 16) = v89;
      *(v57 + 32) = v52;
      *(v57 + 40) = v53;
      *(v57 + 48) = v55;
      *(v57 + 56) = v54;
      *(v57 + 64) = v56;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      DOCNodeDiffableDataSourceSnapshot.appendSections(_:)(v57);

      v59 = (*(*v56 + 112))(v58);
      v95 = v82;
      *&v102 = v59;
      MEMORY[0x28223BE20](v59, v60);
      v61 = v92;
      *&v82[-16] = v51;
      *&v82[-8] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
      v62 = v53;
      v63 = v52;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
      v64 = v99;
      v65 = Sequence.compactMap<A>(_:)();
      v99 = v64;

      v66 = v93[3];
      v67 = v93[4];
      __swift_project_boxed_opaque_existential_1(v93, v66);
      *&v102 = v63;
      *(&v102 + 1) = v62;
      v68 = v96;
      *&v103 = v96;
      *(&v103 + 1) = v54;
      v104 = v56;
      v69 = (*(v67 + 8))(&v102, v66, v67);
      if ((v70 & 1) == 0)
      {
        v71 = v69;
        v72 = MEMORY[0x24C1FB170](v65, v51);
        if (v71 >= v72)
        {
          v73 = v72;
        }

        else
        {
          v73 = v71;
        }

        *&v100[0] = v65;
        v101 = v73;
        type metadata accessor for Array();
        swift_getWitnessTable();
        Collection.prefix(upTo:)();
        v100[0] = v102;
        v100[1] = v103;
        type metadata accessor for ArraySlice();
        swift_getWitnessTable();
        v65 = Array.init<A>(_:)();
      }

      *&v102 = v63;
      *(&v102 + 1) = v62;
      *&v103 = v68;
      *(&v103 + 1) = v54;
      v104 = v56;

      v46 = v91;
      DOCNodeDiffableDataSourceSnapshot.appendItems(_:toSection:)(v65, &v102);
      outlined consume of DOCCollectionSection?(v102, *(&v102 + 1), v103, *(&v103 + 1), v104);
      if (!v90)
      {
        DOCNodeDiffableDataSourceSnapshot.reconfigureItems(_:)(v65);
      }

      v50 = v97 + 5;
      v47 = v98 - 1;
    }

    while (v98 != 1);
  }

  if (v87 == 2)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v85, &v102);
    DOCNodeDiffableDataSource.applySnapshotUsingReloadData(_:disclosureProvider:completion:)(v46, v74, v86, v84);

    outlined destroy of CharacterSet?(&v102, &_s26DocumentManagerExecutables25DOCNodeDisclosureProvider_pSgMd, &_s26DocumentManagerExecutables25DOCNodeDisclosureProvider_pSgMR);
  }

  else
  {
    DOCNodeDiffableDataSource.apply(_:animatingDifferences:completion:)(v46, v83 & 1, v86, v84);
  }
}

void closure #3 in DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)(void *a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v77 = a5;
  v76 = a3;
  v12 = *a2;
  v13 = *(*a2 + 80);
  v14 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v15 = *(v12 + 88);
  v78 = &type metadata for DOCCollectionSection;
  v79 = v13;
  v80 = v14;
  v81 = v15;
  v16 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v17 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21, v22);
  if (!a1[2])
  {
    goto LABEL_11;
  }

  v67 = &v60 - v23;
  *&v68 = v25;
  v69 = v16;
  v70 = v24;
  v74 = a4;
  v75 = a6;
  v27 = a1[4];
  v26 = a1[5];
  v28 = a1[7];
  v66 = a1[6];
  v29 = a1[8];

  DOCNodeDiffableDataSource.snapshot()();
  v30 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

  if (!v30[2])
  {

LABEL_9:

LABEL_10:
    a4 = v74;
    a6 = v75;
    goto LABEL_11;
  }

  v64 = v17;
  v73 = a7;
  v71 = v28;
  v32 = v30[4];
  v31 = v30[5];
  v33 = v30[7];
  v63 = v30[6];
  v34 = v30[8];

  v72 = v33;
  v35 = v34;

  v65 = v32;
  if (v27 == v32 && v26 == v31)
  {

    a4 = v74;
    a6 = v75;
    a7 = v73;
LABEL_11:
    v39 = *(*a2 + 264);

    v39(v40, a4, v77 & 1, 0, a6, a7);

    return;
  }

  v62 = v27;
  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v37 = v31;
  v38 = v29;
  a7 = v73;
  if (v36)
  {

    goto LABEL_9;
  }

  v41 = v37;
  v61 = v26;
  DOCNodeDiffableDataSource.snapshot()();
  v43 = v42;
  v44 = *(*v42 + 96);
  swift_beginAccess();
  v45 = v68;
  v46 = v43 + v44;
  v47 = v64;
  (*(v68 + 16))(v20, v46, v64);

  v49 = v69;
  v48 = v70;
  if ((*(v70 + 48))(v20, 1, v69) == 1)
  {

    (*(v45 + 8))(v20, v47);
    a7 = v73;
    goto LABEL_10;
  }

  v50 = v67;
  (*(v48 + 32))(v67, v20, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables20DOCCollectionSectionVGMR);
  v51 = swift_allocObject();
  v68 = xmmword_249B9A480;
  *(v51 + 16) = xmmword_249B9A480;
  *(v51 + 32) = v65;
  *(v51 + 40) = v41;
  v52 = v72;
  *(v51 + 48) = v63;
  *(v51 + 56) = v52;
  *(v51 + 64) = v35;
  v65 = v41;

  NSDiffableDataSourceSnapshot.deleteSections(_:)(v51);

  v53 = swift_allocObject();
  *(v53 + 16) = v68;
  v54 = v61;
  *(v53 + 32) = v62;
  *(v53 + 40) = v54;
  *&v68 = v35;
  v55 = v71;
  *(v53 + 48) = v66;
  *(v53 + 56) = v55;
  *(v53 + 64) = v38;

  NSDiffableDataSourceSnapshot.appendSections(_:)(v53);

  v56 = a2[2];
  if (v56)
  {
    v57 = v56;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v58 = *(*a2 + 264);

    v58(v59, v74, v77 & 1, 0, v75, v73);

    (*(v70 + 8))(v50, v49);
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v58 = a5;
  v57 = a4;
  v60 = a3;
  v9 = *v6;
  v10 = *(*v6 + 80);
  v11 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v68 = v6;
  v12 = *(v9 + 88);
  v72 = &type metadata for DOCCollectionSection;
  v73 = v10;
  v74 = v11;
  v75 = v12;
  v65 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v13 = type metadata accessor for Optional();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v64 = &v56 - v15;
  v16 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v66 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v70 = &v56 - v18;
  v19 = *(v10 - 8);
  v56 = *(v19 + 64);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v56 - v22;
  v69 = type metadata accessor for Optional();
  v24 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v25);
  v27 = &v56 - v26;
  v71 = swift_allocBox();
  v29 = v28;
  NSDiffableDataSourceSectionSnapshot.init()();
  (*(v19 + 56))(v27, 1, 1, v10);
  v67 = v16;
  v61 = v29;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  (*(v24 + 8))(v27, v69);
  if (MEMORY[0x24C1FB1B0](a1, v10))
  {
    v30 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v19 + 16))(v23, a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, v10);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v33 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v56 != 8)
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v72 = v33;
        (*(v19 + 16))(v23, &v72, v10);
        swift_unknownObjectRelease();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(v23, a2, v71, v10, v12);
      (*(v19 + 8))(v23, v10);
      ++v30;
    }

    while (v32 != MEMORY[0x24C1FB1B0](a1, v10));
  }

  v34 = v68;
  v35 = v68[2];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v61;
  swift_beginAccess();
  v38 = v66;
  v37 = v67;
  (*(v66 + 16))(v70, v36, v67);
  v39 = v35;
  DOCNodeDiffableDataSource.snapshot()();
  v41 = v40;
  v42 = *(*v40 + 96);
  swift_beginAccess();
  v43 = v41 + v42;
  v44 = v64;
  (*(v62 + 16))(v64, v43, v63);

  v45 = v65;
  v46 = *(v65 - 8);
  if ((*(v46 + 48))(v44, 1, v65) == 1)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v47 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v46 + 8))(v44, v45);
    if (v47[2])
    {
      v49 = v47[4];
      v48 = v47[5];
      v51 = v47[6];
      v50 = v47[7];
      v52 = v47[8];

      v72 = v49;
      v73 = v48;
      v74 = v51;
      v75 = v50;
      v76 = v52;
      v53 = swift_allocObject();
      *(v53 + 16) = v34;
      *(v53 + 24) = v57 & 1;
      v54 = v59;
      *(v53 + 32) = v58;
      *(v53 + 40) = v54;

      v55 = v70;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v38 + 8))(v55, v37);

      return;
    }
  }

  __break(1u);
}

void recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v9 = type metadata accessor for Optional();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v43 = &v40 - v11;
  v51 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v42 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v12);
  v49 = &v40 - v13;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - v21;
  v52 = a3;
  v48 = swift_projectBox();
  v23 = a2[3];
  v24 = a2[4];
  v25 = a2;
  v46 = __swift_project_boxed_opaque_existential_1(a2, v23);
  v26 = *(v14 + 16);
  v50 = a1;
  v53 = v26;
  v26(v22, a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  swift_dynamicCast();
  v27 = (*(v24 + 8))(v56[0], v23, v24);
  swift_unknownObjectRelease();
  v56[0] = v27;
  v28 = v47;
  v54 = a4;
  v55 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  v29 = Sequence.compactMap<A>(_:)();

  if (MEMORY[0x24C1FB170](v29, a4) >= 1)
  {
    NSDiffableDataSourceSectionSnapshot.init()();
    v30 = v43;
    (*(v14 + 56))(v43, 1, 1, a4);
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();
    (*(v44 + 8))(v30, v45);
    swift_beginAccess();
    NSDiffableDataSourceSectionSnapshot.replace(childrenOf:using:)();
    swift_endAccess();
    if (!MEMORY[0x24C1FB1B0](v29, a4))
    {
LABEL_12:

      getContiguousArrayStorageType<A>(for:)(a4, a4);
      swift_allocObject();
      v35 = static Array._adoptStorage(_:count:)();
      v53(v36, v50, a4);
      _finalizeUninitializedArray<A>(_:)(v35, a4);
      v38._rawValue = v37;
      swift_beginAccess();
      v39 = v51;
      NSDiffableDataSourceSectionSnapshot.expand(_:)(v38);
      swift_endAccess();

      (*(v42 + 8))(v49, v39);
      return;
    }

    v31 = 0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v53(v18, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v31, a4);
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v34 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v41 != 8)
        {
          __break(1u);
          return;
        }

        v56[0] = v34;
        v53(v18, v56, a4);
        swift_unknownObjectRelease();
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      recurseNode #1 <A>(node:) in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(v18, v25, v52, a4, v28);
      (*(v14 + 8))(v18, a4);
      ++v31;
      if (v33 == MEMORY[0x24C1FB1B0](v29, a4))
      {
        goto LABEL_12;
      }
    }
  }
}

void closure #1 in DOCNodeDiffableDataSource.apply(with:disclosureProvider:animated:reconfigure:completion:)(void *a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v11 = *(v8 + 88);
  v31[0] = &type metadata for DOCCollectionSection;
  v31[1] = v9;
  v31[2] = v10;
  v31[3] = v11;
  v12 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v31 - v15;
  v17 = a1[2];
  if (v17)
  {
    v18 = v17;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    if ((a2 & 1) == 0 || (v23 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter(), v26 = MEMORY[0x24C1FB170](v23, v9, v24, v25), v19 = , v26 < 1))
    {
      a3(v19, v20, v21, v22);
      goto LABEL_7;
    }

    v27 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v27);

    v28 = a1[2];
    if (v28)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      *(v29 + 24) = a4;
      v30 = v28;

      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

LABEL_7:
      (*(v13 + 8))(v16, v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.apply(_:animatingDifferences:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v9 = *(v6 + 88);
  v20[0] = &type metadata for DOCCollectionSection;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  v10 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v20 - v14;
  v16 = v4[2];
  if (v16)
  {
    v17 = *(*a1 + 96);
    swift_beginAccess();
    (*(v12 + 16))(v15, a1 + v17, v11);
    v18 = *(v10 - 8);
    if ((*(v18 + 48))(v15, 1, v10) != 1)
    {
      v19 = v16;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v18 + 8))(v15, v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(ValueMetadata *a1, ValueMetadata *a2, ValueMetadata **a3, uint64_t a4, uint64_t a5)
{
  v90 = a4;
  v91 = a5;
  v100 = a1;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v11 = *(v8 + 88);
  v105 = &type metadata for DOCCollectionSection;
  v106 = v9;
  v107 = v10;
  v108 = v11;
  v12 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v95 = v79 - v14;
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v89 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v18;
  MEMORY[0x28223BE20](v19, v20);
  v104 = v79 - v21;
  v22 = type metadata accessor for Optional();
  v102 = *(v22 - 8);
  v103 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v92 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = v79 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = (v79 - v31);
  v101 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v33);
  v94 = v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = v79 - v37;
  v98 = v5;
  v39 = v5[2];
  if (!v39)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v40 = a3[1];
  v41 = a3[2];
  v42 = a3[3];
  v43 = a3[4];
  v86 = *a3;
  v105 = v86;
  v106 = v40;
  v85 = v40;
  v84 = v41;
  v107 = v41;
  v108 = v42;
  v83 = v42;
  v82 = v43;
  v109 = v43;
  v44 = v39;
  UICollectionViewDiffableDataSource.snapshot(for:)();

  v105 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v45 = swift_dynamicCast();
  v87 = *(v15 + 56);
  v46 = v87(v32, v45 ^ 1u, 1, v9);
  v105 = v100;
  MEMORY[0x28223BE20](v46, v47);
  v79[-2] = v9;
  v79[-1] = v11;
  v93 = v11;
  v100 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  v48 = v100;
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  v49 = Sequence.compactMap<A>(_:)();
  v50 = v102;
  v51 = v103;
  (*(v102 + 16))(v28, v48, v103);
  if ((*(v15 + 48))(v28, 1, v9) == 1)
  {
    (*(v99 + 8))(v38, v101);

    (*(v50 + 8))(v28, v51);
LABEL_12:
    (*(v50 + 8))(v48, v51);
    return;
  }

  v81 = v38;
  v52 = v104;
  v80 = *(v15 + 32);
  v80(v104, v28, v9);
  if (MEMORY[0x24C1FB170](v49, v9) < 1)
  {

    (*(v15 + 8))(v52, v9);
    goto LABEL_9;
  }

  v79[1] = v15 + 32;
  v53 = v98[2];
  if (!v53)
  {
    goto LABEL_14;
  }

  v54 = v53;
  v55 = v95;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v56 = v97;
  NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  LOBYTE(v54) = v57;
  (*(v96 + 8))(v55, v56);
  if (v54)
  {

    (*(v15 + 8))(v104, v9);
LABEL_9:
    (*(v99 + 8))(v81, v101);
    goto LABEL_12;
  }

  NSDiffableDataSourceSectionSnapshot.init()();
  v58 = v92;
  v87(v92, 1, 1, v9);
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  (*(v50 + 8))(v58, v51);
  v59 = v104;
  v60 = v81;
  NSDiffableDataSourceSectionSnapshot.replace(childrenOf:using:)();
  getContiguousArrayStorageType<A>(for:)(v9, v9);
  v61 = *(v15 + 80);
  swift_allocObject();
  v62 = static Array._adoptStorage(_:count:)();
  v96 = *(v15 + 16);
  (v96)(v63, v59, v9);
  _finalizeUninitializedArray<A>(_:)(v62, v9);
  v64 = v98;
  v65 = v60;
  NSDiffableDataSourceSectionSnapshot.expand(_:)(v66);

  v67 = v64[2];
  v97 = v15;
  if (v67)
  {
    v95 = v67;

    v105 = v86;
    v106 = v85;
    v107 = v84;
    v108 = v83;
    v109 = v82;
    v68 = v89;
    v69 = v104;
    (v96)(v89, v104, v9);
    v70 = (v61 + 40) & ~v61;
    v71 = (v88 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v73 = v93;
    *(v72 + 2) = v9;
    *(v72 + 3) = v73;
    *(v72 + 4) = v64;
    v80(&v72[v70], v68, v9);
    v74 = &v72[v71];
    v75 = v91;
    *v74 = v90;
    v74[1] = v75;

    v76 = v95;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

    v77 = *(v99 + 8);
    v78 = v101;
    v77(v94, v101);
    (*(v97 + 8))(v69, v9);
    v77(v65, v78);
    v50 = v102;
    v51 = v103;
    v48 = v100;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t closure #1 in DOCNodeDiffableDataSource.updateSnapshot(for:using:disclosureProvider:sectionLimiter:animated:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getObjectType();
  DOCNode.diffableItem()(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

void closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = *a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v11);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v15 = *(v6 + 88);
  aBlock = &type metadata for DOCCollectionSection;
  v55 = v13;
  v56 = v14;
  v57 = v15;
  v16 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v44 - v23;
  v25 = a1[2];
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  v47 = v8;
  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v27 = a1[2];
  if (!v27)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28 = v27;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.indexOfItem(_:)();
  LOBYTE(v28) = v29;
  v30 = *(v17 + 8);
  v30(v20, v16);
  if (v28)
  {
LABEL_6:
    v30(v24, v16);
    return;
  }

  v45 = v30;
  v46 = v7;
  getContiguousArrayStorageType<A>(for:)(v13, v13);
  v31 = *(v13 - 8);
  swift_allocObject();
  v32 = static Array._adoptStorage(_:count:)();
  (*(v31 + 16))(v33, a2, v13);
  _finalizeUninitializedArray<A>(_:)(v32, v13);
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v34);

  v35 = a1[2];
  if (v35)
  {
    v36 = v35;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    v39 = v49;
    *(v38 + 16) = v48;
    *(v38 + 24) = v39;
    v58 = partial apply for thunk for @callee_guaranteed () -> ();
    v59 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v57 = &block_descriptor_108;
    v40 = _Block_copy(&aBlock);

    v41 = v50;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v42 = v52;
    v43 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v41, v42, v40);
    _Block_release(v40);

    (*(v47 + 8))(v42, v43);
    (*(v51 + 8))(v41, v53);
    v30 = v45;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void DOCNodeDiffableDataSource.isExpanded(_:section:)(uint64_t a1, __int128 *a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - v11;
  v13 = v2[2];
  if (v13)
  {
    v14 = *(a2 + 2);
    v17 = *a2;
    v18 = v14;
    v19 = *(a2 + 24);
    v15 = v13;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    swift_getObjectType();
    DOCNode.diffableItem()(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
    swift_dynamicCast();
    NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
    (*(v9 + 8))(v12, v8);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

void DOCNodeDiffableDataSource.collapse(_:section:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(*v3 + 80);
  v6 = type metadata accessor for NSDiffableDataSourceSectionSnapshot();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  v10 = v3[2];
  if (v10)
  {
    v12 = *a2;
    v11 = a2[1];
    v14 = a2[2];
    v13 = a2[3];
    v15 = a2[4];
    v27 = *a2;
    v28 = v11;
    v29 = v14;
    v30 = v13;
    v23 = v15;
    v24 = v13;
    v31 = v15;
    v16 = v10;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    getContiguousArrayStorageType<A>(for:)(v5, v5);
    swift_allocObject();
    v17 = static Array._adoptStorage(_:count:)();
    swift_getObjectType();
    DOCNode.diffableItem()(&v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
    swift_dynamicCast();
    _finalizeUninitializedArray<A>(_:)(v17, v5);
    v18 = v26;
    NSDiffableDataSourceSectionSnapshot.collapse(_:)(v19);

    v20 = v3[2];
    if (v20)
    {
      v27 = v12;
      v28 = v11;
      v29 = v14;
      v30 = v24;
      v31 = v23;
      v21 = v20;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v25 + 8))(v9, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSource.itemIdentifier(at:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = v1[2];
  if (v8)
  {
    v9 = v8;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(*(v2 - 8) + 48))(v7, 1, v2) == 1)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      swift_dynamicCast();
    }
  }

  else
  {
    __break(1u);
  }
}

double DOCNodeDiffableDataSource.sectionIdentifier(containingItem:)@<D0>(uint64_t x8_0@<X8>)
{
  DOCNodeDiffableDataSource.snapshot()();
  DOCNodeDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)(x8_0);

  return result;
}

void DOCNodeDiffableDataSource.section(at:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  DOCNodeDiffableDataSource.snapshot()();
  v4 = DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v4 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = (v4 + 40 * a1);
  v6 = v5[5];
  v7 = v5[6];
  v8 = v5[7];
  v9 = v5[8];
  *a2 = v5[4];
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
}

uint64_t DOCNodeDiffableDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*protocol witness for DOCNodeDiffableDataSourceProtocol.supplementaryViewProvider.modify in conformance DOCNodeDiffableDataSource<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 184))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

char *DOCNodeDiffableDataSourceSnapshot.init(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = *(v3 + 88);
  v18[0] = &type metadata for DOCCollectionSection;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v7 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = v18 - v12;
  v14 = *(v3 + 96);
  v15 = *(v7 - 8);
  v16 = *(v15 + 56);
  v16(&v1[v14], 1, 1, v7, v11);
  (*(v15 + 32))(v13, a1, v7);
  (v16)(v13, 0, 1, v7);
  swift_beginAccess();
  (*(v9 + 40))(&v1[v14], v13, v8);
  swift_endAccess();
  return v1;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.sectionIdentifiers.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v4 = *(v1 + 88);
  v15[0] = &type metadata for DOCCollectionSection;
  v15[1] = v2;
  v15[2] = v3;
  v15[3] = v4;
  v5 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v15 - v9;
  v11 = *(v1 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v10, v0 + v11, v6);
  v12 = *(v5 - 8);
  result = (*(v12 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v12 + 8))(v10, v5);
    return v14;
  }

  return result;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v5 = *(v2 + 88);
  v30[0] = &type metadata for DOCCollectionSection;
  v30[1] = v3;
  v30[2] = v4;
  v30[3] = v5;
  v6 = type metadata accessor for NSDiffableDataSourceSnapshot();
  v7 = type metadata accessor for Optional();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v27 - v19;
  swift_getObjectType();
  DOCNode.diffableItem()(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_pMd, &_sSH_pMR);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v3);
    (*(v16 + 32))(v20, v15, v3);
    v23 = *(*v1 + 96);
    swift_beginAccess();
    (*(v27 + 16))(v10, v1 + v23, v28);
    v24 = *(v6 - 8);
    result = (*(v24 + 48))(v10, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)();
      (*(v16 + 8))(v20, v3);
      return (*(v24 + 8))(v10, v6);
    }
  }

  else
  {
    v22(v15, 1, 1, v3);
    result = (*(v12 + 8))(v15, v11);
    v26 = v29;
    *(v29 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
  }

  return result;
}

void DOCNodeDiffableDataSourceSnapshot.appendItems(_:toSection:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = [objc_opt_self() tabSidebar];
  v6 = [v5 isEnabled];

  if (v6)
  {
    v7 = *(v4 + 80);
    type metadata accessor for Array();

    swift_getWitnessTable();
    Set.init<A>(_:)();
    type metadata accessor for Set();
    swift_getWitnessTable();
    v8 = Array.init<A>(_:)();
    v9 = MEMORY[0x24C1FB170](a1, v7);
    if (v9 != MEMORY[0x24C1FB170](v8, v7))
    {
      v18 = v2;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.UI);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = MEMORY[0x24C1FB170](a1, v7);

        *(v13 + 12) = 2048;
        *(v13 + 14) = MEMORY[0x24C1FB170](v8, v7);

        _os_log_impl(&dword_2493AC000, v11, v12, "TabSidebar count of ids: %ld, but unique count is only: %ld. De-duping applied.", v13, 0x16u);
        MEMORY[0x24C1FE850](v13, -1, -1);
      }

      else
      {
      }

      v2 = v18;
    }

    v16 = *(*v2 + 96);
    swift_beginAccess();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
    v17 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if ((*(*(v17 - 8) + 48))(v2 + v16, 1, v17) != 1)
    {
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      swift_endAccess();

      return;
    }
  }

  else
  {
    v14 = *(*v2 + 96);
    swift_beginAccess();
    lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
    v15 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if ((*(*(v15 - 8) + 48))(v2 + v14, 1, v15) != 1)
    {
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      swift_endAccess();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void DOCNodeDiffableDataSourceSnapshot.appendSections(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v6 = type metadata accessor for NSDiffableDataSourceSnapshot();
  if ((*(*(v6 - 8) + 48))(v2 + v5, 1, v6) == 1)
  {
    __break(1u);
  }

  else
  {
    a2(a1, v6);
    swift_endAccess();
  }
}

uint64_t *DOCNodeDiffableDataSourceSnapshot.deinit()
{
  v1 = *(*v0 + 96);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCNodeDiffableDataSourceSnapshot.__deallocating_deinit()
{
  DOCNodeDiffableDataSourceSnapshot.deinit();

  return swift_deallocClassInstance();
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

char *specialized DOCNodeDiffableDataSource.createEmptySnapshot()(uint64_t a1, uint64_t a2)
{
  v9 = &type metadata for DOCCollectionSection;
  v10 = a1;
  v11 = lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v12 = a2;
  v3 = type metadata accessor for NSDiffableDataSourceSnapshot();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - v5;
  type metadata accessor for DOCNodeDiffableDataSourceSnapshot(0, v10, a2, v7);
  NSDiffableDataSourceSnapshot.init()();
  swift_allocObject();
  return DOCNodeDiffableDataSourceSnapshot.init(with:)(v6);
}

void partial apply for closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8));
  closure #2 in DOCNodeDiffableDataSource.insertNodes(_:parentDocNode:section:completion:)(*(v0 + 32), v0 + v1, *v2, v2[1]);
}

uint64_t type metadata completion function for DOCNodeDiffableDataSourceSnapshot(uint64_t a1)
{
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  type metadata accessor for NSDiffableDataSourceSnapshot();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UICollectionView, @in_guaranteed String, @in_guaranteed IndexPath) -> (@out UICollectionReusableView?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[1] = a3;
  v9 = a1;
  v8[0] = a2;
  v5(&v7, &v9, v8, a4);
  return v7;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UICollectionView, @guaranteed String, @in_guaranteed IndexPath) -> (@owned UICollectionReusableView?)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, a2[1], a3);
  *a4 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FPItem? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FPItem? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FPItem? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItem? and conformance <A> A?);
  }

  return result;
}

id DOCSearchAppMenuButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSearchAppMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCSearchAppMenuButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCSearchAppMenuButton.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - v3;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu] = 0;
  v5 = type metadata accessor for DOCSearchAppMenuButton();
  v12.receiver = v0;
  v12.super_class = v5;
  v6 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setPointerInteractionEnabled_];
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration.glass()();
    v7 = type metadata accessor for UIButton.Configuration();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    UIButton.configuration.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249B9A480;
  v9 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v10 = MEMORY[0x277D74DB8];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v6;
}

void closure #1 in DOCSearchAppMenuButton.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
    [v4 invalidateIntrinsicContentSize];
  }
}

void DOCSearchAppMenuButton.attachedMenu.didset()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in DOCSearchAppMenuButton.attachedMenu.didset;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [UIMenuElement]?) -> (@owned UIMenu?);
    aBlock[3] = &block_descriptor_109;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v0 _setMenuProvider_];
    _Block_release(v4);
    v6 = v5;
    v7 = [v6 image];
    [v0 setImage:v7 forState:0];

    v8 = [v6 title];
    if (!v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = MEMORY[0x24C1FAD20](v9);
    }

    [v0 setTitle:v8 forState:0];

    [v0 setShowsMenuAsPrimaryAction_];
    [v0 setNeedsUpdateConfiguration];
  }

  else
  {
    [v0 _setMenuProvider_];
  }
}

id thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [UIMenuElement]?) -> (@owned UIMenu?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    outlined init with take of Any(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    type metadata accessor for UIMenuElement();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  outlined destroy of Any?(v10);

  return v6;
}

void *DOCSearchAppMenuButton.attachedMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSearchAppMenuButton.attachedMenu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSearchAppMenuButton_attachedMenu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCSearchAppMenuButton.attachedMenu.didset();
}

void (*DOCSearchAppMenuButton.attachedMenu.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSearchAppMenuButton.attachedMenu.modify;
}

void DOCSearchAppMenuButton.attachedMenu.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCSearchAppMenuButton.attachedMenu.didset();
  }
}

id DOCSearchAppMenuButton.menu.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCSearchAppMenuButton();
  v1 = objc_msgSendSuper2(&v3, sel_menu);

  return v1;
}

void DOCSearchAppMenuButton.menu.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSearchAppMenuButton();
  objc_msgSendSuper2(&v3, sel_setMenu_, a1);
}

CGSize __swiftcall DOCSearchAppMenuButton.sizeThatFits(_:)(CGSize a1)
{
  v2 = [objc_opt_self() defaultMetrics];
  v3 = [v1 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:44.0];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

id DOCSearchAppMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSearchAppMenuButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSearchAppMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for UIMenuElement()
{
  result = lazy cache variable for type metadata for UIMenuElement;
  if (!lazy cache variable for type metadata for UIMenuElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIMenuElement);
  }

  return result;
}

id DOCSuggestionsTableViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCSuggestionsTableView.__allocating_init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithFrame:a1 style:{a2, a3, a4, a5}];
}

id DOCSuggestionsTableView.init(frame:style:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for DOCSuggestionsTableView();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249B9A480;
  v14 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v15 = MEMORY[0x277D74DB8];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = v12;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

Swift::Void __swiftcall DOCSuggestionsTableView.reloadData()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCSuggestionsTableView();
  objc_msgSendSuper2(&v1, sel_reloadData);
  [v0 invalidateIntrinsicContentSize];
  [v0 layoutIfNeeded];
}

id DOCSuggestionsTableView.invalidateIntrinsicContentSize()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x60))(0, 0, 1);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSuggestionsTableView();
  return objc_msgSendSuper2(&v2, sel_invalidateIntrinsicContentSize);
}

void @objc DOCSuggestionsTableView.invalidateIntrinsicContentSize()(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v2 = a1;
  v1(0, 0, 1);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DOCSuggestionsTableView();
  objc_msgSendSuper2(&v3, sel_invalidateIntrinsicContentSize);
}

uint64_t DOCSuggestionsTableView.cachedIntrinsicSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize;
  swift_beginAccess();
  return *v1;
}

void DOCSuggestionsTableView.cachedIntrinsicSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

double DOCSuggestionsTableView.intrinsicContentSize.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  if (v4)
  {
    v5 = *MEMORY[0x277D77260];
    DOCSuggestionsTableView.calculatedHeight()();
    v7 = v6;
  }

  else
  {
    v5 = *&v2;
    v7 = v3;
  }

  (*((*v1 & *v0) + 0x60))(COERCE_DOUBLE(*&v5), v7, 0);
  return v5;
}

uint64_t DOCSuggestionsTableView.calculatedHeight()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 delegate];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  type metadata accessor for DOCSuggestionsTableViewController();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = [v10 numberOfSectionsInTableView_];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v29[1] = v9;
  if (v11)
  {
    v13 = 0;
    v14 = (v3 + 8);
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    while (1)
    {
      v19 = [v1 numberOfRowsInSection_];
      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      v20 = v19;
      if (v19)
      {
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          MEMORY[0x24C1F80E0]();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v14)(v7, v2);
          [v1 rectForRowAtIndexPath_];
          v15 = v24;
          v16 = v25;
          v17 = v26;
          v18 = v27;

          v21 = v22;
        }

        while (v20 != v22);
      }

      if (++v13 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
LABEL_13:
  v30.origin.x = v15;
  v30.origin.y = v16;
  v30.size.width = v17;
  v30.size.height = v18;
  CGRectGetMaxY(v30);
  return swift_unknownObjectRelease();
}

uint64_t DOCSuggestionsTableViewController.suggestionsTableViewDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSuggestionsTableViewController.suggestionsTableViewDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCSuggestionsTableViewController.suggestions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = *(v1 + v3);

  return (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(1);
}

uint64_t (*DOCSuggestionsTableViewController.suggestions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCSuggestionsTableViewController.suggestions.modify;
}

void DOCSuggestionsTableViewController.suggestions.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = *(v4 + v3[4]);

    (*((*MEMORY[0x277D85000] & *v4) + 0xF0))(1);
  }

  free(v3);
}

unint64_t DOCSuggestionsTableViewController.selectedSuggestion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v18 - v10;
  result = [v1 tableView];
  if (result)
  {
    v13 = result;
    v14 = [result indexPathForSelectedRow];

    if (!v14)
    {
      return 0;
    }

    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v6, v2);
    result = IndexPath.row.getter();
    v15 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = result;

      v16 = MEMORY[0x24C1FC540](v17, v15);

      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * result + 32);
LABEL_7:
      (*(v3 + 8))(v11, v2);
      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id DOCSuggestionsTableViewController.init()()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions] = v1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DOCSuggestionsTableViewController();
  v2 = objc_msgSendSuper2(&v8, sel_initWithStyle_, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  v4 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v5 = MEMORY[0x277D74DB8];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = v2;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v6;
}

id DOCSuggestionsTableViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCSuggestionsTableViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for DOCSuggestionsTableView()) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView_];
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.viewDidLoad()()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for DOCSuggestionsTableViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  [v1 setClipsToBounds_];

  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTableFooterView_];

  v6 = [v0 tableView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setBouncesVertically_];

  v8 = [v0 tableView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setCellLayoutMarginsFollowReadableWidth_];

  v10 = [v0 tableView];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  [v10 setDelegate_];

  v12 = [v0 tableView];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 setDataSource_];

  v14 = [v0 tableView];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BEC590);
  [v15 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [v0 tableView];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  [v18 setShowsVerticalScrollIndicator_];

  v20 = [v0 tableView];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  [v20 setShowsHorizontalScrollIndicator_];

  v22 = [v0 tableView];
  if (v22)
  {
    v23 = v22;
    [v22 setAllowsMultipleSelection_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Bool __swiftcall DOCSuggestionsTableViewController.resignFirstResponder()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DOCSuggestionsTableViewController();
  v19.receiver = v1;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_resignFirstResponder);
  v13 = [v1 tableView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 indexPathForSelectedRow];

  if (v15)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v10, v6, v2);
    v13 = [v1 tableView];
    if (v13)
    {
      v16 = v13;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v16 deselectRowAtIndexPath:isa animated:1];

      (*(v3 + 8))(v10, v2);
      goto LABEL_5;
    }

LABEL_7:
    __break(1u);
    return v13;
  }

LABEL_5:
  LOBYTE(v13) = v12;
  return v13;
}

void DOCSuggestionsTableViewController.keyCommandConfirmSelection()()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v14 - v9;
  v11 = [v0 tableView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 indexPathForSelectedRow];

    if (v13)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v10, v5, v1);
      DOCSuggestionsTableViewController.notiftyDelegateForSelection(at:)(v10);
      (*(v2 + 8))(v10, v1);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(uint64_t a1, char a2, int a3)
{
  v4 = v3;
  v75 = a3;
  v78 = a1;
  v6 = type metadata accessor for IndexPath();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v76 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v74 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v71 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v77 = &v71 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v71 - v36;
  v40 = MEMORY[0x28223BE20](v38, v39);
  v80 = &v71 - v41;
  result = [v4 tableView];
  if (!result)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v43 = result;
  v44 = [result indexPathForSelectedRow];

  if (v44)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v79;
    v46 = *(v79 + 56);
    v46(v37, 0, 1, v6);
  }

  else
  {
    v45 = v79;
    v46 = *(v79 + 56);
    v46(v37, 1, 1, v6);
  }

  outlined init with take of IndexPath?(v37, v80);
  if (a2)
  {
    if (a2 == 1)
    {
      v47 = *(v45 + 48);
      v48 = v80;
      if (v47(v80, 1, v6) == 1)
      {
        if (v78 >= 1)
        {
          DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, 2, v75 & 1);
        }

        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      v72 = v4;
      outlined init with copy of IndexPath?(v48, v30);
      result = (v47)(v30, 1, v6);
      if (result == 1)
      {
        goto LABEL_49;
      }

      v50 = IndexPath.row.getter();
      v4 = (v79 + 8);
      v71 = *(v79 + 8);
      v71(v30, v6);
      if (!v50 && v78 < 0)
      {
        v48 = v80;
        deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, v80, v72);
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      v48 = v80;
      outlined init with copy of IndexPath?(v80, v22);
      result = (v47)(v22, 1, v6);
      if (result == 1)
      {
        goto LABEL_52;
      }

      v51 = IndexPath.row.getter();
      v71(v22, v6);
      v45 = v79;
      result = v51 + v78;
      if (__OFADD__(v51, v78))
      {
        __break(1u);
        goto LABEL_44;
      }

      MEMORY[0x24C1F80E0](result, 0);
      v46(v26, 0, 1, v6);
      v49 = v77;
      outlined init with take of IndexPath?(v26, v77);
      v4 = v72;
    }

    else
    {
      v48 = v80;
      if (!v78)
      {
        deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, v80, v4);
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      v49 = v77;
      MEMORY[0x24C1F80E0](0, 0);
      v46(v49, 0, 1, v6);
    }
  }

  else
  {
    v49 = v77;
    MEMORY[0x24C1F80E0](v78, 0);
    v46(v49, 0, 1, v6);
    v48 = v80;
  }

  outlined init with copy of IndexPath?(v49, v18);
  v52 = *(v45 + 48);
  if (v52(v18, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v49, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v48 = v18;
    return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v53 = *(v45 + 32);
  v18 = v76;
  v53();
  if (IndexPath.row.getter() < 0)
  {
LABEL_29:
    (*(v79 + 8))(v18, v6);
    outlined destroy of CharacterSet?(v77, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v54 = IndexPath.row.getter();
  result = [v4 tableView];
  if (!result)
  {
    goto LABEL_48;
  }

  v55 = result;
  v56 = [result numberOfRowsInSection_];

  v57 = v54 < v56;
  v48 = v80;
  if (!v57)
  {
    goto LABEL_29;
  }

  v58 = v74;
  outlined init with copy of IndexPath?(v80, v74);
  if (v52(v58, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v58, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v59 = v79;
    v22 = v77;
    v60 = &selRef_numberOfPreviewItems;
    goto LABEL_32;
  }

  v61 = v73;
  (v53)(v73, v58, v6);
  v60 = &selRef_numberOfPreviewItems;
  result = [v4 tableView];
  if (result)
  {
    v62 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v62 deselectRowAtIndexPath:isa animated:0];

    v59 = v79;
    (*(v79 + 8))(v61, v6);
    v22 = v77;
LABEL_32:
    result = [v4 v60[181]];
    if (!result)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v64 = result;
    v65 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v64 selectRowAtIndexPath:v65 animated:0 scrollPosition:0];

    result = [v4 v60[181]];
    if (!result)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v66 = result;
    UITableView.doc_scrollToItemIfNeeded(at:)(v18);

    if ((v75 & 1) == 0 || !(*((*MEMORY[0x277D85000] & *v4) + 0x68))())
    {
      goto LABEL_41;
    }

    v48 = v67;
    result = IndexPath.row.getter();
    v51 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
    if ((v51 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v68 = *(v51 + 8 * result + 32);
LABEL_40:
        ObjectType = swift_getObjectType();
        (*(v48 + 8))(v4, v68, ObjectType, v48);
        swift_unknownObjectRelease();

        v59 = v79;
LABEL_41:
        (*(v59 + 8))(v18, v6);
        outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
        v48 = v80;
        return outlined destroy of CharacterSet?(v48, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_44:
    v70 = result;

    v68 = MEMORY[0x24C1FC540](v70, v51);

    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

id deselect #1 (notifyingDelegate:) in DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(char a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of IndexPath?(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = outlined destroy of CharacterSet?(v9, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  (*(v11 + 32))(v14, v9, v10);
  result = [a3 tableView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v16 deselectRowAtIndexPath:isa animated:0];

  result = (*(v11 + 8))(v14, v10);
  if (a1)
  {
LABEL_6:
    result = (*((*MEMORY[0x277D85000] & *a3) + 0x68))(result);
    if (result)
    {
      v19 = v18;
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(a3, 0, ObjectType, v19);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.reload(postDidChangeSize:)(Swift::Bool postDidChangeSize)
{
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 reloadData];

  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 invalidateIntrinsicContentSize];

  if (postDidChangeSize && (*((*MEMORY[0x277D85000] & *v1) + 0x68))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(v1, ObjectType, v8);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCSuggestionsTableViewController.reloadSuggestionImages()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      (*((*v2 & *v7) + 0x180))();

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = *((*v2 & *v1) + 0xF0);

  v10(1);
}

void DOCSuggestionsTableViewController.notiftyDelegateForSelection(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = IndexPath.row.getter();
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v4 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_16;
  }

  v11 = v3;

  v12 = MEMORY[0x24C1FC540](v11, v4);

LABEL_5:
  v5 = [v1 tableView];
  if (!v5)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v5;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v6 deselectRowAtIndexPath:isa animated:1];

  if ((*((*MEMORY[0x277D85000] & *v2) + 0x68))())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v2, v12, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Int __swiftcall DOCSuggestionsTableViewController.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x80))(_, numberOfRowsInSection);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

void DOCSuggestionsTableViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BEC590, v6);
  v10 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v10)
  {
    goto LABEL_14;
  }

  type metadata accessor for DOCSuggestionsTableViewController.SuggestionsCell();
  v11 = swift_dynamicCastClassUnconditional();
  v12 = IndexPath.row.getter();
  v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions);
  v66 = v3;
  v65 = v4;
  v64 = v11;
  v63 = v10;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v57 = v12;

    v14 = MEMORY[0x24C1FC540](v57, v13);

    goto LABEL_6;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = *(v13 + 8 * v12 + 32);
LABEL_6:
  v15 = MEMORY[0x277D85000];
  v16 = (*MEMORY[0x277D85000] & *v14) + 152;
  v60 = *((*MEMORY[0x277D85000] & *v14) + 0x98);
  v61 = v16;
  v60();
  v18 = v17;
  v19 = objc_opt_self();
  v20 = &selRef_labelColor;
  if ((v18 & 1) == 0)
  {
    v20 = &selRef_secondaryLabelColor;
  }

  v21 = [v19 *v20];
  v22 = *((*v15 & *v14) + 0xB0);
  v23 = v21;
  v24 = v22();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  v58 = xmmword_249B9A480;
  *(inited + 16) = xmmword_249B9A480;
  v28 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v59 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
  *(inited + 64) = v59;
  v62 = v23;
  *(inited + 40) = v23;
  v29 = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v31 = MEMORY[0x24C1FAD20](v24, v26);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithString:v31 attributes:isa];

  v34 = (v60)();
  if ((v36 & 1) == 0)
  {
    v37 = v34;
    v61 = v35;
    v38 = swift_initStackObject();
    *(v38 + 16) = v58;
    *(v38 + 32) = v29;
    v39 = objc_opt_self();
    v40 = v29;
    v41 = [v39 labelColor];
    *(v38 + 64) = v59;
    *(v38 + 40) = v41;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v38);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v38 + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v33 setAttributes:v42 range:{v37, v61}];
  }

  v43 = static UIListContentConfiguration.cell()();
  (*((*MEMORY[0x277D85000] & *v14) + 0x170))(v43);
  UIListContentConfiguration.image.setter();
  v44 = objc_opt_self();
  v45 = [v44 labelColor];
  v46 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.tintColor.setter();
  v46(v67, 0);
  v47 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.maximumSize.setter();
  v47(v67, 0);
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  static UIListContentConfiguration.ImageProperties.standardDimension.getter();
  v48 = UIListContentConfiguration.imageProperties.modify();
  UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
  v48(v67, 0);
  v49 = v33;
  UIListContentConfiguration.attributedText.setter();
  v50 = v66;
  v67[3] = v66;
  v67[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v52 = v65;
  (*(v65 + 16))(boxed_opaque_existential_1, v8, v50);
  v53 = v63;
  v54 = v64;
  MEMORY[0x24C1FB7C0](v67);
  v55 = v53;
  v56 = [v44 clearColor];
  [v54 setBackgroundColor_];

  (*(v52 + 8))(v8, v50);
}

id DOCSuggestionsTableViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id DOCSuggestionsTableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DOCSuggestionsTableView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized DOCSuggestionsTableViewController.keyCommands.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D76B68];
  *(v0 + 16) = xmmword_249BA0470;
  v2 = *v1;
  v3 = objc_opt_self();
  *(v0 + 32) = [v3 keyCommandWithInput:v2 modifierFlags:0 action:sel_keyCommandMoveSelectionUp];
  *(v0 + 40) = [v3 keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:sel_keyCommandMoveSelectionDown];
  v4 = MEMORY[0x24C1FAD20](13, 0xE100000000000000);
  v5 = [v3 keyCommandWithInput:v4 modifierFlags:0 action:sel_keyCommandConfirmSelection];

  *(v0 + 48) = v5;
  *(v0 + 56) = [v3 keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_keyCommandCancelSelection];
  return v0;
}

void *DOCSearchBar.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized DOCSearchBar.init(configuration:)(a1);

  return v4;
}

void *DOCSearchBar.init(configuration:)(void *a1)
{
  v2 = specialized DOCSearchBar.init(configuration:)(a1);

  return v2;
}

id DOCSearchBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCSearchBar.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSearchBar.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSearchBar();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized closure #1 in DOCSearchBar.init(configuration:)(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x68))();
  if (result)
  {

    return [a1 _setOverrideInlineInactiveWidth_];
  }

  return result;
}

void *specialized DOCSearchBar.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSearchBar_configuration] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for DOCSearchBar();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = _DocumentManagerBundle();
  if (result)
  {
    v7 = result;
    v16._object = 0x8000000249BEC7F0;
    v8._countAndFlagsBits = 0x686372616553;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v8._object = 0xE600000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD000000000000022;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v16);

    v12 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

    [v5 setPlaceholder_];

    [v5 setWritingToolsBehavior_];
    if ((*((*MEMORY[0x277D85000] & *v5) + 0x68))())
    {
      [v5 _setOverrideInlineInactiveWidth_];
    }

    v13 = 0;
    v14 = 1;
    UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(&v13, specialized closure #1 in DOCSearchBar.init(configuration:), 0, ObjectType);
    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIWindowScene.configurationSupportsPreviewInNewWindow(contentType:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  if ([v12 quickLookInSeparateProcess])
  {
    return 1;
  }

  v14 = [v12 quickLookInWindow];
  v15 = [v14 isEnabled];

  if (v15)
  {
    v13 = [v1 _enhancedWindowingEnabled];
  }

  else
  {
    v13 = 0;
  }

  v16 = [v12 quickLookRestrictContentTypesThatOpenInWindow];
  v17 = [v16 isEnabled];

  if (v17)
  {
    outlined init with copy of UTType?(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of UTType?(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
      *(swift_allocObject() + 16) = xmmword_249BA08C0;
      static UTType.movie.getter();
      static UTType.image.getter();
      static UTType.audio.getter();
      isa = UTType._bridgeToObjectiveC()().super.isa;
      v19 = Array._bridgeToObjectiveC()().super.isa;

      v20 = [(objc_class *)isa doc_conformsToAnyInContentTypes:v19];

      (*(v8 + 8))(v11, v7);
      return v13 & (v20 ^ 1);
    }
  }

  return v13;
}

unint64_t lazy protocol witness table accessor for type DOCHorizontalEdge and conformance DOCHorizontalEdge()
{
  result = lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge;
  if (!lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHorizontalEdge and conformance DOCHorizontalEdge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCVerticalEdge and conformance DOCVerticalEdge()
{
  result = lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge;
  if (!lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCVerticalEdge and conformance DOCVerticalEdge);
  }

  return result;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.__allocating_init(hierarchyController:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = MEMORY[0x277D84F90];
  *(v2 + 32) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 64) = 0;
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.init(hierarchyController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

double DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
}

uint64_t (*DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify;
}

double DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
}

uint64_t (*DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCHierarchyController.UserDefaultsObservedContent.isObservingActive.modify;
}

void DOCHierarchyController.UserDefaultsObservedContent.watchedNodes.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCHierarchyController.UserDefaultsObservedContent.updateObservers()();
  }
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC012DOCHierarchyF0C27UserDefaultsObservedContentCGMd, &_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC012DOCHierarchyF0C27UserDefaultsObservedContentCGMR);
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_weakAssign();
    *(v0 + 40) = v1;
  }

  return v1;
}

double DOCHierarchyController.UserDefaultsObservedContent.updateObservers()()
{
  v1 = v0;
  if (((*(*v0 + 184))() & 1) != 0 && ((v3 = (*(*v0 + 160))(), v3 >> 62) ? (v4 = __CocoaSet.count.getter()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v4 >= 1))
  {
    if (!*(v1 + 56))
    {
      v5 = DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter();
      if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
      {
        swift_once();
      }

      v6 = static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;
      v7 = [objc_opt_self() mainQueue];
      v8 = (*(*v5 + 144))(v6, &v14, v7, closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers(), 0);
      v10 = v9;

      outlined destroy of Any?(&v14);
      *(v1 + 48) = v8;
      *(v1 + 56) = v10;
    }
  }

  else
  {
    v11 = *(v1 + 56);
    if (v11)
    {
      v12 = *(v1 + 48);

      v13 = DOCHierarchyController.UserDefaultsObservedContent.notificationsController.getter();
      (*(*v13 + 168))(v12, v11);

      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
    }
  }

  return result;
}

uint64_t closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v21)
  {
    return outlined destroy of Any?(aBlock);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v24;
    v14 = (*(*a1 + 160))();
    swift_getObjectType();
    v15 = specialized Array<A>.contains(node:)(v13, v14);

    if (v15)
    {
      type metadata accessor for OS_dispatch_queue();
      v16 = static OS_dispatch_queue.main.getter();
      v22 = partial apply for closure #1 in closure #1 in DOCHierarchyController.UserDefaultsObservedContent.updateObservers();
      v23 = a1;
      v19 = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v21 = &block_descriptor_17_2;
      v17 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v19;
      MEMORY[0x24C1FB9A0](0, v11, v6, v17);
      _Block_release(v17);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v6, v2);
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v24 - v19;
  if ((v1[64] & 1) == 0)
  {
    v26 = v3;
    if ((*(*v1 + 184))(v18))
    {
      type metadata accessor for OS_dispatch_queue();
      v24 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v25 = *(v12 + 8);
      v25(v15, v11);
      v21 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate();
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_110;
      v22 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = v24;
      MEMORY[0x24C1FB940](v20, v10, v6, v22);
      _Block_release(v22);

      (*(v26 + 8))(v6, v2);
      (*(v27 + 8))(v10, v7);
      v25(v20, v11);
    }

    else
    {
      v1[64] = 0;
    }
  }
}

double closure #1 in DOCHierarchyController.UserDefaultsObservedContent.mt_handleObserveNodeDidUpdate()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
    }
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2)
  {
    *(v2 + 64) = 0;
  }

  return result;
}

void *DOCHierarchyController.UserDefaultsObservedContent.deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return v0;
}

uint64_t DOCHierarchyController.UserDefaultsObservedContent.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DOCBarButtonItemStorage.ItemStorage.clear()()
{
  *v0 = 0;

  v0[1] = 0;
}

id DOCBarButtonItemStorage.ItemStorage.lazyLoadedItem(withLoadHandler:)(uint64_t (*a1)(void))
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v4 = v1;
    v5 = a1();
    *(v4 + 8) = v5;
    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA0290;
    *(v6 + 32) = v5;
    v3 = v5;
    v7 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v2 = 0;
    *v4 = v7;
  }

  v8 = v2;
  return v3;
}

id DOCBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBarButtonItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

void DOCBarButtonItemGroup.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCBarButtonItemGroup.__allocating_init(barButtonItems:representativeItem:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithBarButtonItems:isa representativeItem:a2];

  return v6;
}

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = lazy cache variable for type metadata for UIBarButtonItem;
  if (!lazy cache variable for type metadata for UIBarButtonItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBarButtonItem);
  }

  return result;
}

void *DOCBarButtonItemGroup.init(barButtonItems:representativeItem:)(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden] = 1;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting] = 0;
  v4 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems] = 0;
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27.receiver = v2;
  v27.super_class = type metadata accessor for DOCBarButtonItemGroup();
  v6 = objc_msgSendSuper2(&v27, sel_initWithBarButtonItems_representativeItem_, isa, a2);

  v7 = *((*MEMORY[0x277D85000] & *v6) + 0xA0);
  v26 = v6;
  v8 = v7();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v11;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = [v26 barButtonItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v25 = a2;
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      a2 = v16;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      MEMORY[0x24C1FB090](v22);
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v18;
      if (v21 == j)
      {
        v23 = v4;
        a2 = v25;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_30:

  (*((*MEMORY[0x277D85000] & *v26) + 0xA8))(v23);
  DOCBarButtonItemGroup.updateHasVisibleItems()();

  return v26;
}

uint64_t DOCBarButtonItemGroup.barButtonItems.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCBarButtonItemGroup();
  v1 = objc_msgSendSuper2(&v4, sel_barButtonItems);
  type metadata accessor for UIBarButtonItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t DOCBarButtonItemGroup.barButtonItems.setter(uint64_t a1)
{
  type metadata accessor for UIBarButtonItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22.receiver = v1;
  v22.super_class = type metadata accessor for DOCBarButtonItemGroup();
  objc_msgSendSuper2(&v22, sel_setBarButtonItems_, isa);

  v20 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA0))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = [v20 barButtonItems];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = __CocoaSet.count.getter())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1FC540](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      MEMORY[0x24C1FB090](v17);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v13;
      if (v16 == j)
      {
        v18 = v21;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_30:

  (*((*MEMORY[0x277D85000] & *v20) + 0xA8))(v18);
  return DOCBarButtonItemGroup.updateHasVisibleItems()();
}

uint64_t DOCBarButtonItemGroup.autoHideIfItemsHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCBarButtonItemGroup.autoHideIfItemsHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_autoHideIfItemsHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = type metadata accessor for DOCBarButtonItemGroup();
  v9.receiver = v1;
  v9.super_class = v4;
  result = objc_msgSendSuper2(&v9, sel_isHidden);
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
  {
    if (result)
    {
      return result;
    }

    v6 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v6 = 0;
  }

  else
  {
    v7 = result;
    result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
    v6 = result;
    if (v7 == (result & 1))
    {
      return result;
    }
  }

  v8.receiver = v1;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_setHidden_, v6 & 1);
}

void (*DOCBarButtonItemGroup.autoHideIfItemsHidden.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  swift_beginAccess();
  return DOCBarButtonItemGroup.autoHideIfItemsHidden.modify;
}

void DOCBarButtonItemGroup.autoHideIfItemsHidden.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 56);
    v5 = type metadata accessor for DOCBarButtonItemGroup();
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    v6 = objc_msgSendSuper2((v3 + 24), sel_isHidden);
    if (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
    {
      if (v6)
      {
        goto LABEL_10;
      }

      v7 = 1;
    }

    else
    {
      v8 = *(v3 + 56);
      if (*(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_10;
        }

        v7 = 0;
      }

      else
      {
        v9 = v6;
        v7 = (*((*MEMORY[0x277D85000] & *v8) + 0x70))();
        if (v9 == (v7 & 1))
        {
          goto LABEL_10;
        }
      }
    }

    *(v3 + 40) = *(v3 + 56);
    *(v3 + 48) = v5;
    objc_msgSendSuper2((v3 + 40), sel_setHidden_, v7 & 1);
  }

LABEL_10:

  free(v3);
}

id DOCBarButtonItemGroup.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBarButtonItemGroup();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

uint64_t DOCBarButtonItemGroup.isHidden.setter(char a1)
{
  v3 = type metadata accessor for DOCBarButtonItemGroup();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isHidden);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setHidden_, a1 & 1);
  return DOCBarButtonItemGroup.isHidden.didset(v4);
}

uint64_t DOCBarButtonItemGroup.isHidden.didset(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHidden];
  if (result != v2)
  {
    v4 = [v1 isHidden];
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) = v4;
    v6 = type metadata accessor for DOCBarButtonItemGroup();
    v10.receiver = v1;
    v10.super_class = v6;
    result = objc_msgSendSuper2(&v10, sel_isHidden);
    if (*(v1 + v5) == 1)
    {
      if (result)
      {
        return result;
      }

      v7 = 1;
    }

    else if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) == 1)
    {
      if ((result & 1) == 0)
      {
        return result;
      }

      v7 = 0;
    }

    else
    {
      v8 = result;
      result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
      v7 = result;
      if (v8 == (result & 1))
      {
        return result;
      }
    }

    v9.receiver = v1;
    v9.super_class = v6;
    return objc_msgSendSuper2(&v9, sel_setHidden_, v7 & 1);
  }

  return result;
}

double DOCBarButtonItemGroup.itemObservances.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_itemObservances;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void closure #1 in DOCBarButtonItemGroup.observeHiddenState(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCBarButtonItemGroup.updateHasVisibleItems()();
  }
}

uint64_t DOCBarButtonItemGroup.updateHasVisibleItems()()
{
  v1 = [v0 barButtonItems];
  type metadata accessor for UIBarButtonItem();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isHidden];

      ++v4;
      if (v8)
      {
        v9 = v7 == i;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v10 = v8 ^ 1;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = 0;
LABEL_19:

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup_hasVisibleItems) = v10;
  v12 = type metadata accessor for DOCBarButtonItemGroup();
  v17.receiver = v0;
  v17.super_class = v12;
  result = objc_msgSendSuper2(&v17, sel_isHidden);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCBarButtonItemGroup__isHiddenExternalClientSetting) == 1)
  {
    if (result)
    {
      return result;
    }

    v14 = 1;
  }

  else if (*(v0 + v11) == 1)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    v14 = 0;
  }

  else
  {
    v15 = result;
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
    v14 = result;
    if (v15 == (result & 1))
    {
      return result;
    }
  }

  v16.receiver = v0;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, sel_setHidden_, v14 & 1);
}

id DOCBarButtonItem.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata instantiation function for DOCBarButtonItemStorage.ItemStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DOCBarButtonItemStorage.ItemStorage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DOCBarButtonItemStorage.ItemStorage(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t DOCItemCollectionViewController.itemsForDrag(session:at:)(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0x1448))() & 1) != 0 || !specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(a2))
  {
    return MEMORY[0x277D84F90];
  }

  ObjectType = swift_getObjectType();
  if ((DOCNode.supportsDrag.getter(ObjectType) & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BECD50, &v21);
      _os_log_impl(&dword_2493AC000, v13, v14, "%s: Item cannot be dragged because it does not support drag", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    goto LABEL_15;
  }

  v7 = (*((*v5 & *v2) + 0xA68))();
  v8 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v9 = v8;

  if (v8)
  {
    v10 = [v9 supportsPickingFolders];
  }

  else
  {
    v10 = 2;
  }

  v17 = DOCNode.dragItemFor(session:supportsPickingFolders:)(a1, v10, ObjectType);
  if (!v17)
  {
LABEL_15:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249BA0290;
  v20 = v19;
  *(v19 + 32) = v18;
LABEL_16:
  swift_unknownObjectRelease();
  return v20;
}

uint64_t DOCItemCollectionViewController.collectionView(_:dragSessionWillBegin:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x8B0);
  v3 = swift_unknownObjectRetain();
  v2(v3);
  v4 = *((*v1 & *v0) + 0x848);

  return v4(1);
}

uint64_t DOCItemCollectionViewController.collectionView(_:dragSessionDidEnd:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x8B0))(0);
  (*((*v1 & *v0) + 0x1150))(0);
  v2 = *((*v1 & *v0) + 0x848);

  return v2(0);
}

void *DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v62 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v60 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v60 - v22;
  swift_getObjectType();
  if ([a3 localDragSession])
  {
    swift_unknownObjectRelease();
    if ([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI])
    {
      return 0;
    }
  }

  v63 = v23;
  v61 = a3;
  v24 = UIDropSession.uniqueUTIsForDragItems.getter();
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v24 + 16), 0);
    v28 = specialized Sequence._copySequenceContents(initializing:)(&v64, v27 + 4, v26, v25);
    outlined consume of Set<UITouch>.Iterator._Variant(v64);
    if (v28 == v26)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v27 = MEMORY[0x277D84F90];
LABEL_7:
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v29 = *(v16 + 48);
  if (v29(v14, 1, v15) != 1)
  {
    v60[0] = v19;
    v60[1] = v27;
    v32 = v4;
    v33 = v15;
    v34 = v16;
    v35 = *(v16 + 32);
    v36 = v63;
    v35(v63, v14, v33);
    v37 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v32) + 0x18A0))(v36);
    if (v29(v10, 1, v33) == 1)
    {
      (*(v16 + 8))(v36, v33);

      outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      return 0;
    }

    v38 = v60[0];
    v35(v60[0], v10, v33);
    v39 = v32;
    v31 = (*((*v37 & *v32) + 0xD88))(v38, 0);
    if (!v31)
    {

      v56 = *(v34 + 8);
      v56(v38, v33);
      v56(v63, v33);
      return v31;
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v41 = [v62 cellForItemAtIndexPath_];

    if (v41)
    {
      type metadata accessor for DOCItemCollectionCell();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = v42;
        v44 = [v61 locationInView_];
        v46 = v45;
        v48 = v47;
        v66.origin.x = (*((*v37 & *v43) + 0x110))(v44);
        v65.x = v46;
        v65.y = v48;
        if (!CGRectContainsPoint(v66, v65))
        {
          v58 = (*((*v37 & *v39) + 0xC70))();

          swift_unknownObjectRelease();
          v59 = *(v34 + 8);
          v59(v38, v33);
          v59(v63, v33);
          v31 = v58;
          if (!v58)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }
    }

    v49 = *(v34 + 8);
    v49(v38, v33);
    v49(v63, v33);
LABEL_18:
    swift_unknownObjectRetain();
    swift_getObjectType();
    v50 = DOCNode.fpfs_syncFetchFPItem()();
    if (v50)
    {
      v51 = v50;
      v52 = [objc_opt_self() defaultManager];
      v53 = Array._bridgeToObjectiveC()().super.isa;

      v54 = [v52 eligibleActionsForDroppingUTIs:v53 underItem:v51];

      type metadata accessor for FPAction(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Set.contains(_:)())
      {

LABEL_23:

        swift_unknownObjectRelease();
        return v31;
      }

      v55 = specialized Set.contains(_:)();

      if (v55)
      {
        goto LABEL_23;
      }

      [v31 isFolder];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v30 = outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v31 = (*((*MEMORY[0x277D85000] & *v4) + 0xC70))(v30);
  if (v31)
  {
    goto LABEL_18;
  }

LABEL_9:

  return v31;
}

void DOCItemCollectionViewController.collectionView(_:performDropWith:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v135 = &v135 - v7;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v136 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v137 = &v135 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v139 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v135 - v20;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = static DOCLog.UI;
  v23 = static os_log_type_t.debug.getter();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249B9FA70;
  *(v24 + 56) = MEMORY[0x277D837D0];
  v142 = lazy protocol witness table accessor for type String and conformance String();
  v143 = 0x8000000249BECA20;
  *(v24 + 64) = v142;
  *(v24 + 32) = 0xD000000000000022;
  *(v24 + 40) = 0x8000000249BECA20;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClassUnconditional();
  v145 = a2;
  v26 = v25;
  *(v24 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  *(v24 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  *(v24 + 72) = v26;
  v27 = v145;
  swift_unknownObjectRetain();
  v144 = v22;
  os_log(_:dso:log:type:_:)("%@: %@", 6, 2, &dword_2493AC000, v22, v23, v24);

  v138 = v9;
  v28 = *(v9 + 56);
  v28(v21, 1, 1, v8);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v21);
  outlined destroy of CharacterSet?(v21, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v29 = [v27 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UICollectionViewDropItem_pMd, &_sSo24UICollectionViewDropItem_pMR);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v30 >> 62)
  {
    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v31)
  {
    v36 = static os_log_type_t.debug.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_249B9A480;
    v38 = v142;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = v38;
    *(v37 + 32) = 0xD000000000000022;
    v39 = v144;
    *(v37 + 40) = v143;
    os_log(_:dso:log:type:_:)("%@: dropSession contains no items", 33, 2, &dword_2493AC000, v39, v36, v37);
    goto LABEL_35;
  }

  if (!*&v3[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier])
  {
    goto LABEL_23;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  if (v32 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v34 != v35)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_12;
    }

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v145;
    if (v55 == v58 && v57 == v59)
    {

LABEL_22:
      v61 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v62 = [v27 session];
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v62, v3, v61, v63);
      swift_unknownObjectRelease();

      return;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
      goto LABEL_22;
    }

LABEL_23:
    v64 = [v27 destinationIndexPath];
    if (v64)
    {
      v65 = v139;
      v66 = v64;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
      v65 = v139;
    }

    v139 = v8;
    v28(v65, v67, 1, v8);
    v68 = [v27 session];
    v69 = v3;
    v70 = DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(v65, ObjectType, v68);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v65, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v71 = swift_allocObject();
    if (!v70 || (swift_getObjectType(), swift_unknownObjectRetain(), v72 = DOCNode.fpfs_syncFetchFPItem()(), swift_unknownObjectRelease(), !v72))
    {
      swift_deallocUninitializedObject();
      v79 = static os_log_type_t.debug.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_249B9A480;
      v81 = v142;
      *(v80 + 56) = MEMORY[0x277D837D0];
      *(v80 + 64) = v81;
      *(v80 + 32) = 0xD000000000000022;
      v82 = v144;
      *(v80 + 40) = v143;
      os_log(_:dso:log:type:_:)("%@: no drop target", 18, 2, &dword_2493AC000, v82, v79, v80);
      swift_unknownObjectRelease();
      goto LABEL_35;
    }

    *(v71 + 16) = v72;
    ObjectType = swift_getObjectType();
    v73 = [swift_unknownObjectRetain() isFolder];
    v74 = MEMORY[0x277D85000];
    if ((v73 & 1) != 0 || (*((*MEMORY[0x277D85000] & *v69) + 0xBD8))() != 2)
    {
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    (*((*v74 & *v69) + 0x820))(v146);
    v75 = v147;
    if (!v147)
    {
      __break(1u);
      goto LABEL_80;
    }

    v76 = v148;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    if ((*(v76 + 112))(v70, v75, v76))
    {
      swift_getObjectType();
      v77 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      v78 = __swift_destroy_boxed_opaque_existential_0(v146);
      if (v77)
      {
        swift_unknownObjectRelease();
LABEL_44:
        v83 = *(v71 + 16);
        *(v71 + 16) = v77;

LABEL_45:
        v84 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        v85 = v145;
        v86 = [v145 session];
        v87 = swift_getObjectType();
        v88 = swift_unknownObjectRetain();
        LOBYTE(v87) = specialized static FPItem.sessionContainsDOCNode(_:)(v88, v84, v87);
        swift_unknownObjectRelease_n();
        if (v87)
        {
          v89 = static os_log_type_t.debug.getter();
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_249B9A480;
          v91 = v142;
          *(v90 + 56) = MEMORY[0x277D837D0];
          *(v90 + 64) = v91;
          *(v90 + 32) = 0xD000000000000022;
          v92 = v144;
          *(v90 + 40) = v143;
          os_log(_:dso:log:type:_:)("%@: session contains FPItems", 28, 2, &dword_2493AC000, v92, v89, v90);

          v93 = [v85 session];
          v94 = swift_allocObject();
          v95 = v69;
          swift_unknownObjectWeakInit();

          specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v93, v69, v84, v94, v71);
          swift_unknownObjectRelease();
        }

        else
        {
          v96 = [objc_msgSend(v85 session)];
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
          v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v98 = *(v71 + 16);
          v99 = v71;
          v100 = swift_allocObject();
          v95 = v69;
          swift_unknownObjectWeakInit();
          v101 = swift_allocObject();
          *(v101 + 16) = v100;
          *(v101 + 24) = v99;

          v102 = v98;

          _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(v97, v102, v69, partial apply for closure #3 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v101);

          v71 = v99;
        }

        v104 = *((*v74 & *v95) + 0xBD8);
        if ((v104)(v103) == 2 || !v104())
        {
          v106 = *((*v74 & *v95) + 0xC70);
          v107 = swift_unknownObjectRetain();
          v108 = v106(v107);
          if (v108)
          {
            v105 = DOCNode.isEqualTo(node:)(v108);
            swift_unknownObjectRelease();
          }

          else
          {
            v105 = 0;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v105 = 0;
        }

        swift_beginAccess();
        if (![*(v71 + 16) isFolder] || !_UISolariumEnabled() || (v105 & 1) != 0)
        {

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRetain();
        v109 = [v145 destinationIndexPath];
        if (!v109)
        {
          goto LABEL_74;
        }

        v110 = v136;
        v111 = v109;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v112 = v137;
        v113 = (*(v138 + 32))(v137, v110, v139);
        (*((*v74 & *v69) + 0x820))(v146, v113);
        v114 = v147;
        if (v147)
        {
          v115 = v148;
          __swift_project_boxed_opaque_existential_1(v146, v147);
          v116 = (*(v115 + 64))(v112, v114, v115);
          if (v116)
          {
            v117 = [v116 isFolder];
            swift_unknownObjectRelease();
            v118 = __swift_destroy_boxed_opaque_existential_0(v146);
            if (v117)
            {
              v119 = (*((*v74 & *v69) + 0x1010))(v118);
              v120 = v137;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v122 = [v119 cellForItemAtIndexPath_];

              if (v122)
              {
                type metadata accessor for DOCItemCollectionCell();
                v123 = swift_dynamicCastClass();
                if (v123)
                {
                  v124 = [*(v123 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) superview];
                  if (v124)
                  {
                    v125 = v124;
                    type metadata accessor for DOCImageViewContainerView();
                    v126 = swift_dynamicCastClass();
                    if (v126)
                    {
                      v127 = v126;
                      v128 = type metadata accessor for TaskPriority();
                      v129 = v71;
                      v130 = v135;
                      (*(*(v128 - 8) + 56))(v135, 1, 1, v128);
                      type metadata accessor for MainActor();
                      swift_unknownObjectRetain();

                      v131 = v125;
                      v132 = static MainActor.shared.getter();
                      v133 = swift_allocObject();
                      v134 = MEMORY[0x277D85700];
                      v133[2] = v132;
                      v133[3] = v134;
                      v133[4] = v127;
                      v133[5] = v70;
                      v133[6] = v129;
                      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v130, &async function pointer to partial apply for closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v133);

                      swift_unknownObjectRelease_n();

                      (*(v138 + 8))(v120, v139);

                      return;
                    }

                    swift_unknownObjectRelease_n();
                    (*(v138 + 8))(v120, v139);
                    goto LABEL_71;
                  }

                  (*(v138 + 8))(v120, v139);

LABEL_75:
                  swift_unknownObjectRelease_n();
                  return;
                }
              }

              (*(v138 + 8))(v120, v139);
LABEL_74:

              goto LABEL_75;
            }

            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            __swift_destroy_boxed_opaque_existential_0(v146);
          }

          (*(v138 + 8))(v137, v139);
LABEL_71:

          return;
        }

LABEL_80:
        __break(1u);
        return;
      }
    }

    else
    {
      v78 = __swift_destroy_boxed_opaque_existential_0(v146);
    }

    if ((*((*v74 & *v69) + 0xC70))(v78))
    {
      swift_getObjectType();
      v77 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v77)
      {
        goto LABEL_44;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v77 = *(v71 + 16);
    goto LABEL_44;
  }

LABEL_12:
  v41 = v3;
  v42 = *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties];
  v43 = v145;
  if (v42)
  {
    v44 = [v42 tagIdentifiers];
    if (v44)
    {
      v45 = v44;
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v46[2] == 1)
      {
        v47 = v46[4];
        v48 = v46[5];

        v49 = [objc_opt_self() sharedInstance];
        v50 = MEMORY[0x24C1FAD20](v47, v48);

        v51 = [v49 tagForName_];

        if (v51)
        {
          v52 = [v43 session];
          v53 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
          v54 = v51;
          specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v52, v41, v53, v54);
          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_35:
    }
  }
}

void DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v13 = (*(v9 + 48))(v7, 1, v8);
  v14 = MEMORY[0x277D85000];
  if (v13 == 1)
  {
    v15 = outlined destroy of CharacterSet?(v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v16 = 0;
  }

  else
  {
    v17 = (*(v9 + 32))(v12, v7, v8);
    v18 = (*((*v14 & *v2) + 0x1010))(v17);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v20 = [v18 cellForItemAtIndexPath_];

    if (v20)
    {
      type metadata accessor for DOCItemCollectionCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v21 = v20;
        if (([v16 isHighlighted] & 1) == 0)
        {
          [v16 setHighlighted_];
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v15 = (*(v9 + 8))(v12, v8);
  }

  v22 = (*((*v14 & *v2) + 0x9B0))(v15);
  if (v22)
  {
    if (!v16 || (type metadata accessor for DOCItemCollectionCell(), v22 = v22, v23 = v16, v24 = static NSObject.== infix(_:_:)(), v22, v23, (v24 & 1) == 0))
    {
      v22 = v22;
      if ([v22 isHighlighted])
      {
        [v22 setHighlighted_];
      }
    }
  }

  (*((*v14 & *v2) + 0x9B8))(v16);
}

void closure #1 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, void *a2, uint64_t a3)
{
  v27 = type metadata accessor for DOCOperationItem(0);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v26 = [objc_opt_self() defaultManager];
    v30 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_32:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = a2;
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v12 = 0;
      a2 = (a1 & 0xC000000000000001);
      v13 = *MEMORY[0x277CC6058];
      v28 = *MEMORY[0x277CC6058];
      v29 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (a2)
        {
          v14 = MEMORY[0x24C1FC540](v12, a1);
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v14 = *(a1 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v16 = v30;
            v11 = MEMORY[0x277D84F90];
            if ((v30 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_33;
          }
        }

        if ([v14 canPerform_])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v13 = v28;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          a2 = v29;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v12;
        if (v15 == v10)
        {
          goto LABEL_16;
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

LABEL_19:
    if ((v16 & 0x4000000000000000) != 0)
    {
LABEL_33:
      if (__CocoaSet.count.getter())
      {
        v17 = __CocoaSet.count.getter();
        if (!v17)
        {

          v19 = MEMORY[0x277D84F90];
LABEL_30:
          v23 = v26;
          FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(3u, v19, 0, 0, 0, 1, v25, 0, 0);

LABEL_37:

          return;
        }

LABEL_21:
        v30 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          __break(1u);
          return;
        }

        v18 = 0;
        v19 = v30;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x24C1FC540](v18, v16);
          }

          else
          {
            v20 = swift_unknownObjectRetain();
          }

          *v8 = v20;
          swift_storeEnumTagMultiPayload();
          v30 = v19;
          v22 = *(v19 + 16);
          v21 = *(v19 + 24);
          if (v22 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            v19 = v30;
          }

          ++v18;
          *(v19 + 16) = v22 + 1;
          outlined init with take of DOCOperationItem(v8, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22);
        }

        while (v17 != v18);

        goto LABEL_30;
      }
    }

    else
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        goto LABEL_21;
      }
    }

    v23 = v26;
    goto LABEL_37;
  }
}

void closure #2 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v22 = a2;
    v14 = [*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) hostIdentifier];
    if (!v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = MEMORY[0x24C1FAD20](v15);
    }

    swift_beginAccess();
    v16 = *(a4 + 16);
    Date.init()();
    v17 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 initWithAppBundleIdentifier:v14 folderItem:v16 type:1 lastUsedDate:isa frecency:1.0];

    (*(v8 + 8))(v11, v7);
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    DOCSmartFolderManager.register(event:)(v19, v20);
    swift_beginAccess();
    v21 = *(a4 + 16);
    _sSo6FPItemC26DocumentManagerExecutablesE11performDrop_9underItem15alertPresenting10completionySaySo7DOCNode_pG_SoAH_pSo16UIViewControllerCyAISgcSgtFZTf4nennn_nAB_Tt3g5(a1, v21, v22, 0, 0);
  }
}

void closure #3 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [*(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) hostIdentifier];
    if (!v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = MEMORY[0x24C1FAD20](v13);
    }

    swift_beginAccess();
    v14 = *(a3 + 16);
    Date.init()();
    v15 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithAppBundleIdentifier:v12 folderItem:v14 type:1 lastUsedDate:isa frecency:1.0];

    (*(v6 + 8))(v9, v5);
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    DOCSmartFolderManager.register(event:)(v17, v18);
    if (a1)
    {
      if (a1 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_9;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C1FC540](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v19 = *(a1 + 32);
          swift_unknownObjectRetain();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_249BA0290;
        *(v20 + 32) = v19;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        v21 = Array._bridgeToObjectiveC()().super.isa;

        aBlock[4] = DOCGridLayout.specIconWidth.modify;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        aBlock[3] = &block_descriptor_49_2;
        v22 = _Block_copy(aBlock);

        [v11 revealWithNodes:v21 selectEvenIfVisible:0 completionBlock:v22];
        _Block_release(v22);
        swift_unknownObjectRelease();

        v17 = v21;
      }
    }
  }
}

uint64_t closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[7] = type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0xA8);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v6[9] = v10;
  *v10 = v6;
  v10[1] = closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:);

  return v12(a5);
}

uint64_t closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1)
{
  *(*v1 + 80) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v3, v2);
}

void closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)()
{
  v1 = v0[10];

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v1 + 40 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 - 1);
    v7 = *v5;
    v5 += 2;
    ++v2;
    if (v7 == 1 && v6 != 0)
    {
      [v6 size];
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      *&v4[8 * v12 + 32] = v10;
      goto LABEL_2;
    }
  }

  v13 = *(v4 + 2);
  if (v13)
  {
    v14 = *(v4 + 4);
    v15 = v13 - 1;
    if (v15)
    {
      v16 = (v4 + 40);
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v14 < v17)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v14 = 0.0;
  }

  v19 = v0[6];

  swift_beginAccess();
  v20 = [*(v19 + 16) childItemCount];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v21.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  isa = v21.super.super.isa;
  if (!v20)
  {

    goto LABEL_26;
  }

  v23 = static NSObject.== infix(_:_:)();

  if ((v23 & 1) == 0)
  {
LABEL_26:
    v24 = 2;
    goto LABEL_27;
  }

  v24 = 1;
LABEL_27:
  v25 = v0[10];
  v26 = v0[5];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v14;
  (*((*MEMORY[0x277D85000] & *v26) + 0xA0))(v24, partial apply for closure #2 in closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:), v27, DOCGridLayout.specIconWidth.modify, 0);

  v28 = v0[1];

  v28();
}

id closure #2 in closure #4 in DOCItemCollectionViewController.collectionView(_:performDropWith:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a6 + 40);
  v7 = *(a6 + 16) + 1;
  do
  {
    if (!--v7)
    {
      goto LABEL_9;
    }

    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
  }

  while (v9 != a1);
  v10 = *(v8 - 3);
  if (v10)
  {
    v12 = v10;
    [v12 size];
    if (v13 == a3 || a3 <= 0.0)
    {
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = a3;
      *(v15 + 32) = a3;
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in closure #3 in closure #1 in DOCMetadataKeyValueRow.menuButton.getter;
      *(v16 + 24) = v15;
      v21[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v21[5] = v16;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
      v21[3] = &block_descriptor_31_0;
      v17 = _Block_copy(v21);
      v18 = v12;

      v12 = [v14 imageWithActions_];

      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    return v12;
  }

LABEL_9:
  v19 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v19 init];
}

id DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UTType();
  v130 = *(v8 - 8);
  v131 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v129 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v117 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v117 - v17, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*((*MEMORY[0x277D85000] & *v3) + 0x988))(v18);
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v127 = v20 + 56;
  v128 = v21;
  v21(v14, 1, 1, v19);
  if (!*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier))
  {
    goto LABEL_23;
  }

  v121 = v19;
  v122 = a3;
  v22 = a2;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    goto LABEL_16;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_16:
    v39 = [*(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPopoverOrWidget] ^ 1;
    v40 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:v39 intent:0];
    goto LABEL_32;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    goto LABEL_18;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
LABEL_18:
    v41 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    ObjectType = swift_getObjectType();
    v43 = v22;
LABEL_19:
    v44 = specialized static FPItem.sessionContainsDOCNode(_:)(v43, v41, ObjectType);
    v45 = objc_allocWithZone(MEMORY[0x277D752E8]);
    if ((v44 & 1) == 0)
    {
      goto LABEL_30;
    }

    v46 = 3;
    goto LABEL_31;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {

    a2 = v22;
LABEL_22:
    v41 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    ObjectType = swift_getObjectType();
    v43 = a2;
    goto LABEL_19;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v22;
  v19 = v121;
  a3 = v122;
  if (v47)
  {
    goto LABEL_22;
  }

LABEL_23:
  v120 = a2;
  v48 = DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(a3, a1, a2);
  if (!v48)
  {
    goto LABEL_28;
  }

  v49 = v48;
  swift_getObjectType();
  v125 = DOCNode.fpfs_syncFetchFPItem()();
  if (!v125)
  {
    swift_unknownObjectRelease();
LABEL_28:
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_29;
  }

  v121 = v19;
  v122 = a3;
  v50 = v120;
  if (fetchParentSync #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v120))
  {
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    swift_unknownObjectRelease();
    v148 = v140;
    v149 = v141;
    v150 = v142;
    goto LABEL_46;
  }

  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v56 = [v50 localDragSession];
  if (!v56)
  {
    v146 = 0u;
    v147 = 0u;
LABEL_42:
    outlined destroy of CharacterSet?(&v146, &_sypSgMd, &_sypSgMR);
    goto LABEL_43;
  }

  v57 = [v56 localContext];
  swift_unknownObjectRelease();
  if (v57)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
  }

  v146 = v138;
  v147 = v139;
  if (!*(&v139 + 1))
  {
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

LABEL_43:
  v148 = 0u;
  v149 = 0u;
  v150 = 0;
LABEL_44:
  if (*(&v141 + 1))
  {
    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  }

LABEL_46:
  DOCNode.identifierKey.getter();
  outlined init with copy of DOCGridLayout.Spec?(&v148, &v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(&v146, &v143, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  if (!*(&v141 + 1))
  {
    outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    if (!*(&v144 + 1))
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v140, &v138, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  if (!*(&v144 + 1))
  {
    outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    outlined destroy of AnyHashable(&v138);
LABEL_53:
    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSg_ACtMd, &_ss11AnyHashableVSg_ACtMR);
    goto LABEL_54;
  }

  v135 = v143;
  v136 = v144;
  v137 = v145;
  v58 = MEMORY[0x24C1FC430](&v138, &v135);
  outlined destroy of AnyHashable(&v135);
  outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  outlined destroy of AnyHashable(&v138);
  outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  if (v58)
  {
    goto LABEL_59;
  }

LABEL_54:
  v59 = [v125 identifier];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  outlined init with copy of DOCGridLayout.Spec?(&v148, &v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(&v146, &v143, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  if (*(&v141 + 1))
  {
    outlined init with copy of DOCGridLayout.Spec?(&v140, &v138, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    if (*(&v144 + 1))
    {
      v135 = v143;
      v136 = v144;
      v137 = v145;
      v118 = MEMORY[0x24C1FC430](&v138, &v135);
      outlined destroy of AnyHashable(&v135);
      outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      outlined destroy of AnyHashable(&v138);
      outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      goto LABEL_62;
    }

    outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    outlined destroy of AnyHashable(&v138);
    goto LABEL_61;
  }

  outlined destroy of CharacterSet?(&v146, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
  if (!*(&v144 + 1))
  {
LABEL_58:
    outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
LABEL_59:
    v118 = 1;
    goto LABEL_62;
  }

LABEL_61:
  outlined destroy of CharacterSet?(&v140, &_ss11AnyHashableVSg_ACtMd, &_ss11AnyHashableVSg_ACtMR);
  v118 = 0;
LABEL_62:
  v119 = v4;
  v60 = v120;
  v117 = swift_getObjectType();
  v61 = [v60 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v62 >> 62)
  {
    v63 = __CocoaSet.count.getter();
    v126 = v14;
    if (v63)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v126 = v14;
    if (v63)
    {
LABEL_64:
      v4 = 0;
      v133 = v62 & 0xFFFFFFFFFFFFFF8;
      v134 = v62 & 0xC000000000000001;
      v123 = v62;
      v124 = v49;
      v132 = v63;
      do
      {
        if (v134)
        {
          v64 = MEMORY[0x24C1FC540](v4, v62);
        }

        else
        {
          if (v4 >= *(v133 + 16))
          {
            goto LABEL_89;
          }

          v64 = *(v62 + 8 * v4 + 32);
        }

        v65 = v64;
        v66 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          swift_once();
LABEL_29:
          v51 = static DOCLog.UI;
          v52 = static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_249B9A480;
          *(v53 + 56) = MEMORY[0x277D837D0];
          *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v53 + 32) = 0xD000000000000040;
          *(v53 + 40) = 0x8000000249BECAE0;
          os_log(_:dso:log:type:_:)("%@: no eligible drop target", 27, 2, &dword_2493AC000, v51, v52, v53);

          v45 = objc_allocWithZone(MEMORY[0x277D752E8]);
LABEL_30:
          v46 = 1;
LABEL_31:
          v40 = [v45 initWithDropOperation:v46 intent:0];
LABEL_32:
          v54 = v40;
          goto LABEL_33;
        }

        if ([v64 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v146 = 0u;
          v147 = 0u;
        }

        v140 = v146;
        v141 = v147;
        outlined init with copy of DOCGridLayout.Spec?(&v140, &v146, &_sypSgMd, &_sypSgMR);
        if (*(&v147 + 1))
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
          if (swift_dynamicCast())
          {
            outlined destroy of CharacterSet?(&v140, &_sypSgMd, &_sypSgMR);
            goto LABEL_80;
          }
        }

        else
        {
          outlined destroy of CharacterSet?(&v146, &_sypSgMd, &_sypSgMR);
        }

        v146 = v140;
        v147 = v141;
        if (!*(&v141 + 1))
        {

          outlined destroy of CharacterSet?(&v146, &_sypSgMd, &_sypSgMR);
          goto LABEL_66;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_66;
        }

LABEL_80:
        v67 = [v138 itemIdentifier];
        v68 = [v49 itemIdentifier];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
        if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
        {

          swift_unknownObjectRelease();

          v14 = v126;
LABEL_87:

LABEL_93:
          v54 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:0 intent:0];

          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(&v148, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
          v4 = v119;
LABEL_33:
          $defer #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(v14, v4);
          outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          return v54;
        }

        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        swift_unknownObjectRelease();

        v14 = v126;
        v62 = v123;
        v49 = v124;
        if (v73)
        {
          goto LABEL_87;
        }

LABEL_66:
        ++v4;
      }

      while (v66 != v132);
    }
  }

  if (v118)
  {
    goto LABEL_93;
  }

  v4 = v119;
  v75 = (*((*MEMORY[0x277D85000] & *v119) + 0xC70))(v74);
  if (v75)
  {
    v76 = [v75 isEqual_];
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if (v76)
    {
      v128(v14, 1, 1, v121);
      goto LABEL_99;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  outlined init with copy of DOCGridLayout.Spec?(v122, v14, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_99:
  v77 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v78 = v129;
  static UTType.item.getter();
  v134 = v77;
  v79 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(v120, v78, v77, v117);
  (*(v130 + 8))(v78, v131);
  if (v79 >> 62)
  {
    goto LABEL_116;
  }

  v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v80)
  {
LABEL_134:

    v54 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:2 intent:2];

LABEL_153:
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(&v148, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    goto LABEL_33;
  }

  v124 = v49;
  v81 = v125;
  v133 = v80;
  do
  {
    v14 = 0;
    v49 = (v79 & 0xC000000000000001);
    v82 = v79 & 0xFFFFFFFFFFFFFF8;
    while (v49)
    {
      MEMORY[0x24C1FC540](v14, v79);
      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
LABEL_113:
        __break(1u);
LABEL_114:

        v54 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:0 intent:0];
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(&v148, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
        v4 = v119;
        v14 = v126;
        goto LABEL_33;
      }

LABEL_108:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v77 = v125;
        swift_unknownObjectRetain();
        v78 = static NSObject.== infix(_:_:)();
        swift_unknownObjectRelease_n();

        if (v78)
        {
          goto LABEL_114;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v14;
      if (v4 == v80)
      {
        goto LABEL_122;
      }
    }

    if (v14 < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      v4 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_113;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_116:
    v82 = v79 & 0xFFFFFFFFFFFFFF8;
    if (v79 < 0)
    {
      v78 = v79;
    }

    else
    {
      v78 = v79 & 0xFFFFFFFFFFFFFF8;
    }

    v133 = __CocoaSet.count.getter();
    if (!v133)
    {
      goto LABEL_134;
    }

    v124 = v49;
    v80 = __CocoaSet.count.getter();
    v83 = v125;
  }

  while (v80);
  v49 = (v79 & 0xC000000000000001);
LABEL_122:

  v84 = 0;
  v85 = MEMORY[0x277D84F90];
  *&v140 = MEMORY[0x277D84F90];
  v86 = v133;
  while (v86 != v84)
  {
    if (v49)
    {
      v78 = MEMORY[0x24C1FC540](v84, v79);
      v87 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_155;
      }
    }

    else
    {
      if (v84 >= *(v82 + 16))
      {
        goto LABEL_156;
      }

      v78 = *(v79 + 8 * v84 + 32);
      swift_unknownObjectRetain();
      v87 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    swift_getObjectType();
    v88 = DOCNode.fpfs_syncFetchFPItem()();
    v89 = swift_unknownObjectRelease();
    ++v84;
    if (v88)
    {
      v78 = &v140;
      MEMORY[0x24C1FB090](v89);
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v85 = v140;
      v84 = v87;
    }
  }

  v90 = [objc_opt_self() defaultManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v92 = [v90 eligibleActionsForDroppingItems:isa underItem:v125];

  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
  v78 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8FPActionaGMd, &_ss23_ContiguousArrayStorageCySo8FPActionaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA08D0;
  v94 = *MEMORY[0x277CC6058];
  *(inited + 32) = *MEMORY[0x277CC6058];
  v95 = *MEMORY[0x277CC6078];
  v96 = *MEMORY[0x277CC6048];
  *(inited + 40) = *MEMORY[0x277CC6078];
  *(inited + 48) = v96;
  v97 = *MEMORY[0x277CC6050];
  *(inited + 56) = *MEMORY[0x277CC6050];
  v98 = v94;
  v99 = v95;
  v100 = v96;
  v101 = v97;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8FPActiona_Tt0g5Tf4g_n(inited);
  v79 = v102;
  swift_setDeallocating();
  swift_arrayDestroy();
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_249B9A480;
  v104 = *MEMORY[0x277CC5FD8];
  *(v103 + 32) = *MEMORY[0x277CC5FD8];
  v105 = v104;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8FPActiona_Tt0g5Tf4g_n(v103);
  v49 = v106;
  swift_setDeallocating();
  outlined destroy of FPAction(v103 + 32, type metadata accessor for FPAction);
  if (!(v85 >> 62))
  {
    result = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_137;
  }

LABEL_157:
  result = __CocoaSet.count.getter();
LABEL_137:
  v4 = v119;
  v14 = v126;
  if (!result)
  {

    v110 = 0;
    goto LABEL_143;
  }

  if ((v85 & 0xC000000000000001) != 0)
  {
    v107 = MEMORY[0x24C1FC540](0, v85);
LABEL_141:
    v108 = v107;

    v109 = [objc_opt_self() defaultPermission];
    v110 = [v109 canNode:v108 performAction:1 node:v125];

LABEL_143:

    v111 = specialized _NativeSet.intersection(_:)(v79, v78);

    v112 = v111[2];

    if (v112)
    {

      if (v110)
      {
        v113 = 3;
      }

      else
      {
        v113 = 1;
      }
    }

    else
    {
      v114 = specialized _NativeSet.intersection(_:)(v49, v78);

      v115 = v114[2];

      if (!v115)
      {
        v116 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:1 intent:2];
        goto LABEL_152;
      }

      if (v110)
      {
        v113 = 2;
      }

      else
      {
        v113 = 1;
      }
    }

    v116 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:v113 intent:2];
LABEL_152:
    v54 = v116;

    goto LABEL_153;
  }

  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v107 = *(v85 + 32);
    goto LABEL_141;
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(uint64_t a1, void *a2)
{
  v43 = type metadata accessor for IndexPath();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v5);
  v42 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSg_ADtMd, &_s10Foundation9IndexPathVSg_ADtMR);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v44 = &v40[-v18];
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40[-v21];
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v40[-v25];
  v45 = a1;
  v27 = outlined init with copy of DOCGridLayout.Spec?(a1, &v40[-v25], &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v28 = *((*MEMORY[0x277D85000] & *a2) + 0x980);
  v46 = a2;
  v28(v27);
  v29 = *(v8 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v26, v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v22, &v11[v29], &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v30 = v4;
  v31 = v4;
  v32 = v43;
  v33 = *(v31 + 48);
  if (v33(v11, 1, v43) != 1)
  {
    outlined init with copy of DOCGridLayout.Spec?(v11, v44, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if (v33(&v11[v29], 1, v32) != 1)
    {
      v37 = v42;
      (*(v30 + 32))(v42, &v11[v29], v32);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v38 = v44;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v30 + 8);
      v39(v37, v32);
      outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v39(v38, v32);
      outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      v34 = v45;
      v35 = v46;
      if (v41)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    (*(v30 + 8))(v44, v32);
LABEL_6:
    outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSg_ADtMd, &_s10Foundation9IndexPathVSg_ADtMR);
    v34 = v45;
    v35 = v46;
LABEL_7:
    outlined init with copy of DOCGridLayout.Spec?(v34, v15, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    (*((*MEMORY[0x277D85000] & *v35) + 0x988))(v15);
    goto LABEL_8;
  }

  outlined destroy of CharacterSet?(v22, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  outlined destroy of CharacterSet?(v26, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (v33(&v11[v29], 1, v32) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v11, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v34 = v45;
LABEL_8:
  outlined init with copy of DOCGridLayout.Spec?(v34, v15, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  DOCItemCollectionViewController.updateDropTargetHighlightedCell(toIndexPath:)(v15);
  return outlined destroy of CharacterSet?(v15, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
}

uint64_t fetchParentSync #1 () in DOCItemCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, v2);
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

  v6 = UIDragItem.localObjectAsNode.getter();

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 fpfs_fpItem];
  swift_unknownObjectRelease();
  result = 0;
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v14[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v14[3] = &block_descriptor_111;
    v11 = _Block_copy(v14);

    v12 = v8;

    [v7 fetchParent_];
    _Block_release(v11);
    OS_dispatch_semaphore.wait()();

    swift_beginAccess();
    v13 = *(v9 + 16);
    swift_unknownObjectRetain();

    return v13;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.collectionView(_:dropSessionDidEnter:)(int a1, id a2)
{
  v3 = [a2 localDragSession];
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x8B0))(v3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    v5 = v6;
  }

  return (*((*v4 & *v2) + 0x8C8))(v5);
}

uint64_t DOCItemCollectionViewController._collectionView(_:dataOwnerFor:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v13 - v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(v7);
    (*(v9 + 8))(v7, v8);
    if (!v11)
    {
      return 0;
    }

    swift_getObjectType();
    v12 = DOCNode.dataOwner.getter();
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

void *DOCItemCollectionViewController._collectionView(_:dataOwnerFor:withDestinationIndexPath:)(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    if (DOCItemCollectionViewController.dropTargetNode(at:collectionView:dropSession:)(a3, result, a2))
    {
      swift_getObjectType();
      v3 = DOCNode.dataOwner.getter();
      swift_unknownObjectRelease();
      return v3;
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v4 = static DOCLog.UI;
      v5 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_249B9A480;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v6 + 32) = 0xD000000000000039;
      *(v6 + 40) = 0x8000000249BECB30;
      os_log(_:dso:log:type:_:)("%@: no eligible drop target", 27, 2, &dword_2493AC000, v4, v5, v6);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    specialized closure #1 in _NativeSet.intersection(_:)((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v13, v6, a2, a1);

    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return v11;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_28:
    v59 = 0;
    v29 = 0;
    v30 = v5 + 56;
    v31 = 1 << *(v5 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v5 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4 + 56;
    v53 = v34;
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v61 = (v33 - 1) & v33;
LABEL_40:
      v56 = v36 | (v29 << 6);
      v39 = *(*(v5 + 48) + 8 * v56);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v58 = v39;
      String.hash(into:)();
      v40 = Hasher._finalize()();

      v41 = -1 << *(a4 + 32);
      v42 = v40 & ~v41;
      if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
          if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
          {

            goto LABEL_51;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_51:
        *(a1 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v33 = v61;
        v28 = __OFADD__(v59++, 1);
        v5 = a3;
        v34 = v53;
        if (v28)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_32:

        v33 = v61;
        v5 = a3;
        v34 = v53;
      }
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
        goto LABEL_54;
      }

      v38 = *(v30 + 8 * v29);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v61 = (v38 - 1) & v38;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v59 = 0;
    v60 = a3 + 56;
    v51 = v11;
    v52 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v57 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v55 = v15;
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v5 = a3;

      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) != 0)
      {
        v21 = ~v17;
        while (1)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
          if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
          {

            goto LABEL_25;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            break;
          }

          v18 = (v18 + 1) & v21;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = a3;
LABEL_25:
        v7 = v52;
        a1[v19] |= v20;
        v10 = v57;
        v28 = __OFADD__(v59++, 1);
        v4 = a4;
        v11 = v51;
        if (v28)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v11 = v51;
        v7 = v52;
        v10 = v57;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_54:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v59, v5);
        return;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v57 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void _sSo6FPItemC26DocumentManagerExecutablesE19performExternalDrop_9underItem15alertPresenting10completionySaySo06UIDragI0CG_So7DOCNode_pSo16UIViewControllerCySaySoAK_pGSgcSgtFZTf4nennn_nAB_Tt3g5(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v72 = a4;
  v81 = a3;
  v93 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = [a2 fpfs_fpItem];
  if (!v84)
  {
    aBlock = 0;
    v84 = [a2 syncFetchFPItem_];
    if (!v84)
    {
      v54 = aBlock;
      v55 = _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v18 = aBlock;
  }

  v66 = v17;
  v83 = swift_allocObject();
  *(v83 + 16) = MEMORY[0x277D84F90];
  v82 = dispatch_group_create();
  v71 = v7;
  v70 = v8;
  v69 = v12;
  v68 = v11;
  v67 = v13;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_25:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v56 = static OS_dispatch_queue.main.getter();
    v57 = swift_allocObject();
    v58 = v72;
    v59 = v73;
    v57[2] = v72;
    v57[3] = v59;
    v57[4] = v83;
    v91 = partial apply for closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v92 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v90 = &block_descriptor_46_3;
    v60 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v58, v59);

    v61 = v66;
    static DispatchQoS.unspecified.getter();
    v86 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v62 = v68;
    v63 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v64 = v82;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v60);

    (*(v70 + 8))(v62, v63);
    (*(v67 + 8))(v61, v69);

    return;
  }

LABEL_24:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_6:
  v20 = 0;
  v79 = a1 & 0xFFFFFFFFFFFFFF8;
  v80 = a1 & 0xC000000000000001;
  v78 = 0x8000000249BCBD70;
  v74 = &v89;
  v77 = xmmword_249B9FA70;
  v76 = a1;
  v75 = v19;
  while (1)
  {
    if (v80)
    {
      v22 = MEMORY[0x24C1FC540](v20, a1);
      v21 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v21 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      if (v20 >= *(v79 + 16))
      {
        goto LABEL_23;
      }

      v22 = *(a1 + 8 * v20 + 32);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v24 = [v22 v21[370]];
    v25 = NSItemProvider.typeToRequest.getter();
    v27 = v26;

    if (!v27)
    {
      break;
    }

    v85 = v23;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = static DOCLog.UI;
    v29 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = v77;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = 0xD00000000000003CLL;
    *(v30 + 40) = v78;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 64) = v32;
    *(v30 + 72) = v25;
    *(v30 + 80) = v27;

    os_log(_:dso:log:type:_:)("%@: Requesting UTI %@", 21, 2, &dword_2493AC000, v28, v29, v30);

    v33 = v82;
    dispatch_group_enter(v82);
    v34 = [v22 v21[370]];
    v35 = MEMORY[0x24C1FAD20](v25, v27);
    v36 = swift_allocObject();
    v37 = v22;
    v38 = v81;
    v36[2] = v33;
    v36[3] = v38;
    v36[4] = v37;
    v36[5] = v25;
    v36[6] = v27;
    v40 = v83;
    v39 = v84;
    v36[7] = v84;
    v36[8] = v40;
    v91 = partial apply for closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v92 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
    v90 = &block_descriptor_40_2;
    v41 = _Block_copy(&aBlock);

    v42 = v33;
    v43 = v38;
    v44 = v37;
    v45 = v39;

    v46 = [v34 loadInPlaceFileRepresentationForTypeIdentifier:v35 completionHandler:v41];
    _Block_release(v41);

    ++v20;
    a1 = v76;
    if (v85 == v75)
    {
      goto LABEL_25;
    }
  }

  v47 = [v22 v21[370]];
  v48 = [v47 registeredTypeIdentifiers];

  v49 = MEMORY[0x277D837D0];
  v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v51 = static DOCLog.UI;
  v52 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v53 = swift_allocObject();
  *(v53 + 16) = v77;
  *(v53 + 56) = v49;
  *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 32) = 0xD00000000000003CLL;
  *(v53 + 40) = v78;
  *(v53 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *(v53 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277CC9C50]);
  *(v53 + 72) = v50;
  os_log(_:dso:log:type:_:)("%@: No UTIs that are acceptable", 31, 2, &dword_2493AC000, v51, v52, v53);
}

uint64_t specialized DOCItemCollectionViewController.nodeForDrag(session:at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v63 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v63 - v18;
  v22.n128_f64[0] = MEMORY[0x28223BE20](v20, v21);
  v24 = &v63 - v23;
  v25 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x1898))(a1, v22))
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    (*(v8 + 16))(v11, a1, v7);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v28))
    {

      (*(v8 + 8))(v11, v7);
      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64 = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v64);
    *(v29 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v11, v7);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v64);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_2493AC000, v27, v28, "%s Can't drag the create button. indexPath: %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v30;
    goto LABEL_11;
  }

  (*((*v25 & *v1) + 0x18A0))(a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    (*(v8 + 16))(v15, a1, v7);
    v27 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v37))
    {

      (*(v8 + 8))(v15, v7);
      return 0;
    }

    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v64 = v38;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v64);
    *(v29 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v8 + 8))(v15, v7);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v64);

    *(v29 + 14) = v42;
    _os_log_impl(&dword_2493AC000, v27, v37, "%s No item to drag at. indexPath: %s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v38;
LABEL_11:
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v29, -1, -1);

    return 0;
  }

  (*(v8 + 32))(v24, v6, v7);
  v43 = (*((*v25 & *v1) + 0xD88))(v24, 0);
  if (v43)
  {
    v44 = v43;
    ObjectType = swift_getObjectType();
    if (DOCNode.supportsDrag.getter(ObjectType))
    {
      (*(v8 + 8))(v24, v7);
      return v44;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.UI);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v60 = 136315138;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v64);
      _os_log_impl(&dword_2493AC000, v58, v59, "%s: Item cannot be dragged because it does not support drag", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x24C1FE850](v61, -1, -1);
      MEMORY[0x24C1FE850](v60, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v8 + 8))(v24, v7);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.UI);
    (*(v8 + 16))(v19, a1, v7);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v63;
      *v50 = 136315394;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BECC30, &v64);
      *(v50 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = *(v8 + 8);
      v54(v19, v7);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v64);

      *(v50 + 14) = v55;
      _os_log_impl(&dword_2493AC000, v48, v49, "%s Item cannot be resolved from indexPath: %s", v50, 0x16u);
      v56 = v63;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v56, -1, -1);
      MEMORY[0x24C1FE850](v50, -1, -1);

      v54(v24, v7);
    }

    else
    {

      v62 = *(v8 + 8);
      v62(v19, v7);
      v62(v24, v7);
    }
  }

  return 0;
}

unint64_t specialized DOCItemCollectionViewController.collectionView(_:itemsForBeginning:at:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  (*(v7 + 16))(v10, a2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v2;
    v17 = v16;
    v32 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BECD70, &v32);
    *(v15 + 12) = 2080;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v12, v13, "%s indexPath: %s", v15, 0x16u);
    swift_arrayDestroy();
    v22 = v17;
    v3 = v30;
    MEMORY[0x24C1FE850](v22, -1, -1);
    v23 = v15;
    a1 = v31;
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = DOCItemCollectionViewController.itemsForDrag(session:at:)(a1, a2);
  if (result >> 62)
  {
    v27 = result;
    v28 = __CocoaSet.count.getter();
    result = v27;
    if (!v28)
    {
      return result;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v25 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v25)
  {
    v26 = result;
    [a1 setLocalContext_];
    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized DOCItemCollectionViewController.collectionView(_:itemsForAddingTo:at:point:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v43 = type metadata accessor for UTType();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    (*(v10 + 16))(v13, a2, v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v45 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v44 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v41 = v3;
      v21 = v20;
      *&v49 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BECD20, &v49);
      *(v19 + 12) = 2080;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v10 + 8))(v13, v9);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v49);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_2493AC000, v15, v16, "%s indexPath: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      v26 = v19;
      v6 = v44;
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    v27 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    ObjectType = swift_getObjectType();
    v41 = v27;
    v29 = specialized static FPItem.sessionContainsDOCNode(_:)(a1, v27, ObjectType);
    a2 = MEMORY[0x277D84F90];
    if ((v29 & 1) == 0)
    {
      return a2;
    }

    v30 = DOCItemCollectionViewController.itemsForDrag(session:at:)(a1, v45);
    v31 = v30;
    v51 = a2;
    if (v30 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
LABEL_31:

        return a2;
      }
    }

    else
    {
      v3 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_31;
      }
    }

    a1 = 0;
    v44 = v31 & 0xFFFFFFFFFFFFFF8;
    v45 = (v31 & 0xC000000000000001);
    v10 = v6 + 8;
    v9 = &_sypSgMR;
    v6 = MEMORY[0x277D84F70];
    while (1)
    {
      if (v45)
      {
        v32 = MEMORY[0x24C1FC540](a1, v31);
      }

      else
      {
        if (a1 >= *(v44 + 16))
        {
          goto LABEL_34;
        }

        v32 = *(v31 + 8 * a1 + 32);
      }

      v13 = v32;
      v33 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v34 = [v32 localObject];
      if (v34)
      {
        a2 = v34;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v49 = v47;
      v50 = v48;
      outlined init with copy of DOCGridLayout.Spec?(&v49, &v47, &_sypSgMd, &_sypSgMR);
      if (*(&v48 + 1))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
        if (swift_dynamicCast())
        {
          outlined destroy of CharacterSet?(&v49, &_sypSgMd, &_sypSgMR);
LABEL_25:
          a2 = v46;
          v35 = [v46 contentType];
          v36 = v42;
          static UTType._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = UTType.identifier.getter();
          v39 = String.isFolderUTI.getter(v37, v38);
          swift_unknownObjectRelease();

          (*v10)(v36, v43);
          if (v39)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            a2 = v51[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v9 = &_sypSgMR;
          v6 = MEMORY[0x277D84F70];
          goto LABEL_11;
        }
      }

      else
      {
        outlined destroy of CharacterSet?(&v47, &_sypSgMd, &_sypSgMR);
      }

      v47 = v49;
      v48 = v50;
      if (*(&v50 + 1))
      {
        if (swift_dynamicCast())
        {
          goto LABEL_25;
        }
      }

      else
      {

        outlined destroy of CharacterSet?(&v47, &_sypSgMd, &_sypSgMR);
      }

LABEL_11:
      ++a1;
      if (v33 == v3)
      {
        a2 = v51;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

id specialized DOCItemCollectionViewController.collectionView(_:dragPreviewParametersForItemAt:)(uint64_t a1)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))())
  {
    return 0;
  }

  v4 = DOCItemCollectionViewController.previewParametersForItem(at:)(a1);
  v5 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v6 = [v4 visiblePath];
  [v5 setVisiblePath_];

  v7 = [v4 backgroundColor];
  [v5 setBackgroundColor_];

  return v5;
}