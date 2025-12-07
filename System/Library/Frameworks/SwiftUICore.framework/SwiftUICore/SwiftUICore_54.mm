Swift::Void __swiftcall GlassContainerCache.animationWasRemoved()()
{
  v1 = *(v0 + 200) - 1;
  *(v0 + 200) = v1;
  if (!v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (AGSubgraphIsValid())
      {
        updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v0 + 16));
        v11[0] = 17;
        v5 = *(v0 + 112);
        AGGraphClearUpdate();
        v6 = AGSubgraphGetCurrent();
        AGSubgraphSetCurrent();
        v7 = AGCreateWeakAttribute();
        v8 = v7;
        v9 = HIDWORD(v7);
        AGSubgraphSetCurrent();

        AGGraphSetUpdate();
        v10 = swift_allocObject();
        *(v10 + 16) = v3;
        *(v10 + 24) = 0;
        *(v10 + 32) = v8;
        *(v10 + 36) = v9;
        *(v10 + 40) = updated & 1;

        static Update.enqueueAction(reason:_:)(v11, partial apply for closure #1 in GlassContainerCache.invalidateResolved(transaction:), v10);
      }

      else
      {
      }
    }
  }
}

uint64_t AnimatorState.__deallocating_deinit()
{
  AnimatorState.deinit();

  return swift_deallocClassInstance();
}

char *AnimatorState.deinit()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[*(*v0 + 112)], v2);
  v3(&v0[*(*v0 + 144)], v2);

  return v0;
}

uint64_t View.referenceDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ReferenceDateModifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeZone?(a1, v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  View.modifier<A>(_:)();
  return outlined destroy of ClosedRange<Date>(v4, type metadata accessor for ReferenceDateModifier);
}

uint64_t outlined destroy of ClosedRange<Date>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSNy10Foundation4DateVGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in ObjectLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectLocation.checkIsolation()(v13, v14, v15, v16, v17, v18);
  (*(v10 + 16))(v12, a5, a7);
  v20[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

double specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, void (*a2)(void *))
{
  _threadTransactionData();
  v4 = one-time initialization token for v5;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v5)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  v6 = _setThreadTransactionData();
  a2(v6);
  _setThreadTransactionData();

  return result;
}

uint64_t sub_18D342A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_18D342B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

double destroy for DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined init with copy of TimeZone?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TimeZone?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation8TimeZoneVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation8TimeZoneVSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for TimeZone?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation8TimeZoneVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DisplayList.ArchiveIDs.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void DisplayList.append(_:)(__int128 *a1)
{
  v2 = v1;
  *&v20[12] = *(a1 + 60);
  v3 = a1[2];
  *v20 = a1[3];
  v4 = *a1;
  v18 = a1[1];
  v19 = v3;
  v17 = v4;
  if ((~*&v20[16] & 0xC0000000) != 0 || *&v20[16] != 3221225472 || *v20 | *&v20[8] | *(&v19 + 1))
  {
    v5 = *v1;
    outlined init with copy of DisplayList.Item(&v17, &v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[80 * v7];
    *(v8 + 2) = v17;
    v9 = v18;
    v10 = v19;
    v11 = *v20;
    *(v8 + 92) = *&v20[12];
    *(v8 + 4) = v10;
    *(v8 + 5) = v11;
    *(v8 + 3) = v9;
    *v2 = v5;
    v15 = v19;
    v16[0] = *v20;
    *(v16 + 12) = *&v20[12];
    v13 = v17;
    v14 = v18;
    DisplayList.Item.features.getter(&v12);
    *(v2 + 4) |= v12;
    v15 = v19;
    v16[0] = *v20;
    *(v16 + 12) = *&v20[12];
    v13 = v17;
    v14 = v18;
    DisplayList.Item.properties.getter(&v12);
    *(v2 + 3) |= v12;
  }
}

void DisplayList.UnaryInterpolatorGroup.features.getter(_WORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
LABEL_7:
      v12 = v5 - v6;
      v13 = (v4 + 112 * v6 + 40);
      do
      {
        v14 = *v13;
        v13 += 56;
        v3 |= v14;
        --v12;
      }

      while (v12);
      goto LABEL_9;
    }

    v7 = 0;
    v6 = v5 & 0x7FFFFFFFFFFFFFFELL;
    v8 = (v4 + 152);
    v9 = v5 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v10 = *(v8 - 56);
      v11 = *v8;
      v8 += 112;
      v3 |= v10;
      v7 |= v11;
      v9 -= 2;
    }

    while (v9);
    v3 |= v7;
    if (v5 != v6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  *a1 = v3;
}

void InterpolatedDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v140 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v110 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v110 - v15;
  v17 = *(a1 + 100);
  v18 = *(v2 + v17);
  if (v18 != *AGGraphGetValue() >> 1)
  {
    *(v2 + v17) = *AGGraphGetValue() >> 1;
    v19 = *(a1 + 92);
    (*(v6 + 8))(v2 + v19, v5);
    v20 = (*(v11 + 56))(v2 + v19, 1, 1, v4);
    *(v2 + *(a1 + 104)) = 0;
    (*(**v2 + 88))(v20);
  }

  Value = AGGraphGetValue();
  v110 = v22;
  v23 = *(v11 + 16);
  v115 = v11 + 16;
  v114 = v23;
  v23(v16, Value, v4);
  type metadata accessor for CGSize(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  InterpolatedDisplayList.environment.getter(v130);
  v27 = *&v130[0];
  v121 = v4;
  v122 = v16;
  v116 = v130[0];
  if (*(&v130[0] + 1))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v27, &v137);
  }

  else
  {
    v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*&v130[0]);
    if (v28)
    {
      v29 = *(v28 + 84);
      v30 = *(v28 + 20);
      v31 = v30 | (v29 << 32);
      v32 = *(v28 + 86);
      v33 = *(v28 + 87);
      v34 = v28[11];
      v35 = *(v28 + 24);
      *&v137 = v28[9];
      BYTE12(v137) = v29;
      DWORD2(v137) = v30;
      v36 = *(v28 + 85);
      BYTE13(v137) = v36;
      BYTE14(v137) = v32;
      HIBYTE(v137) = v33;
      v138 = v34;
      v139 = v35;
      v37 = v137;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v37 = static ContentTransition.State.defaultValue;
      v31 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v137 = static ContentTransition.State.defaultValue;
      v36 = BYTE13(static ContentTransition.State.defaultValue);
      v138 = off_1ED536620;
      v139 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v37, v31, v36);
  }

  v119 = ++static DisplayList.Version.lastValue;
  v38 = *(v6 + 16);
  v120 = *(a1 + 92);
  v112 = v38;
  v38(v10, v2 + v120, v5);
  v39 = v11;
  v40 = *(v11 + 48);
  v41 = v121;
  v42 = v40(v10, 1, v121);
  v123 = a1;
  v118 = v39;
  v117 = v5;
  if (v42 != 1)
  {
    v43 = v111;
    (*(v39 + 32))(v111, v10, v41);
    v44 = *(a1 + 24);
    if ((v110 & 1) == 0 || ((*(v44 + 16))(v122, v41, v44) & 1) == 0) && (((*(v44 + 24))(v41, v44) & 1) == 0 || (v45 = (v2 + *(v123 + 96)), *v45 == v25) && v45[1] == v26) || (v46 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2, v41, v44), v47 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v46), , (v47))
    {
      (*(v118 + 8))(v43, v41);
      v5 = v117;
      goto LABEL_20;
    }

    v113 = v44;
    *(v2 + *(v123 + 104)) = v119;
    v98 = *(&v116 + 1);
    v55 = v41;
    v54 = v122;
    if ((!BYTE13(v137) && (v99 = v137, (v137 & 0x8000000000) != 0) && ((v100 = DWORD2(v137) | (BYTE12(v137) << 32), v137 ^ 0x8000000000 | DWORD2(v137) & 0xFFFFFFLL) || ((*(v113 + 8))(v130, v55), v101 = *&v130[0], v102 = DWORD2(v130[0]), v103 = BYTE12(v130[0]), v104 = BYTE13(v130[0]), outlined consume of ContentTransition.Storage(v99, v100, 0), *&v137 = v101, BYTE12(v137) = v103, DWORD2(v137) = v102, v54 = v122, BYTE13(v137) = v104, BYTE14(v137) = 1, !v104) && (v99 = v101, (v101 & 0x8000000000) != 0)) && !(v99 ^ 0x8000000001 | DWORD2(v137) & 0xFFFFFF) || ((*(v113 + 40))(&v137, v54, v55), !BYTE13(v137)) && (v99 = v137, (v137 & 0x8000000000) != 0)) && !(v99 ^ 0x8000000001 | DWORD2(v137) & 0xFFFFFF) || !AGGraphGetOutputValue())
    {

      v51 = 0;
      v52 = 0;
      v138 = 0;
      v53 = v118;
      goto LABEL_64;
    }

    v52 = v138;
    v53 = v118;
    if (v138)
    {
LABEL_62:
      v105 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2, v55, v113);
      v51 = Transaction.combinedAnimationListener.getter(v105);

LABEL_64:
      LOBYTE(v130[0]) = HIBYTE(v137);
      if (v98)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v116, &v127);

        v106 = v127;
      }

      else
      {
        v107 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v116);
        if (v107)
        {
          v106 = *(v107 + 72);
        }

        else
        {
          v106 = 0;
        }
      }

      LOBYTE(v124) = v106;
      ContentTransition.applyEnvironmentValues(style:layoutDirection:)(v130, &v124);
      (*(v53 + 8))(v111, v55);
      v50 = *(v6 + 8);
      goto LABEL_23;
    }

    v108 = getter of transaction #1 in InterpolatedDisplayList.updateValue()(v2, v55, v113);
    v109 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v108);
    if (v109)
    {
      v52 = v109[9];

      if (v52)
      {
        v138 = v52;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v52 = (*(v113 + 48))(v54, v55);
    v138 = v52;
    if (!v52)
    {
      v51 = 0;
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  (*(v6 + 8))(v10, v5);
LABEL_20:
  v48 = v113;
  v112(v113, v2 + v120, v5);
  v49 = v40(v48, 1, v41);
  v50 = *(v6 + 8);
  v50(v48, v5);
  if (v49 == 1)
  {
    *(v2 + *(v123 + 104)) = v119;
  }

  v51 = 0;
  v52 = 0;
  v138 = 0;
  v53 = v118;
  v54 = v122;
  v55 = v121;
LABEL_23:
  v56 = v120;
  v50(v2 + v120, v117);
  v114(v2 + v56, v54, v55);
  (*(v53 + 56))(v2 + v56, 0, 1, v55);
  v57 = v123;
  v58 = (v2 + *(v123 + 96));
  *v58 = v25;
  v58[1] = v26;
  v59 = v139;
  v60 = one-time initialization token for defaultFlags;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = static RasterizationOptions.Flags.defaultFlags & 0xFFFFFF7F;
  if ((*(*(v57 + 24) + 32))(v55))
  {
    v62 = 1;
  }

  else
  {
    v62 = v59 & 1;
  }

  v63 = v62 | v61;
  v64 = *v2;
  v65 = *(v2 + *(v57 + 104));
  if (v65)
  {
    LODWORD(v65) = (2 * ((33 * (v65 >> 16)) ^ v65)) | 1;
  }

  LOWORD(v124) = v65;
  *&v130[0] = v137;
  WORD6(v130[0]) = WORD6(v137);
  DWORD2(v130[0]) = DWORD2(v137);
  BYTE14(v130[0]) = BYTE14(v137);
  outlined copy of ContentTransition.Storage(v137, DWORD2(v137) | (BYTE12(v137) << 32), SBYTE13(v137));
  v66 = 1.0 / *AGGraphGetValue();
  LODWORD(v127) = -1;
  WORD2(v127) = 768;
  v128 = v63;
  LOBYTE(v129) = 3;
  (*(*v64 + 128))(&v124, v130, v52, v51, &v127, *(v2 + 54), v66);

  outlined consume of ContentTransition.Storage(*&v130[0], DWORD2(v130[0]) | (BYTE12(v130[0]) << 32), SBYTE13(v130[0]));
  type metadata accessor for CGPoint(0);
  v67 = AGGraphGetValue();
  v68 = *v67;
  v69 = v67[1];
  v70 = AGGraphGetValue();
  v71 = v68 - *v70;
  v72 = v69 - v70[1];
  v73 = 0.0;
  v74 = 0.0;
  v75 = v71;
  v76 = v72;
  if ((*(v2 + 52) & 1) == 0)
  {
    v77 = AGGraphGetValue();
    v78 = *v77;
    v79 = v77[1];
    v80 = AGGraphGetValue();
    v81 = *v80 * 0.5;
    v82 = v78 + v81;
    v83 = *v80 * floor((v78 + v81) / *v80);
    v84 = v79 + v81;
    v85 = floor(v84 / *v80);
    v86 = floor(v82);
    v87 = floor(v84);
    if (*v80 == 1.0)
    {
      v88 = v87;
    }

    else
    {
      v88 = *v80 * v85;
    }

    if (*v80 == 1.0)
    {
      v89 = v86;
    }

    else
    {
      v89 = v83;
    }

    v90 = AGGraphGetValue();
    v75 = v89 - *v90;
    v76 = v88 - v90[1];
    v73 = v75 - v71;
    v74 = v76 - v72;
  }

  InterpolatedDisplayList.list.getter(v130);
  if (*&v130[0])
  {
    v91 = *&v130[0];
  }

  else
  {
    v91 = MEMORY[0x1E69E7CC0];
  }

  if (*&v130[0])
  {
    v92 = WORD4(v130[0]);
  }

  else
  {
    v92 = 0;
  }

  if (*&v130[0])
  {
    v93 = HIDWORD(v130[0]);
  }

  else
  {
    v93 = 0;
  }

  v127 = v91;
  LOWORD(v128) = v92;
  v129 = v93;
  if (*(v2 + 53))
  {
    v94 = swift_allocObject();
    *(v94 + 16) = v64;
    *(v94 + 24) = v75;
    *(v94 + 32) = v76;
    *(v94 + 40) = v73;
    *(v94 + 48) = v74;
    v95 = v92 | (v93 << 32) | 0x40000000;
    memset(v130, 0, sizeof(v130));
    v96 = v119;
    v131 = v119;
    v132 = v94;
    v133 = 0x1100000000;
    v134 = v91;
    v135 = v95;
    v136 = 0;

    DisplayList.init(_:)(v130, &v124);
    v127 = v124;
    LOWORD(v128) = v125;
    v129 = v126;
  }

  else
  {
    v97 = *(v2 + 32);
    v96 = v119;
    *&v130[0] = v119;
    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v127, v97, v130, v75, v76, v73, v74);
  }

  *&v130[0] = v96;
  DisplayList.translate(by:version:)(__PAIR128__(*&v72, *&v71), v130);
  *&v130[0] = v127;
  WORD4(v130[0]) = v128;
  HIDWORD(v130[0]) = v129;
  AGGraphSetOutputValue();

  (*(v53 + 8))(v122, v55);

  outlined consume of ContentTransition.Storage(v137, DWORD2(v137) | (BYTE12(v137) << 32), SBYTE13(v137));
}

uint64_t sub_18D344104()
{

  return swift_deallocObject();
}

void DisplayList.UnaryInterpolatorGroup.update(contentSeed:transition:animation:listener:contentsScale:rasterizationOptions:supportsVFD:)(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5, char a6, float a7)
{
  v8 = v7;
  v12 = *a1;
  v13 = *a2;
  v14 = *(a2 + 12);
  v15 = *(a2 + 2);
  v43 = *(a2 + 14);
  v16 = *a5;
  v17 = *(a5 + 4);
  v18 = *(a5 + 5);
  v47 = a5[2];
  v48 = *(a2 + 13);
  v46 = *(a5 + 12);
  swift_beginAccess();
  if (*(v8 + 104) == v12 || !a3)
  {
    goto LABEL_21;
  }

  v41 = v12;
  v42 = v16;
  v19 = v15 | (v14 << 32);
  v21 = (v8 + 80);
  v20 = *(v8 + 80);
  v22 = *(v20 + 16);
  if (!v22)
  {
    goto LABEL_6;
  }

  if (!*(v20 + 112 * v22 + 24))
  {

    specialized Array._customRemoveLast()(&v55);
    if (v55)
    {
      v63 = v58;
      v64[0] = v59[0];
      *(v64 + 9) = *(v59 + 9);
      v60 = v55;
      v61 = v56;
      *v62 = *v57;
      *&v62[16] = *&v57[16];
    }

    else
    {
      v53 = v58;
      v54[0] = v59[0];
      *(v54 + 9) = *(v59 + 9);
      v49 = v55;
      v50 = v56;
      v51 = *v57;
      v52 = *&v57[16];
      _sypSgWOhTm_0(&v49, &lazy cache variable for type metadata for DisplayList.InterpolatorLayer.Removed?, &type metadata for DisplayList.InterpolatorLayer.Removed);
      specialized Array.remove(at:)(*(*v21 + 2) - 1, &v60);
    }

    v58 = v63;
    v59[0] = v64[0];
    *(v59 + 9) = *(v64 + 9);
    v55 = v60;
    v56 = v61;
    *v57 = *v62;
    *&v57[16] = *&v62[16];
    if (*&v64[0])
    {
      v40 = *(**&v59[0] + 96);

      v40(v23);
      outlined destroy of DisplayList.InterpolatorLayer.Removed(&v55);
    }

    else
    {
      outlined destroy of DisplayList.InterpolatorLayer.Removed(&v55);
    }

    goto LABEL_14;
  }

  if (v22 > 7)
  {

    DisplayList.InterpolatorLayer.remove(prefix:)(0);
  }

  else
  {
LABEL_6:
  }

LABEL_14:
  v24 = *(v8 + 40);
  v55 = *(v8 + 24);
  v56 = v24;
  *v57 = *(v8 + 56);
  *&v57[13] = *(v8 + 69);
  v65 = v13;
  v67 = BYTE4(v19);
  v66 = v19;
  v68 = v48;
  v69 = v43;
  outlined init with copy of DisplayList.InterpolatorLayer.Contents(&v55, &v60);
  v44 = ContentTransition.rbTransition.getter();
  v25 = [objc_allocWithZone(MEMORY[0x1E69C7098]) init];
  (*(*a3 + 96))(&v60);
  v49 = v60;
  v50 = v61;
  *&v51 = *v62;
  BYTE8(v51) = v62[8];
  Animation.Function.apply(to:)(v25, *&v60, *&v61, v26, v27, v28);
  outlined consume of Animation.Function(v49, *(&v49 + 1), v50, *(&v50 + 1), v51, BYTE8(v51));
  v60 = v55;
  v61 = v56;
  *v62 = *v57;
  *&v62[13] = *&v57[13];
  v29 = *v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    *v21 = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
  }

  *(v29 + 2) = v32 + 1;
  v33 = &v29[112 * v32];
  v34 = v60;
  v35 = *v62;
  v36 = *&v62[16];
  *(v33 + 3) = v61;
  *(v33 + 4) = v35;
  *(v33 + 2) = v34;
  *(v33 + 10) = v36;
  *(v33 + 11) = 0;
  *(v33 + 12) = v44;
  *(v33 + 13) = v25;
  *(v33 + 14) = a4;
  *(v33 + 120) = xmmword_18DDABD20;
  v33[136] = 0;
  *v21 = v29;
  if (a4)
  {
    (*(*a4 + 88))();
  }

  *(v8 + 107) = 1;
  v16 = v42;
  LOWORD(v12) = v41;
LABEL_21:
  *(v8 + 104) = v12;
  *(v8 + 106) = a6 & 1;
  if (v48)
  {
    v37 = 0;
  }

  else
  {
    v37 = (v13 & 0xC100000000) == 0x4100000000;
  }

  v38 = !v37;
  if (v37)
  {
    v39 = v13;
  }

  else
  {
    v39 = 0;
  }

  *(v8 + 72) = v39;
  *(v8 + 76) = v38;
  swift_endAccess();
  if (*(v8 + 108) != a7)
  {
    *(v8 + 108) = a7;
    swift_beginAccess();
    DisplayList.InterpolatorLayer.invalidateContentsScale()();
    swift_endAccess();
  }

  *(v8 + 112) = v16;
  *(v8 + 116) = v17;
  *(v8 + 117) = v18;
  *(v8 + 120) = v47;
  *(v8 + 124) = v46;
}

void DisplayList.UnaryInterpolatorGroup.properties.getter(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 36);
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 0;
LABEL_7:
      v12 = v5 - v6;
      v13 = (v4 + 112 * v6 + 44);
      do
      {
        v14 = *v13;
        v13 += 28;
        v3 |= v14;
        --v12;
      }

      while (v12);
      goto LABEL_9;
    }

    v7 = 0;
    v6 = v5 & 0x7FFFFFFFFFFFFFFELL;
    v8 = (v4 + 156);
    v9 = v5 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v10 = *(v8 - 28);
      v11 = *v8;
      v8 += 56;
      v3 |= v10;
      v7 |= v11;
      v9 -= 2;
    }

    while (v9);
    v3 |= v7;
    if (v5 != v6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  *a1 = v3;
}

double InterpolatedDisplayList.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

void InterpolatedDisplayList.list.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
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

void EnvironmentValues.redactionReasons.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = v4[9];
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }
}

double EnvironmentValues.redactionReasons.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016RedactionReasonsF033_18671928047E57F039DC339288B6FAFBLLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016RedactionReasonsK033_18671928047E57F039DC339288B6FAFBLLVG_Ttg5(v4, *v2);
  }

  return result;
}

void key path getter for EnvironmentValues.isLuminanceReduced : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
}

double key path setter for EnvironmentValues.isLuminanceReduced : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016ReducedLuminanceF033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016ReducedLuminanceK033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t DisplayList.ViewRenderer.exportedObject(rootView:)(void *a1)
{
  specialized DisplayList.ViewRenderer.updateRenderer(rootView:)(a1);
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

char *RasterizationOptions.init(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = result[8];
  v5 = result[9];
  v6 = result[10];
  v7 = result[12];
  v8 = *(result + 2);
  if (one-time initialization token for defaultFlags != -1)
  {
    v14 = a2;
    result = swift_once();
    a2 = v14;
  }

  if (v4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v3;
  }

  v10 = static RasterizationOptions.Flags.defaultFlags | 3;
  if (!v6)
  {
    v10 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFF0) + 1;
  }

  v11 = v10 & 0xFFFFFFF3;
  if (v5)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v9;
  *(a2 + 4) = v2;
  *(a2 + 5) = 3;
  *(a2 + 8) = v13 | v12 | v11;
  *(a2 + 12) = v8;
  return result;
}

uint64_t NamedImage.Cache.init(archiveDelegate:)(uint64_t a1)
{
  v1 = specialized NamedImage.Cache.init(archiveDelegate:)(a1);

  return v1;
}

void protocol witness for ViewRendererBase.exportedObject.getter in conformance DisplayList.ViewRasterizer()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFFF8) + 144);
    v3 = swift_unknownObjectRetain();
    v2(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ArchivedViewCore.archivedViewHostKey.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CodingUserInfoKey();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void DisplayList.ViewRasterizer.render(rootView:from:time:version:maxVersion:environment:)(void *a1@<X0>, uint64_t *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X5>, double *a6@<X8>)
{
  v7 = v6;
  if (*a5 != *(v7 + 88))
  {
    *(v7 + 88) = *a5;
    *(v7 + 80) = 0;
  }

  v9 = *a4;
  v10 = *a2;
  v11 = *(a2 + 4);
  v12 = *(a2 + 3);
  v13 = *a3;
  swift_beginAccess();
  v14 = *(v7 + 40);
  if (!v14)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ([*(v7 + 40) respondsToSelector_])
  {
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if ([a1 respondsToSelector_])
    {
      [a1 bounds];
      v58.origin.x = v23;
      v58.origin.y = v24;
      v58.size.width = v25;
      v58.size.height = v26;
      v57.origin.x = v16;
      v57.origin.y = v18;
      v57.size.width = v20;
      v57.size.height = v22;
      if (CGRectEqualToRect(v57, v58))
      {
LABEL_13:
        if (v9)
        {
          if (*(v7 + 80) != ((2 * ((33 * WORD1(v9)) ^ v9)) | 1))
          {
LABEL_18:
            v56 = *(v7 + 16);
            v47 = *(v7 + 48);
            v48 = *(v7 + 64);
            RasterizationOptions.init(_:)(&v47, &v44);
            v52 = v44;
            v53 = WORD2(v44);
            v54 = DWORD2(v44);
            v55 = BYTE12(v44);
            v30 = *(v7 + 88);
            swift_beginAccess();
            if (*(v7 + 40))
            {
              DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)((v7 + 40), &v52, v30);
              v32 = v31;
              swift_endAccess();
              v33 = *(v7 + 72);
              v34 = swift_allocObject();
              swift_unknownObjectWeakLoadStrong();
              *(v34 + 24) = *(v7 + 32);
              swift_unknownObjectWeakInit();

              swift_unknownObjectRelease();
              v35 = swift_allocObject();
              *(v35 + 16) = v7;
              *(v35 + 24) = v13;
              *(v35 + 32) = v10;
              *(v35 + 40) = v11;
              *(v35 + 44) = v12;
              *(v35 + 48) = v33;
              *(v35 + 56) = v34;
              ObjectType = swift_getObjectType();
              *&v47 = partial apply for closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:);
              *(&v47 + 1) = v35;
              v49 = 0;
              v50 = 0;
              v48 = 0;
              v51 = 0;
              v37 = *(v32 + 40);

              LOBYTE(v33) = v37(&v47, 0, ObjectType, v32);
              outlined consume of PlatformDrawableContent?(v47, *(&v47 + 1), v48, v49, v50, v51);
              if (v33)
              {
                v29 = INFINITY;
              }

              else
              {
                v29 = v13;
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v38 = *(v7 + 32);
                v39 = swift_getObjectType();
                v40 = type metadata accessor for ViewGraphRenderObserver();
                (*(*(*(v38 + 16) + 8) + 16))(&v44, v40, v40, v39);
                swift_unknownObjectRelease();
                if (*(&v45 + 1))
                {
                  outlined init with take of AnyTrackedValue(&v44, &v47);
                  v41 = v49;
                  v42 = v50;
                  __swift_project_boxed_opaque_existential_1(&v47, v49);
                  (*(v42 + 8))(v41, v42);
                  swift_unknownObjectRelease();

                  __swift_destroy_boxed_opaque_existential_1(&v47);
                  goto LABEL_28;
                }

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();

                v46 = 0;
                v44 = 0u;
                v45 = 0u;
              }

              outlined destroy of ViewGraphRenderObserver?(&v44);
              goto LABEL_28;
            }

            goto LABEL_30;
          }
        }

        else if (*(v7 + 80))
        {
          goto LABEL_18;
        }

        v29 = *(*(v7 + 72) + 80);
        if (v29 >= v13)
        {
LABEL_28:
          *a6 = v29;
          return;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    if (([a1 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_13;
    }

    [a1 bounds];
  }

  v27 = *(v7 + 16);
  if (([a1 respondsToSelector_] & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [a1 bounds];
  v28 = *(v7 + 40);
  if (v28)
  {
    CoreViewSetFrame(v27 & 3, v28);
    *(v7 + 80) = 0;
    goto LABEL_13;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_18D34518C()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3451C4()
{

  return swift_deallocObject();
}

double get_witness_table_7SwiftUI4ViewRzAA15InsettableShapeRd__r__lAA15ModifiedContentVyxAA010_ContainerE8ModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
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

double key path setter for EnvironmentValues._openSensitiveURL : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v8 | v7;
  v9 = *a2;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2B5(a2, v11);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022OpenSensitiveURLActionK0VG_Ttg5(v9, *a2);
  }

  return outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>(0);
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>);
    }
  }
}

void EnvironmentValues._openSensitiveURL.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey);
    BloomFilter.init(hashValue:)(v6);
    v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022OpenSensitiveURLActionV0VG_Tt0B5(v3, v17);
    if (!v7 || (v4 = *(v7 + 52), v15 = *(v7 + 11), v16 = *(v7 + 9), outlined copy of OpenURLAction?(v7[9], *(&v16 + 1), v15, *(&v15 + 1), v4), v4 == 0xFF))
    {
      if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v3) & 1) == 0)
      {
LABEL_9:
        *a1 = closure #1 in static OpenURLAction.invalidAction.getter;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 1;
        return;
      }

      goto LABEL_8;
    }

    v9 = v4 >> 8;
    v10 = v15;
    v11 = v16;
LABEL_13:
    *a1 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v4 & 1;
    *(a1 + 33) = v9 & 1;
    return;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022OpenSensitiveURLActionI0VG_Tt1g5(v3, v18);

  LOBYTE(v4) = v19;
  if (v19 != 0xFF)
  {
    v9 = HIBYTE(v19);
    v10 = v18[1];
    v11 = v18[0];
    goto LABEL_13;
  }

  HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3);

  if ((HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_beginAccess();
  v8 = word_1ED537C50;
  if (word_1ED537C50 == 0xFF)
  {
    goto LABEL_9;
  }

  v12 = qword_1ED537C40;
  v13 = unk_1ED537C48;
  v14 = static OpenURLAction.defaultSensitiveAction;
  *a1 = static OpenURLAction.defaultSensitiveAction;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v8 & 1;
  *(a1 + 33) = HIBYTE(v8) & 1;
  outlined copy of OpenURLAction.Handler(v14, *(&v14 + 1), v12, v13, v8 & 1);
}

double key path getter for EnvironmentValues._openURL : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  EnvironmentValues._openURL.getter(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

double key path getter for EnvironmentValues._openSensitiveURL : EnvironmentValues@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  EnvironmentValues._openSensitiveURL.getter(v7);
  v3 = v8;
  v4 = v9;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 33) = v4;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ReferenceDateModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t View.containerShape<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11(0, v9, v10, v6);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v5 + 16))(v8, a1, a3, v14);
  (*(v5 + 32))(v16, v8, a3);
  View.modifier<A>(_:)();
  return (*(v13 + 8))(v16, v12);
}

{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ContainerRoundedRectangularShapeModifier(0, v8, v10, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, a3, v13);
  (*(v5 + 32))(v15, v7, a3);
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

{
  return View.containerShape<A>(_:)(a1, a2, a3);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<OpenSensitiveURLActionKey> and conformance EnvironmentPropertyKey<A>);
  }
}

double get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA16RedactionReasonsVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *), uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<RedactionReasons>(255, a2, a3);
  v9 = type metadata accessor for ModifiedContent(255, v5, v7, v8);
  v11[0] = v6;
  v11[1] = a4;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v11);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<RedactionReasons>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RedactionReasons);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void DisplayList.Effect.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v173[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v7 = 0;
    v6 = 0;
    v8 = 20;
LABEL_4:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 12) = v8;
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 20;
  while (2)
  {
    v9 = v3[3];
    if (v9)
    {
      v10 = v3[4];
      if (v4 < v10)
      {
        goto LABEL_15;
      }

      if (v10 < v4)
      {
        goto LABEL_244;
      }

      v3[3] = 0;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v2)
    {
      goto LABEL_247;
    }

    v9 = a1;
    if (a1 < 8)
    {
      goto LABEL_244;
    }

LABEL_15:
    switch(v9 >> 3)
    {
      case 1uLL:
        v11 = v9 & 7;
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v142 = ProtobufDecoder.decodeVarint()(a1);
            if (v2)
            {
              goto LABEL_247;
            }

            if (v142 < 0)
            {
              goto LABEL_319;
            }

            v12 = v3[1] + v142;
          }

          else
          {
            if (v11 != 5)
            {
              goto LABEL_244;
            }

            v12 = v3[1] + 4;
          }
        }

        else
        {
          if ((v9 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(a1);
            v16 = v2;
            if (v2)
            {
              goto LABEL_245;
            }

            outlined consume of DisplayList.Effect(v7, v6, v8);
            v6 = 0;
            v8 = 20;
            v7 = 1;
            goto LABEL_7;
          }

          if (v11 != 1)
          {
            goto LABEL_244;
          }

          v12 = v3[1] + 8;
        }

        if (v5 < v12)
        {
          goto LABEL_244;
        }

        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v3[1] = v12;
        v8 = 20;
        v7 = 1;
        goto LABEL_8;
      case 2uLL:
        v68 = v9 & 7;
        if (v68 <= 1)
        {
          if ((v9 & 7) != 0)
          {
            if (v68 != 1)
            {
              goto LABEL_244;
            }

            v69 = v3[1] + 8;
LABEL_218:
            if (v5 < v69)
            {
              goto LABEL_244;
            }

            outlined consume of DisplayList.Effect(v7, v6, v8);
            v6 = 0;
            v3[1] = v69;
            v8 = 20;
            v7 = 2;
            goto LABEL_8;
          }

          ProtobufDecoder.decodeVarint()(a1);
          v16 = v2;
          if (v2)
          {
            goto LABEL_245;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 20;
          v7 = 2;
LABEL_7:
          v2 = v16;
          goto LABEL_8;
        }

        if (v68 != 2)
        {
          if (v68 != 5)
          {
            goto LABEL_244;
          }

          v69 = v3[1] + 4;
          goto LABEL_218;
        }

        v143 = ProtobufDecoder.decodeVarint()(a1);
        if (!v2)
        {
          if (v143 < 0)
          {
            goto LABEL_318;
          }

          v69 = v3[1] + v143;
          goto LABEL_218;
        }

LABEL_247:
        v144 = v7;
        v145 = v6;
        v146 = v8;
        goto LABEL_246;
      case 3uLL:
        if ((v9 & 7) == 2)
        {
          v137 = ProtobufDecoder.decodeVarint()(a1);
          if (v2)
          {
            goto LABEL_247;
          }

          if (v137 < 0)
          {
            goto LABEL_316;
          }

          v54 = v3[1];
          if (v5 < v54 + v137)
          {
            goto LABEL_244;
          }

          v3[3] = 29;
          v3[4] = v54 + v137;
        }

        else
        {
          if ((v9 & 7) != 5)
          {
            goto LABEL_244;
          }

          v54 = v3[1];
        }

        v138 = v54 + 1;
        if (v5 < (v54 + 1))
        {
          goto LABEL_244;
        }

        v139 = *v54;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v3[1] = v138;
        v8 = 4;
        v7 = v139;
        goto LABEL_8;
      case 4uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v100 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 16) + 1, 1, v100);
          v100 = isUniquelyReferenced_nonNull_native;
        }

        v103 = *(v100 + 16);
        v102 = *(v100 + 24);
        if (v103 >= v102 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v100);
          v100 = isUniquelyReferenced_nonNull_native;
        }

        *(v100 + 16) = v103 + 1;
        *(v100 + 8 * v103 + 32) = v5;
        v3[5] = v100;
        v104 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_247;
        }

        if (v104 < 0)
        {
          goto LABEL_287;
        }

        v105 = v3[1] + v104;
        if (v5 < v105)
        {
          goto LABEL_244;
        }

        v3[2] = v105;
        GraphicsBlendMode.init(from:)(v3, &v165);
        v106 = v3[5];
        if (!*(v106 + 2))
        {
          goto LABEL_306;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v107 = *(v106 + 2);
          if (!v107)
          {
            goto LABEL_312;
          }
        }

        else
        {
          v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
          v107 = *(v106 + 2);
          if (!v107)
          {
            goto LABEL_312;
          }
        }

        v108 = v107 - 1;
        v109 = *&v106[8 * v108 + 32];
        *(v106 + 2) = v108;
        v3[5] = v106;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v3[2] = v109;
        v7 = v165;
        v8 = 5;
        v6 = BYTE8(v165);
        goto LABEL_8;
      case 5uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v110 = v3[5];
        v111 = swift_isUniquelyReferenced_nonNull_native();
        if ((v111 & 1) == 0)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 16) + 1, 1, v110);
          v110 = v111;
        }

        v113 = *(v110 + 16);
        v112 = *(v110 + 24);
        if (v113 >= v112 >> 1)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v110);
          v110 = v111;
        }

        *(v110 + 16) = v113 + 1;
        *(v110 + 8 * v113 + 32) = v5;
        v3[5] = v110;
        v114 = ProtobufDecoder.decodeVarint()(v111);
        if (v2)
        {
          goto LABEL_247;
        }

        if (v114 < 0)
        {
          goto LABEL_283;
        }

        v115 = v3[1] + v114;
        if (v5 < v115)
        {
          goto LABEL_244;
        }

        v3[2] = v115;
        closure #1 in DisplayList.Effect.init(from:)(v3, &v165);
        v55 = v3[5];
        if (!*(v55 + 2))
        {
          goto LABEL_300;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v56 = *(v55 + 2);
          if (!v56)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
          v56 = *(v55 + 2);
          if (!v56)
          {
LABEL_243:
            __break(1u);
LABEL_244:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_245:
            v144 = v7;
            v145 = v6;
            v146 = v8;
LABEL_246:
            outlined consume of DisplayList.Effect(v144, v145, v146);
            return;
          }
        }

LABEL_157:
        v116 = v56 - 1;
        v117 = *&v55[8 * v116 + 32];
        *(v55 + 2) = v116;
        v3[5] = v55;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v3[2] = v117;
        v7 = v165;
        v6 = DWORD2(v165);
        v8 = BYTE12(v165);
        v2 = 0;
        goto LABEL_8;
      case 6uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_247;
        }

        closure #2 in DisplayList.Effect.init(from:)(v3, &v165);
        v55 = v3[5];
        if (!*(v55 + 2))
        {
          goto LABEL_294;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v56 = *(v55 + 2);
          if (!v56)
          {
            goto LABEL_298;
          }
        }

        else
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
          v56 = *(v55 + 2);
          if (!v56)
          {
            goto LABEL_298;
          }
        }

        goto LABEL_157;
      case 7uLL:
        v70 = swift_allocObject();
        if ((v9 & 7) == 2)
        {
          ProtobufDecoder.beginMessage()();
          if (v2)
          {
            goto LABEL_266;
          }

          *&v166 = 0;
          v165 = 0x3FF0000000000000uLL;
          *(&v166 + 1) = 0x3FF0000000000000;
          v167 = 0uLL;
          closure #1 in CGAffineTransform.init(from:)(&v165, v3, v173);
          v71 = v3[5];
          if (!*(v71 + 2))
          {
            goto LABEL_292;
          }

          v155 = v166;
          v156 = v165;
          v72 = v167;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v73 = *(v71 + 2);
            if (!v73)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v71 = specialized _ArrayBuffer._consumeAndCreateNew()(v71);
            v73 = *(v71 + 2);
            if (!v73)
            {
              goto LABEL_297;
            }
          }

          v74 = v73 - 1;
          v75 = *&v71[8 * v74 + 32];
          *(v71 + 2) = v74;
          v3[5] = v71;
          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v3[2] = v75;
          *(v70 + 16) = v156;
          *(v70 + 32) = v155;
          *(v70 + 48) = v72;
          v8 = 9;
          v7 = v70;
          *(v70 + 88) = 0;
          goto LABEL_8;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_266:
        v147 = v7;
        v148 = v6;
        v149 = v8;
        goto LABEL_273;
      case 8uLL:
        v76 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v77 = v3[5];
        v78 = swift_isUniquelyReferenced_nonNull_native();
        if ((v78 & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 16) + 1, 1, v77);
          v77 = v78;
        }

        v80 = *(v77 + 16);
        v79 = *(v77 + 24);
        if (v80 >= v79 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v77);
          v77 = v78;
        }

        *(v77 + 16) = v80 + 1;
        *(v77 + 8 * v80 + 32) = v5;
        v3[5] = v77;
        v81 = ProtobufDecoder.decodeVarint()(v78);
        if (v2)
        {
          v147 = v7;
          v148 = v6;
          v149 = v8;
LABEL_273:
          outlined consume of DisplayList.Effect(v147, v148, v149);
          goto LABEL_274;
        }

        if (v81 < 0)
        {
          goto LABEL_288;
        }

        v82 = v3[1] + v81;
        if (v5 < v82)
        {
          goto LABEL_272;
        }

        v3[2] = v82;
        v166 = 0uLL;
        v165 = 0x3FF0000000000000uLL;
        v167 = 0x3FF0000000000000uLL;
        v168 = 0uLL;
        v169 = 0x3FF0000000000000;
        closure #1 in ProjectionTransform.init(from:)(&v165, v3, v173);
        v160 = v167;
        v161 = v168;
        v162 = v169;
        v158 = v165;
        v159 = v166;
        v83 = v3[5];
        if (!*(v83 + 2))
        {
          goto LABEL_301;
        }

        v84 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v85 = *(v83 + 2);
          if (!v85)
          {
            goto LABEL_314;
          }
        }

        else
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
          v85 = *(v83 + 2);
          if (!v85)
          {
            goto LABEL_314;
          }
        }

        v86 = v85 - 1;
        v87 = *&v83[8 * v86 + 32];
        *(v83 + 2) = v86;
        v3[5] = v83;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v3[2] = v87;
        *(v76 + 48) = v160;
        *(v76 + 64) = v161;
        *(v76 + 80) = v162;
        *(v76 + 16) = v158;
        *(v76 + 32) = v159;
        v8 = 9;
        *(v76 + 88) = 1;
LABEL_205:
        v7 = v76;
        v2 = v84;
LABEL_8:
        v4 = v3[1];
        v5 = v3[2];
        if (v4 >= v5)
        {
          goto LABEL_4;
        }

        continue;
      case 9uLL:
        v17 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_262:
          outlined consume of DisplayList.Effect(v7, v6, v8);
          goto LABEL_274;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_262;
        }

        GraphicsFilter.init(from:)(v3, (v17 + 16));
        if (!*(v3[5] + 2))
        {
          goto LABEL_293;
        }

        v121 = specialized Array._customRemoveLast()();
        if (!v121)
        {
          v121 = specialized Array.remove(at:)(*(v3[5] + 2) - 1);
        }

        v122 = v121;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v3[2] = v122;
        v8 = 10;
        goto LABEL_172;
      case 0xAuLL:
        if ((v9 & 7) == 0)
        {
          goto LABEL_164;
        }

        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          goto LABEL_247;
        }

        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_317;
        }

        v118 = v3[1] + a1;
        if (v5 < v118)
        {
          goto LABEL_244;
        }

        v3[3] = 80;
        v3[4] = v118;
LABEL_164:
        v119 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          outlined consume of DisplayList.Effect(v7, v6, v8);
          return;
        }

        v120 = v119;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v7 = v120;
        v8 = 2;
        goto LABEL_8;
      case 0xBuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v32 = v3[5];
        v33 = swift_isUniquelyReferenced_nonNull_native();
        if ((v33 & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
          v32 = v33;
        }

        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        if (v35 >= v34 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
          v32 = v33;
        }

        *(v32 + 16) = v35 + 1;
        *(v32 + 8 * v35 + 32) = v5;
        v3[5] = v32;
        v36 = ProtobufDecoder.decodeVarint()(v33);
        if (v2)
        {
          goto LABEL_247;
        }

        if (v36 < 0)
        {
          goto LABEL_286;
        }

        v37 = v3[1] + v36;
        if (v5 < v37)
        {
          goto LABEL_244;
        }

        v3[2] = v37;
        CodableEffectAnimation.init(from:)(v3, &v165);
        v38 = v3[5];
        if (!*(v38 + 2))
        {
          goto LABEL_304;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = *(v38 + 2);
          if (!v39)
          {
            goto LABEL_313;
          }
        }

        else
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
          v39 = *(v38 + 2);
          if (!v39)
          {
            goto LABEL_313;
          }
        }

        v40 = v39 - 1;
        v41 = *&v38[8 * v40 + 32];
        *(v38 + 2) = v40;
        v3[5] = v38;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v3[2] = v41;
        v7 = swift_allocObject();
        a1 = outlined init with take of AnyTrackedValue(&v165, v7 + 16);
        v6 = 0;
        v8 = 11;
        goto LABEL_8;
      case 0xCuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v57 = v3[5];
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v8;
        if ((v58 & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 16) + 1, 1, v57);
          v57 = v58;
        }

        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        if (v61 >= v60 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v57);
          v57 = v58;
        }

        *(v57 + 16) = v61 + 1;
        *(v57 + 8 * v61 + 32) = v5;
        v3[5] = v57;
        v62 = ProtobufDecoder.decodeVarint()(v58);
        if (v2)
        {
          goto LABEL_250;
        }

        if (v62 < 0)
        {
          goto LABEL_285;
        }

        v63 = v3[1] + v62;
        if (v5 < v63)
        {
          goto LABEL_270;
        }

        v3[2] = v63;
        CodableViewFactory.init(from:)(v3, &v165);
        v64 = v3[5];
        if (!*(v64 + 2))
        {
          goto LABEL_302;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v65 = *(v64 + 2);
          if (!v65)
          {
            goto LABEL_309;
          }
        }

        else
        {
          v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
          v65 = *(v64 + 2);
          if (!v65)
          {
            goto LABEL_309;
          }
        }

        v66 = v65 - 1;
        v67 = *&v64[8 * v66 + 32];
        *(v64 + 2) = v66;
        v3[5] = v64;
        v3[2] = v67;
        v52 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(&v165, v173);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory, &protocol descriptor for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _DisplayList_ViewFactory, &protocol descriptor for _DisplayList_ViewFactory);
        if ((swift_dynamicCast() & 1) == 0)
        {
          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v170 = 0u;
          v171 = 0u;
          v172 = 0;
          swift_allocError();
          *v154 = 0;
          v154[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Effect(v7, v6, v59);
          outlined destroy of CodableViewFactory(&v165);
          if (*(&v171 + 1))
          {
            v151 = &lazy cache variable for type metadata for _DisplayList_ViewFactory?;
            v152 = &lazy cache variable for type metadata for _DisplayList_ViewFactory;
            v153 = &protocol descriptor for _DisplayList_ViewFactory;
LABEL_279:
            outlined destroy of _DisplayList_AnyEffectAnimator?(&v170, v151, v152, v153);
          }

          goto LABEL_274;
        }

        outlined destroy of CodableViewFactory(&v165);
        outlined consume of DisplayList.Effect(v7, v6, v59);
        a1 = outlined init with take of AnyTrackedValue(&v170, v52 + 16);
        v6 = 0;
        v8 = 13;
        goto LABEL_91;
      case 0xDuLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v42 = v3[5];
        v43 = swift_isUniquelyReferenced_nonNull_native();
        if ((v43 & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1, v42);
          v42 = v43;
        }

        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        if (v45 >= v44 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v42);
          v42 = v43;
        }

        *(v42 + 16) = v45 + 1;
        *(v42 + 8 * v45 + 32) = v5;
        v3[5] = v42;
        v46 = ProtobufDecoder.decodeVarint()(v43);
        if (v2)
        {
          goto LABEL_247;
        }

        if (v46 < 0)
        {
          goto LABEL_290;
        }

        v47 = v3[1] + v46;
        if (v5 < v47)
        {
          goto LABEL_244;
        }

        v3[2] = v47;
        CodableViewFactory.init(from:)(v3, &v165);
        v48 = v3[5];
        if (!*(v48 + 2))
        {
          goto LABEL_305;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = *(v48 + 2);
          if (!v49)
          {
            goto LABEL_308;
          }
        }

        else
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
          v49 = *(v48 + 2);
          if (!v49)
          {
            goto LABEL_308;
          }
        }

        v50 = v49 - 1;
        v51 = *&v48[8 * v50 + 32];
        *(v48 + 2) = v50;
        v3[5] = v48;
        v3[2] = v51;
        v52 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(&v165, v173);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory, &protocol descriptor for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformGroupFactory, &protocol descriptor for PlatformGroupFactory);
        if (swift_dynamicCast())
        {
          outlined destroy of CodableViewFactory(&v165);
          outlined consume of DisplayList.Effect(v7, v6, v8);
          a1 = outlined init with take of AnyTrackedValue(&v170, v52 + 16);
          v6 = 0;
          v8 = 3;
LABEL_91:
          v7 = v52;
          v2 = 0;
          goto LABEL_8;
        }

        lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
        v170 = 0u;
        v171 = 0u;
        v172 = 0;
        swift_allocError();
        *v150 = 0;
        v150[1] = 0;
        swift_willThrow();
        outlined consume of DisplayList.Effect(v7, v6, v8);
        outlined destroy of CodableViewFactory(&v165);
        if (*(&v171 + 1))
        {
          v151 = &lazy cache variable for type metadata for PlatformGroupFactory?;
          v152 = &lazy cache variable for type metadata for PlatformGroupFactory;
          v153 = &protocol descriptor for PlatformGroupFactory;
          goto LABEL_279;
        }

LABEL_274:
        swift_deallocUninitializedObject();
        return;
      case 0xEuLL:
        *&v165 = MEMORY[0x1E69E7CC0];
        if ((v9 & 7) != 2)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_265:
          outlined consume of DisplayList.Effect(v7, v6, v8);

          return;
        }

        ProtobufDecoder.beginMessage()();
        if (v2)
        {
          goto LABEL_265;
        }

        closure #3 in DisplayList.Effect.init(from:)(v3, &v165);
        v28 = v3[5];
        if (!*(v28 + 2))
        {
          goto LABEL_291;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_295;
          }
        }

        else
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          v29 = *(v28 + 2);
          if (!v29)
          {
            goto LABEL_295;
          }
        }

        v30 = v29 - 1;
        v31 = *&v28[8 * v30 + 32];
        *(v28 + 2) = v30;
        v3[5] = v28;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v3[2] = v31;
        a1 = swift_allocObject();
        v7 = a1;
        v6 = 0;
        *(a1 + 16) = v165;
        v8 = 14;
        goto LABEL_8;
      case 0xFuLL:
        v88 = swift_allocObject();
        v76 = v88;
        if ((v9 & 7) == 0)
        {
          goto LABEL_203;
        }

        if ((v9 & 7) != 2)
        {
          goto LABEL_261;
        }

        v88 = ProtobufDecoder.decodeVarint()(v88);
        if (v2)
        {
          goto LABEL_281;
        }

        if (v88 < 0)
        {
          goto LABEL_315;
        }

        v89 = v3[1] + v88;
        if (v5 < v89)
        {
LABEL_261:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_281:
          outlined consume of DisplayList.Effect(v7, v6, v8);
          swift_deallocUninitializedObject();
          return;
        }

        v3[3] = 120;
        v3[4] = v89;
LABEL_203:
        v140 = ProtobufDecoder.decodeVarint()(v88);
        v84 = v2;
        if (v2)
        {
          goto LABEL_281;
        }

        v141 = v140;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v8 = 0;
        *(v76 + 16) = v141 != 0;
        *(v76 + 24) = 0;
        *(v76 + 32) = 0;
        goto LABEL_205;
      case 0x10uLL:
        v17 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v90 = v3[5];
        v91 = swift_isUniquelyReferenced_nonNull_native();
        if ((v91 & 1) == 0)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
          v90 = v91;
        }

        v93 = *(v90 + 16);
        v92 = *(v90 + 24);
        if (v93 >= v92 >> 1)
        {
          v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v90);
          v90 = v91;
        }

        *(v90 + 16) = v93 + 1;
        *(v90 + 8 * v93 + 32) = v5;
        v3[5] = v90;
        v94 = ProtobufDecoder.decodeVarint()(v91);
        if (v2)
        {
          v147 = v7;
          v148 = v6;
          v149 = v8;
          goto LABEL_273;
        }

        if (v94 < 0)
        {
          goto LABEL_284;
        }

        v95 = v3[1] + v94;
        if (v5 < v95)
        {
LABEL_272:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          v147 = v7;
          v148 = v6;
          v149 = v8;
          goto LABEL_273;
        }

        v3[2] = v95;
        ContentTransition.State.init(from:)(v3, (v17 + 16));
        v96 = v3[5];
        if (!*(v96 + 2))
        {
          goto LABEL_307;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v97 = *(v96 + 2);
          if (!v97)
          {
            goto LABEL_310;
          }
        }

        else
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
          v97 = *(v96 + 2);
          if (!v97)
          {
            goto LABEL_310;
          }
        }

        v98 = v97 - 1;
        v99 = *&v96[8 * v98 + 32];
        *(v96 + 2) = v98;
        v3[5] = v96;
        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v3[2] = v99;
        v8 = 12;
        goto LABEL_172;
      case 0x11uLL:
        if ((v9 & 7) != 2)
        {
          goto LABEL_244;
        }

        v124 = v3[5];
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v8;
        if ((v125 & 1) == 0)
        {
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v124 + 2) + 1, 1, v124);
          v124 = v125;
        }

        v127 = *(v124 + 2);
        v126 = *(v124 + 3);
        if (v127 >= v126 >> 1)
        {
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v124);
          v124 = v125;
        }

        *(v124 + 2) = v127 + 1;
        *&v124[8 * v127 + 32] = v5;
        v3[5] = v124;
        v128 = ProtobufDecoder.decodeVarint()(v125);
        if (v2)
        {
LABEL_250:
          v144 = v7;
          v145 = v6;
          v146 = v59;
        }

        else
        {
          if (v128 < 0)
          {
            goto LABEL_289;
          }

          v129 = v59;
          v130 = v3[1] + v128;
          if (v5 >= v130)
          {
            v3[2] = v130;
            if (!*(v124 + 2))
            {
              goto LABEL_296;
            }

            v16 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v131 = *(v124 + 2);
              if (!v131)
              {
                goto LABEL_299;
              }
            }

            else
            {
              v124 = specialized _ArrayBuffer._consumeAndCreateNew()(v124);
              v131 = *(v124 + 2);
              if (!v131)
              {
                goto LABEL_299;
              }
            }

            v132 = v131 - 1;
            v133 = *&v124[8 * v132 + 32];
            *(v124 + 2) = v132;
            v3[5] = v124;
            outlined consume of DisplayList.Effect(v7, v6, v129);
            v3[2] = v133;
            a1 = swift_allocEmptyBox();
            v7 = a1;
            v6 = 0;
            v8 = 15;
            goto LABEL_7;
          }

LABEL_270:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          v144 = v7;
          v145 = v6;
          v146 = v59;
        }

        goto LABEL_246;
      case 0x13uLL:
        v13 = v8;
        v123 = swift_allocObject();
        v15 = v123;
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()((v123 + 16));
          v16 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 16;
          goto LABEL_6;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        break;
      case 0x14uLL:
        v13 = v8;
        v14 = swift_allocObject();
        v15 = v14;
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()((v14 + 16));
          v16 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v8 = 19;
LABEL_6:
          v7 = v15;
          goto LABEL_7;
        }

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        break;
      case 0x15uLL:
        v13 = v8;
        v15 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_248;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v165);
        v16 = v2;
        if (v2)
        {
          goto LABEL_257;
        }

        outlined consume of DisplayList.Effect(v7, v6, v8);
        v6 = 0;
        v53 = v166;
        *(v15 + 16) = v165;
        *(v15 + 32) = v53;
        *(v15 + 88) = 2;
        v8 = 9;
        goto LABEL_6;
      case 0x16uLL:
        v13 = v8;
        v134 = swift_allocObject();
        if ((v9 & 7) == 2)
        {
          specialized ProtobufDecoder.decodeMessage<A>()(v163);
          v16 = v2;
          if (v2)
          {
            goto LABEL_257;
          }

          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v135 = v163[3];
          *(v134 + 48) = v163[2];
          *(v134 + 64) = v135;
          *(v134 + 80) = v164;
          v136 = v163[1];
          *(v134 + 16) = v163[0];
          *(v134 + 32) = v136;
          v8 = 9;
          v7 = v134;
          *(v134 + 88) = 3;
          goto LABEL_7;
        }

LABEL_248:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_257;
      case 0x18uLL:
        v17 = swift_allocObject();
        if ((v9 & 7) != 2)
        {
          goto LABEL_272;
        }

        v18 = v3[5];
        v19 = swift_isUniquelyReferenced_nonNull_native();
        if ((v19 & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
          v18 = v19;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
          v18 = v19;
        }

        *(v18 + 16) = v21 + 1;
        *(v18 + 8 * v21 + 32) = v5;
        v3[5] = v18;
        v22 = ProtobufDecoder.decodeVarint()(v19);
        if (!v2)
        {
          if (v22 < 0)
          {
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
          }

          v23 = v3[1] + v22;
          if (v5 < v23)
          {
            goto LABEL_272;
          }

          v3[2] = v23;
          SDFShape.init(from:)(v3, (v17 + 16));
          v24 = v3[5];
          if (!*(v24 + 2))
          {
            goto LABEL_303;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v25 = *(v24 + 2);
            if (!v25)
            {
              goto LABEL_311;
            }
          }

          else
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
            v25 = *(v24 + 2);
            if (!v25)
            {
              goto LABEL_311;
            }
          }

          v26 = v25 - 1;
          v27 = *&v24[8 * v26 + 32];
          *(v24 + 2) = v26;
          v3[5] = v24;
          outlined consume of DisplayList.Effect(v7, v6, v8);
          v6 = 0;
          v3[2] = v27;
          v8 = 8;
LABEL_172:
          v7 = v17;
          v2 = 0;
          goto LABEL_8;
        }

        v147 = v7;
        v148 = v6;
        v149 = v8;
        goto LABEL_273;
      default:
        *&v165 = v9;
        ProtobufDecoder.skipField(_:)(&v165);
        if (v2)
        {
          goto LABEL_247;
        }

        goto LABEL_8;
    }

    break;
  }

LABEL_257:
  outlined consume of DisplayList.Effect(v7, v6, v13);
  swift_deallocUninitializedObject();
  return;
}

uint64_t sub_18D347C44()
{

  return swift_deallocObject();
}

uint64_t sub_18D347C8C()
{

  return swift_deallocObject();
}

uint64_t sub_18D347CC4()
{
  outlined consume of ContentTransition.Storage(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32), *(v0 + 29));

  return swift_deallocObject();
}

uint64_t sub_18D347D14()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_18D347D80()
{

  return swift_deallocObject();
}

double closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int8x16_t *a6, __int128 *a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13)
{
  v72 = *&a7;
  v75 = a10;
  v76 = a12;
  v77 = a9;
  v78 = a11;
  MaxX = *&a1;
  v73 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v69 - v20;
  v21 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && (v26 = *WeakValue, v27 = *(WeakValue + 8), (v28 = AGGraphGetWeakValue()) != 0))
  {
    v69 = AssociatedTypeWitness;
    v70 = v19;
    (*(v21 + 16))(v24, v28, a8);
    v79.n128_f64[0] = MaxX;
    v79.n128_u64[1] = a2;
    v80.n128_u64[0] = a3;
    v80.n128_u64[1] = a4;
    v83.origin.x = ContainerShapeContext.convert(_:to:)(*&v72, v77.n128_f64[0], v75.n128_f64[0], v78.n128_f64[0], v76.n128_f64[0]);
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
    MinX = CGRectGetMinX(v83);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = v26;
    v84.size.height = v27;
    v72 = MinX - CGRectGetMinX(v84);
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    MinY = CGRectGetMinY(v85);
    v86.origin.x = 0.0;
    v86.origin.y = 0.0;
    v86.size.width = v26;
    v86.size.height = v27;
    v35 = MinY - CGRectGetMinY(v86);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = v26;
    v87.size.height = v27;
    MaxX = CGRectGetMaxX(v87);
    v88.origin.x = x;
    v88.origin.y = y;
    v88.size.width = width;
    v88.size.height = height;
    v36 = CGRectGetMaxX(v88);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = v26;
    v89.size.height = v27;
    MaxY = CGRectGetMaxY(v89);
    v90.origin.x = x;
    v90.origin.y = y;
    v90.size.width = width;
    v90.size.height = height;
    v38 = CGRectGetMaxY(v90);
    v39 = v72;
    if (v35 < v72)
    {
      v39 = v35;
    }

    if (MaxX - v36 < v39)
    {
      v39 = MaxX - v36;
    }

    v40 = MaxY - v38;
    if (v40 >= v39)
    {
      v40 = v39;
    }

    if (v40 < 0.0)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = v40;
    }

    v42 = v74;
    (*(v73 + 32))(a8, v73, v41);
    *&v91.origin.x = v77.n128_u64[0];
    *&v91.size.width = v78.n128_u64[0];
    *&v91.origin.y = v75.n128_u64[0];
    *&v91.size.height = v76.n128_u64[0];
    v92 = CGRectInset(v91, -v41, -v41);
    v43 = v92.origin.x;
    v44 = v92.origin.y;
    v45 = v92.size.width;
    v46 = v92.size.height;
    v47 = v69;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 24))(&v79, v47, v43, v44, v45, v46);
    v49 = v81;
    v50 = *(v70 + 8);
    v77 = v79;
    v78 = v80;
    v50(v42, v47);
    (*(v21 + 8))(v24, a8);
    v51 = a6->i64[0];
    v52 = a6->i64[1];
    v53 = a6[1].i64[0];
    v54 = a6[1].i64[1];
    v55 = v78;
    *a6 = v77;
    a6[1] = v55;
    v56 = a6[2].u8[0];
    a6[2].i8[0] = v49;
    return outlined consume of Path?(v51, v52, v53, v54, v56);
  }

  else
  {
    *&v93.origin.x = v77.n128_u64[0];
    *&v93.size.width = v78.n128_u64[0];
    *&v93.origin.y = v75.n128_u64[0];
    *&v93.size.height = v76.n128_u64[0];
    IsNull = CGRectIsNull(v93);
    v59.i64[0] = v77.n128_u64[0];
    v60.i64[0] = v78.n128_u64[0];
    v60.i64[1] = v76.n128_u64[0];
    if (IsNull)
    {
      v61 = 6;
    }

    else
    {
      v61 = 0;
    }

    if (IsNull)
    {
      v62 = -1;
    }

    else
    {
      v62 = 0;
    }

    v63 = vdupq_n_s64(v62);
    v59.i64[1] = v75.n128_u64[0];
    v64 = a6->i64[0];
    v65 = a6->i64[1];
    v66 = a6[1].i64[0];
    v67 = a6[1].i64[1];
    *a6 = vbicq_s8(v59, v63);
    a6[1] = vbicq_s8(v60, v63);
    v68 = a6[2].u8[0];
    a6[2].i8[0] = v61;

    return outlined consume of Path?(v64, v65, v66, v67, v68);
  }
}

uint64_t outlined consume of ContentTransition?(uint64_t result, uint64_t a2)
{
  if (BYTE6(a2) != 2)
  {
    return outlined consume of ContentTransition.Storage(result, a2, SBYTE5(a2));
  }

  return result;
}

double ProtobufDecoder.value<A>(fromBinaryPlist:type:)@<D0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15 = a5;
  v7 = type metadata accessor for Optional();
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  v10 = type metadata accessor for Array();
  v18 = a4;
  swift_getWitnessTable(MEMORY[0x1E69E6330], v10, &v18);
  v11 = v17;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v11)
  {
    v12 = v16;
    swift_getWitnessTable(MEMORY[0x1E69E6340], v10);
    Collection.first.getter();
    v13 = *(a3 - 8);
    if ((*(v13 + 48))(v9, 1, a3) != 1)
    {

      (*(v13 + 32))(v15, v9, a3);

      return result;
    }

    (*(v12 + 8))(v9, v7);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }

  return result;
}

void closure #1 in DisplayList.Item.init(from:)(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 2143289344;
  *(v5 + 36) = 1;
  v6 = v5 | 0x1000000000000000;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 < v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v7 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v7)
        {
          goto LABEL_52;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_53;
      }

      if (v10 <= 7)
      {
        goto LABEL_52;
      }

LABEL_11:
      if (v10 >> 3 == 2)
      {
        if ((v10 & 7) != 0)
        {
          if ((v10 & 7) != 2)
          {
            goto LABEL_52;
          }

          v10 = ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_53;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v22 = a1[1] + v10;
          if (v8 < v22)
          {
LABEL_52:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_53:
            outlined consume of DisplayList.Content.Value(v6);
            return;
          }

          a1[3] = 16;
          a1[4] = v22;
        }

        v23 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_53;
        }

        v9 = v23;
        goto LABEL_4;
      }

      if (v10 >> 3 == 1)
      {
        if ((v10 & 7) != 2)
        {
          goto LABEL_52;
        }

        v12 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        *(v12 + 2) = v15 + 1;
        *&v12[8 * v15 + 32] = v8;
        a1[5] = v12;
        v16 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_53;
        }

        if (v16 < 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          __break(1u);
          v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          v31 = *(v30 + 2);
          if (v31)
          {
            v28 = v31 - 1;
            v29 = *&v30[8 * v28 + 32];
            *(v30 + 2) = v28;
            a1[5] = v30;
            a1[2] = v29;
            goto LABEL_53;
          }

          __break(1u);
          return;
        }

        v17 = a1[1] + v16;
        if (v8 < v17)
        {
          goto LABEL_52;
        }

        a1[2] = v17;
        DisplayList.Content.Value.init(from:)(a1, &v32);
        v18 = a1[5];
        if (!*(v18 + 2))
        {
          goto LABEL_57;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v19 = *(v18 + 2);
          if (!v19)
          {
LABEL_49:
            __break(1u);
            break;
          }
        }

        v20 = v19 - 1;
        v8 = *&v18[8 * v20 + 32];
        *(v18 + 2) = v20;
        a1[5] = v18;
        a1[2] = v8;
        v21 = v32;
        outlined consume of DisplayList.Content.Value(v6);
        v6 = v21;
      }

      else
      {
        v24 = v10 & 7;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            v26 = ProtobufDecoder.decodeVarint()(v10);
            if (v2)
            {
              goto LABEL_53;
            }

            if (v26 < 0)
            {
              goto LABEL_59;
            }

            v25 = a1[1] + v26;
            if (v8 < v25)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_52;
            }

            v25 = a1[1] + 4;
            if (v8 < v25)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          if ((v10 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v10);
            if (v2)
            {
              goto LABEL_53;
            }

            goto LABEL_4;
          }

          if (v24 != 1)
          {
            goto LABEL_52;
          }

          v25 = a1[1] + 8;
          if (v8 < v25)
          {
            goto LABEL_52;
          }
        }

        a1[1] = v25;
      }

LABEL_4:
      v7 = a1[1];
      if (v7 >= v8)
      {
        v27 = v9;
        goto LABEL_51;
      }
    }
  }

  v27 = 0;
LABEL_51:
  a1[3] = 0;
  *a2 = v6;
  a2[1] = v27;
  a2[2] = 0;
  a2[3] = 0;
  outlined copy of DisplayList.Content.Value(v6);
  outlined consume of DisplayList.Content.Value(v6);
}

void DisplayList.Content.Value.init(from:)(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 2143289344;
  *(v6 + 36) = 1;
  v7 = v6 | 0x1000000000000000;
  v8 = a1[1];
  v9 = a1[2];
  if (v8 >= v9)
  {
    goto LABEL_226;
  }

  v143 = 0;
  v10 = 1;
  v134 = a2;
  while (2)
  {
    v11 = a1[3];
    if (v11)
    {
      v12 = a1[4];
      if (v8 < v12)
      {
        goto LABEL_10;
      }

      if (v12 < v8)
      {
        goto LABEL_227;
      }

      a1[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v3)
    {
      goto LABEL_228;
    }

    if (v11 < 8)
    {
LABEL_227:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_228:
      outlined consume of DisplayList.Content.Value(v7);
      return;
    }

LABEL_10:
    switch(v11 >> 3)
    {
      case 1uLL:
        v13 = v11;
        v14 = swift_allocObject();
        if ((v13 & 7) != 2)
        {
          goto LABEL_231;
        }

        v15 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
          v15 = isUniquelyReferenced_nonNull_native;
        }

        v18 = *(v15 + 2);
        v17 = *(v15 + 3);
        if (v18 >= v17 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
          v15 = isUniquelyReferenced_nonNull_native;
        }

        *(v15 + 2) = v18 + 1;
        *&v15[8 * v18 + 32] = v9;
        a1[5] = v15;
        v19 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v3)
        {
          goto LABEL_236;
        }

        if (v19 < 0)
        {
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          JUMPOUT(0x18D34A0CCLL);
        }

        v20 = a1[1] + v19;
        a2 = v134;
        if (v9 < v20)
        {
LABEL_231:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v20;
        specialized Color.ResolvedHDR.init(from:)(a1, &v141);
        v21 = a1[5];
        if (!*(v21 + 2))
        {
          goto LABEL_270;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = *(v21 + 2);
          if (!v22)
          {
            goto LABEL_275;
          }
        }

        else
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v22 = *(v21 + 2);
          if (!v22)
          {
            goto LABEL_275;
          }
        }

        v23 = v22 - 1;
        v9 = *&v21[8 * v23 + 32];
        *(v21 + 2) = v23;
        a1[5] = v21;
        outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v24 = v142;
        *(v14 + 16) = v141;
        *(v14 + 32) = v24;
        *(v14 + 36) = 1;
        v7 = v14 | 0x1000000000000000;
        goto LABEL_139;
      case 2uLL:
        v68 = v11;
        v69 = swift_allocObject();
        if ((v68 & 7) != 2)
        {
          goto LABEL_229;
        }

        v70 = a1[5];
        v71 = swift_isUniquelyReferenced_nonNull_native();
        if ((v71 & 1) == 0)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
          v70 = v71;
        }

        v73 = *(v70 + 2);
        v72 = *(v70 + 3);
        if (v73 >= v72 >> 1)
        {
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
          v70 = v71;
        }

        *(v70 + 2) = v73 + 1;
        *&v70[8 * v73 + 32] = v9;
        a1[5] = v70;
        v74 = ProtobufDecoder.decodeVarint()(v71);
        if (v3)
        {
          goto LABEL_236;
        }

        if (v74 < 0)
        {
          goto LABEL_250;
        }

        v75 = a1[1] + v74;
        a2 = v134;
        if (v9 < v75)
        {
LABEL_229:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v75;
        GraphicsImage.init(from:)(a1, v69 + 16);
        v76 = a1[5];
        if (!*(v76 + 2))
        {
          goto LABEL_265;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v77 = *(v76 + 2);
          if (!v77)
          {
            goto LABEL_279;
          }
        }

        else
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew()(v76);
          v77 = *(v76 + 2);
          if (!v77)
          {
            goto LABEL_279;
          }
        }

        v78 = v77 - 1;
        v9 = *&v76[8 * v78 + 32];
        *(v76 + 2) = v78;
        a1[5] = v76;
        outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v69 | 0x3000000000000000;
        goto LABEL_139;
      case 3uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_228;
        }

        closure #2 in DisplayList.Content.Value.init(from:)(a1, v140);
        v3 = 0;
        if (*(a1[5] + 2))
        {
          goto LABEL_87;
        }

        goto LABEL_257;
      case 4uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_228;
        }

        closure #5 in DisplayList.Content.Value.init(from:)(a1, v140);
        v3 = 0;
        if (!*(a1[5] + 2))
        {
          goto LABEL_258;
        }

        v61 = specialized Array._customRemoveLast()();
        if (!v61)
        {
          v61 = specialized Array.remove(at:)(*(a1[5] + 2) - 1);
        }

        v9 = v61;
        a1[2] = v61;
        v62 = v140[0];
        v64 = v140[1];
        v63 = v140[2];
        if (ResolvedStyledText.needsDynamicRenderingInArchive.getter())
        {
          v65 = swift_allocObject();
          v66 = ++lastIdentity;
          outlined consume of DisplayList.Content.Value(v7);
          *(v65 + 40) = &type metadata for DynamicTextViewFactory;
          *(v65 + 48) = &protocol witness table for DynamicTextViewFactory;
          v67 = swift_allocObject();
          *(v65 + 16) = v67;
          *(v67 + 16) = v62;
          *(v67 + 24) = v64;
          *(v67 + 32) = v63;
          v7 = v65 | 0xD000000000000000;
          *(v67 + 40) = v66;
          a2 = v134;
        }

        else
        {
          outlined consume of DisplayList.Content.Value(v7);
          v126 = swift_allocObject();
          *(v126 + 16) = v62;
          *(v126 + 24) = 0;
          *(v126 + 32) = 0;
          v7 = v126 | 0xA000000000000000;
          *(v126 + 40) = v64;
          *(v126 + 48) = v63;
        }

        goto LABEL_139;
      case 5uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v41 = a1[5];
        v42 = swift_isUniquelyReferenced_nonNull_native();
        if ((v42 & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
          v41 = v42;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
          v41 = v42;
        }

        *(v41 + 2) = v44 + 1;
        *&v41[8 * v44 + 32] = v9;
        a1[5] = v41;
        v45 = ProtobufDecoder.decodeVarint()(v42);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v45 < 0)
        {
          goto LABEL_246;
        }

        v46 = a1[1] + v45;
        if (v9 < v46)
        {
          goto LABEL_227;
        }

        a1[2] = v46;
        closure #4 in DisplayList.Content.Value.init(from:)(a1, v140);
        v33 = a1[5];
        if (!*(v33 + 2))
        {
          goto LABEL_267;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_278;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_278;
          }
        }

LABEL_137:
        v81 = v34 - 1;
        v9 = *&v33[8 * v81 + 32];
        *(v33 + 2) = v81;
        a1[5] = v33;
LABEL_138:
        outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v140[0];
        goto LABEL_139;
      case 6uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_228;
        }

        closure #6 in DisplayList.Content.Value.init(from:)(a1, v140);
        v3 = 0;
        v33 = a1[5];
        if (!*(v33 + 2))
        {
          goto LABEL_259;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_261;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_261;
          }
        }

        goto LABEL_137;
      case 7uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v95 = a1[5];
        v96 = swift_isUniquelyReferenced_nonNull_native();
        if ((v96 & 1) == 0)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
          v95 = v96;
        }

        v98 = *(v95 + 2);
        v97 = *(v95 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v95);
          v95 = v96;
        }

        *(v95 + 2) = v98 + 1;
        *&v95[8 * v98 + 32] = v9;
        a1[5] = v95;
        v99 = ProtobufDecoder.decodeVarint()(v96);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v99 < 0)
        {
          goto LABEL_253;
        }

        v100 = a1[1] + v99;
        if (v9 < v100)
        {
          goto LABEL_227;
        }

        a1[2] = v100;
        CodableViewFactory.init(from:)(a1, v140);
        v101 = a1[5];
        if (!*(v101 + 2))
        {
          goto LABEL_264;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v102 = *(v101 + 2);
          if (!v102)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
          v102 = *(v101 + 2);
          if (!v102)
          {
            goto LABEL_272;
          }
        }

        v103 = v102 - 1;
        v9 = *&v101[8 * v103 + 32];
        *(v101 + 2) = v103;
        a1[5] = v101;
        a1[2] = v9;
        v104 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(v140, v139);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory, &protocol descriptor for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _DisplayList_ViewFactory, &protocol descriptor for _DisplayList_ViewFactory);
        if (swift_dynamicCast())
        {
          outlined destroy of CodableViewFactory(v140);
          outlined consume of DisplayList.Content.Value(v7);
          outlined init with take of AnyTrackedValue(&v136, v104 + 16);
          v7 = v104 | 0xD000000000000000;
          goto LABEL_139;
        }

        lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
        v136 = 0u;
        v137 = 0u;
        v138 = 0;
        swift_allocError();
        *v128 = 0;
        v128[1] = 0;
        swift_willThrow();
        outlined consume of DisplayList.Content.Value(v7);
        outlined destroy of CodableViewFactory(v140);
        if (*(&v137 + 1))
        {
          v129 = &lazy cache variable for type metadata for _DisplayList_ViewFactory?;
          v130 = &lazy cache variable for type metadata for _DisplayList_ViewFactory;
          v131 = &protocol descriptor for _DisplayList_ViewFactory;
          goto LABEL_243;
        }

LABEL_244:
        swift_deallocUninitializedObject();
        return;
      case 8uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_228;
        }

        closure #8 in DisplayList.Content.Value.init(from:)(a1, v140);
        v3 = 0;
        v33 = a1[5];
        if (!*(v33 + 2))
        {
          goto LABEL_255;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_260;
          }
        }

        goto LABEL_137;
      case 9uLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v116 = a1[5];
        v117 = swift_isUniquelyReferenced_nonNull_native();
        if ((v117 & 1) == 0)
        {
          v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
          v116 = v117;
        }

        v119 = *(v116 + 2);
        v118 = *(v116 + 3);
        if (v119 >= v118 >> 1)
        {
          v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1, v116);
          v116 = v117;
        }

        *(v116 + 2) = v119 + 1;
        *&v116[8 * v119 + 32] = v9;
        a1[5] = v116;
        v120 = ProtobufDecoder.decodeVarint()(v117);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v120 < 0)
        {
          goto LABEL_254;
        }

        v121 = a1[1] + v120;
        if (v9 < v121)
        {
          goto LABEL_227;
        }

        a1[2] = v121;
        CodableViewFactory.init(from:)(a1, v140);
        v122 = a1[5];
        if (!*(v122 + 2))
        {
          goto LABEL_266;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v123 = *(v122 + 2);
          if (!v123)
          {
            goto LABEL_225;
          }

          goto LABEL_189;
        }

        v122 = specialized _ArrayBuffer._consumeAndCreateNew()(v122);
        v123 = *(v122 + 2);
        if (v123)
        {
LABEL_189:
          v124 = v123 - 1;
          v9 = *&v122[8 * v124 + 32];
          *(v122 + 2) = v124;
          a1[5] = v122;
          a1[2] = v9;
          v125 = swift_allocObject();
          outlined init with copy of AnyTrackedValue(v140, v139);
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory, &protocol descriptor for AnyViewFactory);
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformViewFactory, &protocol descriptor for PlatformViewFactory);
          if (swift_dynamicCast())
          {
            outlined destroy of CodableViewFactory(v140);
            outlined consume of DisplayList.Content.Value(v7);
            outlined init with take of AnyTrackedValue(&v136, v125 + 16);
            v7 = v125 | 0x8000000000000000;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v136 = 0u;
          v137 = 0u;
          v138 = 0;
          swift_allocError();
          *v133 = 0;
          v133[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Content.Value(v7);
          outlined destroy of CodableViewFactory(v140);
          if (!*(&v137 + 1))
          {
            goto LABEL_244;
          }

          v129 = &lazy cache variable for type metadata for PlatformViewFactory?;
          v130 = &lazy cache variable for type metadata for PlatformViewFactory;
          v131 = &protocol descriptor for PlatformViewFactory;
LABEL_243:
          outlined destroy of _DisplayList_AnyEffectAnimator?(&v136, v129, v130, v131);
          goto LABEL_244;
        }

LABEL_225:
        __break(1u);
        break;
      case 0xAuLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v47 = a1[5];
        v48 = swift_isUniquelyReferenced_nonNull_native();
        if ((v48 & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
          v47 = v48;
        }

        v50 = *(v47 + 2);
        v49 = *(v47 + 3);
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v47);
          v47 = v48;
        }

        *(v47 + 2) = v50 + 1;
        *&v47[8 * v50 + 32] = v9;
        a1[5] = v47;
        v51 = ProtobufDecoder.decodeVarint()(v48);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v51 < 0)
        {
          goto LABEL_251;
        }

        v52 = a1[1] + v51;
        if (v9 < v52)
        {
          goto LABEL_227;
        }

        a1[2] = v52;
        CodableViewFactory.init(from:)(a1, v140);
        v53 = a1[5];
        if (!*(v53 + 2))
        {
          goto LABEL_263;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = *(v53 + 2);
          if (!v54)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
          v54 = *(v53 + 2);
          if (!v54)
          {
            goto LABEL_276;
          }
        }

        v55 = v54 - 1;
        v9 = *&v53[8 * v55 + 32];
        *(v53 + 2) = v55;
        a1[5] = v53;
        a1[2] = v9;
        v56 = swift_allocObject();
        outlined init with copy of AnyTrackedValue(v140, v139);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AnyViewFactory, &protocol descriptor for AnyViewFactory);
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PlatformLayerFactory, &protocol descriptor for PlatformLayerFactory);
        if ((swift_dynamicCast() & 1) == 0)
        {
          lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
          v136 = 0u;
          v137 = 0u;
          v138 = 0;
          swift_allocError();
          *v132 = 0;
          v132[1] = 0;
          swift_willThrow();
          outlined consume of DisplayList.Content.Value(v7);
          outlined destroy of CodableViewFactory(v140);
          if (!*(&v137 + 1))
          {
            goto LABEL_244;
          }

          v129 = &lazy cache variable for type metadata for PlatformLayerFactory?;
          v130 = &lazy cache variable for type metadata for PlatformLayerFactory;
          v131 = &protocol descriptor for PlatformLayerFactory;
          goto LABEL_243;
        }

        outlined destroy of CodableViewFactory(v140);
        outlined consume of DisplayList.Content.Value(v7);
        outlined init with take of AnyTrackedValue(&v136, v56 + 16);
        v7 = v56 | 0x9000000000000000;
LABEL_139:
        if (v7 >> 60 == 1)
        {
          v82 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v135 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          outlined consume of DisplayList.Content.Value(v7);
          v83 = swift_allocObject();
          *(v83 + 16) = v135;
          *(v83 + 32) = v82;
          *(v83 + 36) = v10;
          *(v83 + 37) = v143;
          v7 = v83 | 0x1000000000000000;
        }

        v8 = a1[1];
        if (v8 >= v9)
        {
          break;
        }

        continue;
      case 0xBuLL:
        v105 = v11;
        v106 = swift_allocObject();
        if ((v105 & 7) != 2)
        {
          goto LABEL_233;
        }

        v107 = a1[5];
        v108 = swift_isUniquelyReferenced_nonNull_native();
        if ((v108 & 1) == 0)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v107 + 2) + 1, 1, v107);
          v107 = v108;
        }

        v110 = *(v107 + 2);
        v109 = *(v107 + 3);
        if (v110 >= v109 >> 1)
        {
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v107);
          v107 = v108;
        }

        *(v107 + 2) = v110 + 1;
        *&v107[8 * v110 + 32] = v9;
        a1[5] = v107;
        v111 = ProtobufDecoder.decodeVarint()(v108);
        if (v3)
        {
          goto LABEL_236;
        }

        if (v111 < 0)
        {
          goto LABEL_249;
        }

        v112 = a1[1] + v111;
        a2 = v134;
        if (v9 < v112)
        {
LABEL_233:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_236:
          outlined consume of DisplayList.Content.Value(v7);
          goto LABEL_244;
        }

        a1[2] = v112;
        BackdropEffect.init(from:)(a1, v106 + 16);
        v113 = a1[5];
        if (!*(v113 + 2))
        {
          goto LABEL_268;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v114 = *(v113 + 2);
          if (!v114)
          {
            goto LABEL_273;
          }
        }

        else
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew()(v113);
          v114 = *(v113 + 2);
          if (!v114)
          {
            goto LABEL_273;
          }
        }

        v115 = v114 - 1;
        v9 = *&v113[8 * v115 + 32];
        *(v113 + 2) = v115;
        a1[5] = v113;
        outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v106;
        goto LABEL_139;
      case 0xCuLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v35 = a1[5];
        v36 = swift_isUniquelyReferenced_nonNull_native();
        if ((v36 & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
          v35 = v36;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
          v35 = v36;
        }

        *(v35 + 2) = v38 + 1;
        *&v35[8 * v38 + 32] = v9;
        a1[5] = v35;
        v39 = ProtobufDecoder.decodeVarint()(v36);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v39 < 0)
        {
          goto LABEL_247;
        }

        v40 = a1[1] + v39;
        a2 = v134;
        if (v9 < v40)
        {
          goto LABEL_227;
        }

        a1[2] = v40;
        closure #1 in DisplayList.Content.Value.init(from:)(a1, v140);
        v33 = a1[5];
        if (!*(v33 + 2))
        {
          goto LABEL_271;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_277;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_277;
          }
        }

        goto LABEL_137;
      case 0xDuLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_228;
        }

        closure #7 in DisplayList.Content.Value.init(from:)(a1, v140);
        v3 = 0;
        if (!*(a1[5] + 2))
        {
          goto LABEL_256;
        }

LABEL_87:
        v57 = specialized Array._customRemoveLast()();
        if (!v57)
        {
          v57 = specialized Array.remove(at:)(*(a1[5] + 2) - 1);
        }

        v9 = v57;
        goto LABEL_138;
      case 0xEuLL:
        v84 = v11;
        v85 = swift_allocObject();
        if ((v84 & 7) != 2)
        {
          goto LABEL_235;
        }

        v86 = a1[5];
        v87 = swift_isUniquelyReferenced_nonNull_native();
        if ((v87 & 1) == 0)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v86 + 2) + 1, 1, v86);
          v86 = v87;
        }

        v89 = *(v86 + 2);
        v88 = *(v86 + 3);
        if (v89 >= v88 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v86);
          v86 = v87;
        }

        *(v86 + 2) = v89 + 1;
        *&v86[8 * v89 + 32] = v9;
        a1[5] = v86;
        v90 = ProtobufDecoder.decodeVarint()(v87);
        if (v3)
        {
          goto LABEL_236;
        }

        if (v90 < 0)
        {
          goto LABEL_252;
        }

        v91 = a1[1] + v90;
        a2 = v134;
        if (v9 < v91)
        {
LABEL_235:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_236;
        }

        a1[2] = v91;
        SDFShape.init(from:)(a1, (v85 + 16));
        v92 = a1[5];
        if (!*(v92 + 2))
        {
          goto LABEL_262;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v93 = *(v92 + 2);
          if (!v93)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
          v93 = *(v92 + 2);
          if (!v93)
          {
            goto LABEL_280;
          }
        }

        v94 = v93 - 1;
        v9 = *&v92[8 * v94 + 32];
        *(v92 + 2) = v94;
        a1[5] = v92;
        outlined consume of DisplayList.Content.Value(v7);
        a1[2] = v9;
        v7 = v85 | 0x5000000000000000;
        goto LABEL_139;
      case 0xFuLL:
        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v27 = a1[5];
        v28 = swift_isUniquelyReferenced_nonNull_native();
        if ((v28 & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
          v27 = v28;
        }

        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
          v27 = v28;
        }

        *(v27 + 2) = v30 + 1;
        *&v27[8 * v30 + 32] = v9;
        a1[5] = v27;
        v31 = ProtobufDecoder.decodeVarint()(v28);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v31 < 0)
        {
          goto LABEL_248;
        }

        v32 = a1[1] + v31;
        if (v9 < v32)
        {
          goto LABEL_227;
        }

        a1[2] = v32;
        closure #3 in DisplayList.Content.Value.init(from:)(a1, v140);
        v33 = a1[5];
        if (!*(v33 + 2))
        {
          goto LABEL_269;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_274;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_274;
          }
        }

        goto LABEL_137;
      case 0x10uLL:
        if ((v11 & 7) == 0)
        {
          goto LABEL_96;
        }

        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v11 = ProtobufDecoder.decodeVarint()(v11);
        if (v3)
        {
          goto LABEL_228;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_282;
        }

        v58 = a1[1] + v11;
        if (v9 < v58)
        {
          goto LABEL_227;
        }

        a1[3] = 128;
        a1[4] = v58;
LABEL_96:
        v59 = ProtobufDecoder.decodeVarint()(v11);
        if (v3)
        {
          goto LABEL_228;
        }

        if (v59 == 2)
        {
          v60 = 2;
        }

        else
        {
          v60 = 0;
        }

        if (v59 == 1)
        {
          v60 = 1;
        }

        v143 = v60;
        goto LABEL_139;
      case 0x11uLL:
        if ((v11 & 7) == 0)
        {
          goto LABEL_29;
        }

        if ((v11 & 7) != 2)
        {
          goto LABEL_227;
        }

        v11 = ProtobufDecoder.decodeVarint()(v11);
        if (v3)
        {
          goto LABEL_228;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_281;
        }

        v25 = a1[1] + v11;
        if (v9 < v25)
        {
          goto LABEL_227;
        }

        a1[3] = 136;
        a1[4] = v25;
LABEL_29:
        v26 = ProtobufDecoder.decodeVarint()(v11);
        if (v3)
        {
          goto LABEL_228;
        }

        v10 = v26 != 0;
        goto LABEL_139;
      default:
        v79 = v11 & 7;
        if (v79 > 1)
        {
          if (v79 == 2)
          {
            v127 = ProtobufDecoder.decodeVarint()(v11);
            if (v3)
            {
              goto LABEL_228;
            }

            if (v127 < 0)
            {
              goto LABEL_283;
            }

            v80 = a1[1] + v127;
          }

          else
          {
            if (v79 != 5)
            {
              goto LABEL_227;
            }

            v80 = a1[1] + 4;
          }
        }

        else
        {
          if ((v11 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v11);
            if (v3)
            {
              goto LABEL_228;
            }

            goto LABEL_139;
          }

          if (v79 != 1)
          {
            goto LABEL_227;
          }

          v80 = a1[1] + 8;
        }

        if (v9 < v80)
        {
          goto LABEL_227;
        }

        a1[1] = v80;
        goto LABEL_139;
    }

    break;
  }

LABEL_226:
  a1[3] = 0;
  *a2 = v7;
  return;
}

uint64_t sub_18D34A110()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A150()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A188()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18D34A1C0()
{

  return swift_deallocObject();
}

uint64_t sub_18D34A20C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*(v0 + 16), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18D34A250()
{

  return swift_deallocObject();
}

void CodableResolvedPaint.init(from:)(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v136 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
LABEL_198:
    *(a1 + 24) = 0;
    goto LABEL_199;
  }

  v7 = 0;
  while (2)
  {
    v8 = *(a1 + 24);
    if (!v8)
    {
LABEL_7:
      v8 = ProtobufDecoder.decodeVarint()(v8);
      if (v2)
      {
        goto LABEL_204;
      }

      if (v8 < 8)
      {
        break;
      }

      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    if (v5 >= v9)
    {
      if (v9 < v5)
      {
        break;
      }

      *(a1 + 24) = 0;
      goto LABEL_7;
    }

LABEL_9:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 5)
    {
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 == 5)
            {
              goto LABEL_14;
            }

LABEL_165:
            v111 = v8 & 7;
            if (v111 > 1)
            {
              if (v111 == 2)
              {
                v113 = ProtobufDecoder.decodeVarint()(v8);
                if (v2)
                {
                  goto LABEL_204;
                }

                if (v113 < 0)
                {
                  goto LABEL_234;
                }

                v112 = *(a1 + 8) + v113;
                if (v6 < v112)
                {
                  break;
                }
              }

              else
              {
                if (v111 != 5)
                {
                  break;
                }

                v112 = *(a1 + 8) + 4;
                if (v6 < v112)
                {
                  break;
                }
              }
            }

            else
            {
              if ((v8 & 7) == 0)
              {
                ProtobufDecoder.decodeVarint()(v8);
                if (!v2)
                {
                  goto LABEL_162;
                }

                goto LABEL_204;
              }

              if (v111 != 1)
              {
                break;
              }

              v112 = *(a1 + 8) + 8;
              if (v6 < v112)
              {
                break;
              }
            }

            *(a1 + 8) = v112;
            goto LABEL_162;
          }

          goto LABEL_92;
        }

        goto LABEL_124;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_165;
        }

        goto LABEL_44;
      }

LABEL_112:
      if ((v8 & 7) != 2)
      {
        break;
      }

      v68 = *(a1 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 16) + 1, 1, v68);
        v68 = isUniquelyReferenced_nonNull_native;
      }

      v71 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v71 >= v70 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v68);
        v68 = isUniquelyReferenced_nonNull_native;
      }

      *(v68 + 16) = v71 + 1;
      *(v68 + 8 * v71 + 32) = v6;
      *(a1 + 40) = v68;
      v72 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_204;
      }

      if ((v72 & 0x8000000000000000) == 0)
      {
        v73 = *(a1 + 8) + v72;
        if (v6 >= v73)
        {
          *(a1 + 16) = v73;
          specialized Color.ResolvedHDR.init(from:)(a1, &v117);
          v74 = *(a1 + 40);
          if (!*(v74 + 2))
          {
            goto LABEL_221;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v75 = *(v74 + 2);
            if (!v75)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v74 = specialized _ArrayBuffer._consumeAndCreateNew()(v74);
            v75 = *(v74 + 2);
            if (!v75)
            {
              goto LABEL_226;
            }
          }

          v76 = v75 - 1;
          v6 = *&v74[8 * v76 + 32];
          *(v74 + 2) = v76;

          *(a1 + 40) = v74;
          *(a1 + 16) = v6;
          v77 = v118;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for _AnyResolvedPaint);
          v7 = swift_allocObject();
          *(v7 + 16) = v117;
          *(v7 + 32) = v77;
          *(v7 + 36) = 1;
          goto LABEL_161;
        }

        break;
      }

      goto LABEL_211;
    }

    if (v8 >> 3 > 7)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          if (v10 == 10)
          {
            goto LABEL_30;
          }

          goto LABEL_165;
        }

        goto LABEL_149;
      }

LABEL_136:
      if ((v8 & 7) != 2)
      {
        break;
      }

      v88 = *(a1 + 40);
      v89 = swift_isUniquelyReferenced_nonNull_native();
      if ((v89 & 1) == 0)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 16) + 1, 1, v88);
        v88 = v89;
      }

      v91 = *(v88 + 16);
      v90 = *(v88 + 24);
      if (v91 >= v90 >> 1)
      {
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1, v88);
        v88 = v89;
      }

      *(v88 + 16) = v91 + 1;
      *(v88 + 8 * v91 + 32) = v6;
      *(a1 + 40) = v88;
      v92 = ProtobufDecoder.decodeVarint()(v89);
      if (v2)
      {
        goto LABEL_204;
      }

      if ((v92 & 0x8000000000000000) == 0)
      {
        v93 = *(a1 + 8) + v92;
        if (v6 < v93)
        {
          break;
        }

        *(a1 + 16) = v93;
        Shader.ResolvedShader.init(from:)(a1, &v133);
        v94 = *(a1 + 40);
        if (*(v94 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v95 = *(v94 + 2);
            if (!v95)
            {
              goto LABEL_227;
            }
          }

          else
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
            v95 = *(v94 + 2);
            if (!v95)
            {
              goto LABEL_227;
            }
          }

          v96 = v95 - 1;
          v6 = *&v94[8 * v96 + 32];
          *(v94 + 2) = v96;

          *(a1 + 40) = v94;
          *(a1 + 16) = v6;
          v98 = v133;
          v97 = v134;
          v99 = DWORD2(v134);
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _AnyResolvedPaint);
          v7 = swift_allocObject();
          *(v7 + 16) = v98;
          *(v7 + 32) = v97;
          *(v7 + 40) = v99;
          goto LABEL_161;
        }

        goto LABEL_217;
      }

      goto LABEL_213;
    }

    if (v10 == 6)
    {
      goto LABEL_106;
    }

    if (v10 != 7)
    {
      goto LABEL_165;
    }

    if (v7)
    {
      if ((v8 & 7) != 2)
      {
        break;
      }

      v41 = *(a1 + 40);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      if ((v42 & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1, v41);
        v41 = v42;
      }

      v44 = *(v41 + 16);
      v43 = *(v41 + 24);
      if (v44 >= v43 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v41);
        v41 = v42;
      }

      *(v41 + 16) = v44 + 1;
      *(v41 + 8 * v44 + 32) = v6;
      *(a1 + 40) = v41;
      v45 = ProtobufDecoder.decodeVarint()(v42);
      if (v2)
      {
        goto LABEL_204;
      }

      if (v45 < 0)
      {
        goto LABEL_231;
      }

      v46 = *(a1 + 8) + v45;
      if (v6 < v46)
      {
        break;
      }

      *(a1 + 16) = v46;
      v133 = 0u;
      v134 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v133, a1, &v116);
      v47 = *(a1 + 40);
      if (!*(v47 + 2))
      {
        goto LABEL_232;
      }

      v114 = v134;
      v115 = v133;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v48 = *(v47 + 2);
        if (!v48)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
        v48 = *(v47 + 2);
        if (!v48)
        {
          goto LABEL_233;
        }
      }

      v49 = v48 - 1;
      v6 = *&v47[8 * v49 + 32];
      *(v47 + 2) = v49;
      *(a1 + 40) = v47;
      *(a1 + 16) = v6;
      v133 = v115;
      v134 = v114;
      v135 = 0;
      (*(*v7 + 152))(&v133, &unk_1F0057070, &protocol witness table for Visitor #1 in AnyResolvedPaint.anchorRect(_:));

      v7 = v135;
      if (v135)
      {
        goto LABEL_161;
      }

      __break(1u);
      return;
    }

    do
    {
      v50 = *(a1 + 8);
      if (v50 >= v6)
      {
        goto LABEL_198;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v51 = *(a1 + 32);
        if (v50 < v51)
        {
          goto LABEL_79;
        }

        if (v51 < v50)
        {
          goto LABEL_203;
        }

        *(a1 + 24) = 0;
      }

      v8 = ProtobufDecoder.decodeVarint()(v8);
      if (v2)
      {
        goto LABEL_204;
      }

      if (v8 < 8)
      {
        goto LABEL_203;
      }

LABEL_79:
      v52 = v8 >> 3;
    }

    while (v8 >> 3 == 7);
    if (v8 >> 3 <= 4)
    {
      if (v8 >> 3 > 2)
      {
        if (v52 == 3)
        {
LABEL_124:
          if ((v8 & 7) != 2)
          {
            break;
          }

          v78 = *(a1 + 40);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          if ((v79 & 1) == 0)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 16) + 1, 1, v78);
            v78 = v79;
          }

          v81 = *(v78 + 16);
          v80 = *(v78 + 24);
          if (v81 >= v80 >> 1)
          {
            v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v78);
            v78 = v79;
          }

          *(v78 + 16) = v81 + 1;
          *(v78 + 8 * v81 + 32) = v6;
          *(a1 + 40) = v78;
          v82 = ProtobufDecoder.decodeVarint()(v79);
          if (v2)
          {
            goto LABEL_204;
          }

          if ((v82 & 0x8000000000000000) == 0)
          {
            v83 = *(a1 + 8) + v82;
            if (v6 >= v83)
            {
              *(a1 + 16) = v83;
              RadialGradient._Paint.init(from:)(a1, v121);
              v84 = *(a1 + 40);
              if (!*(v84 + 2))
              {
                goto LABEL_222;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v85 = *(v84 + 2);
                if (!v85)
                {
                  goto LABEL_225;
                }
              }

              else
              {
                v84 = specialized _ArrayBuffer._consumeAndCreateNew()(v84);
                v85 = *(v84 + 2);
                if (!v85)
                {
                  goto LABEL_225;
                }
              }

              v86 = v85 - 1;
              v6 = *&v84[8 * v86 + 32];
              *(v84 + 2) = v86;

              *(a1 + 40) = v84;
              *(a1 + 16) = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              v7 = swift_allocObject();
              v87 = v121[1];
              *(v7 + 16) = v121[0];
              *(v7 + 32) = v87;
              *(v7 + 48) = v122[0];
              *(v7 + 57) = *(v122 + 9);
              goto LABEL_161;
            }

            break;
          }

LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        if (v52 == 4)
        {
LABEL_92:
          if ((v8 & 7) != 2)
          {
            break;
          }

          v53 = *(a1 + 40);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          if ((v54 & 1) == 0)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1, v53);
            v53 = v54;
          }

          v56 = *(v53 + 16);
          v55 = *(v53 + 24);
          if (v56 >= v55 >> 1)
          {
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v53);
            v53 = v54;
          }

          *(v53 + 16) = v56 + 1;
          *(v53 + 8 * v56 + 32) = v6;
          *(a1 + 40) = v53;
          v57 = ProtobufDecoder.decodeVarint()(v54);
          if (v2)
          {
            goto LABEL_204;
          }

          if ((v57 & 0x8000000000000000) == 0)
          {
            v58 = *(a1 + 8) + v57;
            if (v6 < v58)
            {
              break;
            }

            *(a1 + 16) = v58;
            AngularGradient._Paint.init(from:)(a1, v123);
            v59 = *(a1 + 40);
            if (*(v59 + 2))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v60 = *(v59 + 2);
                if (!v60)
                {
                  goto LABEL_230;
                }
              }

              else
              {
                v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
                v60 = *(v59 + 2);
                if (!v60)
                {
                  goto LABEL_230;
                }
              }

              v61 = v60 - 1;
              v6 = *&v59[8 * v61 + 32];
              *(v59 + 2) = v61;

              *(a1 + 40) = v59;
              *(a1 + 16) = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              v7 = swift_allocObject();
              v62 = v123[1];
              *(v7 + 16) = v123[0];
              *(v7 + 32) = v62;
              *(v7 + 48) = v124[0];
              *(v7 + 57) = *(v124 + 9);
              goto LABEL_161;
            }

            goto LABEL_216;
          }

          goto LABEL_208;
        }
      }

      else
      {
        if (v52 == 1)
        {
          goto LABEL_112;
        }

        if (v52 == 2)
        {
LABEL_44:
          if ((v8 & 7) != 2)
          {
            break;
          }

          v31 = *(a1 + 40);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          if ((v32 & 1) == 0)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
            v31 = v32;
          }

          v34 = *(v31 + 16);
          v33 = *(v31 + 24);
          if (v34 >= v33 >> 1)
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
            v31 = v32;
          }

          *(v31 + 16) = v34 + 1;
          *(v31 + 8 * v34 + 32) = v6;
          *(a1 + 40) = v31;
          v35 = ProtobufDecoder.decodeVarint()(v32);
          if (v2)
          {
            goto LABEL_204;
          }

          if ((v35 & 0x8000000000000000) == 0)
          {
            v36 = *(a1 + 8) + v35;
            if (v6 < v36)
            {
              break;
            }

            *(a1 + 16) = v36;
            LinearGradient._Paint.init(from:)(a1, v119);
            v37 = *(a1 + 40);
            if (*(v37 + 2))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v38 = *(v37 + 2);
                if (!v38)
                {
                  goto LABEL_224;
                }
              }

              else
              {
                v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
                v38 = *(v37 + 2);
                if (!v38)
                {
                  goto LABEL_224;
                }
              }

              v39 = v38 - 1;
              v6 = *&v37[8 * v39 + 32];
              *(v37 + 2) = v39;

              *(a1 + 40) = v37;
              *(a1 + 16) = v6;
              type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
              v7 = swift_allocObject();
              v40 = v119[1];
              *(v7 + 16) = v119[0];
              *(v7 + 32) = v40;
              *(v7 + 48) = v120[0];
              *(v7 + 57) = *(v120 + 9);
              goto LABEL_161;
            }

            goto LABEL_215;
          }

          goto LABEL_209;
        }
      }

      goto LABEL_164;
    }

    if (v8 >> 3 <= 7)
    {
      if (v52 == 5)
      {
LABEL_14:
        if ((v8 & 7) != 2)
        {
          break;
        }

        v11 = *(a1 + 40);
        v12 = swift_isUniquelyReferenced_nonNull_native();
        if ((v12 & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
          v11 = v12;
        }

        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
          v11 = v12;
        }

        *(v11 + 16) = v14 + 1;
        *(v11 + 8 * v14 + 32) = v6;
        *(a1 + 40) = v11;
        v15 = ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_204;
        }

        if ((v15 & 0x8000000000000000) == 0)
        {
          v16 = *(a1 + 8) + v15;
          if (v6 < v16)
          {
            break;
          }

          *(a1 + 16) = v16;
          EllipticalGradient._Paint.init(from:)(a1, v125);
          v17 = *(a1 + 40);
          if (*(v17 + 2))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v18 = *(v17 + 2);
              if (!v18)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
              v18 = *(v17 + 2);
              if (!v18)
              {
                goto LABEL_229;
              }
            }

            v19 = v18 - 1;
            v6 = *&v17[8 * v19 + 32];
            *(v17 + 2) = v19;

            *(a1 + 40) = v17;
            *(a1 + 16) = v6;
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v7 = swift_allocObject();
            v20 = v125[1];
            *(v7 + 16) = v125[0];
            *(v7 + 32) = v20;
            *(v7 + 48) = v126[0];
            *(v7 + 57) = *(v126 + 9);
            goto LABEL_161;
          }

          goto LABEL_218;
        }

        goto LABEL_210;
      }

      if (v52 != 6)
      {
        goto LABEL_164;
      }

LABEL_106:
      if ((v8 & 7) != 2)
      {
        break;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
        goto LABEL_204;
      }

      ImagePaint._Paint.init(from:)(a1, v129);
      if (*(*(a1 + 40) + 16))
      {
        v63 = specialized Array._customRemoveLast()();
        if (!v63)
        {
          v63 = specialized Array.remove(at:)(*(*(a1 + 40) + 16) - 1);
        }

        v6 = v63;

        *(a1 + 16) = v6;
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint, type metadata accessor for _AnyResolvedPaint);
        v7 = swift_allocObject();
        v64 = v129[7];
        *(v7 + 112) = v129[6];
        *(v7 + 128) = v64;
        *(v7 + 144) = v129[8];
        *(v7 + 160) = v130;
        v65 = v129[3];
        *(v7 + 48) = v129[2];
        *(v7 + 64) = v65;
        v66 = v129[5];
        *(v7 + 80) = v129[4];
        *(v7 + 96) = v66;
        v67 = v129[1];
        *(v7 + 16) = v129[0];
        *(v7 + 32) = v67;
        goto LABEL_161;
      }

      goto LABEL_214;
    }

    if (v52 == 8)
    {
      goto LABEL_136;
    }

    if (v52 == 9)
    {
LABEL_149:
      if ((v8 & 7) != 2)
      {
        break;
      }

      v100 = *(a1 + 40);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      if ((v101 & 1) == 0)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 16) + 1, 1, v100);
        v100 = v101;
      }

      v103 = *(v100 + 16);
      v102 = *(v100 + 24);
      if (v103 >= v102 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v100);
        v100 = v101;
      }

      *(v100 + 16) = v103 + 1;
      *(v100 + 8 * v103 + 32) = v6;
      *(a1 + 40) = v100;
      v104 = ProtobufDecoder.decodeVarint()(v101);
      if (v2)
      {
        goto LABEL_204;
      }

      if ((v104 & 0x8000000000000000) == 0)
      {
        v105 = *(a1 + 8) + v104;
        if (v6 < v105)
        {
          break;
        }

        *(a1 + 16) = v105;
        MeshGradient._Paint.init(from:)(a1, v131);
        v106 = *(a1 + 40);
        if (*(v106 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v107 = *(v106 + 2);
            if (!v107)
            {
              goto LABEL_223;
            }
          }

          else
          {
            v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106);
            v107 = *(v106 + 2);
            if (!v107)
            {
              goto LABEL_223;
            }
          }

          v108 = v107 - 1;
          v6 = *&v106[8 * v108 + 32];
          *(v106 + 2) = v108;

          *(a1 + 40) = v106;
          *(a1 + 16) = v6;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _AnyResolvedPaint);
          v7 = swift_allocObject();
          v109 = v131[3];
          *(v7 + 48) = v131[2];
          *(v7 + 64) = v109;
          *(v7 + 80) = v132;
          v110 = v131[1];
          *(v7 + 16) = v131[0];
          *(v7 + 32) = v110;
          goto LABEL_161;
        }

LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      __break(1u);
      goto LABEL_207;
    }

    if (v52 != 10)
    {
LABEL_164:
      v7 = 0;
      goto LABEL_165;
    }

LABEL_30:
    if ((v8 & 7) != 2)
    {
      break;
    }

    v21 = *(a1 + 40);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    if ((v22 & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
      v21 = v22;
    }

    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v24 >= v23 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
      v21 = v22;
    }

    *(v21 + 16) = v24 + 1;
    *(v21 + 8 * v24 + 32) = v6;
    *(a1 + 40) = v21;
    v25 = ProtobufDecoder.decodeVarint()(v22);
    if (v2)
    {
      goto LABEL_204;
    }

    if (v25 < 0)
    {
      goto LABEL_212;
    }

    v26 = *(a1 + 8) + v25;
    if (v6 >= v26)
    {
      *(a1 + 16) = v26;
      LinearGradient.AbsolutePaint.init(from:)(a1, v127);
      v27 = *(a1 + 40);
      if (*(v27 + 2))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v28 = *(v27 + 2);
          if (v28)
          {
            goto LABEL_41;
          }

LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
        v28 = *(v27 + 2);
        if (!v28)
        {
          goto LABEL_228;
        }

LABEL_41:
        v29 = v28 - 1;
        v6 = *&v27[8 * v29 + 32];
        *(v27 + 2) = v29;

        *(a1 + 40) = v27;
        *(a1 + 16) = v6;
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
        v7 = swift_allocObject();
        v30 = v127[1];
        *(v7 + 16) = v127[0];
        *(v7 + 32) = v30;
        *(v7 + 48) = v128[0];
        *(v7 + 57) = *(v128 + 9);
LABEL_161:
        v2 = 0;
LABEL_162:
        v5 = *(a1 + 8);
        if (v5 >= v6)
        {
          *(a1 + 24) = 0;
          if (v7)
          {
            *a2 = v7;
            return;
          }

LABEL_199:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return;
        }

        continue;
      }

LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
      goto LABEL_228;
    }

    break;
  }

LABEL_203:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_204:
}

void CodableViewFactory.init(from:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = xmmword_18DDBA7E0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 >= v9)
  {
LABEL_53:
    v10 = 0;
    *(a1 + 24) = 0;
    v13 = 0xC000000000000000;
LABEL_54:
    outlined consume of Data._Representation(v10, v13);
    *(a2 + 3) = &type metadata for EmptyViewFactory;
    *(a2 + 4) = &protocol witness table for EmptyViewFactory;
    return;
  }

  v48 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0xC000000000000000;
  do
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = *(a1 + 32);
      if (v8 < v15)
      {
        goto LABEL_11;
      }

      if (v15 < v8)
      {
        goto LABEL_55;
      }

      *(a1 + 24) = 0;
    }

    v6 = ProtobufDecoder.decodeVarint()(v6);
    if (v2)
    {
      goto LABEL_65;
    }

    v14 = v6;
    if (v6 < 8)
    {
      goto LABEL_55;
    }

LABEL_11:
    if (v14 >> 3 == 2)
    {
      if ((v14 & 7) != 2)
      {
        goto LABEL_55;
      }

      v26 = *(a1 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
      }

      *(v26 + 16) = v29 + 1;
      *(v26 + 8 * v29 + 32) = v9;
      *(a1 + 40) = v26;
      v30 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {

        goto LABEL_72;
      }

      if (v30 < 0)
      {
        goto LABEL_75;
      }

      v31 = *(a1 + 8) + v30;
      if (v9 < v31)
      {

        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        goto LABEL_71;
      }

      *(a1 + 16) = v31;
      Data.init(from:)(a1);
      a2 = *(a1 + 40);
      if (!*(a2 + 2))
      {
        goto LABEL_76;
      }

      v10 = v32;
      v13 = v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v34 = *(a2 + 2);
        if (!v34)
        {
          goto LABEL_52;
        }
      }

      else
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
        v34 = *(a2 + 2);
        if (!v34)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      v35 = v34 - 1;
      v9 = *&a2[8 * v35 + 32];
      *(a2 + 2) = v35;
      *(a1 + 40) = a2;
      outlined consume of Data._Representation(v50, *(&v50 + 1));
      *(a1 + 16) = v9;
      *&v50 = v10;
      *(&v50 + 1) = v13;
    }

    else if (v14 >> 3 == 1)
    {

      if ((v14 & 7) != 2)
      {
        goto LABEL_56;
      }

      v17 = ProtobufDecoder.decodeVarint()(v16);
      if (v2)
      {
        goto LABEL_57;
      }

      v18 = v17;
      if (v17 < 0)
      {
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
LABEL_80:
        swift_once();
        goto LABEL_60;
      }

      v19 = *(a1 + 8);
      if (v9 < v19 + v17)
      {
        goto LABEL_56;
      }

      *(a1 + 8) = v19 + v17;
      if (v17)
      {
        v12 = *a1;
        v20 = v19 - [*a1 bytes];
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v22;
        if (__OFADD__(v20, v18))
        {
          goto LABEL_77;
        }

        if (v20 + v18 < v20)
        {
          goto LABEL_78;
        }

        v23 = v21;
        v18 = Data._Representation.subscript.getter();
        v25 = v24;
        outlined consume of Data._Representation(v23, v11);
      }

      else
      {
        v25 = 0xC000000000000000;
      }

      static String.Encoding.utf8.getter();
      v38 = String.init(data:encoding:)();
      if (!v39)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        outlined consume of Data._Representation(v18, v25);
LABEL_57:
        outlined consume of Data._Representation(v10, v13);
        return;
      }

      v11 = v38;
      v12 = v39;
      outlined consume of Data._Representation(v18, v25);
    }

    else
    {
      v36 = v14 & 7;
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v6 = ProtobufDecoder.decodeVarint()(v6);
          if (v2)
          {
LABEL_65:
            outlined consume of Data._Representation(v10, v13);

            return;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_79;
          }

          v37 = *(a1 + 8) + v6;
          if (v9 < v37)
          {
LABEL_55:

LABEL_56:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_57;
          }
        }

        else
        {
          if (v36 != 5)
          {
            goto LABEL_55;
          }

          v37 = *(a1 + 8) + 4;
          if (v9 < v37)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_3;
      }

      if ((v14 & 7) != 0)
      {
        if (v36 != 1)
        {
          goto LABEL_55;
        }

        v37 = *(a1 + 8) + 8;
        if (v9 < v37)
        {
          goto LABEL_55;
        }

LABEL_3:
        *(a1 + 8) = v37;
        goto LABEL_4;
      }

      v6 = ProtobufDecoder.decodeVarint()(v6);
      if (v2)
      {
        goto LABEL_65;
      }
    }

LABEL_4:
    v8 = *(a1 + 8);
  }

  while (v8 < v9);
  *(a1 + 24) = 0;
  if (!v12)
  {
    a2 = v48;
    goto LABEL_54;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_80;
  }

LABEL_60:
  os_unfair_lock_lock(&static ViewDecoders.shared);
  v40 = off_1EAB0F5C8;
  if (!*(off_1EAB0F5C8 + 2) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12), (v42 & 1) == 0))
  {
    os_unfair_lock_unlock(&static ViewDecoders.shared);
    goto LABEL_67;
  }

  v43 = (v40[7] + 24 * v41);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  os_unfair_lock_unlock(&static ViewDecoders.shared);
  if (!v44)
  {
LABEL_67:
    lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error();
    swift_allocError();
    *v47 = v11;
    v47[1] = v12;
LABEL_71:
    swift_willThrow();
    goto LABEL_72;
  }

  specialized project #1 <A>(type:) in CodableViewFactory.init(from:)(a1, &v50, v44, v45, v46, v49);
  if (!v2)
  {
    outlined consume of Data._Representation(v50, *(&v50 + 1));
    outlined init with take of AnyTrackedValue(v49, v48);
    return;
  }

LABEL_72:
  outlined consume of Data._Representation(v50, *(&v50 + 1));
}

void Data.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    *(a1 + 24) = 0;
    return;
  }

  v67 = (v59 - v7);
  v68 = v5;
  v63 = v8;
  v11 = 0;
  v65 = *MEMORY[0x1E6969028];
  v64 = (v6 + 104);
  v61 = (v6 + 88);
  v62 = (v6 + 16);
  v60 = *MEMORY[0x1E6969010];
  v66 = (v6 + 8);
  v12 = 0xF000000000000000;
  v13 = &unk_1EAB0F000;
  while (1)
  {
    while (1)
    {
      v14 = *(a1 + 24);
      if (v14)
      {
        v15 = *(a1 + 32);
        if (v9 < v15)
        {
          goto LABEL_13;
        }

        if (v15 < v9)
        {
          goto LABEL_64;
        }

        *(a1 + 24) = 0;
      }

      v14 = ProtobufDecoder.decodeVarint()(v14);
      if (v1)
      {
        goto LABEL_65;
      }

      if (v14 <= 7)
      {
        goto LABEL_64;
      }

LABEL_13:
      v16 = v14 & 7;
      if (v14 >> 3 == 2)
      {
        break;
      }

      if (v14 >> 3 == 1)
      {
        if ((v14 & 7) != 0)
        {
          if (v16 != 2)
          {
            goto LABEL_64;
          }

          v14 = ProtobufDecoder.decodeVarint()(v14);
          if (v1)
          {
            goto LABEL_65;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v17 = *(a1 + 8) + v14;
          if (v10 < v17)
          {
LABEL_64:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_65:
            outlined consume of Data?(v11, v12);
            return;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v17;
        }

        v18 = ProtobufDecoder.decodeVarint()(v14);
        if (v1)
        {
          goto LABEL_65;
        }

        v19 = v18;
        if (v18 < 0)
        {
          goto LABEL_64;
        }

        v20 = *(a1 + 48);
        if (v13[167] != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for CodingUserInfoKey();
        v22 = __swift_project_value_buffer(v21, static ArchiveReader.readerKey);
        if (*(v20 + 16))
        {
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
          if (v24)
          {
            outlined init with copy of Any(*(v20 + 56) + 32 * v23, v70);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v25 = v71;
              if (v19 < v71[5])
              {
                if (!v71[2])
                {
                  goto LABEL_74;
                }

                v26 = (v71[4] + 16 * v19);
                v27 = *v26;
                if (*v26 < 0)
                {
                  goto LABEL_72;
                }

                v69 = v71[2];
                v28 = v26[1];

                if (v28 < 0)
                {
                  goto LABEL_73;
                }

                v29 = swift_allocObject();
                v59[3] = v25;
                *(v29 + 16) = v25;
                v31 = v67;
                v30 = v68;
                *v67 = partial apply for closure #1 in ArchiveReader.subscript.getter;
                v31[1] = v29;
                (*v64)(v31, v65, v30);
                v32 = Data.Deallocator._deallocator.getter();
                v59[2] = v33;
                if (v28)
                {
                  v59[1] = v32;
                  type metadata accessor for __DataStorage();
                  swift_allocObject();

                  v69 = v28;
                  v34 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
                  v35 = v63;
                  v36 = v68;
                  (*v62)(v63, v31, v68);
                  v37 = (*v61)(v35, v36);
                  if (v37 == v60)
                  {
                    v38 = __DataStorage._capacity.modify();
                    *v39 |= 0x8000000000000000;
                    v38(v70, 0);
                  }

                  else
                  {
                    (*v66)(v35, v36);
                  }

                  v13 = &unk_1EAB0F000;
                  v56 = specialized Data._Representation.init(_:count:)(v34, v69);
                  v57 = v58;
                  v31 = v67;
                }

                else
                {
                  v55 = Data.Deallocator._deallocator.getter();
                  v55(v69 + v27, 0);

                  v56 = 0;
                  v57 = 0xC000000000000000;
                  v13 = &unk_1EAB0F000;
                }

                outlined consume of Data?(v11, v12);

                (*v66)(v31, v68);

                v11 = v56;
                v12 = v57;
                v1 = 0;
                goto LABEL_6;
              }
            }
          }
        }

        outlined consume of Data?(v11, v12);
        v11 = 0;
        v12 = 0xF000000000000000;
      }

      else
      {
        if ((v14 & 7) > 1)
        {
          if (v16 == 2)
          {
            v54 = ProtobufDecoder.decodeVarint()(v14);
            if (v1)
            {
              goto LABEL_65;
            }

            if (v54 < 0)
            {
              goto LABEL_71;
            }

            v53 = *(a1 + 8) + v54;
            if (v10 < v53)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v16 != 5)
            {
              goto LABEL_64;
            }

            v53 = *(a1 + 8) + 4;
            if (v10 < v53)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          if ((v14 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v14);
            if (v1)
            {
              goto LABEL_65;
            }

            goto LABEL_6;
          }

          if (v16 != 1)
          {
            goto LABEL_64;
          }

          v53 = *(a1 + 8) + 8;
          if (v10 < v53)
          {
            goto LABEL_64;
          }
        }

        *(a1 + 8) = v53;
      }

LABEL_6:
      v9 = *(a1 + 8);
      if (v9 >= v10)
      {
        *(a1 + 24) = 0;
        return;
      }
    }

    if (v16 != 2)
    {
      goto LABEL_64;
    }

    v40 = ProtobufDecoder.decodeVarint()(v14);
    if (v1)
    {
      goto LABEL_65;
    }

    v41 = v40;
    if (v40 < 0)
    {
      break;
    }

    v42 = *(a1 + 8);
    if (v10 < v42 + v40)
    {
      goto LABEL_64;
    }

    v69 = 0;
    *(a1 + 8) = v42 + v40;
    if (v40)
    {
      v43 = v10;
      v44 = v13;
      v45 = v42 - [*a1 bytes];
      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
      if (__OFADD__(v45, v41))
      {
        goto LABEL_68;
      }

      if (v45 + v41 < v45)
      {
        goto LABEL_69;
      }

      v49 = v46;
      v50 = Data._Representation.subscript.getter();
      v52 = v51;
      outlined consume of Data?(v11, v12);
      outlined consume of Data._Representation(v49, v48);
      v11 = v50;
      v12 = v52;
      v1 = v69;
      v13 = v44;
      v10 = v43;
      goto LABEL_6;
    }

    outlined consume of Data?(v11, v12);
    v11 = 0;
    v9 = *(a1 + 8);
    v12 = 0xC000000000000000;
    v1 = v69;
    if (v9 >= v10)
    {
      *(a1 + 24) = 0;
      return;
    }
  }

  __break(1u);
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
}

double outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void closure #3 in DisplayList.Effect.init(from:)(void **a1, uint64_t *a2)
{
  v5 = type metadata accessor for AccessibilityNodeAttachment(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v10 = a1[2];
  while (1)
  {
    while (1)
    {
      if (v9 >= v10)
      {
        a1[3] = 0;
        return;
      }

      v11 = a1[3];
      if (v11)
      {
        v12 = a1[4];
        if (v9 < v12)
        {
          goto LABEL_9;
        }

        if (v12 < v9)
        {
          goto LABEL_44;
        }

        a1[3] = 0;
      }

      v11 = ProtobufDecoder.decodeVarint()(v11);
      if (v2)
      {
        return;
      }

      if (v11 <= 7)
      {
LABEL_44:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

LABEL_9:
      v13 = v11 & 7;
      if ((v11 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        break;
      }

      if ((v11 & 7) > 1)
      {
        if (v13 == 2)
        {
          v27 = ProtobufDecoder.decodeVarint()(v11);
          if (v2)
          {
            return;
          }

          if (v27 < 0)
          {
            goto LABEL_50;
          }

          v9 = a1[1] + v27;
          if (v10 < v9)
          {
            goto LABEL_44;
          }

          a1[1] = v9;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_44;
          }

          v9 = a1[1] + 4;
          if (v10 < v9)
          {
            goto LABEL_44;
          }

          a1[1] = v9;
        }
      }

      else if ((v11 & 7) != 0)
      {
        if (v13 != 1)
        {
          goto LABEL_44;
        }

        v9 = a1[1] + 8;
        if (v10 < v9)
        {
          goto LABEL_44;
        }

        a1[1] = v9;
      }

      else
      {
        ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          return;
        }

        v9 = a1[1];
      }
    }

    if (v13 != 2)
    {
      goto LABEL_44;
    }

    v14 = a1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      v14 = isUniquelyReferenced_nonNull_native;
    }

    *(v14 + 2) = v17 + 1;
    *&v14[8 * v17 + 32] = v10;
    a1[5] = v14;
    v18 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return;
    }

    if (v18 < 0)
    {
      break;
    }

    v19 = a1[1] + v18;
    if (v10 < v19)
    {
      goto LABEL_44;
    }

    a1[2] = v19;
    AccessibilityNodeAttachment.init(from:)(a1, v8);
    v20 = a1[5];
    if (!*(v20 + 2))
    {
      goto LABEL_48;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_49;
      }
    }

    v22 = v21 - 1;
    v10 = *&v20[8 * v22 + 32];
    *(v20 + 2) = v22;
    a1[5] = v20;
    a1[2] = v10;
    v23 = *a2;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v23;
    if ((v24 & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      *a2 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
      *a2 = v23;
    }

    v23[2] = v26 + 1;
    outlined init with take of AccessibilityNodeAttachment(v8, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26);
    v9 = a1[1];
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  __break(1u);
  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v31 = *(v30 + 2);
  if (v31)
  {
    v28 = v31 - 1;
    v29 = *&v30[8 * v28 + 32];
    *(v30 + 2) = v28;
    a1[5] = v30;
    a1[2] = v29;
  }

  else
  {
    __break(1u);
  }
}

uint64_t AccessibilityNodeAttachment.init(from:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CodableAccessibilityAttachmentStorage(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v66 - v12;
  type metadata accessor for CodableAccessibilityAttachmentStorage?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v78 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v76 = v9;
  v23 = *(v9 + 56);
  v21 = v9 + 56;
  v22 = v23;
  v79 = v8;
  (v23)(&v66 - v19, 1, 1, v8, v18);
  v24 = a1[1];
  v25 = a1[2];
  if (v24 < v25)
  {
    v68 = v22;
    v69 = v21;
    v77 = 0;
    v26 = 0;
    v71 = v20;
    v67 = v7;
    while (1)
    {
      v29 = a1[3];
      if (v29)
      {
        v30 = a1[4];
        if (v24 < v30)
        {
          goto LABEL_14;
        }

        if (v30 < v24)
        {
          goto LABEL_76;
        }

        a1[3] = 0;
      }

      v29 = ProtobufDecoder.decodeVarint()(v29);
      if (v2)
      {
        goto LABEL_77;
      }

      if (v29 < 8)
      {
        goto LABEL_76;
      }

LABEL_14:
      v31 = v29 >> 3;
      if (v29 >> 3 > 2)
      {
        if (v31 == 3)
        {
          if ((v29 & 7) != 2)
          {
            goto LABEL_76;
          }

          v46 = *a1;
          v25 = a1[2];
          v20 = a1[6];
          v47 = ProtobufDecoder.decodeVarint()(v29);
          if (v2)
          {
            goto LABEL_83;
          }

          v3 = v47;
          if (v47 < 0)
          {
            goto LABEL_85;
          }

          v48 = a1[1];
          if (v25 < &v48[v47])
          {
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_83:
            v28 = v71;
            return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          }

          a1[1] = &v48[v47];
          v49 = v46;

          v70 = v49;
          if (v3)
          {
            v50 = v48 - [v49 bytes];
            v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;
            if (__OFADD__(v50, v3))
            {
              goto LABEL_87;
            }

            if (&v3[v50] < v50)
            {
              goto LABEL_88;
            }

            v54 = v51;
            v55 = Data._Representation.subscript.getter();
            v3 = v56;
            outlined consume of Data._Representation(v54, v53);
          }

          else
          {
            v55 = 0;
            v3 = 0xC000000000000000;
          }

          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();

          dispatch thunk of PropertyListDecoder.userInfo.setter();
          type metadata accessor for [AccessibilityNodeAttachment.Kind?](0);
          lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A], type metadata accessor for [AccessibilityNodeAttachment.Kind?], lazy protocol witness table accessor for type AccessibilityNodeAttachment.Kind? and conformance <A> A?, MEMORY[0x1E69E6330]);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!*(v80 + 16))
          {

            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();

            outlined consume of Data._Representation(v55, v3);
            goto LABEL_83;
          }

          v26 = *(v80 + 32);

          outlined consume of Data._Representation(v55, v3);

          v20 = v71;
          v7 = v67;
          goto LABEL_7;
        }

        if (v31 == 4)
        {
          if ((v29 & 7) != 0)
          {
            if ((v29 & 7) != 2)
            {
              goto LABEL_76;
            }

            v29 = ProtobufDecoder.decodeVarint()(v29);
            if (v2)
            {
              goto LABEL_77;
            }

            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_90;
            }

            v34 = a1[1] + v29;
            if (v25 < v34)
            {
LABEL_76:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
LABEL_77:
              v28 = v20;
              return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
            }

            a1[3] = 32;
            a1[4] = v34;
          }

          v35 = ProtobufDecoder.decodeVarint()(v29);
          if (v2)
          {
            goto LABEL_77;
          }

          v26 = v35 == 1;
          goto LABEL_7;
        }
      }

      else
      {
        if (v31 == 1)
        {
          if ((v29 & 7) != 2)
          {
            goto LABEL_76;
          }

          v3 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
            v3 = isUniquelyReferenced_nonNull_native;
          }

          v40 = *(v3 + 2);
          v39 = *(v3 + 3);
          if (v40 >= v39 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v3);
            v3 = isUniquelyReferenced_nonNull_native;
          }

          *(v3 + 2) = v40 + 1;
          *&v3[8 * v40 + 32] = v25;
          a1[5] = v3;
          v41 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            goto LABEL_77;
          }

          if (v41 < 0)
          {
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v65 = *(result + 16);
            if (v65)
            {
              v63 = v65 - 1;
              v64 = *(result + 8 * v63 + 32);
              *(result + 16) = v63;
              a1[5] = result;
              result = outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
              a1[2] = v64;
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          v42 = a1[1] + v41;
          if (v25 < v42)
          {
            goto LABEL_76;
          }

          a1[2] = v42;
          _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0cd10AttachmentF0V2V2V_AI2V3VTt1g5(a1, v7);
          v27 = 0;
          v43 = v74;
          outlined init with take of CodableAccessibilityAttachmentStorage(v7, v74, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
          outlined init with take of CodableAccessibilityAttachmentStorage(v43, v78, type metadata accessor for CodableAccessibilityAttachmentStorage);
          v3 = a1[5];
          if (!*(v3 + 2))
          {
            goto LABEL_86;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v44 = *(v3 + 2);
            if (!v44)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v44 = *(v3 + 2);
            if (!v44)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }
          }

          v45 = v44 - 1;
          v25 = *&v3[8 * v45 + 32];
          *(v3 + 2) = v45;
          a1[5] = v3;
          outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          a1[2] = v25;
          v3 = v78;
          v68(v78, 0, 1, v79);
          outlined init with take of CodableAccessibilityAttachmentStorage(v3, v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
          v2 = 0;
          goto LABEL_7;
        }

        if (v31 == 2)
        {
          if ((v29 & 7) != 0)
          {
            if ((v29 & 7) != 2)
            {
              goto LABEL_76;
            }

            v29 = ProtobufDecoder.decodeVarint()(v29);
            if (v2)
            {
              goto LABEL_77;
            }

            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_89;
            }

            v32 = a1[1] + v29;
            if (v25 < v32)
            {
              goto LABEL_76;
            }

            a1[3] = 16;
            a1[4] = v32;
          }

          v33 = ProtobufDecoder.decodeVarint()(v29);
          if (v2)
          {
            goto LABEL_77;
          }

          v77 = v33 != 0;
          goto LABEL_7;
        }
      }

      v36 = v29 & 7;
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v57 = ProtobufDecoder.decodeVarint()(v29);
          if (v2)
          {
            goto LABEL_77;
          }

          if (v57 < 0)
          {
            goto LABEL_91;
          }

          v37 = a1[1] + v57;
          if (v25 < v37)
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v36 != 5)
          {
            goto LABEL_76;
          }

          v37 = a1[1] + 4;
          if (v25 < v37)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_6;
      }

      if ((v29 & 7) != 0)
      {
        if (v36 != 1)
        {
          goto LABEL_76;
        }

        v37 = a1[1] + 8;
        if (v25 < v37)
        {
          goto LABEL_76;
        }

LABEL_6:
        a1[1] = v37;
        goto LABEL_7;
      }

      ProtobufDecoder.decodeVarint()(v29);
      if (v2)
      {
        goto LABEL_77;
      }

LABEL_7:
      v24 = a1[1];
      if (v24 >= v25)
      {
        goto LABEL_4;
      }
    }
  }

  v77 = 0;
  v26 = 0;
LABEL_4:
  a1[3] = 0;
  v27 = v75;
  outlined init with copy of AccessibilityNodeAttachment.Storage(v20, v75, type metadata accessor for CodableAccessibilityAttachmentStorage?);
  if ((*(v76 + 48))(v27, 1, v79) == 1)
  {
    outlined destroy of CodableAccessibilityAttachmentStorage(v27, type metadata accessor for CodableAccessibilityAttachmentStorage?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v28 = v20;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v28, type metadata accessor for CodableAccessibilityAttachmentStorage?);
  }

  else
  {
LABEL_75:
    outlined destroy of CodableAccessibilityAttachmentStorage(v20, type metadata accessor for CodableAccessibilityAttachmentStorage?);
    v58 = v27;
    v59 = v72;
    outlined init with take of CodableAccessibilityAttachmentStorage(v58, v72, type metadata accessor for CodableAccessibilityAttachmentStorage);
    v60 = v59;
    v61 = v73;
    outlined init with take of CodableAccessibilityAttachmentStorage(v60, v73, type metadata accessor for CodableAccessibilityAttachmentStorage);
    type metadata accessor for AccessibilityNodeAttachment.Storage(0);
    swift_storeEnumTagMultiPayload();
    result = type metadata accessor for AccessibilityNodeAttachment(0);
    *(v61 + *(result + 20)) = v77;
    *(v61 + *(result + 24)) = v26 & 1;
  }

  return result;
}

void type metadata accessor for LinkDestination.Configuration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18D34D3C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0cd10AttachmentF0V2V2V_AI2V3VTt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>(0);
  v16 = v15;
  v49 = *(v15 - 8);
  v52 = *(v49 + 56);
  v52(v14, 1, 1, v15);
  v17 = a1[1];
  v18 = a1[2];
  if (v17 >= v18)
  {
    goto LABEL_56;
  }

  v51 = v14;
  while (1)
  {
    v23 = a1[3];
    if (v23)
    {
      v24 = a1[4];
      if (v17 < v24)
      {
        goto LABEL_13;
      }

      if (v24 < v17)
      {
        goto LABEL_59;
      }

      a1[3] = 0;
    }

    v23 = ProtobufDecoder.decodeVarint()(v23);
    if (v2)
    {
      goto LABEL_60;
    }

    if (v23 < 8)
    {
      goto LABEL_59;
    }

LABEL_13:
    v25 = v23 & 7;
    if (v23 >> 3 == 3)
    {
      break;
    }

    if (v23 >> 3 == 2)
    {
      if (v25 != 2)
      {
        goto LABEL_59;
      }

      v26 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v26 + 16);
      v28 = *(v26 + 24);
      v3 = (v14 + 1);
      if (v14 >= v28 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v14 + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
      }

      *(v26 + 16) = v3;
      *(v26 + 8 * v14 + 32) = v18;
      a1[5] = v26;
      v29 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_62;
      }

      if (v29 < 0)
      {
        goto LABEL_68;
      }

      v30 = a1[1] + v29;
      v14 = v51;
      if (v18 < v30)
      {
LABEL_59:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_60;
      }

      a1[2] = v30;
      CodableAccessibilityAttachmentStorage.V2.init(from:)(a1, v9);
      v19 = a1[5];
      if (!*(v19 + 2))
      {
        goto LABEL_70;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_71;
        }
      }

      v21 = v20 - 1;
      v18 = *&v19[8 * v21 + 32];
      *(v19 + 2) = v21;
      a1[5] = v19;
      outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
      a1[2] = v18;
      swift_storeEnumTagMultiPayload();
      v52(v9, 0, 1, v16);
      v22 = v9;
      goto LABEL_5;
    }

    if ((v23 & 7) > 1)
    {
      if (v25 == 2)
      {
        v40 = ProtobufDecoder.decodeVarint()(v23);
        if (v2)
        {
          goto LABEL_60;
        }

        if (v40 < 0)
        {
          goto LABEL_72;
        }

        v39 = a1[1] + v40;
        if (v18 < v39)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v25 != 5)
        {
          goto LABEL_59;
        }

        v39 = a1[1] + 4;
        if (v18 < v39)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_53;
    }

    if ((v23 & 7) != 0)
    {
      if (v25 != 1)
      {
        goto LABEL_59;
      }

      v39 = a1[1] + 8;
      if (v18 < v39)
      {
        goto LABEL_59;
      }

LABEL_53:
      a1[1] = v39;
      goto LABEL_6;
    }

    ProtobufDecoder.decodeVarint()(v23);
    if (v2)
    {
      goto LABEL_60;
    }

LABEL_6:
    v17 = a1[1];
    if (v17 >= v18)
    {
      goto LABEL_56;
    }
  }

  if (v25 != 2)
  {
    goto LABEL_59;
  }

  v31 = a1[5];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  if ((v32 & 1) == 0)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
    v31 = v32;
  }

  v14 = *(v31 + 16);
  v33 = *(v31 + 24);
  v3 = (v14 + 1);
  if (v14 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v14 + 1, 1, v31);
    v31 = v32;
  }

  *(v31 + 16) = v3;
  *(v31 + 8 * v14 + 32) = v18;
  a1[5] = v31;
  v34 = ProtobufDecoder.decodeVarint()(v32);
  if (v2)
  {
LABEL_62:
    v14 = v51;
LABEL_60:
    v42 = v14;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v42, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  }

  if (v34 < 0)
  {
    __break(1u);
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
    __break(1u);
    do
    {
      __break(1u);
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v44 = *(v3 + 2);
      if (v44)
      {
        goto LABEL_66;
      }

      __break(1u);
      v3 = a1[5];
    }

    while (!*(v3 + 2));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v44 = *(v3 + 2);
      if (v44)
      {
LABEL_66:
        v45 = v44 - 1;
        v46 = *&v3[8 * v45 + 32];
        *(v3 + 2) = v45;
        a1[5] = v3;
        result = outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
        a1[2] = v46;
        return result;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
      v44 = *(result + 16);
      if (v44)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
    return result;
  }

  v35 = a1[1] + v34;
  v14 = v51;
  if (v18 < v35)
  {
    goto LABEL_59;
  }

  a1[2] = v35;
  CodableAccessibilityAttachmentStorage.V3.init(from:)(a1, v53);
  v36 = a1[5];
  if (!*(v36 + 2))
  {
    goto LABEL_69;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v37 = *(v36 + 2);
    if (!v37)
    {
      goto LABEL_55;
    }

    goto LABEL_38;
  }

  v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
  v37 = *(v36 + 2);
  if (v37)
  {
LABEL_38:
    v38 = v37 - 1;
    v18 = *&v36[8 * v38 + 32];
    *(v36 + 2) = v38;
    a1[5] = v36;
    outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    a1[2] = v18;
    v3 = v53;
    swift_storeEnumTagMultiPayload();
    v52(v3, 0, 1, v16);
    v22 = v3;
LABEL_5:
    outlined init with take of CodableAccessibilityAttachmentStorage(v22, v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    goto LABEL_6;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  a1[3] = 0;
  v41 = v50;
  outlined init with copy of AccessibilityNodeAttachment.Storage(v14, v50, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  if ((*(v49 + 48))(v41, 1, v16) == 1)
  {
    outlined destroy of CodableAccessibilityAttachmentStorage(v41, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v42 = v14;
    return outlined destroy of CodableAccessibilityAttachmentStorage(v42, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  }

  outlined destroy of CodableAccessibilityAttachmentStorage(v14, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>?);
  return outlined init with take of CodableAccessibilityAttachmentStorage(v41, v48, type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>);
}

void CodableAccessibilityAttachmentStorage.VBase.init(from:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkDestination.Configuration?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v155 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v156 = 0u;
  *(a2 + 34) = -1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 58) = -1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 82) = -1;
  *(a2 + 80) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  _s7SwiftUI43CodableAccessibilityDataSeriesConfigurationVSgWOi0_(v163);
  memcpy((a2 + 144), v163, 0x108uLL);
  v9 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v10 = *(v9 + 52);
  v11 = type metadata accessor for LinkDestination.Configuration(0);
  v152 = *(v11 - 8);
  v153 = v11;
  v12 = *(v152 + 56);
  v159 = v10;
  v150 = v12;
  v151 = v152 + 56;
  (v12)(a2 + v10, 1, 1);
  v158 = *(v9 + 56);
  *(a2 + v158) = 0;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v13 < v14)
  {
    v146 = 0;
    v157 = 0;
    v147 = 1;
    v148 = 1;
    while (1)
    {
      v23 = *(a1 + 24);
      if (v23)
      {
        v24 = *(a1 + 32);
        if (v13 < v24)
        {
          goto LABEL_15;
        }

        if (v24 < v13)
        {
          goto LABEL_179;
        }

        *(a1 + 24) = 0;
      }

      v23 = ProtobufDecoder.decodeVarint()(v23);
      if (v2)
      {
        goto LABEL_180;
      }

      if (v23 <= 7)
      {
        goto LABEL_179;
      }

LABEL_15:
      v25 = v23 >> 3;
      if (v23 >> 3 <= 5)
      {
        if (v23 >> 3 <= 2)
        {
          if (v25 == 1)
          {
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v58 = ProtobufDecoder.decodeVarint()(v23);
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v58;
            if (v58 < 0)
            {
              goto LABEL_207;
            }

            v59 = *(a1 + 8);
            if (v14 < v59 + v58)
            {
              goto LABEL_179;
            }

            v164 = v14;
            *(a1 + 8) = v59 + v58;
            if (v58)
            {
              v60 = v59 - [*a1 bytes];
              v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v62;
              if (__OFADD__(v60, v15))
              {
                goto LABEL_224;
              }

              if ((v60 + v15) < v60)
              {
                goto LABEL_229;
              }

              v64 = v61;
              v15 = Data._Representation.subscript.getter();
              v66 = v65;
              outlined consume of Data._Representation(v64, v63);
            }

            else
            {
              v66 = 0xC000000000000000;
            }

            static String.Encoding.utf8.getter();
            v124 = String.init(data:encoding:)();
            if (!v125)
            {
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              outlined consume of Data._Representation(v15, v66);
              goto LABEL_180;
            }

            v126 = v124;
            v127 = v125;
            outlined consume of Data._Representation(v15, v66);

            *a2 = v126;
            *(a2 + 8) = v127;
            v157 = v127;
            goto LABEL_155;
          }

          if (v25 == 2)
          {
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v50 = *(a1 + 40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16) + 1, 1, v50);
              v50 = isUniquelyReferenced_nonNull_native;
            }

            v53 = *(v50 + 16);
            v52 = *(v50 + 24);
            if (v53 >= v52 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
              v50 = isUniquelyReferenced_nonNull_native;
            }

            *(v50 + 16) = v53 + 1;
            *(v50 + 8 * v53 + 32) = v14;
            *(a1 + 40) = v50;
            v15 = a1;
            v54 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
            if (v2)
            {
              goto LABEL_180;
            }

            if (v54 < 0)
            {
              goto LABEL_210;
            }

            v55 = *(a1 + 8) + v54;
            if (v14 < v55)
            {
              goto LABEL_179;
            }

            *(a1 + 16) = v55;
            _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v162);
            v15 = *(a1 + 40);
            if (!*(v15 + 16))
            {
              goto LABEL_218;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v56 = *(v15 + 16);
              if (!v56)
              {
                goto LABEL_220;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v56 = *(v15 + 16);
              if (!v56)
              {
                goto LABEL_220;
              }
            }

            v57 = v56 - 1;
            v14 = *(v15 + 8 * v57 + 32);
            *(v15 + 16) = v57;
            *(a1 + 40) = v15;
            *(a1 + 16) = v14;
            v19 = *(&v162[0] + 1);
            v18 = *&v162[0];
            LODWORD(v164) = LOWORD(v162[1]);
            v20 = BYTE2(v162[1]) != 0;
            v22 = a2 + 32;
            v21 = *(a2 + 32);
LABEL_7:
            outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(v22 - 16), *(v22 - 8), v21 | (*(v22 + 2) << 16));
            *(v22 - 16) = v18;
            *(v22 - 8) = v19;
            *(v22 + 2) = v20;
            *v22 = v164;
            goto LABEL_8;
          }
        }

        else
        {
          switch(v25)
          {
            case 3uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v90 = *(a1 + 40);
              v91 = swift_isUniquelyReferenced_nonNull_native();
              if ((v91 & 1) == 0)
              {
                v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
                v90 = v91;
              }

              v93 = *(v90 + 16);
              v92 = *(v90 + 24);
              if (v93 >= v92 >> 1)
              {
                v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v90);
                v90 = v91;
              }

              *(v90 + 16) = v93 + 1;
              *(v90 + 8 * v93 + 32) = v14;
              *(a1 + 40) = v90;
              v15 = a1;
              v94 = ProtobufDecoder.decodeVarint()(v91);
              if (v2)
              {
                goto LABEL_180;
              }

              if (v94 < 0)
              {
                goto LABEL_211;
              }

              v95 = *(a1 + 8) + v94;
              if (v14 < v95)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v95;
              _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v162);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_215;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v96 = *(v15 + 16);
                if (!v96)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v96 = *(v15 + 16);
                if (!v96)
                {
                  goto LABEL_221;
                }
              }

              v97 = v96 - 1;
              v14 = *(v15 + 8 * v97 + 32);
              *(v15 + 16) = v97;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v19 = *(&v162[0] + 1);
              v18 = *&v162[0];
              LODWORD(v164) = LOWORD(v162[1]);
              v20 = BYTE2(v162[1]) != 0;
              v22 = a2 + 56;
              v21 = *(a2 + 56);
              goto LABEL_7;
            case 4uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v67 = *(a1 + 40);
              v68 = swift_isUniquelyReferenced_nonNull_native();
              if ((v68 & 1) == 0)
              {
                v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 16) + 1, 1, v67);
                v67 = v68;
              }

              v70 = *(v67 + 16);
              v69 = *(v67 + 24);
              if (v70 >= v69 >> 1)
              {
                v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v67);
                v67 = v68;
              }

              *(v67 + 16) = v70 + 1;
              *(v67 + 8 * v70 + 32) = v14;
              *(a1 + 40) = v67;
              v15 = a1;
              v71 = ProtobufDecoder.decodeVarint()(v68);
              if (v2)
              {
                goto LABEL_180;
              }

              if (v71 < 0)
              {
                goto LABEL_214;
              }

              v72 = *(a1 + 8) + v71;
              if (v14 < v72)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v72;
              _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(a1, v162);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_216;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v16 = *(v15 + 16);
                if (!v16)
                {
                  goto LABEL_222;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v16 = *(v15 + 16);
                if (!v16)
                {
                  goto LABEL_222;
                }
              }

              v17 = v16 - 1;
              v14 = *(v15 + 8 * v17 + 32);
              *(v15 + 16) = v17;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v19 = *(&v162[0] + 1);
              v18 = *&v162[0];
              LODWORD(v164) = LOWORD(v162[1]);
              v20 = BYTE2(v162[1]) != 0;
              v22 = a2 + 80;
              v21 = *(a2 + 80);
              goto LABEL_7;
            case 5uLL:
              if ((v23 & 7) != 2)
              {
                goto LABEL_179;
              }

              v27 = *(a1 + 40);
              v28 = swift_isUniquelyReferenced_nonNull_native();
              if ((v28 & 1) == 0)
              {
                v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
                v27 = v28;
              }

              v30 = *(v27 + 16);
              v29 = *(v27 + 24);
              if (v30 >= v29 >> 1)
              {
                v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
                v27 = v28;
              }

              *(v27 + 16) = v30 + 1;
              *(v27 + 8 * v30 + 32) = v14;
              *(a1 + 40) = v27;
              v15 = a1;
              v31 = ProtobufDecoder.decodeVarint()(v28);
              if (v2)
              {
                goto LABEL_180;
              }

              if (v31 < 0)
              {
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
LABEL_214:
                __break(1u);
LABEL_215:
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
                __break(1u);
LABEL_235:
                __break(1u);
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
                do
                {
                  __break(1u);
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  v140 = *(v15 + 16);
                  if (v140)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_235;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v140 = *(v15 + 16);
                  if (v140)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_236;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v140 = *(v15 + 16);
                  if (v140)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                  if (!*(v15 + 16))
                  {
                    goto LABEL_237;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                  }

                  v140 = *(v15 + 16);
                  if (v140)
                  {
                    goto LABEL_201;
                  }

                  __break(1u);
                  v15 = *(a1 + 40);
                }

                while (!*(v15 + 16));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                }

                v140 = *(v15 + 16);
                if (v140)
                {
LABEL_201:
                  v141 = v140 - 1;
                  v142 = *(v15 + 8 * v141 + 32);
                  *(v15 + 16) = v141;

                  *(a1 + 40) = v15;
                  *(a1 + 16) = v142;
                  goto LABEL_181;
                }

                __break(1u);
                return;
              }

              v32 = *(a1 + 8) + v31;
              if (v14 < v32)
              {
                goto LABEL_179;
              }

              *(a1 + 16) = v32;
              _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0C10VisibilityV_Tt1g5(a1, v162);
              v15 = *(a1 + 40);
              if (!*(v15 + 16))
              {
                goto LABEL_217;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v33 = *(v15 + 16);
                if (!v33)
                {
                  goto LABEL_223;
                }
              }

              else
              {
                v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
                v33 = *(v15 + 16);
                if (!v33)
                {
                  goto LABEL_223;
                }
              }

              v147 = 0;
              v34 = v33 - 1;
              v14 = *(v15 + 8 * v34 + 32);
              *(v15 + 16) = v34;
              *(a1 + 40) = v15;
              *(a1 + 16) = v14;
              v146 = *&v162[0];
              goto LABEL_8;
          }
        }
      }

      else if (v23 >> 3 > 8)
      {
        switch(v25)
        {
          case 9uLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v106 = *a1;
            v164 = *(a1 + 16);
            v149 = *(a1 + 40);
            v107 = ProtobufDecoder.decodeVarint()(v23);
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v107;
            if (v107 < 0)
            {
              goto LABEL_212;
            }

            v108 = *(a1 + 8);
            if (v164 < v108 + v107)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v108 + v107;
            v109 = v106;

            v145 = v109;
            if (v15)
            {
              v110 = v108 - [v109 bytes];
              v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v113 = v112;
              if (__OFADD__(v110, v15))
              {
                goto LABEL_226;
              }

              if ((v110 + v15) < v110)
              {
                goto LABEL_231;
              }

              v114 = v111;
              v144 = Data._Representation.subscript.getter();
              v116 = v115;
              v117 = v113;
              v118 = v116;
              outlined consume of Data._Representation(v114, v117);
            }

            else
            {
              v144 = 0;
              v118 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration], &type metadata for CodableAccessibilityDataSeriesConfiguration, MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration] and conformance <A> [A]();
            v134 = v144;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!*(*&v162[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v134, v118);

              goto LABEL_180;
            }

            memcpy(v160, (*&v162[0] + 32), sizeof(v160));
            outlined init with copy of CodableAccessibilityDataSeriesConfiguration(v160, v162);

            outlined consume of Data._Representation(v134, v118);

            memcpy(v161, v160, sizeof(v161));
            _ViewInputs.base.modify();
            memcpy(v162, (a2 + 144), 0x108uLL);
            outlined destroy of AccessibilityValueStorage?(v162, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration);
            memcpy((a2 + 144), v161, 0x108uLL);
            goto LABEL_155;
          case 0xAuLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v75 = *a1;
            v164 = *(a1 + 16);
            v149 = *(a1 + 40);
            v76 = ProtobufDecoder.decodeVarint()(v23);
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v76;
            if (v76 < 0)
            {
              goto LABEL_208;
            }

            v77 = *(a1 + 8);
            if (v164 < v77 + v76)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v77 + v76;
            v78 = v75;

            v145 = v78;
            if (v15)
            {
              v79 = v77 - [v78 bytes];
              v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v82 = v81;
              if (__OFADD__(v79, v15))
              {
                goto LABEL_225;
              }

              if ((v79 + v15) < v79)
              {
                goto LABEL_230;
              }

              v83 = v80;
              v84 = Data._Representation.subscript.getter();
              v85 = v83;
              v87 = v86;
              v88 = v82;
              v89 = v84;
              outlined consume of Data._Representation(v85, v88);
            }

            else
            {
              v89 = 0;
              v87 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            v128 = PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for [LinkDestination.Configuration](0);
            lazy protocol witness table accessor for type [AccessibilityNodeAttachment.Kind?] and conformance <A> [A](&lazy protocol witness table cache variable for type [LinkDestination.Configuration] and conformance <A> [A], type metadata accessor for [LinkDestination.Configuration], lazy protocol witness table accessor for type LinkDestination.Configuration and conformance LinkDestination.Configuration, MEMORY[0x1E69E6330]);
            v143 = v128;
            v144 = v89;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            v14 = v164;
            if (!*(*&v162[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v144, v87);

              goto LABEL_180;
            }

            v129 = v154;
            outlined init with copy of AccessibilityNodeAttachment.Storage(*&v162[0] + ((*(v152 + 80) + 32) & ~*(v152 + 80)), v154, type metadata accessor for LinkDestination.Configuration);

            outlined consume of Data._Representation(v144, v87);

            v150(v129, 0, 1, v153);
            outlined assign with take of AccessibilityNodeAttachment.Storage(v129, a2 + v159, type metadata accessor for LinkDestination.Configuration?);
            goto LABEL_8;
          case 0xBuLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v35 = *a1;
            v164 = *(a1 + 16);
            v36 = *(a1 + 48);
            v145 = *(a1 + 40);
            v149 = v36;
            v37 = ProtobufDecoder.decodeVarint()(v23);
            if (v2)
            {
              goto LABEL_180;
            }

            v15 = v37;
            if (v37 < 0)
            {
              goto LABEL_213;
            }

            v38 = *(a1 + 8);
            if (v164 < v38 + v37)
            {
              goto LABEL_179;
            }

            *(a1 + 8) = v38 + v37;
            v39 = v35;

            v144 = v39;
            if (v15)
            {
              v40 = v38 - [v39 bytes];
              v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;
              if (__OFADD__(v40, v15))
              {
                goto LABEL_227;
              }

              if ((v40 + v15) < v40)
              {
                goto LABEL_228;
              }

              v44 = v41;
              v45 = Data._Representation.subscript.getter();
              v47 = v46;
              v48 = v43;
              v49 = v47;
              outlined consume of Data._Representation(v44, v48);
            }

            else
            {
              v45 = 0;
              v49 = 0xC000000000000000;
            }

            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            PropertyListDecoder.init()();

            dispatch thunk of PropertyListDecoder.userInfo.setter();
            type metadata accessor for CodableAccessibilityValueStorage?(0, &lazy cache variable for type metadata for [AccessibilityCustomAttributes], &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E62F8]);
            lazy protocol witness table accessor for type [AccessibilityCustomAttributes] and conformance <A> [A]();
            v130 = v45;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (!*(*&v162[0] + 16))
            {

              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              outlined consume of Data._Representation(v45, v49);

              goto LABEL_180;
            }

            v131 = v49;
            v132 = *(*&v162[0] + 32);

            outlined consume of Data._Representation(v130, v131);

            v133 = v158;

            *(a2 + v133) = v132;
LABEL_155:
            v14 = v164;
            goto LABEL_8;
        }
      }

      else
      {
        switch(v25)
        {
          case 6uLL:
            if ((v23 & 7) != 2)
            {
              goto LABEL_179;
            }

            v98 = *(a1 + 40);
            v99 = swift_isUniquelyReferenced_nonNull_native();
            if ((v99 & 1) == 0)
            {
              v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v98 + 16) + 1, 1, v98);
              v98 = v99;
            }

            v101 = *(v98 + 16);
            v100 = *(v98 + 24);
            if (v101 >= v100 >> 1)
            {
              v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v98);
              v98 = v99;
            }

            *(v98 + 16) = v101 + 1;
            *(v98 + 8 * v101 + 32) = v14;
            *(a1 + 40) = v98;
            v15 = a1;
            v102 = ProtobufDecoder.decodeVarint()(v99);
            if (v2)
            {
              goto LABEL_180;
            }

            if (v102 < 0)
            {
              goto LABEL_209;
            }

            v103 = *(a1 + 8) + v102;
            if (v14 < v103)
            {
              goto LABEL_179;
            }

            *(a1 + 16) = v103;
            _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0c5TraitF0V_Tt1g5(a1, v162);
            v15 = *(a1 + 40);
            if (!*(v15 + 16))
            {
              goto LABEL_219;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v104 = *(v15 + 16);
              if (!v104)
              {
                goto LABEL_178;
              }
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v104 = *(v15 + 16);
              if (!v104)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }
            }

            v148 = 0;
            v105 = v104 - 1;
            v14 = *(v15 + 8 * v105 + 32);
            *(v15 + 16) = v105;
            *(a1 + 40) = v15;
            *(a1 + 16) = v14;
            v156 = v162[0];
            goto LABEL_8;
          case 7uLL:
            v73 = v23 & 7;
            if (v73 == 5)
            {
              v137 = *(a1 + 8);
              if (v14 < (v137 + 1))
              {
                goto LABEL_179;
              }

              v138 = *v137;
              *(a1 + 8) = v137 + 1;
              v136 = v138;
            }

            else
            {
              if (v73 == 2)
              {
                v15 = a1;
                v135 = ProtobufDecoder.decodeVarint()(v23);
                if (v2)
                {
                  goto LABEL_180;
                }

                if (v135 < 0)
                {
                  goto LABEL_233;
                }

                v74 = *(a1 + 8);
                if (v14 < v74 + v135)
                {
                  goto LABEL_179;
                }

                *(a1 + 24) = 57;
                *(a1 + 32) = v74 + v135;
              }

              else
              {
                if (v73 != 1)
                {
                  goto LABEL_179;
                }

                v74 = *(a1 + 8);
              }

              if (v14 < (v74 + 1))
              {
                goto LABEL_179;
              }

              v136 = *v74;
              *(a1 + 8) = v74 + 1;
            }

            *(a2 + 112) = v136;
            *(a2 + 120) = 0;
            goto LABEL_8;
          case 8uLL:
            if ((v23 & 7) == 2)
            {
              v15 = a1;
              v121 = ProtobufDecoder.decodeVarint()(v23);
              if (v2)
              {
                goto LABEL_180;
              }

              if (v121 < 0)
              {
                goto LABEL_232;
              }

              v26 = *(a1 + 8);
              if (v14 < v26 + v121)
              {
                goto LABEL_179;
              }

              *(a1 + 24) = 65;
              *(a1 + 32) = v26 + v121;
            }

            else
            {
              if ((v23 & 7) != 1)
              {
                goto LABEL_179;
              }

              v26 = *(a1 + 8);
            }

            v122 = v26 + 1;
            if (v14 < (v26 + 1))
            {
              goto LABEL_179;
            }

            v123 = *v26;
            *(a1 + 8) = v122;
            *(a2 + 128) = v123;
            *(a2 + 136) = 0;
            goto LABEL_8;
        }
      }

      v119 = v23 & 7;
      if (v119 > 1)
      {
        if (v119 == 2)
        {
          v15 = a1;
          v139 = ProtobufDecoder.decodeVarint()(v23);
          if (v2)
          {
            goto LABEL_180;
          }

          if (v139 < 0)
          {
            goto LABEL_234;
          }

          v120 = *(a1 + 8) + v139;
          if (v14 < v120)
          {
            goto LABEL_179;
          }
        }

        else
        {
          if (v119 != 5)
          {
            goto LABEL_179;
          }

          v120 = *(a1 + 8) + 4;
          if (v14 < v120)
          {
            goto LABEL_179;
          }
        }
      }

      else
      {
        if ((v23 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v23);
          if (v2)
          {
            goto LABEL_180;
          }

          goto LABEL_8;
        }

        if (v119 != 1)
        {
          goto LABEL_179;
        }

        v120 = *(a1 + 8) + 8;
        if (v14 < v120)
        {
          goto LABEL_179;
        }
      }

      *(a1 + 8) = v120;
LABEL_8:
      v13 = *(a1 + 8);
      if (v13 >= v14)
      {
        *(a1 + 24) = 0;
        if ((v147 | v148))
        {
          goto LABEL_179;
        }

        *(a2 + 84) = v146;
        *(a2 + 96) = v156;
        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_179:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_180:

LABEL_181:
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 16), *(a2 + 24), *(a2 + 32) | (*(a2 + 34) << 16));
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 40), *(a2 + 48), *(a2 + 56) | (*(a2 + 58) << 16));
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(*(a2 + 64), *(a2 + 72), *(a2 + 80) | (*(a2 + 82) << 16));
  memcpy(v162, (a2 + 144), 0x108uLL);
  outlined destroy of AccessibilityValueStorage?(v162, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration);
  outlined destroy of CodableAccessibilityAttachmentStorage(a2 + v159, type metadata accessor for LinkDestination.Configuration?);
}

double _s7SwiftUI43CodableAccessibilityDataSeriesConfigurationVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_18D34F1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void _s7SwiftUI34CodableAccessibilityVersionStorageO4fromACyxq_GAA15ProtobufDecoderVz_tKcfCAA0C18ResolvedStyledTextV_AA0dL0VTt1g5(void *result@<X0>, uint64_t *a2@<X8>)
{
  v5 = result[1];
  v6 = result[2];
  if (v5 >= v6)
  {
    goto LABEL_56;
  }

  v39 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 16711680;
  while (1)
  {
    v10 = result[3];
    if (v10)
    {
      v11 = result[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_57;
      }

      result[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    if (v10 < 8)
    {
      goto LABEL_57;
    }

LABEL_11:
    if (v10 >> 3 == 3)
    {
      break;
    }

    if (v10 >> 3 == 2)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_57;
      }

      v12 = result[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v3 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v3 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v3 + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      *(v12 + 16) = v3 + 1;
      *(v12 + 8 * v3 + 32) = v6;
      result[5] = v12;
      v15 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = result[1] + v15;
        if (v6 < v16)
        {
          goto LABEL_57;
        }

        result[2] = v16;
        v17 = CodableResolvedStyledText.init(from:)(result);
        v18 = result[5];
        if (!*(v18 + 2))
        {
          goto LABEL_69;
        }

        v19 = v17;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = *(v18 + 2);
          if (!v20)
          {
            goto LABEL_71;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v20 = *(v18 + 2);
          if (!v20)
          {
            goto LABEL_71;
          }
        }

        v21 = v20 - 1;
        v6 = *&v18[8 * v21 + 32];
        *(v18 + 2) = v21;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
        v9 = 0;
        result[5] = v18;
        result[2] = v6;
        v7 = v19;
        LOBYTE(v37[0]) = 0;
        goto LABEL_4;
      }

      __break(1u);
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
      __break(1u);
      do
      {
        __break(1u);
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v34 = *(v3 + 16);
        if (v34)
        {
          goto LABEL_66;
        }

        __break(1u);
        v3 = result[5];
      }

      while (!*(v3 + 16));
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v34 = *(v3 + 16);
        if (v34)
        {
LABEL_66:
          v35 = v34 - 1;
          v36 = *(v3 + 8 * v35 + 32);
          *(v3 + 16) = v35;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
          result[5] = v3;
          result[2] = v36;
          return;
        }
      }

      else
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        v34 = *(v3 + 16);
        if (v34)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
      return;
    }

    v30 = v10 & 7;
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v32 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        if (v32 < 0)
        {
          goto LABEL_72;
        }

        v31 = result[1] + v32;
        if (v6 < v31)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v30 != 5)
        {
          goto LABEL_57;
        }

        v31 = result[1] + 4;
        if (v6 < v31)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        goto LABEL_4;
      }

      if (v30 != 1)
      {
        goto LABEL_57;
      }

      v31 = result[1] + 8;
      if (v6 < v31)
      {
        goto LABEL_57;
      }
    }

    result[1] = v31;
LABEL_4:
    v5 = result[1];
    if (v5 >= v6)
    {
      result[3] = 0;
      if (BYTE2(v9) != 255)
      {
        v33 = v39;
        *v39 = v7;
        v33[1] = v8;
        *(v33 + 8) = v9;
        *(v33 + 18) = BYTE2(v9) & 1;
        return;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
      return;
    }
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_61;
  }

  v22 = result[5];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  if ((v23 & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
    v22 = v23;
  }

  v3 = *(v22 + 16);
  v24 = *(v22 + 24);
  if (v3 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v3 + 1, 1, v22);
    v22 = v23;
  }

  *(v22 + 16) = v3 + 1;
  *(v22 + 8 * v3 + 32) = v6;
  result[5] = v22;
  v25 = ProtobufDecoder.decodeVarint()(v23);
  if (v2)
  {
    goto LABEL_62;
  }

  if (v25 < 0)
  {
    goto LABEL_68;
  }

  v26 = result[1] + v25;
  if (v6 >= v26)
  {
    result[2] = v26;
    AccessibilityText.init(from:)(result, v37);
    v27 = result[5];
    if (!*(v27 + 2))
    {
      goto LABEL_70;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = *(v27 + 2);
      if (!v28)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

    v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
    v28 = *(v27 + 2);
    if (v28)
    {
LABEL_36:
      v29 = v28 - 1;
      v6 = *&v27[8 * v29 + 32];
      *(v27 + 2) = v29;
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
      result[5] = v27;
      result[2] = v6;
      v7 = v37[0];
      v8 = v37[1];
      v9 = v38 | 0x10000;
      goto LABEL_4;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v7 = 0;
    v8 = 0;
    result[3] = 0;
    v9 = 16711680;
    goto LABEL_57;
  }

LABEL_61:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_62:
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v8, v9);
}