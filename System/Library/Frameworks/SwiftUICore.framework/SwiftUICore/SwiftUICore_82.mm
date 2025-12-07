uint64_t protocol witness for static Rule.initialValue.getter in conformance ExclusivePhase<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v3;
  v4 = type metadata accessor for ExclusiveGesture.Value(255, v9);
  v7 = type metadata accessor for GesturePhase(0, v4, v5, v6);
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

uint64_t ExclusivePreference.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v135 = a8;
  v136 = a5;
  v122 = a1;
  v127 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v125 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v107 - v18;
  v124 = v19;
  v117 = type metadata accessor for Optional();
  v133 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v107 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v110 = &v107 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v121 = &v107 - v28;
  v119 = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for GesturePhase(255, v119, v29, v30);
  v120 = swift_getAssociatedTypeWitness();
  v34 = v31;
  v128 = type metadata accessor for GesturePhase(255, v120, v32, v33);
  v129 = v31;
  v35 = v128;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v115 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v130 = &v107 - v36;
  v134 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v114 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v107 - v40;
  v137 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v113 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v118 = &v107 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v107 - v47;
  SimultaneousPreference.phase1.getter(&v107 - v47);
  v131 = a3;
  v49 = a4;
  v50 = v134;
  v126 = a6;
  v123 = a7;
  v52 = v128;
  v51 = v129;
  SimultaneousPreference.phase2.getter(v41);
  v53 = *(TupleTypeMetadata2 + 48);
  v54 = v130;
  v55 = v48;
  v56 = v133;
  (*(v137 + 32))(v130, v55, v51);
  v57 = v41;
  v58 = v54;
  (*(v50 + 32))(&v54[v53], v57, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    goto LABEL_2;
  }

  v67 = v120;
  if (!EnumCaseMultiPayload)
  {
    v68 = v118;
    (*(v137 + 16))(v118, v54, v51);
    if ((*(*(v119 - 8) + 48))(v68, 1, v119) != 1)
    {
      v80 = type metadata accessor for Optional();
      (*(*(v80 - 8) + 8))(v68, v80);
      v56 = v133;
      v50 = v134;
LABEL_2:
      (*(v50 + 8))(&v54[v53], v52);
      goto LABEL_3;
    }

    v69 = swift_getEnumCaseMultiPayload();
    v56 = v133;
    if (v69 == 3)
    {
LABEL_3:
      (*(v137 + 8))(v54, v51);
      v60 = v121;
      v62 = v135;
      v61 = v136;
      SimultaneousPreference.value1.getter(v122, v121);
      v63 = v124;
      v64 = v125;
      v65 = *(v125 + 48);
      if (v65(v60, 1, v124) != 1)
      {
        return (*(v64 + 32))(v127, v60, v63);
      }

      (*(v62 + 16))(v61, v62);
      result = (v65)(v60, 1, v63);
      if (result != 1)
      {
        return (*(v56 + 8))(v60, v117);
      }

      return result;
    }
  }

  v70 = swift_getEnumCaseMultiPayload();
  if ((v70 - 1) < 2)
  {
    goto LABEL_10;
  }

  if (v70)
  {
LABEL_28:
    (*(v135 + 16))();
    return (*(v115 + 8))(v58, TupleTypeMetadata2);
  }

  v77 = &v54[v53];
  v78 = v114;
  (*(v134 + 16))(v114, v77, v52);
  if ((*(*(v67 - 1) + 48))(v78, 1, v67) != 1)
  {
    v81 = type metadata accessor for Optional();
    (*(*(v81 - 8) + 8))(v78, v81);
    goto LABEL_10;
  }

  v79 = swift_getEnumCaseMultiPayload();
  if (v79)
  {
    if (v79 != 3)
    {
      goto LABEL_28;
    }

LABEL_10:
    (*(v134 + 8))(&v58[v53], v52);
    (*(v137 + 8))(v58, v51);
    v71 = v116;
    v73 = v135;
    v72 = v136;
    SimultaneousPreference.value2.getter(v122, v116);
    v74 = v124;
    v75 = v125;
    v76 = *(v125 + 48);
    if (v76(v71, 1, v124) != 1)
    {
      return (*(v75 + 32))(v127, v71, v74);
    }

    (*(v73 + 16))(v72, v73);
    result = (v76)(v71, 1, v74);
    if (result != 1)
    {
      return (*(v56 + 8))(v71, v117);
    }

    return result;
  }

  v82 = v113;
  (*(v137 + 16))(v113, v58, v51);
  if ((*(*(v119 - 8) + 48))(v82, 1, v119) != 1)
  {
    v95 = type metadata accessor for Optional();
    (*(*(v95 - 8) + 8))(v82, v95);
    goto LABEL_28;
  }

  v121 = v53;
  v83 = v110;
  v84 = v122;
  v85 = v123;
  v86 = v135;
  v87 = v136;
  SimultaneousPreference.value1.getter(v122, v110);
  v89 = v124;
  v88 = v125;
  TupleTypeMetadata2 = v49;
  v120 = *(v125 + 48);
  if ((v120)(v83, 1, v124) == 1)
  {
    v90 = v83;
    v91 = *(v133 + 8);
    v91(v90, v117);
    v92 = v109;
    SimultaneousPreference.value2.getter(v84, v109);
    if ((v120)(v92, 1, v89) == 1)
    {
      v91(v92, v117);
      v93 = v111;
      (*(v86 + 16))(v87, v86);
      v94 = *(v88 + 32);
    }

    else
    {
      v94 = *(v88 + 32);
      v93 = v111;
      v94(v111, v92, v89);
    }

    v99 = v130;
    v100 = v134;
    v101 = v121;
  }

  else
  {
    v96 = v83;
    v94 = *(v88 + 32);
    v94(v112, v96, v89);
    v97 = v84;
    v98 = v108;
    SimultaneousPreference.value2.getter(v97, v108);
    if ((v120)(v98, 1, v89) == 1)
    {
      (*(v133 + 8))(v98, v117);
    }

    else
    {
      v102 = v107;
      v103 = (v94)(v107, v98, v89);
      v104 = MEMORY[0x1EEE9AC00](v103);
      v105 = TupleTypeMetadata2;
      *(&v107 - 8) = v131;
      *(&v107 - 7) = v105;
      v106 = v126;
      *(&v107 - 6) = v136;
      *(&v107 - 5) = v106;
      *(&v107 - 4) = v85;
      *(&v107 - 3) = v86;
      *(&v107 - 2) = v102;
      (*(v86 + 24))(v112, partial apply for closure #1 in SimultaneousPreference.mergedValue(), v104);
      (*(v125 + 8))(v102, v89);
    }

    v99 = v130;
    v100 = v134;
    v101 = v121;
    v93 = v111;
    v94(v111, v112, v89);
  }

  v94(v127, v93, v89);
  (*(v100 + 8))(&v99[v101], v128);
  return (*(v137 + 8))(v99, v129);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance ExclusivePreference<A, B, C>(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  static SimultaneousPreference.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for ExclusivePreference<A, B, C>, a2, v16);
  v19[-1] = v17;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v19[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

void type metadata accessor for Attribute<_GestureInputs.InheritedPhase>()
{
  if (!lazy cache variable for type metadata for Attribute<_GestureInputs.InheritedPhase>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<_GestureInputs.InheritedPhase>);
    }
  }
}

uint64_t type metadata completion function for ExclusiveGesture.Value(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ExclusiveGesture.Value(void *a1, unsigned __int16 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(*(v8 - 8) + 64);
  }

  v11 = (*(v9 + 80) | *(v6 + 80));
  if (v11 > 7 || v10 + 1 > 0x18 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));

    return a1;
  }

  v15 = *(a2 + v10);
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a2;
      }

      else if (v17 == 3)
      {
        v18 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v18 = *a2;
      }

LABEL_24:
      v19 = (v18 | (v16 << (8 * v10))) + 2;
      v15 = v18 + 2;
      if (v10 < 4)
      {
        v15 = v19;
      }

      goto LABEL_26;
    }

    if (v17)
    {
      v18 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v15 == 1)
  {
    (*(v9 + 16))(a1, a2, v8);
    *(a1 + v10) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v10) = 0;
  }

  return a1;
}

uint64_t destroy for ExclusiveGesture.Value(unsigned __int8 *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(*(v6 - 8) + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_17:
  if (v8 == 1)
  {
    v13 = *(v6 - 8);
  }

  else
  {
    v13 = v4;
  }

  if (v8 == 1)
  {
    v14 = v6;
  }

  else
  {
    v14 = AssociatedTypeWitness;
  }

  v15 = *(v13 + 8);

  return v15(a1, v14);
}

uint64_t initializeWithCopy for ExclusiveGesture.Value(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  v17 = v12 == 1;
  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v10 = v6;
    v18 = AssociatedTypeWitness;
  }

  (*(v10 + 16))(a1, v9, v18);
  *(a1 + v11) = v17;
  return a1;
}

unsigned __int8 *assignWithCopy for ExclusiveGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = v8;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a1[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v17 = *(v8 - 8);
  }

  else
  {
    v17 = v6;
  }

  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(v17 + 8))(a1, v18);
  v19 = a2[v11];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v11 <= 3)
    {
      v21 = v11;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

LABEL_37:
      v23 = (v22 | (v20 << (8 * v11))) + 2;
      v19 = v22 + 2;
      if (v11 < 4)
      {
        v19 = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      v22 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v24 = v19 == 1;
  if (v19 == 1)
  {
    v25 = v10;
  }

  else
  {
    v25 = v6;
  }

  if (v19 == 1)
  {
    v26 = v9;
  }

  else
  {
    v26 = AssociatedTypeWitness;
  }

  (*(v25 + 16))(a1, a2, v26);
  a1[v11] = v24;
  return a1;
}

uint64_t initializeWithTake for ExclusiveGesture.Value(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  v17 = v12 == 1;
  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v10 = v6;
    v18 = AssociatedTypeWitness;
  }

  (*(v10 + 32))(a1, v9, v18);
  *(a1 + v11) = v17;
  return a1;
}

unsigned __int8 *assignWithTake for ExclusiveGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = v8;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a1[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v17 = *(v8 - 8);
  }

  else
  {
    v17 = v6;
  }

  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(v17 + 8))(a1, v18);
  v19 = a2[v11];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v11 <= 3)
    {
      v21 = v11;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

LABEL_37:
      v23 = (v22 | (v20 << (8 * v11))) + 2;
      v19 = v22 + 2;
      if (v11 < 4)
      {
        v19 = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      v22 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v24 = v19 == 1;
  if (v19 == 1)
  {
    v25 = v10;
  }

  else
  {
    v25 = v6;
  }

  if (v19 == 1)
  {
    v26 = v9;
  }

  else
  {
    v26 = AssociatedTypeWitness;
  }

  (*(v25 + 32))(a1, a2, v26);
  a1[v11] = v24;
  return a1;
}

uint64_t getEnumTagSinglePayload for ExclusiveGesture.Value(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void storeEnumTagSinglePayload for ExclusiveGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
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

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
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
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for ExclusiveGesture.Value(unsigned __int8 *a1, void *a2)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 <= v3)
  {
    v4 = v3;
  }

  result = a1[v4];
  if (result >= 2)
  {
    if (v4 <= 3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 2) << (8 * v4))) + 2;
    v9 = v7 + 2;
    if (v4 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void destructiveInjectEnumTag for ExclusiveGesture.Value(_BYTE *a1, unsigned int a2, void *a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  if (a2 > 1)
  {
    v8 = *(v5 + 64);
    v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 2;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 2;
      if (v10)
      {
        v12 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v12;
          a1[2] = BYTE2(v12);
        }

        else if (v10 == 2)
        {
          *a1 = v12;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 2;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v7 <= *(v6 + 64))
    {
      v7 = *(v6 + 64);
    }

    a1[v7] = a2;
  }
}

CGFloat _RotationEffect.Data.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  CGAffineTransformMakeTranslation(&v10, v4, v5);
  CGAffineTransformRotate(&v9, &v10, v3);
  v10 = v9;
  CGAffineTransformTranslate(&v9, &v10, -v4, -v5);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a1 = *&v9.a;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

SwiftUI::_RotationEffect::Data __swiftcall _RotationEffect.Data.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

double _RotationEffect.Data.init(_:size:layoutDirection:)@<D0>(_BYTE *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = a4 * a6;
  v8 = a6 - v7;
  if (*a1)
  {
    v7 = v8;
    a3 = (a3 * -128.0 + 0.0) * 0.0078125;
  }

  *a2 = a3;
  result = a5 * a7;
  a2[1] = v7;
  a2[2] = a5 * a7;
  return result;
}

CGFloat _RotationEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  CGAffineTransformMakeTranslation(&v16, a2 * a5, a3 * a6);
  CGAffineTransformRotate(&v15, &v16, a4);
  v16 = v15;
  CGAffineTransformTranslate(&v15, &v16, -(a2 * a5), -(a3 * a6));
  result = v15.a;
  v13 = *&v15.c;
  v14 = *&v15.tx;
  *a1 = *&v15.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  *(a1 + 40) = 0;
  *(a1 + 48) = v14;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

float64x2_t _RotationEffect.animatableData.setter(float64x2_t a1, float64_t a2, double a3)
{
  a1.f64[1] = a2;
  result = vmulq_f64(a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v3 = result;
  v3[1].f64[0] = a3 * 0.0078125;
  return result;
}

double (*_RotationEffect.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *(a1 + 16) = v2;
  return _RotationEffect.animatableData.modify;
}

double _RotationEffect.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(a1 + 16) * 0.0078125;
  *v1 = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v1[1].f64[0] = result;
  return result;
}

BOOL static _RotationEffect.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a2 == a5;
  if (a3 != a6)
  {
    v6 = 0;
  }

  return a1 == a4 && v6;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _RotationEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _RotationEffect.effectValue(size:)(v7, a2, a3, *v3, v3[1], v3[2]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _RotationEffect(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t static _RotationEffect.resolve(effect:origin:size:layoutDirection:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = a4 * a6;
  v9 = a6 - v8;
  if (*a1)
  {
    v10 = (a3 * -128.0 + 0.0) * 0.0078125;
  }

  else
  {
    v10 = a3;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = a5 * a7;
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v11;
  *(result + 32) = v12;
  *(result + 88) = 2;
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 12) = 9;
  return result;
}

float64_t protocol witness for Animatable.animatableData.getter in conformance _RotationEffect@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  a1[1].f64[0] = result;
  return result;
}

float64_t protocol witness for Animatable.animatableData.setter in conformance _RotationEffect(float64x2_t *a1)
{
  result = a1[1].f64[0] * 0.0078125;
  *v1 = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v1[1].f64[0] = result;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance _RotationEffect(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *(a1 + 16) = v2;
  return protocol witness for Animatable.animatableData.modify in conformance _RotationEffect;
}

uint64_t _RotationEffect.encode(to:)(uint64_t result, double a2, double a3, double a4)
{
  v7 = result;
  if (a2 != 0.0)
  {
    v4 = a2;
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v8 = *(v7 + 8);
    result = v8 + 8;
    if (__OFADD__(v8, 8))
    {
      goto LABEL_17;
    }

    if (*(v7 + 16) < result)
    {
      goto LABEL_18;
    }

    *(v7 + 8) = result;
    *(*v7 + v8) = v4;
  }

  while (a3 != 0.5 || a4 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(v7 + 8);
    v11 = *(v7 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v13 + 1;
    *(v11 + 8 * v13 + 32) = v10;
    *(v7 + 24) = v11;
    if (!__OFADD__(v10, 1))
    {
      *(v7 + 8) = v10 + 1;
      UnitPoint.encode(to:)(v7, a3, a4);
      return ProtobufEncoder.endLengthDelimited()();
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _RotationEffect@<X0>(void *a1@<X8>, unint64_t a2@<X0>)
{
  result = specialized _RotationEffect.init(from:)(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
  }

  return result;
}

uint64_t VisualEffect.rotationEffect(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, double a4@<D1>, double a5@<D2>, uint64_t a6@<X8>)
{
  *v10 = a3;
  *&v10[1] = a4;
  *&v10[2] = a5;
  lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  return VisualEffect.geometryEffect<A>(_:)(v10, a1, &type metadata for _RotationEffect, a2, a6);
}

uint64_t _RotationEffect.Data.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v7 + 8;
    if (__OFADD__(v7, 8))
    {
      goto LABEL_12;
    }

    if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    *(a1 + 8) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v7) = v5;
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a1 + 24) = v10;
    if (!__OFADD__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
  }

  *(a1 + 8) = v9 + 1;
  CGPoint.encode(to:)(a1, v4, v6);
  return ProtobufEncoder.endLengthDelimited()();
}

unint64_t _RotationEffect.Data.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
LABEL_54:
    v8 = 0;
    v9 = 0;
LABEL_55:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    return result;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v23 = v3[1] + result;
          if (v6 < v23)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_56;
          }

          v23 = v3[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v23 = v3[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_56;
        }
      }

      v3[1] = v23;
      goto LABEL_4;
    }

    if (v11 == 5)
    {
      v24 = v3[1];
      if (v6 < (v24 + 1))
      {
        goto LABEL_56;
      }

      v25 = *v24;
      v3[1] = v24 + 1;
      v7 = v25;
    }

    else
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v12 = v3[1];
        if (v6 < v12 + result)
        {
          goto LABEL_56;
        }

        v3[3] = 9;
        v3[4] = v12 + result;
      }

      else
      {
        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v12 = v3[1];
      }

      if (v6 < (v12 + 1))
      {
        goto LABEL_56;
      }

      v7 = *v12;
      v3[1] = v12 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if (v11 != 2)
  {
    goto LABEL_56;
  }

  v13 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v6;
  v3[5] = v13;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + result;
    if (v6 < v17)
    {
      goto LABEL_56;
    }

    v3[2] = v17;
    specialized CGPoint.init(from:)(v3);
    v20 = v3[5];
    if (!*(v20 + 16))
    {
      goto LABEL_60;
    }

    v8 = v18;
    v9 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = *(v20 + 16);
      if (!v21)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
      v21 = *(result + 16);
      if (!v21)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v22 = v21 - 1;
    v6 = *(v20 + 8 * v22 + 32);
    *(v20 + 16) = v22;
    v3[5] = v20;
    v3[2] = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v28 = *(result + 16);
  if (v28)
  {
    v26 = v28 - 1;
    v27 = *(result + 8 * v26 + 32);
    *(result + 16) = v26;
    v3[5] = result;
    v3[2] = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized static _RotationEffect.shouldFinishEarly(in:)(double *a1)
{
  result = 0;
  if (fabs(*a1 * 0.0078125 * (*a1 * 0.0078125) + a1[3] * 0.0078125 * (a1[3] * 0.0078125)) < 0.0001 && a1[1] == 0.0)
  {
    return a1[2] == 0.0;
  }

  return result;
}

unint64_t specialized _RotationEffect.init(from:)(unint64_t result)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
LABEL_54:
    v3[3] = 0;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v6 = v3[4];
      if (v4 < v6)
      {
        goto LABEL_11;
      }

      if (v6 < v4)
      {
        goto LABEL_55;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_55:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v7 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }

          v15 = v3[1] + result;
          if (v5 < v15)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_55;
          }

          v15 = v3[1] + 4;
          if (v5 < v15)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v7 != 1)
        {
          goto LABEL_55;
        }

        v15 = v3[1] + 8;
        if (v5 < v15)
        {
          goto LABEL_55;
        }
      }

      v3[1] = v15;
      goto LABEL_4;
    }

    if (v7 == 5)
    {
      v16 = v3[1];
      if (v5 < v16 + 4)
      {
        goto LABEL_55;
      }

      v3[1] = v16 + 4;
    }

    else
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v8 = v3[1];
        if (v5 < v8 + result)
        {
          goto LABEL_55;
        }

        v3[3] = 9;
        v3[4] = v8 + result;
      }

      else
      {
        if (v7 != 1)
        {
          goto LABEL_55;
        }

        v8 = v3[1];
      }

      if (v5 < v8 + 8)
      {
        goto LABEL_55;
      }

      v3[1] = v8 + 8;
    }

LABEL_4:
    v4 = v3[1];
    if (v4 >= v5)
    {
      goto LABEL_54;
    }
  }

  if (v7 != 2)
  {
    goto LABEL_55;
  }

  v1 = v3[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
    v1 = isUniquelyReferenced_nonNull_native;
  }

  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  if (v11 >= v10 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v1);
    v1 = isUniquelyReferenced_nonNull_native;
  }

  *(v1 + 16) = v11 + 1;
  *(v1 + 8 * v11 + 32) = v5;
  v3[5] = v1;
  result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = v3[1] + result;
    if (v5 < v12)
    {
      goto LABEL_55;
    }

    v3[2] = v12;
    specialized CGPoint.init(from:)(v3);
    v1 = v3[5];
    if (!*(v1 + 16))
    {
      goto LABEL_59;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v13 = *(v1 + 16);
      if (!v13)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
      v13 = *(result + 16);
      if (!v13)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v14 = v13 - 1;
    v5 = *(v1 + 8 * v14 + 32);
    *(v1 + 16) = v14;
    v3[5] = v1;
    v3[2] = v5;
    goto LABEL_4;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v19 = *(result + 16);
  if (v19)
  {
    v17 = v19 - 1;
    v18 = *(result + 8 * v17 + 32);
    *(result + 16) = v17;
    v3[5] = result;
    v3[2] = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for GeometryVisualEffect<_RotationEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_RotationEffect>)
  {
    lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
    v4 = type metadata accessor for GeometryVisualEffect(a1, &type metadata for _RotationEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GeometryVisualEffect<_RotationEffect>);
    }
  }
}

void lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t AnyGradient.init(_:)(uint64_t a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for GradientBox<Gradient>, lazy protocol witness table accessor for type Gradient and conformance Gradient, &type metadata for Gradient, type metadata accessor for GradientBox);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void lazy protocol witness table accessor for type Gradient and conformance Gradient()
{
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient, &type metadata for Gradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient, &type metadata for Gradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient, &type metadata for Gradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }
}

double AnyGradient._apply(to:)(uint64_t *a1, uint64_t a2)
{

  specialized Paint._apply(to:)(a1);

  return result;
}

double AnyGradientBox.apply(to:)(uint64_t *a1)
{

  specialized Paint._apply(to:)(a1);

  return result;
}

uint64_t static AnyGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

Swift::Int AnyGradient.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyGradient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyGradient(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 128))(v4);
  return Hasher._finalize()();
}

double protocol witness for ShapeStyle._apply(to:) in conformance AnyGradient(uint64_t *a1)
{

  specialized Paint._apply(to:)(a1);

  return result;
}

uint64_t _AnyLinearGradient.init(gradient:startPoint:endPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t static GradientBox.deserialize(from:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v1 + 144) + 16) + 16))(v3);
  if (!v2)
  {
    return GradientBox.__allocating_init(_:)(v5);
  }

  return result;
}

uint64_t GradientBox.resolve(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 144) + 32))(&v4, *(v2 + 136));
}

uint64_t GradientBox.fallbackColor(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 144) + 40))(&v4, *(v2 + 136));
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance GradientBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static GradientBox.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _AnyRadialGradient.init(gradient:center:startRadius:endRadius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

__n128 _AnyLinearGradient.resolvePaint(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *v2;
  v15[0] = *a1;
  v15[1] = v6;
  (*(*v7 + 112))(&v16, v15);
  v8 = 0;
  v9 = v16;
  v10 = v17;
  v11 = HIDWORD(v17);
  v12 = v18;
  if ((v18 & 1) == 0 && *(&v17 + 1) > 1.0)
  {
    v16 = v5;
    v17 = v6;
    v14 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v14, v15);
    v8 = v15[0];
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = *(v3 + 1);
  result = *(v3 + 3);
  *(a2 + 40) = result;
  *(a2 + 56) = v8;
  return result;
}

void EitherGradient.resolve(in:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *v2;
  if (*(v2 + 8))
  {
    *&v5 = *a1;
    *(&v5 + 1) = v3;
    (*(*v4 + 112))(&v5);
  }

  else
  {
    *&v5 = *a1;
    *(&v5 + 1) = v3;
    Gradient.resolve(in:)(&v5, v4, a2);
  }
}

uint64_t EitherGradient.fallbackColor(in:)(__int128 *a1)
{
  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

double EitherGradient.constantColor.getter()
{
  if ((v0[8] & 1) == 0)
  {
    v1 = *(*v0 + 16);
    if (v1 == 1)
    {
LABEL_7:

      return result;
    }

    if (!v1)
    {
      if (one-time initialization token for clear != -1)
      {
        swift_once();
      }

      goto LABEL_7;
    }
  }

  return result;
}

void EitherGradient.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);

    specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int EitherGradient.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v4);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EitherGradient()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v4);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance EitherGradient(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);

    specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EitherGradient(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v2 + 128))(v4);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v4, v2);
  }

  return Hasher._finalize()();
}

uint64_t specialized AnyCodableBox.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 104);
  v11(v19, v10);
  LOBYTE(v20) = 0;
  lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = outlined consume of Gradient.ProviderTag(v19[0]);
  if (v2)
  {
    return (*(v7 + 8))(v9, v6, v12);
  }

  v14 = (v11)(&v20, v12);
  v19[0] = v20;
  v15 = Gradient.ProviderTag.type.getter(v14);
  static GradientProvider.box.getter(v15, v16, v17, v18);
  outlined consume of Gradient.ProviderTag(v20);
  v19[3] = type metadata accessor for AnyGradientBox();
  v19[0] = v3;

  static CodableBox.encode(_:to:)(v19, v9);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 80);
  v11(v18, v10);
  LOBYTE(v19) = 0;
  lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
  v12 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14 = v11(&v19, v12);
  Font.ProviderTag.box.getter(v14, v15, v16, v17);
  v18[3] = type metadata accessor for AnyFontBox();
  v18[0] = v3;

  static CodableBox.encode(_:to:)(v18, v9);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 104);
  v11(v18, v10);
  LOBYTE(v19) = 0;
  lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = outlined consume of Color.ProviderTag(v18[0]);
  if (v2)
  {
    return (*(v7 + 8))(v9, v6, v12);
  }

  (v11)(&v19, v12);
  v18[0] = v19;
  v14 = Color.ProviderTag.type.getter();
  static ColorProvider.box.getter(v14, v15, v16, v17);
  outlined consume of Color.ProviderTag(v19);
  v18[3] = type metadata accessor for AnyColorBox();
  v18[0] = v3;

  static CodableBox.encode(_:to:)(v18, v9);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c8GradientE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v18[0]) = 0;
    lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag();
    v8 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v19;
    v9 = Gradient.ProviderTag.type.getter(v8);
    v13 = static GradientProvider.box.getter(v9, v10, v11, v12);
    static CodableBox.decode(from:)(v13, v14, v18, v15);
    (*(v5 + 8))(v7, v4);
    outlined consume of Gradient.ProviderTag(v19);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyGradientBox>, v16, type metadata accessor for AnyGradientBox);
    type metadata accessor for AnyGradientBox();
    swift_dynamicCast();
  }
}

uint64_t _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v17[0]) = 0;
    lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
    v9 = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = Font.ProviderTag.box.getter(v9, v10, v11, v12);
    static CodableBox.decode(from:)(v13, v14, v17, v15);
    (*(v5 + 8))(v7, v4);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyFontBox>, 255, type metadata accessor for AnyFontBox);
    type metadata accessor for AnyFontBox();
    swift_dynamicCast();
    return v17[6];
  }

  return result;
}

void _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c5ColorE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v16[0]) = 0;
    lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v17;
    v8 = Color.ProviderTag.type.getter();
    v12 = static ColorProvider.box.getter(v8, v9, v10, v11);
    static CodableBox.decode(from:)(v12, v13, v16, v14);
    (*(v5 + 8))(v7, v4);
    outlined consume of Color.ProviderTag(v17);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>, 255, type metadata accessor for AnyColorBox);
    type metadata accessor for AnyColorBox();
    swift_dynamicCast();
  }
}

void protocol witness for static Serializable.deserialize(from:) in conformance AnyGradient(void *a1@<X0>, void *a2@<X8>)
{
  _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c8GradientE0C_Tt1g5(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x193AC11A0](v4);
  if (v4)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      v8 = v7;
      v9 = *(*v6 + 152);

      v9(a1);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v8;
      }

      MEMORY[0x193AC11E0](*&v10);

      --v4;
    }

    while (v4);
  }
}

{
  v4 = *(a2 + 16);
  MEMORY[0x193AC11A0](v4);
  if (v4)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      v8 = v7;
      v9 = *(*v6 + 112);

      v9(a1);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v8;
      }

      MEMORY[0x193AC11E0](*&v10);

      --v4;
    }

    while (v4);
  }
}

void specialized Array<A>.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x193AC11A0](v8);
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x193AC11A0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      MEMORY[0x193AC03C0](v4++, a2);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    do
    {
      v6 = *v5++;
      v7 = v6;
      _CFObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t specialized static EitherGradient.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (a2[1])
    {
      if (v2 == v4)
      {
        outlined copy of EitherGradient(*a1, 1);
        outlined copy of EitherGradient(v2, 1);
        outlined consume of EitherGradient(v2, 1);
        outlined consume of EitherGradient(v2, 1);
        return 1;
      }

      v10 = *(*v2 + 88);
      outlined copy of EitherGradient(*a2, 1);
      v11 = outlined copy of EitherGradient(v2, 1);
      v7 = v10(v4, v11);
      outlined consume of EitherGradient(v2, 1);
      v8 = v4;
      v9 = 1;
      goto LABEL_9;
    }

LABEL_6:
    outlined copy of EitherGradient(*a2, *(a2 + 8));
    outlined copy of EitherGradient(v2, v3);
    outlined consume of EitherGradient(v2, v3);
    outlined consume of EitherGradient(v4, v5);
    return 0;
  }

  if (a2[1])
  {
    goto LABEL_6;
  }

  outlined copy of EitherGradient(*a2, 0);
  outlined copy of EitherGradient(v2, 0);
  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8GradientV4StopV_Tt1g5(v2, v4);
  outlined consume of EitherGradient(v2, 0);
  v8 = v4;
  v9 = 0;
LABEL_9:
  outlined consume of EitherGradient(v8, v9);
  return v7 & 1;
}

void lazy protocol witness table accessor for type AnyGradient and conformance AnyGradient()
{
  if (!lazy protocol witness table cache variable for type AnyGradient and conformance AnyGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyGradient, &type metadata for AnyGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyGradient and conformance AnyGradient);
  }
}

void lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag()
{
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag, &type metadata for Gradient.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag, &type metadata for Gradient.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag, &type metadata for Gradient.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }
}

void lazy protocol witness table accessor for type EitherGradient and conformance EitherGradient()
{
  if (!lazy protocol witness table cache variable for type EitherGradient and conformance EitherGradient)
  {
    swift_getWitnessTable(protocol conformance descriptor for EitherGradient, &type metadata for EitherGradient, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EitherGradient and conformance EitherGradient);
  }
}

uint64_t initializeWithCopy for _AnyLinearGradient(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t *assignWithCopy for _AnyLinearGradient(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t *assignWithTake for _AnyLinearGradient(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

double outlined copy of EitherGradient(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t assignWithCopy for EitherGradient(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of EitherGradient(v5, v6);
  return a1;
}

uint64_t assignWithTake for EitherGradient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of EitherGradient(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for EitherGradient(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for EitherGradient(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef()
{
  if (!lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef)
  {
    type metadata accessor for CFDictionaryRef(255);
    swift_getWitnessTable(protocol conformance descriptor for CFDictionaryRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef);
  }
}

void lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag, &type metadata for Color.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag, &type metadata for Color.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag, &type metadata for Color.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }
}

double outlined consume of Color.ProviderTag(unint64_t a1)
{
  if (a1 >= 0x19)
  {
  }

  return result;
}

void type metadata accessor for GradientBox<Gradient>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag()
{
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ProviderTag, &type metadata for Font.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ProviderTag, &type metadata for Font.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ProviderTag, &type metadata for Font.ProviderTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }
}

uint64_t type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v11[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return a2(a1, v11, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for static GraphReusable.isTriviallyReusable.getter in conformance BodyInputElement()
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v0;
  }
}

void closure #1 in _GraphInputs.containsNonEmptyBodyStack.getter(uint64_t a1, uint64_t *a2, BOOL *a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-1] - v8;
  v10 = *a2;
  *a3 = *a2 != 0;
  if (v10)
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      v22[0] = a1;
      AGGraphAddTraceEvent();
    }

    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v7, static Log.graphReuse);
    outlined init with copy of Logger?(v11, v9);
    v12 = type metadata accessor for Logger();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      outlined destroy of Logger?(v9);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22[0] = v17;
        *v16 = 136315138;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v22);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_18D018000, v14, v15, "Input %s is preventing reuse", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193AC4820](v17, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      (*(v13 + 8))(v9, v12);
    }
  }
}

void static BodyCountInput.defaultValue.getter(void *a1@<X8>)
{
  type metadata accessor for (_:)();

  Stack.init()(a1);
}

void specialized static ViewModifier._makeView(modifier:inputs:body:)()
{
  static DynamicPropertyCache.fields(of:)(v0, v1);
  AGTypeGetKind();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static ViewModifier._makeViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v24);
  v11 = v24[0];
  v10 = v24[1];
  v12 = v25;
  v13 = v26;
  outlined init with copy of _ViewListInputs(a2, v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v20) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v24, v11, v10, v12 | (v13 << 32), a1, &v20);
    v14 = v20;
    v17 = v22;
    v18 = v21;
    v15 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v14, v24, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, v10, (v13 << 32) | v12, v18, v17);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
        return outlined destroy of _ViewListInputs(v24);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v14, v24, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
  }

  return result;
}

{
  v27 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v24);
  v11 = v24[0];
  v10 = v24[1];
  v12 = v25;
  v13 = v26;
  outlined init with copy of _ViewListInputs(a2, v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v20) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v24, v11, v10, v12 | (v13 << 32), a1, &v20);
    v14 = v20;
    v17 = v22;
    v18 = v21;
    v15 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5(v14, v24, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, v10, (v13 << 32) | v12, v18, v17);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
        return outlined destroy of _ViewListInputs(v24);
      }
    }

    else
    {
      _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5(v14, v24, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
  }

  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v22);
  v10 = v22;
  v11 = v23;
  v12 = v24;
  outlined init with copy of _ViewListInputs(a2, &v22);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v18) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v22, v10, *(&v10 + 1), v11 | (v12 << 32), a1, &v18);
    v15 = v20;
    v16 = v19;
    v13 = v21;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v22, a5);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v18) = v11;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), (v12 << 32) | v11, v16, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout(v10, *(&v10 + 1), v11);
        return outlined destroy of _ViewListInputs(&v22);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v22, a5);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v22);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v10, *(&v10 + 1), v11);
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  static DynamicPropertyCache.fields(of:)(v9, v25);
  v11 = v25[0];
  v10 = v25[1];
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, v25);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v21) = v12;
    v19 = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v25, v11, v10, v12 | (v13 << 32), v8, &v21);
    v14 = v21;
    v15 = v23;
    v18 = v22;
    v16 = v24;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickW033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      AGSubgraphEndTreeElement();
      if ((v16 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v21) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v11, v10, ((v13 << 32) | v12), v18, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
        return outlined destroy of _ViewListInputs(v25);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v25);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v26 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  static DynamicPropertyCache.fields(of:)(v9, v23);
  v11 = v23[0];
  v10 = v23[1];
  v12 = v24;
  v13 = v25;
  outlined init with copy of _ViewListInputs(a2, v23);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v19) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v23, v11, v10, v12 | (v13 << 32), v8, &v19);
    v14 = v21;
    v17 = v20;
    v15 = v22;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationW033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, type metadata accessor for _ValueActionModifier2);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5(v23, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v19) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v8, v11, v10, ((v13 << 32) | v12), v17, v14);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
        return outlined destroy of _ViewListInputs(v23);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5(v23, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v23);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for KickModifier, &v21);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  outlined init with copy of _ViewListInputs(a2, &v21);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v17) = v10;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v21, v9, *(&v9 + 1), v10 | (v11 << 32), a1, &v17);
    v14 = v19;
    v15 = v18;
    v12 = v20;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>(0);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v21, a5);
      AGSubgraphEndTreeElement();
      if ((v12 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v17) = v10;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v9, *(&v9 + 1), (v11 << 32) | v10, v15, v14);
        outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
        return outlined destroy of _ViewListInputs(&v21);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v21, a5);
      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v21);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  static DynamicPropertyCache.fields(of:)(v9, v25);
  v11 = v25[0];
  v10 = v25[1];
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, v25);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v21) = v12;
    v19 = v8;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v25, v11, v10, v12 | (v13 << 32), v8, &v21);
    v14 = v21;
    v15 = v23;
    v18 = v22;
    v16 = v24;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseW033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      AGSubgraphEndTreeElement();
      if ((v16 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v21) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v11, v10, ((v13 << 32) | v12), v18, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
        return outlined destroy of _ViewListInputs(v25);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v25);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v11, v10, v12);
  }

  return result;
}

uint64_t specialized static ViewModifier.makeViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v20);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  outlined init with copy of _ViewListInputs(a2, &v20);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>(0);
    LOBYTE(v18[0]) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v20, v10, *(&v10 + 1), v11 | (v12 << 32), a1, v18);
    v15 = v18[2];
    v16 = v18[1];
    v13 = v19;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0x17CaptureProtectionvW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5(&v20, a5);
      AGSubgraphEndTreeElement();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5(&v20, a5);
      if (v13)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v20);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v10, *(&v10 + 1), v11);
      }
    }

    LOBYTE(v18[0]) = v11;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), (v12 << 32) | v11, v16, v15);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD000000000000024, 0x800000018DD779C0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v28 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v25);
  v10 = v25[0];
  v11 = v25[1];
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, v25);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>(0);
    LOBYTE(v23[0]) = v12;
    v21 = v13;
    v14 = v12 | (v13 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v25, v10, v11, v14, a1, v23);
    v16 = LODWORD(v23[0]);
    v19 = v23[2];
    v20 = v23[1];
    v17 = v24;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5(v16, v25, a5);
      AGSubgraphEndTreeElement();
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5(v16, v25, a5);
      if (v17)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v25);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v10, v11, v12);
      }
    }

    LOBYTE(v23[0]) = v12;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v10, v11, (v21 << 32) | v12, v20, v19);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD779A0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static ViewModifier.makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v22);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  outlined init with copy of _ViewListInputs(a2, &v22);
  if (AGTypeGetKind() - 2 < 4)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
    LOBYTE(v20[0]) = v10;
    v19 = v11;
    v12 = v10 | (v11 << 32);
    v13 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v22, v9, *(&v9 + 1), v12, a1, v20);
    v14 = LODWORD(v20[0]);
    v17 = v20[2];
    v18 = v20[1];
    v15 = v21;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(v14, &v22);
      AGSubgraphEndTreeElement();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(v14, &v22);
      if (v15)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v22);
        return outlined consume of DynamicPropertyCache.Fields.Layout(v9, *(&v9 + 1), v10);
      }
    }

    LOBYTE(v20[0]) = v10;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v13, v9, *(&v9 + 1), (v19 << 32) | v10, v18, v17);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD77980);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA020GlassTransitionStateN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>(0);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015TranslationKickN033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(0);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA018ScheduledAnimationI033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA018ScheduledAnimationI033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA04KickN033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA04KickI033_02B8A9C041E17C70E13F37D6E2D14302LLVG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA04KickI033_02B8A9C041E17C70E13F37D6E2D14302LLVG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(0);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA010ScalePulseN033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA016GlassEffectShapeD033_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectShapeN033_62A32D59B8A902A88963544196023CF7LLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectShapeI033_62A32D59B8A902A88963544196023CF7LLVG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectShapeI033_62A32D59B8A902A88963544196023CF7LLVG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015FlexInteractionD0V_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015FlexInteractionN0VGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015FlexInteractionI0VG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015FlexInteractionI0VG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA016GlassEffectLocalD008_3DF70D9O23D7473F4D189A049B764CFEFLLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectLocalN008_3DF70D9T23D7473F4D189A049B764CFEFLLVGG_SiSgACcTt0g5(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?), v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(&v45);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(&v45);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentCaptureProtectionViewModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassEffectLocalModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexibleButtonFrameModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA011GlassEffectO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0p14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_O5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA011GlassEffectL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA010GlassEntryO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO4ItemVGA2_2IDVAA0p4ItemD0AVLLVGTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA010GlassEntryL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA019FlexibleButtonFrameL0VG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA019FlexibleButtonFrameP0VG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a1, v14);
  v8 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v8, v13);
  if (v9)
  {
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0;
  }

  v15 |= v10;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    a4(0);
    AGSubgraphBeginTreeElement();
    a5(OffsetAttribute2, v14);
    AGSubgraphEndTreeElement();
  }

  else
  {
    a5(OffsetAttribute2, v14);
  }

  return outlined destroy of _ViewListInputs(v14);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t x8_0@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v10);
  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  v11 |= v7;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA019FlexibleButtonFrameD0VG_Tt0t2g5(v10, x8_0);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA019FlexibleButtonFrameD0VG_Tt0t2g5(v10, x8_0);
  }

  return outlined destroy of _ViewListInputs(v10);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexInteractionModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance GlassEffectLocalModifier(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v9[4] = a1[4];
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  return (a6)(v9, a2, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassTransitionStateModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SafeAreaPaddingModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

void protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance ContentCaptureProtectionViewModifier(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, _OWORD *))
{
  v12 = a1[3];
  v15[2] = a1[2];
  v15[3] = v12;
  v15[4] = a1[4];
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  a8(a7, v14, v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1)
{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt1B5);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5);
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, void))
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return a3(v6, a2, 0);
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015TranslationKickI033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_TtB5, a3, a4, a5, a6, a7, a8);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA020GlassTransitionStateI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_TtB5, a3, a4, a5, a6, a7, a8);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA010ScalePulseI033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_TtB5, a3, a4, a5, a6, a7, a8);
}

uint64_t _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5Tm@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v13;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a8 = MEMORY[0x1E69E7CC0];
    *(a8 + 8) = 0;
    *(a8 + 12) = result;
  }

  else
  {

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    return a7(OffsetAttribute2, v17, a6, a3, a4);
  }

  return result;
}

double _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA019FlexibleButtonFrameP0VG_Tt2G5@<D0>(uint64_t a1@<X0>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v7;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = 0;
    *(a5 + 12) = Attribute;
  }

  else
  {

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_du29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_y4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n(OffsetAttribute2, v12, a3, a5);
  }

  return result;
}

uint64_t specialized static BodyInputElement.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      type metadata accessor for (_:_:)();
      return AGCompareValues();
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for (_:_:)();
  return AGCompareValues();
}

uint64_t assignWithCopy for BodyInputElement(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of BodyInputElement(*a2, v4);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of BodyInputElement(v6, v7);
  return a1;
}

uint64_t assignWithTake for BodyInputElement(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of BodyInputElement(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for BodyInputElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized BodyInputElement.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v8 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        return 1;
      }
    }

    else if (static Semantics.forced >= v8)
    {
      return 1;
    }

    type metadata accessor for (_:_:)();
    return AGCompareValues();
  }

  if (a3)
  {
    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (static Semantics.forced < v6)
    {
LABEL_22:
      type metadata accessor for (_:_:)();
      return AGCompareValues();
    }

    return 1;
  }

LABEL_11:
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    AGGraphAddTraceEvent();
  }

  return 0;
}

void _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>(255);
    v8 = type metadata accessor for ModifiedContent(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>(255);
    v4[0] = &protocol witness table for _ViewModifier_Content<A>;
    v4[1] = &protocol witness table for GlassEffectContainerModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t *a2)
{
  return specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(a2, *(v2 + 16), 88, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(a2, *(v2 + 16), 488, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    type metadata accessor for ModifiedContent<Color, _FrameLayout>(255, a4, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], a5);
    v12 = type metadata accessor for ModifiedContent(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ModifiedContent(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Color, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

SwiftUI::AccessibilityVisibility::Resolved_optional __swiftcall AccessibilityVisibility.Resolved.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibility.Resolved()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibility()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet<>.resolvesToHidden.getter()
{
  if ((*v0 & 4) != 0)
  {
    return 1;
  }

  if ((*(v0 + 4) & 4) != 0)
  {
    return 0;
  }

  return (*v0 >> 3) & 1;
}

void AccessibilityNullableOptionSet<>.resolved.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 4) != 0 || (v2 & 8) != 0 && (v1[1] & 4) == 0)
  {
    *a1 = 3;
  }

  else
  {
    LOBYTE(v3) = 2;
    if ((v2 & 0x10) == 0)
    {
      if ((v2 & 2) != 0)
      {
        LOBYTE(v3) = 2;
      }

      else
      {
        LOBYTE(v3) = 4;
      }

      if (v2)
      {
        v3 = (*v1 & 2u) >> 1;
      }

      if ((v2 & 0x40) != 0)
      {
        LOBYTE(v3) = 0;
      }
    }

    *a1 = v3;
  }
}

uint64_t AccessibilityNullableOptionSet<>.shouldApplyPlatformElementOverride.getter()
{
  v1 = v0[1];
  if (((*v0 | v1) & 0xC) != 0)
  {
    if (*v0 & 3 | v0[1] & 1)
    {
      return 257;
    }

    if ((v1 & 2) == 0)
    {
      return ((v0[1] & 4) == 0) & (*v0 >> 3) | ((*v0 & 4u) >> 2) | 0x100;
    }

    v3 = 256;
  }

  else
  {
    if (*v0 & 3 | v0[1] & 1)
    {
      return 1;
    }

    v3 = 0;
    if ((v1 & 2) == 0)
    {
      return 0;
    }
  }

  return v3 | 1u;
}

uint64_t View.accessibilityDisabled()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModifiedContent(0, a1, &type metadata for DisableAccessibilityNodesModifier, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - v7;
  View.modifier<A>(_:)();
  KeyPath = swift_getKeyPath();
  v14 = 0;
  v13[0] = a2;
  v13[1] = &protocol witness table for DisableAccessibilityNodesModifier;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v13);
  View.environment<A>(_:_:)(KeyPath, &v14, v5, v10);

  return (*(v6 + 8))(v8, v5);
}

void key path getter for EnvironmentValues.accessibilityEnabled : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(*a1);
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

double key path setter for EnvironmentValues.accessibilityEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA020AccessibilityEnabledK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v4, *a2);
  }

  return result;
}

double key path setter for _ViewInputs.accessibilityPreferenceProvider : _ViewInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(a2, v3, v4);

  return result;
}

double _ViewInputs.accessibilityPreferenceProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v2, a1, a2);

  return result;
}

void (*_ViewInputs.accessibilityPreferenceProvider.modify(uint64_t **a1))(Swift::UInt ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.accessibilityPreferenceProvider.modify;
}

void _ViewInputs.accessibilityPreferenceProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

char *protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance DisableAccessibilityNodesModifier(uint64_t a1, uint64_t *a2)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(*a2);
  if (result)
  {
    return PreferenceKeys.remove(_:)(result, v3);
  }

  return result;
}

void lazy protocol witness table accessor for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved()
{
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibility.Resolved, &type metadata for AccessibilityVisibility.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityVisibility.Resolved, &type metadata for AccessibilityVisibility.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved);
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>)
  {
    v4 = type metadata accessor for _EnvironmentKeyWritingModifier(0, MEMORY[0x1E69E6370], a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>);
    }
  }
}

uint64_t ViewGraphHost.updateDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.updateDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.updateDelegate.modify;
}

void ViewGraphHost.updateDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ViewGraphHost.renderDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.renderDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.renderDelegate.modify;
}

void ViewGraphHost.renderDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ViewGraphHost.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.delegate.modify;
}

void ViewGraphHost.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void ViewGraphHost.idiom.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 64) = v2;
}

double ViewGraphHost.initialInheritedEnvironment.getter@<D0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  a1[1] = v4;
  return outlined copy of EnvironmentValues?(v3, v4);
}

double ViewGraphHost.initialInheritedEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return outlined consume of EnvironmentValues?(v4, v5);
}

double ViewGraphHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

void ViewGraphHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 104) = v2;
}

void ViewGraphHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 114) = v2;
}

void ViewGraphHost.parentPhase.getter(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 132);
  *a1 = *(v1 + 128);
  *(a1 + 4) = v3;
}

void ViewGraphHost.parentPhase.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  swift_beginAccess();
  *(v1 + 128) = v2;
  *(v1 + 132) = v3;
}

uint64_t ViewGraphHost.__allocating_init<A>(rootViewType:outputs:viewDefinition:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ViewGraphHost.accessibilityEnabled.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  return *(v1 + 360);
}

void ViewGraphHost.accessibilityEnabled.setter(char a1)
{
  v3 = *(v1 + 88);
  swift_beginAccess();
  *(v3 + 360) = a1;
}

void (*ViewGraphHost.accessibilityEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 360);
  return ViewGraphHost.accessibilityEnabled.modify;
}

void ViewGraphHost.accessibilityEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + 360) = *(v1 + 32);
  free(v1);
}

uint64_t ViewGraphHost.updateRequiredMainThread.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return AGGraphGetCounter() != *(v1 + 368);
  }

  __break(1u);
  return result;
}

BOOL ViewGraphHost.mayDeferUpdate.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  if (*(v1 + 168) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 136);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate);
  return v3 > INFINITY || v3 < INFINITY;
}

double ViewGraphHost.environment.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t ViewGraphHost.updateRootView(transaction:)(unint64_t a1)
{
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v3 + 24) = *(v1 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  v4 = _threadTransactionID();
  specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, v4, partial apply for closure #1 in ViewGraphHost.updateRootView(transaction:), v3, 1, 1);
}

uint64_t closure #1 in ViewGraphHost.updateRootView(transaction:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ViewGraphHost.setEnvironment(_:wrapper:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL ViewGraphHost.setSafeAreaInsets(_:keyboardHeight:cornerInsets:)(int8x16_t *a1, uint64_t a2, char a3, __int128 *a4)
{
  v42 = *a1;
  v44 = a1[1];
  swift_beginAccess();
  AGGraphGetValue();
  EnvironmentValues.pixelLength.getter();
  v9 = a1[2].i8[0];
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  v46 = vbicq_s8(v42, v11);
  v47 = vbicq_s8(v44, v11);
  EdgeInsets.round(toMultipleOf:)(v8);
  v12 = 0uLL;
  v13 = 1;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if ((a4[4] & 1) == 0)
  {
    v13 = 0;
    v15 = a4[2];
    v16 = a4[3];
    v12 = *a4;
    v14 = a4[1];
  }

  v39 = v14;
  v40 = v15;
  v41 = v12;
  v43 = v16;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if ((v9 & 1) == 0)
  {
    v20 = *&v46.i64[1];
    v21 = *v46.i64;
    v18 = *&v47.i64[1];
    v19 = *v47.i64;
  }

  v45 = v21;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((a3 & 1) == 0)
  {
    v17 = *&a2;
    v22 = *&a2 - *v47.i64;
    v38 = v20;
    v26 = v18;
    if (Edge.Set.contains(_:)(SwiftUI_Edge_top))
    {
      v27 = *&a2 - *v47.i64;
    }

    else
    {
      v27 = 0.0;
    }

    if (Edge.Set.contains(_:)(SwiftUI_Edge_leading))
    {
      v23 = *&a2 - *v47.i64;
    }

    else
    {
      v23 = 0.0;
    }

    if (Edge.Set.contains(_:)(SwiftUI_Edge_bottom))
    {
      v25 = *&a2 - *v47.i64;
    }

    else
    {
      v25 = 0.0;
    }

    if (!Edge.Set.contains(_:)(SwiftUI_Edge_trailing))
    {
      v22 = 0.0;
    }

    v24 = v27;
    v18 = v26;
    v20 = v38;
  }

  if (v25 >= 0.0)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if (v25 < 0.0)
  {
    v19 = -v25;
  }

  else
  {
    v17 = v25;
  }

  if (v45 != 0.0 || v20 != 0.0 || v19 != 0.0 || v18 != 0.0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[112 * v31];
    *(v32 + 4) = 1;
    *(v32 + 5) = v45;
    *(v32 + 6) = v20;
    *(v32 + 7) = v19;
    *(v32 + 8) = v18;
    *(v32 + 72) = v41;
    *(v32 + 88) = v39;
    *(v32 + 104) = v40;
    *(v32 + 120) = v43;
    v32[136] = v13;
    if (v24 != 0.0)
    {
      goto LABEL_39;
    }

LABEL_36:
    if (v23 == 0.0 && v17 == 0.0 && v22 == 0.0)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (v24 == 0.0)
  {
    goto LABEL_36;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  }

  v34 = *(v29 + 2);
  v33 = *(v29 + 3);
  if (v34 >= v33 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v29);
  }

  *(v29 + 2) = v34 + 1;
  v35 = &v29[112 * v34];
  *(v35 + 4) = v28;
  *(v35 + 5) = v24;
  *(v35 + 6) = v23;
  *(v35 + 7) = v17;
  *(v35 + 8) = v22;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 104) = 0u;
  *(v35 + 120) = 0u;
  v35[136] = 1;
LABEL_44:
  v36 = ViewGraph.setSafeAreaInsets(_:)(v29);

  return v36;
}

Swift::Void __swiftcall ViewGraphHost.invalidateRootContainerShape()()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  ViewGraph.invalidateRootContainerShape()();

  _MovableLockUnlock(v0);
}

void *_GraphInputs.viewGraphHostIdiom.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v3, v8);
  if (result && (v5 = result, (result = result[9]) != 0))
  {
    result = (*(v5[10] + 8))(&v7);
    v6 = v7;
  }

  else
  {
    v6 = 13;
  }

  *a1 = v6;
  return result;
}

double _GraphInputs.viewGraphHostIdiom.setter(char *a1)
{
  v2 = 0;
  v3 = 0;
  if (*a1 != 13)
  {
    v5 = *a1;
    AnyInterfaceIdiom.init(idiom:)(&v5, v6);
    v2 = v6[0];
    v3 = v6[1];
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(v1, v2, v3);

  return result;
}

void (*_GraphInputs.viewGraphHostIdiom.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = v5;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v5, v8);
  if (v6 && *(v6 + 72))
  {
    (*(*(v6 + 80) + 8))();
  }

  else
  {
    *(v4 + 32) = 13;
  }

  return _GraphInputs.viewGraphHostIdiom.modify;
}

void _GraphInputs.viewGraphHostIdiom.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3 == 13)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v3 != 13)
  {
LABEL_5:
    v8[0] = *(*a1 + 32);
    AnyInterfaceIdiom.init(idiom:)(v8, v7);
    v4 = v7[0];
    v5 = v7[1];
    goto LABEL_7;
  }

  v4 = 0;
  v5 = 0;
LABEL_7:
  v6 = v2[2];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(v6, v4, v5);

  free(v2);
}

double key path setter for _GraphInputs.updateCycleUseSetNeedsLayout : _GraphInputs(char *a1, Swift::UInt *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(a2, v3);

  return result;
}

double _GraphInputs.updateCycleUseSetNeedsLayout.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v1, a1);

  return result;
}

void (*_GraphInputs.updateCycleUseSetNeedsLayout.modify(uint64_t *a1))(Swift::UInt ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.updateCycleUseSetNeedsLayout.modify;
}

void _GraphInputs.updateCycleUseSetNeedsLayout.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.UpdateCycleUseSetNeedsLayoutKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v2;
  }

  *a1 = result;
  return result;
}

BOOL static ViewGraphHostUpdate.isOwner.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  return _MovableLockIsOwner(static Update._lock);
}

uint64_t ViewGraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    ViewGraphRootValueUpdater._addPreference<A>(_:)(a1, ObjectType, a2, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

double ViewGraphHost.rootContentPath(kind:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  specialized static Update.begin()();
  v5 = static Update.dispatchDepth;
  static Update.dispatchDepth = static Update.depth;
  swift_beginAccess();
  v6 = static Update.Action.nextActionID;
  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  swift_endAccess();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  v7 = (v6 >> 1) + 1;
  if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
    *&v11[0] = v7;
    BYTE8(v11[0]) = 1;
    type metadata accessor for (UInt32, UInt32?)(0);
    AGGraphAddTraceEvent();
  }

  closure #1 in ViewGraphHost.rootContentPath(kind:)(v2, v4, v11);
  $defer #3 <A>() in static Update.dispatchImmediately<A>(reason:_:)(v7, 17);
  static Update.dispatchDepth = v5;
  static Update.end()();
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v8;
  return result;
}

void closure #1 in ViewGraphHost.rootContentPath(kind:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0u;
  v18 = 0u;
  v6 = 6;
  v19 = 6;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v9 = ViewGraphRootValueUpdater.responderNode.getter(ObjectType, v7);
  swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_6:
    v6 = 6;
LABEL_7:
    v11 = 0uLL;
    v12 = 0uLL;
    goto LABEL_8;
  }

  type metadata accessor for ViewResponder();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_6;
  }

  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 2;
  (*(*v10 + 192))(&v17, &v16, v13, 0, 0);

  outlined destroy of CoordinateSpace(v13);
  v12 = v17;
  v11 = v18;
  v6 = v19;
LABEL_8:
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v6;
}

double ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 2;
  *(v15 + 56) = partial apply for closure #1 in ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:);
  *(v15 + 64) = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v13 + 352);
  *(v13 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a1, a2 & 1, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(v13 + 352) = v18;
  swift_endAccess();

  return result;
}

double ViewGraphHost.stopObservingSizeThatFitsChanges(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  specialized ViewGraphGeometryObservers.stopObserving(proposal:)(a1, a2 & 1, a3, a4 & 1);
  swift_endAccess();
  return result;
}

void specialized ViewGraphGeometryObservers.stopObserving(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1, a3, a4 & 1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    v11 = *v5;
    *v5 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    specialized _NativeDictionary._delete(at:)(v8, v10);

    *v5 = v10;
  }
}

Swift::Int ViewGraphHost.Idiom.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double ViewGraphHost.LayoutInvalidator.viewGraph.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*ViewGraphHost.LayoutInvalidator.viewGraph.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return ViewGraphHost.LayoutInvalidator.viewGraph.modify;
}

double ViewGraphHost.LayoutInvalidator.viewGraph.modify(void *a1)
{
  swift_weakAssign();

  return result;
}

void ViewGraphHost.LayoutInvalidator.init(viewGraph:layoutComputer:)(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *(a3 + 8) = a2;
}

double key path getter for ViewGraphHostEnvironmentWrapper.environment : ViewGraphHostEnvironmentWrapper@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

double key path setter for ViewGraphHostEnvironmentWrapper.environment : ViewGraphHostEnvironmentWrapper(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

void ViewGraphHostEnvironmentWrapper.phase.getter(_DWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

id ViewGraphHostEnvironmentWrapper.init()()
{
  EnvironmentValues.init()(&v0[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment]);
  *&v0[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewGraphHostEnvironmentWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ViewGraphHostEnvironmentWrapper.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  EnvironmentValues.init()(&v3[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment]);

  *&v3[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase] = 0;

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t ViewGraphHostEnvironmentWrapper.init(coder:)(void *a1)
{
  EnvironmentValues.init()((v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment));

  *(v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase) = 0;

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

id ViewGraphHostEnvironmentWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewGraphHostEnvironmentWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance ViewGraphHost(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 104) = v2;
}

id ViewGraphDisplayLink.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewGraphDisplayLink.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for (UInt32, UInt32?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UInt32, UInt32?))
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UInt32, UInt32?));
    }
  }
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer)
  {
    lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer();
    v4 = type metadata accessor for ViewGraphGeometryObservers.Observer(a1, &type metadata for SizeThatFitsMeasurer, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer);
    }
  }
}

void lazy protocol witness table accessor for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom()
{
  if (!lazy protocol witness table cache variable for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewGraphHost.Idiom, &type metadata for ViewGraphHost.Idiom, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom);
  }
}

uint64_t assignWithCopy for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

double assignWithTake for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

void lazy protocol witness table accessor for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName()
{
  if (!lazy protocol witness table cache variable for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewGraphDisplayLink.ThreadName, &type metadata for ViewGraphDisplayLink.ThreadName, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName);
  }
}

uint64_t outlined init with copy of ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t *PairwisePreferenceCombinerVisitor.init(outputs:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a3 + 32) = MEMORY[0x1E69E7CC0];
  *(a3 + 40) = 0;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t PreferenceCombiner.init()@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  result = Array.init()();
  *a3 = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceCombiner<A>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  static PreferenceCombiner.initialValue.getter();
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v17[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for PreferenceCombiner<A>, a2, v14);
  v17[-1] = v15;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in static Rule._updateDefault(_:)partial apply, &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t static PreferenceCombiner.initialValue.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PairPreferenceCombiner<A>(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  static PreferenceCombiner.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18[-2] = a2;
  swift_getWitnessTable(protocol conformance descriptor for PairPreferenceCombiner<A>, a2, v15);
  v18[-1] = v16;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v18[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

double PairwisePreferenceCombinerVisitor.outputs.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *a2 = v4;
  *(a2 + 8) = v5;

  return result;
}

double PairwisePreferenceCombinerVisitor.result.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;

  return result;
}

void PairwisePreferenceCombinerVisitor.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

double MultiPreferenceCombinerVisitor.result.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;

  return result;
}

void MultiPreferenceCombinerVisitor.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

uint64_t MultiPreferenceCombinerVisitor.init(outputs:result:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t specialized PreferenceCombiner.description.getter(uint64_t a1)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 548047074;
}

double destroy for PairwisePreferenceCombinerVisitor(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for PairwisePreferenceCombinerVisitor(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 10);

  return a1;
}

uint64_t *assignWithCopy for PairwisePreferenceCombinerVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  a1[4] = a2[4];

  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t *assignWithTake for PairwisePreferenceCombinerVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  a1[4] = a2[4];

  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for MultiPreferenceCombinerVisitor(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 4);

  return a1;
}

uint64_t *assignWithCopy for MultiPreferenceCombinerVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 4) = *(a2 + 4);
  return a1;
}

uint64_t assignWithTake for MultiPreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultiPreferenceCombinerVisitor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for MultiPreferenceCombinerVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for HostPreferencesCombiner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for HostPreferencesCombiner(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

double ContentStyle.MaterialStyle.resolveColor(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = 1.0;
  if ((*(v1 + 12) & 1) == 0)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  *(a1 + 4) = v2;
  *(a1 + 8) = v2;
  result = 2.24711695e307;
  *(a1 + 12) = 0x7FC000003F800000;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Material.Layer>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>);
    }
  }
}

uint64_t SpeedAnimation.shouldMerge<A, B>(base:previous:previousBase:value:time:context:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a1)
  {
    return 0;
  }

  specialized Animation.init<A>(_:)(a5, a9);
  v14 = (*(a11 + 32))(a2 * a3);

  return v14 & 1;
}

double protocol witness for CustomAnimationModifier.function(base:) in conformance SpeedAnimation@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *a2 = v11;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 8;

  return outlined copy of Animation.Function(v5, v6, v7, v8, v9, v10);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedAnimation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

void *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance SpeedAnimation(void *result)
{
  v2 = *v1;
  if (*v1 != 0.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0x31uLL);
    v4 = v3[1];
    v5 = v4 + 8;
    if (__OFADD__(v4, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v5)
    {
      v3[1] = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

double outlined copy of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
      goto LABEL_4;
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
LABEL_4:
  }

  return result;
}

uint64_t KeyframeTrack.init<>(content:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  v13[0] = a2;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v9 = type metadata accessor for KeyframeTrack(0, v13);
  return a1(v9, v10, v11);
}

double KeyframeTrack.init(_:content:)@<D0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  v6 = *a1;
  *a5 = a1;
  v9 = *(v6 + *MEMORY[0x1E69E6CE8]);
  v10 = a3;
  v11 = a4;
  type metadata accessor for KeyframeTrack(0, &v9);

  a2(v7);

  return result;
}

double KeyframeTrack._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v35 = a1;
  v7 = *(a4 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v31 = a4;
  v12 = *(a4 + 24);
  v13 = type metadata accessor for Optional();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  v20 = *v4;
  swift_getAtKeyPath();
  v21 = a3;
  v22 = v8;
  (*(v9 + 16))(v11, v21, v8);
  v23 = *(v7 - 8);
  if ((*(v23 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v22);
    (*(v16 + 56))(v15, 1, 1, v12);
  }

  else
  {
    swift_getAtKeyPath();
    (*(v16 + 56))(v15, 0, 1, v12);
    (*(v23 + 8))(v11, v7);
  }

  v24 = KeyframeTrack.resolve(initialValue:initialVelocity:)(v19, v15, v31);
  (*(v32 + 8))(v15, v33);
  (*(v16 + 8))(v19, v12);
  v27 = type metadata accessor for _ResolvedKeyframes(0, v7, v25, v26);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _ResolvedKeyframes.append<A>(keyPath:path:)(v20, v24, v27, AssociatedConformanceWitness);

  return result;
}

uint64_t KeyframeTrack.resolve(initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v12 = *(a3 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _ResolvedKeyframeTrackContent.init()(v6, AssociatedConformanceWitness, &v19, v8);
  (*(*(&v12 + 1) + 48))(&v19, v12, *(&v12 + 1));
  *&v9 = *(a3 + 16);
  *(&v9 + 1) = v6;
  v14 = v9;
  v15 = v12;
  v16 = v19;
  v17 = a2;
  v18 = a1;
  v10 = AnimationPath.init(_:)(partial apply for closure #1 in KeyframeTrack.resolve(initialValue:initialVelocity:), v13, v6, AssociatedConformanceWitness);

  return v10;
}

void *closure #1 in KeyframeTrack.resolve(initialValue:initialVelocity:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v456 = a6;
  v419 = a4;
  v381 = a3;
  v455 = a1;
  v459 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v371 = &v356 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v424 = type metadata accessor for CubicKeyframeHelper.Connection(0, a6, AssociatedConformanceWitness, v10);
  v441 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v406 = &v356 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v416 = (&v356 - v13);
  v428 = type metadata accessor for CubicKeyframeHelper(0, a6, AssociatedConformanceWitness, v14);
  v435 = *(v428 - 8);
  MEMORY[0x1EEE9AC00](v428);
  v431 = &v356 - v15;
  v445 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic(0, a6, AssociatedConformanceWitness, v16);
  v433 = *(v445 - 8);
  MEMORY[0x1EEE9AC00](v445);
  v372 = &v356 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v368 = &v356 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v444 = &v356 - v21;
  v23 = type metadata accessor for HermiteCurve(0, a6, AssociatedConformanceWitness, v22);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v427 = &v356 - v24;
  v429 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear(0, a6, AssociatedConformanceWitness, v25);
  v448 = *(v429 - 8);
  MEMORY[0x1EEE9AC00](v429);
  v366 = &v356 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v373 = &v356 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v426 = &v356 - v30;
  v380 = type metadata accessor for Optional();
  v434 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v375 = &v356 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v405 = &v356 - v33;
  v35 = type metadata accessor for AnimationPath.Element(255, a6, AssociatedConformanceWitness, v34);
  v422 = type metadata accessor for Optional();
  v450 = *(v422 - 8);
  MEMORY[0x1EEE9AC00](v422);
  v404 = &v356 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v403 = &v356 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v402 = &v356 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v386 = &v356 - v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v447 = type metadata accessor for Optional();
  v437 = *(v447 - 8);
  MEMORY[0x1EEE9AC00](v447);
  v365 = &v356 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v364 = &v356 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v401 = &v356 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v356 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v400 = &v356 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v415 = &v356 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v414 = &v356 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v413 = &v356 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v379 = &v356 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v392 = &v356 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v417 = &v356 - v65;
  v438 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring(0, a6, AssociatedConformanceWitness, v66);
  v423 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v363 = &v356 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v443 = &v356 - v69;
  v454 = v35;
  v451 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v442 = &v356 - v71;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v73);
  v362 = &v356 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v361 = &v356 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v385 = &v356 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v360 = &v356 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v374 = &v356 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v384 = &v356 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v356 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v399 = &v356 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v398 = &v356 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v397 = &v356 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v412 = &v356 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v411 = &v356 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v425 = &v356 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v388 = &v356 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v440 = &v356 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v452 = &v356 - v105;
  v107 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment(0, a6, AssociatedConformanceWitness, v106);
  v108 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v383 = &v356 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110);
  v382 = &v356 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v367 = &v356 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v387 = &v356 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v458 = &v356 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v457 = &v356 - v119;
  v463 = a2;
  v120 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6338], v120);
  result = RandomAccessCollection<>.indices.getter();
  if (v460 != *(&v460 + 1))
  {
    if (*(&v460 + 1) < v460)
    {
      __break(1u);
    }

    else if (v460 < *(&v460 + 1))
    {
      v446 = (v108 + 16);
      v410 = (v448 + 4);
      v439 = (v451 + 6);
      ++v451;
      v449 = (v72 + 32);
      v420 = (v450 + 1);
      v421 = AssociatedConformanceWitness + 24;
      v450 = (v72 + 48);
      v432 = (v437 + 1);
      v436 = (v72 + 8);
      v409 = (v448 + 1);
      v448 = (v108 + 8);
      v395 = (v423 + 4);
      v437 += 2;
      v378 = (v434 + 2);
      v377 = (v459 + 48);
      v370 = (v459 + 8);
      v369 = (v434 + 1);
      v434 = (v72 + 16);
      v122 = (v72 + 56);
      v394 = (v423 + 1);
      v408 = (v433 + 32);
      v418 = (v441 + 8);
      v359 = (v459 + 32);
      v376 = (v441 + 40);
      v407 = (v433 + 8);
      v123 = v460 - 2;
      v441 = -*(&v460 + 1);
      v391 = (v435 + 8);
      v433 = v87;
      v435 = v107;
      v423 = v122;
      v430 = a2;
      v453 = AssociatedConformanceWitness;
      v358 = v51;
      while (1)
      {
        v459 = v123;
        v148 = v123 + 2;
        v149 = v457;
        Array.subscript.getter();
        v150 = *v446;
        (*v446)(v458, v149, v107);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            (*v410)(v426, v458, v429);
            v185 = v454;
            *&v460 = *v455;
            v186 = type metadata accessor for Array();
            swift_getWitnessTable(MEMORY[0x1E69E6310], v186);
            v187 = v403;
            BidirectionalCollection.last.getter();
            v188 = (*v439)(v187, 1, v185);
            v190 = v453;
            v191 = v399;
            v192 = v449;
            if (v188 == 1)
            {
              (*v420)(v187, v422);
              v193 = v414;
              (*v122)(v414, 1, 1, AssociatedTypeWitness);
              (*(v190 + 24))(v456, v190);
              if ((*v450)(v193, 1, AssociatedTypeWitness) != 1)
              {
                (*v432)(v414, v447);
              }
            }

            else
            {
              v217 = v414;
              AnimationPath.Element.end.getter(v185, v189, v414);
              (*v451)(v187, v185);
              (*v122)(v217, 0, 1, AssociatedTypeWitness);
              (*v192)(v191, v217, AssociatedTypeWitness);
            }

            v218 = v427;
            v219 = v191;
            v220 = v426;
            v221 = v456;
            static HermiteCurve.linear(start:end:)(v191, v426, v456, v190, v427);
            v222 = v429;
            v223 = *(v220 + *(v429 + 36));
            v224 = v220 + *(v429 + 40);
            v225 = *(v224 + 32);
            v226 = *(v224 + 16);
            v460 = *v224;
            v461 = v226;
            v462 = v225;
            v227 = v442;
            AnimationPath.CurveElement.init(curve:duration:constantVelocity:timingCurve:)(v218, 0, &v460, v221, v190, v442, v223);
            v228 = v454;
            swift_storeEnumTagMultiPayload();
            v230 = type metadata accessor for AnimationPath(0, v221, v190, v229);
            AnimationPath.append(_:)(v227, v230, v231, v232);
            (*v451)(v227, v228);
            (*v436)(v219, AssociatedTypeWitness);
            (*v409)(v220, v222);
            v107 = v435;
            result = (*v448)(v457, v435);
            v87 = v433;
            goto LABEL_9;
          }

          v159 = v443;
          v160 = v438;
          (*v395)(v443, v458, v438);
          v161 = &v159[*(v160 + 40)];
          v162 = v417;
          v163 = v447;
          (*v437)(v417, v161, v447);
          v164 = *v450;
          v165 = (*v450)(v162, 1, AssociatedTypeWitness);
          v166 = v453;
          v167 = v405;
          v168 = v449;
          if (v165 == 1)
          {
            v396 = v164;
            v393 = *v432;
            v393(v417, v163);
            v169 = v454;
            *&v460 = *v455;
            v170 = type metadata accessor for Array();
            swift_getWitnessTable(MEMORY[0x1E69E6310], v170);
            v171 = v386;
            BidirectionalCollection.last.getter();
            if ((*v439)(v171, 1, v169) == 1)
            {
              (*v420)(v171, v422);
              v173 = *v122;
              (*v122)(v392, 1, 1, AssociatedTypeWitness);
              v174 = v380;
              (*v378)(v167, v381, v380);
              v175 = v456;
              if ((*v377)(v167, 1, v456) == 1)
              {
                (*v369)(v167, v174);
                v176 = v379;
                v173(v379, 1, 1, AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v162 = v388;
                dispatch thunk of static AdditiveArithmetic.zero.getter();
                v164 = v396;
                v177 = (v396)(v176, 1, AssociatedTypeWitness);
                v178 = v447;
                if (v177 != 1)
                {
                  v393(v379, v447);
                }
              }

              else
              {
                v243 = v379;
                (*(v453 + 24))(v175);
                (*v370)(v167, v175);
                v173(v243, 0, 1, AssociatedTypeWitness);
                v162 = v388;
                (*v168)(v388, v243, AssociatedTypeWitness);
                v178 = v447;
                v164 = v396;
              }

              v244 = (v164)(v392, 1, AssociatedTypeWitness);
              v166 = v453;
              if (v244 != 1)
              {
                v393(v392, v178);
                v162 = v388;
              }
            }

            else
            {
              v236 = v392;
              AnimationPath.Element.endVelocity.getter(v169, v172, v392);
              (*v451)(v171, v169);
              (*v122)(v236, 0, 1, AssociatedTypeWitness);
              v237 = v388;
              (*v168)(v388, v236, AssociatedTypeWitness);
              v162 = v237;
              v164 = v396;
            }
          }

          v245 = *v168;
          (*v168)(v440, v162, AssociatedTypeWitness);
          v246 = v454;
          *&v460 = *v455;
          v247 = type metadata accessor for Array();
          swift_getWitnessTable(MEMORY[0x1E69E6310], v247);
          v248 = v402;
          BidirectionalCollection.last.getter();
          if ((*v439)(v248, 1, v246) == 1)
          {
            (*v420)(v248, v422);
            v250 = v413;
            (*v122)(v413, 1, 1, AssociatedTypeWitness);
            v251 = v425;
            (*(v166 + 24))(v456, v166);
            v252 = (v164)(v250, 1, AssociatedTypeWitness);
            v253 = v452;
            if (v252 != 1)
            {
              (*v432)(v413, v447);
            }
          }

          else
          {
            v254 = v413;
            AnimationPath.Element.end.getter(v246, v249, v413);
            (*v451)(v248, v246);
            (*v122)(v254, 0, 1, AssociatedTypeWitness);
            v251 = v425;
            v245(v425, v254, AssociatedTypeWitness);
            v253 = v452;
          }

          v255 = v438;
          v256 = v443;
          v257 = &v443[*(v438 + 44)];
          v258 = v436;
          if (v257[8])
          {
            v124 = &v443[*(v438 + 36)];
            v125 = *(v124 + 2);
            v460 = *v124;
            *&v461 = v125;
            v126 = swift_getAssociatedConformanceWitness();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v127 = Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(v253, 0.0001, v440, AssociatedTypeWitness, v126);
            (*v258)(v253, AssociatedTypeWitness);
          }

          else
          {
            v127 = *v257;
            v126 = swift_getAssociatedConformanceWitness();
          }

          v128 = v258;
          v129 = &v256[*(v255 + 36)];
          v130 = *(v129 + 2);
          v460 = *v129;
          *&v461 = v130;
          v131 = v412;
          dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
          v132 = v411;
          v133 = v126;
          v134 = v440;
          Spring.value<A>(target:initialVelocity:time:)(v131, v440, AssociatedTypeWitness, v133, v127);
          v135 = *v128;
          (*v128)(v131, AssociatedTypeWitness);
          dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
          v135(v132, AssociatedTypeWitness);
          v136 = *(v129 + 2);
          v460 = *v129;
          *&v461 = v136;
          v137 = *v434;
          (*v434)(v132, v251, AssociatedTypeWitness);
          v137(v131, v443, AssociatedTypeWitness);
          v138 = v397;
          v137(v397, v134, AssociatedTypeWitness);
          v139 = v398;
          v137(v398, v452, AssociatedTypeWitness);
          v140 = v442;
          v141 = v456;
          v142 = v453;
          AnimationPath.SpringElement.init(spring:from:to:initialVelocity:end:duration:)(&v460, v132, v131, v138, v139, v456, v453, v442, v127);
          v143 = v454;
          swift_storeEnumTagMultiPayload();
          v145 = type metadata accessor for AnimationPath(0, v141, v142, v144);
          AnimationPath.append(_:)(v140, v145, v146, v147);
          (*v451)(v140, v143);
          v135(v452, AssociatedTypeWitness);
          v135(v425, AssociatedTypeWitness);
          v135(v440, AssociatedTypeWitness);
          (*v394)(v443, v438);
          v107 = v435;
          result = (*v448)(v457, v435);
          goto LABEL_8;
        }

        if (!EnumCaseMultiPayload)
        {
          v152 = v452;
          (*v449)(v452, v458, AssociatedTypeWitness);
          v153 = v442;
          (*v434)(v442, v152, AssociatedTypeWitness);
          v154 = v454;
          swift_storeEnumTagMultiPayload();
          v156 = type metadata accessor for AnimationPath(0, v456, v453, v155);
          AnimationPath.append(_:)(v153, v156, v157, v158);
          (*v451)(v153, v154);
          (*v436)(v152, AssociatedTypeWitness);
          result = (*v448)(v457, v107);
          goto LABEL_9;
        }

        v396 = v150;
        v393 = *v408;
        (v393)(v444, v458, v445);
        v390 = *v455;
        *&v460 = v390;
        v179 = v454;
        v180 = type metadata accessor for Array();
        swift_getWitnessTable(MEMORY[0x1E69E6310], v180);
        v181 = v404;
        BidirectionalCollection.last.getter();
        if ((*v439)(v181, 1, v179) == 1)
        {
          (*v420)(v181, v422);
          v183 = v415;
          (*v122)(v415, 1, 1, AssociatedTypeWitness);
          (*(v453 + 24))(v456);
          v184 = v87;
          if ((*v450)(v183, 1, AssociatedTypeWitness) != 1)
          {
            (*v432)(v415, v447);
          }
        }

        else
        {
          v194 = v415;
          AnimationPath.Element.end.getter(v179, v182, v415);
          (*v451)(v181, v179);
          (*v122)(v194, 0, 1, AssociatedTypeWitness);
          (*v449)(v87, v194, AssociatedTypeWitness);
          v184 = v87;
        }

        v195 = v452;
        v196 = v444;
        v389 = *v434;
        v389(v452, v444, AssociatedTypeWitness);
        v197 = v445;
        v198 = *&v196[*(v445 + 44)];
        v199 = v416;
        v200 = v424;
        swift_storeEnumTagMultiPayload();
        v201 = v406;
        swift_storeEnumTagMultiPayload();
        v202 = v431;
        CubicKeyframeHelper.init(from:to:duration:start:end:)(v184, v195, v199, v201, v456, v453, v431, v198);
        v203 = *v437;
        v204 = &v196[*(v197 + 36)];
        v205 = v400;
        v206 = v447;
        (*v437)(v400, v204, v447);
        v207 = *v450;
        if ((*v450)(v205, 1, AssociatedTypeWitness) != 1)
        {
          v233 = *v449;
          v234 = v384;
          (*v449)(v384, v205, AssociatedTypeWitness);
          v235 = *(v428 + 44);
          (*v418)(v202 + v235, v200);
          v233(v202 + v235, v234, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          v212 = v202;
          v213 = v445;
          v214 = v200;
          v107 = v435;
          goto LABEL_61;
        }

        v208 = *v432;
        (*v432)(v205, v206);
        v209 = v428;
        if (v148 <= 0)
        {
          break;
        }

        v107 = v435;
        Array.subscript.getter();
        v210 = swift_getEnumCaseMultiPayload();
        v212 = v431;
        v213 = v445;
        v214 = v424;
        if (v210 <= 1)
        {
          if (!v210)
          {
            swift_getAssociatedConformanceWitness();
            v215 = v416;
            dispatch thunk of static AdditiveArithmetic.zero.getter();
            swift_storeEnumTagMultiPayload();
            v216 = v215;
            v212 = v431;
            (*v376)(v431 + *(v209 + 44), v216, v214);
LABEL_39:
            (*v448)(v387, v107);
            goto LABEL_61;
          }

          v261 = v368;
          (v393)(v368, v387, v445);
          v262 = v456;
          if (v459 == -1)
          {
            swift_getTupleTypeMetadata2();
            v273 = *&v261[v213[11]];
            v274 = v261;
            v275 = v416;
            *v416 = v273;
            (*(v453 + 24))(v262);
            v276 = v274;
            v214 = v424;
            (*v407)(v276, v213);
            swift_storeEnumTagMultiPayload();
            v277 = v275;
            v212 = v431;
            (*v376)(v431 + *(v209 + 44), v277, v214);
            goto LABEL_61;
          }

          v263 = v358;
          v203(v358, &v261[v213[10]], v447);
          if ((v207)(v263, 1, AssociatedTypeWitness) == 1)
          {
            v208(v263, v447);
            v264 = *(swift_getTupleTypeMetadata2() + 48);
            v265 = *&v261[v213[11]];
            v266 = v261;
            v260 = v416;
            *v416 = v265;
            v267 = v367;
            Array.subscript.getter();
            _ResolvedKeyframeTrackContent.Segment.end.getter(v107, v268, v260 + v264);
            (*v448)(v267, v107);
            v269 = v266;
            v214 = v424;
            (*v407)(v269, v213);
            goto LABEL_53;
          }

          (*v407)(v261, v213);
          v292 = *v449;
          v293 = v360;
          (*v449)(v360, v263, AssociatedTypeWitness);
          v294 = v292;
          v295 = *(v209 + 44);
          v296 = v431;
          (*v418)(v431 + v295, v214);
          v294(v296 + v295, v293, AssociatedTypeWitness);
          v212 = v296;
          v213 = v445;
          goto LABEL_60;
        }

        if (v210 == 2)
        {
          v242 = v416;
          AnimationPath.currentVelocity.getter(v390, v456, v453, v211, v416);
          swift_storeEnumTagMultiPayload();
          (*v376)(v212 + *(v209 + 44), v242, v214);
          goto LABEL_39;
        }

        (*v410)(v373, v387, v429);
        v357 = v207;
        if (v459 == -1)
        {
          (*(v453 + 24))(v456, v453);
        }

        else
        {
          v271 = v367;
          Array.subscript.getter();
          _ResolvedKeyframeTrackContent.Segment.end.getter(v107, v272, v374);
          (*v448)(v271, v107);
        }

        v278 = swift_getAssociatedConformanceWitness();
        v279 = AssociatedTypeWitness;
        v280 = v412;
        v281 = v373;
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v282 = v429;
        v283 = v411;
        VectorArithmetic.scaled(by:)(v279, v278, v411, 1.0 / *&v281[*(v429 + 36)]);
        v284 = *v436;
        v285 = v280;
        AssociatedTypeWitness = v279;
        (*v436)(v285, v279);
        v286 = &v281[*(v282 + 40)];
        v287 = v286[32];
        v288 = *(v286 + 1);
        v460 = *v286;
        v461 = v288;
        v462 = v287;
        v289 = UnitCurve.velocity(at:)(1.0);
        v290 = v452;
        VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v278, v452, v289);
        v284(v283, AssociatedTypeWitness);
        v284(v374, AssociatedTypeWitness);
        (*v409)(v281, v282);
        v291 = *(v428 + 44);
        v212 = v431;
        v214 = v424;
        (*v418)(v431 + v291, v424);
        (*v449)(v212 + v291, v290, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        v107 = v435;
        v213 = v445;
        v207 = v357;
LABEL_61:
        v297 = v401;
        v298 = v447;
        v203(v401, &v444[v213[10]], v447);
        if ((v207)(v297, 1, AssociatedTypeWitness) == 1)
        {
          v299 = v297;
          v300 = v459 + 3;
          v301 = *v432;
          (*v432)(v299, v298);
          v302 = MEMORY[0x193ABF270](v430, v107);
          v303 = v428;
          if (v300 >= v302)
          {
            v212 = v431;
            (*v418)(v431 + *(v428 + 48), v214);
            swift_storeEnumTagMultiPayload();
            v306 = v453;
          }

          else
          {
            v304 = v382;
            Array.subscript.getter();
            (v396)(v383, v304, v107);
            v305 = swift_getEnumCaseMultiPayload();
            if (v305 > 1)
            {
              v306 = v453;
              if (v305 == 2)
              {
                (*v448)(v382, v107);
                v324 = v207;
                v325 = v363;
                v326 = v438;
                (*v395)(v363, v383, v438);
                v327 = &v325[*(v326 + 40)];
                v328 = v364;
                v329 = v447;
                v203(v364, v327, v447);
                if ((v324)(v328, 1, AssociatedTypeWitness) == 1)
                {
                  v301(v328, v329);
                  v212 = v431;
                  v330 = (v431 + *(v303 + 48));
                  (*v418)(v330, v424);
                  v331 = *(swift_getTupleTypeMetadata2() + 48);
                  *v330 = v198;
                  v389(v330 + v331, v325, AssociatedTypeWitness);
                  (*v394)(v325, v438);
LABEL_78:
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_68;
                }

                (*v394)(v325, v438);
                v353 = *v449;
                v354 = v361;
                (*v449)(v361, v328, AssociatedTypeWitness);
LABEL_77:
                v355 = *(v303 + 48);
                v212 = v431;
                (*v418)(v431 + v355, v424);
                v353(v212 + v355, v354, AssociatedTypeWitness);
                goto LABEL_78;
              }

              v340 = v366;
              v341 = v429;
              (*v410)(v366, v383, v429);
              v342 = swift_getAssociatedConformanceWitness();
              v343 = v412;
              dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
              v344 = v411;
              VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v342, v411, 1.0 / *&v340[*(v341 + 36)]);
              v396 = *v436;
              v396(v343, AssociatedTypeWitness);
              v345 = &v340[*(v341 + 40)];
              v346 = v345[32];
              v347 = *(v345 + 1);
              v460 = *v345;
              v461 = v347;
              v462 = v346;
              v348 = UnitCurve.velocity(at:)(0.0);
              v349 = v452;
              VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v342, v452, v348);
              v350 = v344;
              v303 = v428;
              v396(v350, AssociatedTypeWitness);
              v351 = v340;
              v107 = v435;
              (*v409)(v351, v341);
              (*v448)(v382, v107);
              v352 = *(v303 + 48);
              v212 = v431;
              (*v418)(v431 + v352, v424);
              (*v449)(v212 + v352, v349, AssociatedTypeWitness);
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v306 = v453;
              if (v305)
              {
                (*v448)(v382, v107);
                v332 = v372;
                (v393)(v372, v383, v213);
                v333 = &v332[v213[9]];
                v334 = v207;
                v335 = v365;
                v336 = v447;
                v203(v365, v333, v447);
                if ((v334)(v335, 1, AssociatedTypeWitness) == 1)
                {
                  v301(v335, v336);
                  v212 = v431;
                  v337 = (v431 + *(v303 + 48));
                  (*v418)(v337, v424);
                  v338 = *(swift_getTupleTypeMetadata2() + 48);
                  v339 = v372;
                  *v337 = *&v372[v213[11]];
                  v389(v337 + v338, v339, AssociatedTypeWitness);
                  (*v407)(v339, v213);
                  goto LABEL_78;
                }

                (*v407)(v372, v213);
                v353 = *v449;
                v354 = v362;
                (*v449)(v362, v335, AssociatedTypeWitness);
                goto LABEL_77;
              }

              swift_getAssociatedConformanceWitness();
              v307 = v416;
              dispatch thunk of static AdditiveArithmetic.zero.getter();
              v308 = *v448;
              (*v448)(v382, v107);
              v309 = v424;
              swift_storeEnumTagMultiPayload();
              v310 = v307;
              v212 = v431;
              (*v376)(v431 + *(v303 + 48), v310, v309);
              v308(v383, v107);
            }
          }
        }

        else
        {
          v312 = *v449;
          v313 = v385;
          (*v449)(v385, v297, AssociatedTypeWitness);
          v303 = v428;
          v314 = *(v428 + 48);
          (*v418)(v212 + v314, v214);
          v312(v212 + v314, v313, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          v306 = v453;
        }

LABEL_68:
        v315 = v427;
        CubicKeyframeHelper.curve.getter(v303, v427, v311);
        v316 = *(v212 + *(v303 + 40));
        v460 = 0u;
        v461 = 0u;
        v462 = 1;
        v317 = v442;
        v318 = v456;
        AnimationPath.CurveElement.init(curve:duration:constantVelocity:timingCurve:)(v315, 0, &v460, v456, v306, v442, v316);
        v319 = v454;
        swift_storeEnumTagMultiPayload();
        v321 = type metadata accessor for AnimationPath(0, v318, v306, v320);
        AnimationPath.append(_:)(v317, v321, v322, v323);
        (*v451)(v317, v319);
        (*v407)(v444, v445);
        (*v448)(v457, v107);
        result = (*v391)(v212, v303);
LABEL_8:
        v87 = v433;
        v122 = v423;
LABEL_9:
        v123 = v459 + 1;
        if (v441 + v459 + 1 == -2)
        {
          return result;
        }
      }

      v238 = v375;
      v239 = v380;
      (*v378)(v375, v381, v380);
      v240 = v456;
      v241 = (*v377)(v238, 1, v456);
      v213 = v445;
      v214 = v424;
      v107 = v435;
      if (v241 != 1)
      {
        v259 = v371;
        (*v359)(v371, v238, v240);
        v260 = v416;
        (*(v453 + 24))(v240);
        (*v370)(v259, v240);
LABEL_53:
        swift_storeEnumTagMultiPayload();
        v270 = v260;
        v212 = v431;
        (*v376)(v431 + *(v209 + 44), v270, v214);
        goto LABEL_61;
      }

      (*v369)(v238, v239);
      v212 = v431;
      (*v418)(v431 + *(v209 + 44), v214);
LABEL_60:
      swift_storeEnumTagMultiPayload();
      goto LABEL_61;
    }

    __break(1u);
  }

  return result;
}

uint64_t CubicKeyframeHelper.init(from:to:duration:start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 32);
  v17(a7, a1, AssociatedTypeWitness);
  v19 = type metadata accessor for CubicKeyframeHelper(0, a5, a6, v18);
  v17(a7 + v19[9], a2, AssociatedTypeWitness);
  *(a7 + v19[10]) = a8;
  v20 = v19[11];
  v22 = type metadata accessor for CubicKeyframeHelper.Connection(0, a5, a6, v21);
  v25 = *(*(v22 - 8) + 32);
  (v25)((v22 - 8), a7 + v20, a3, v22);
  v23 = a7 + v19[12];

  return v25(v23, a4, v22);
}

uint64_t CubicKeyframeHelper.curve.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v83 = a2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for CubicKeyframeHelper.Connection(0, v7, v6, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v69 - v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v69 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v76 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v84 = &v69 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v85 = a1;
  v86 = &v69 - v34;
  v35 = v4 + *(a1 + 44);
  v78 = *(v9 + 16);
  v79 = v9 + 16;
  v78(v13, v35, v8, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v47 = v87;
    (*(v87 + 32))(v29, v13, AssociatedTypeWitness);
    (*(v47 + 16))(v86, v29, AssociatedTypeWitness);
    v45 = v85;
    v48 = *(v4 + *(v85 + 40));
    if (v48 > 0.0)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, v48);
    }

    (*(v87 + 8))(v29, AssociatedTypeWitness);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v45 = v85;
LABEL_11:
    v46 = v84;
    goto LABEL_12;
  }

  v71 = v8;
  v37 = *v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = v87;
  (*(v87 + 32))(v76, v13 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
  v74 = v6;
  v75 = v7;
  v40 = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v41 = v81;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v40, v81, 0.5);
  v42 = *(v39 + 8);
  v42(v22, AssociatedTypeWitness);
  v43 = v77;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v70 = v40;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v40, v22, 0.5);
  v42(v43, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v72 = v22;
  v42(v22, AssociatedTypeWitness);
  v42(v41, AssociatedTypeWitness);
  v44 = *(v4 + *(v85 + 40));
  if (v44 > 0.0 && v37 > 0.0)
  {
    (*(v70 + 16))(AssociatedTypeWitness, (v44 + v44) / (v37 + v44));
  }

  v42(v76, AssociatedTypeWitness);
  v6 = v74;
  v7 = v75;
  v46 = v84;
  v45 = v85;
  v8 = v71;
  v22 = v72;
LABEL_12:
  v50 = v80;
  (v78)(v80, v4 + v45[12], v8);
  v51 = swift_getEnumCaseMultiPayload();
  if (!v51)
  {
    v62 = v87;
    v63 = v73;
    (*(v87 + 32))(v73, v50, AssociatedTypeWitness);
    (*(v62 + 16))(v46, v63, AssociatedTypeWitness);
    v64 = *(v4 + v45[10]);
    if (v64 > 0.0)
    {
      v65 = swift_getAssociatedConformanceWitness();
      (*(v65 + 16))(AssociatedTypeWitness, v65, v64);
    }

    (*(v87 + 8))(v63, AssociatedTypeWitness);
    goto LABEL_22;
  }

  if (v51 != 1)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
LABEL_22:
    v61 = v83;
    goto LABEL_23;
  }

  v52 = *v50;
  v53 = swift_getTupleTypeMetadata2();
  v54 = v50;
  v55 = v87;
  (*(v87 + 32))(v82, v54 + *(v53 + 48), AssociatedTypeWitness);
  v74 = v6;
  v75 = v7;
  v56 = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v56, v81, 0.5);
  v57 = *(v55 + 8);
  v57(v22, AssociatedTypeWitness);
  v46 = v84;
  v58 = v77;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v80 = v56;
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v56, v22, 0.5);
  v57(v58, AssociatedTypeWitness);
  v59 = v81;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v57(v22, AssociatedTypeWitness);
  v57(v59, AssociatedTypeWitness);
  v60 = *(v4 + *(v85 + 40));
  if (v60 > 0.0 && v52 > 0.0)
  {
    (*(v80 + 2))(AssociatedTypeWitness, (v60 + v60) / (v52 + v60));
  }

  v57(v82, AssociatedTypeWitness);
  v6 = v74;
  v7 = v75;
  v61 = v83;
  v45 = v85;
LABEL_23:
  v66 = v86;
  static HermiteCurve.hermite(start:end:startTangent:endTangent:)(v4, v4 + v45[9], v86, v46, v7, v6, v61);
  v67 = *(v87 + 8);
  v67(v46, AssociatedTypeWitness);
  return (v67)(v66, AssociatedTypeWitness);
}

uint64_t *initializeBufferWithCopyOfBuffer for KeyframeTrack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 32);
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

uint64_t destroy for KeyframeTrack(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 32) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t *initializeWithCopy for KeyframeTrack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

uint64_t *assignWithCopy for KeyframeTrack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *initializeWithTake for KeyframeTrack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t *assignWithTake for KeyframeTrack(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 32) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for KeyframeTrack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 32) - 8) + 64);
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

void storeEnumTagSinglePayload for KeyframeTrack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 32) - 8) + 64);
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

uint64_t type metadata completion function for CubicKeyframeHelper(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CubicKeyframeHelper.Connection(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CubicKeyframeHelper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  v11 = v7 + 7;
  v12 = v8 | 7;
  if (((v9 + 8) & ~v9) + v7 <= v7)
  {
    v13 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v13 = ((v8 + 8) & ~v8) + v7;
  }

  v14 = v8 & 0x100000;
  v15 = ((((-9 - v9 - ((v7 + 7 + ((v7 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) | v12) - (v13 + 1 + v12)) | v12) - (v13 + 1);
  if (v9 > 7 || v14 != 0 || v15 < 0xFFFFFFFFFFFFFFE7)
  {
    v18 = *a2;
    *a1 = *a2;
    v19 = v18 + ((v9 + 16) & ~v12);

    return v19;
  }

  v20 = AssociatedTypeWitness;
  v21 = ~v9;
  v22 = *(v6 + 16);
  v22(a1, a2, AssociatedTypeWitness);
  v42 = a1;
  v23 = (a1 + v10) & v21;
  v24 = (a2 + v10) & v21;
  v22(v23, v24, v20);
  v25 = ((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v11 + v24) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[v13];
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v13 <= 3)
    {
      v31 = v13;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_26;
      }

      v32 = *v28;
    }

    else if (v31 == 2)
    {
      v32 = *v28;
    }

    else if (v31 == 3)
    {
      v32 = *v28 | (v28[2] << 16);
    }

    else
    {
      v32 = *v28;
    }

    v33 = (v32 | (v30 << (8 * v13))) + 2;
    v29 = v32 + 2;
    if (v13 < 4)
    {
      v29 = v33;
    }
  }

LABEL_26:
  if (v29 == 1)
  {
    *v27 = *v28;
    v22(v27 + 1, v28 + 1, v20);
    *(v27 + v13) = 1;
  }

  else if (v29)
  {
    memcpy(v27, v28, v13 + 1);
  }

  else
  {
    v22(v27, v28, v20);
    *(v27 + v13) = 0;
  }

  v34 = ((v27 + v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = (&v28[v13 + 8] & 0xFFFFFFFFFFFFFFF8);
  v36 = *(v35 + v13);
  v37 = v36 - 2;
  if (v36 >= 2)
  {
    if (v13 <= 3)
    {
      v38 = v13;
    }

    else
    {
      v38 = 4;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *v35;
      }

      else if (v38 == 3)
      {
        v39 = *v35 | (*(v35 + 2) << 16);
      }

      else
      {
        v39 = *v35;
      }

LABEL_43:
      v40 = (v39 | (v37 << (8 * v13))) + 2;
      v36 = v39 + 2;
      if (v13 < 4)
      {
        v36 = v40;
      }

      goto LABEL_45;
    }

    if (v38)
    {
      v39 = *v35;
      goto LABEL_43;
    }
  }

LABEL_45:
  if (v36 == 1)
  {
    *v34 = *v35;
    v22(v34 + 1, v35 + 1, v20);
    *(v34 + v13) = 1;
  }

  else if (v36)
  {
    memcpy(v34, v35, v13 + 1);
  }

  else
  {
    (v22)(v34);
    *(v34 + v13) = 0;
  }

  return v42;
}

unsigned __int8 *destroy for CubicKeyframeHelper(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8) + 8;
  v24 = *v23;
  (*v23)(AssociatedTypeWitness - 8, a1, AssociatedTypeWitness);
  v4 = *(v23 + 56);
  v5 = *(v23 + 72);
  v6 = (v4 + a1 + v5) & ~v5;
  v24(v6, AssociatedTypeWitness);
  v7 = v5 | 7;
  v8 = v5 + 8;
  v9 = ((v5 + 8 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~(v5 | 7));
  if (((v5 + 8) & ~v5) + v4 > v4)
  {
    v4 += (v5 + 8) & ~v5;
  }

  v10 = v9[v4];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v4 <= 3)
    {
      v12 = v4;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_17;
      }

      v13 = *v9;
    }

    else if (v12 == 2)
    {
      v13 = *v9;
    }

    else if (v12 == 3)
    {
      v13 = *v9 | (v9[2] << 16);
    }

    else
    {
      v13 = *v9;
    }

    v14 = (v13 | (v11 << (8 * v4))) + 2;
    v10 = v13 + 2;
    if (v4 < 4)
    {
      v10 = v14;
    }
  }

LABEL_17:
  v15 = ~v5;
  if (v10 == 1)
  {
    v16 = (&v9[v8] & v15);
  }

  else
  {
    if (v10)
    {
      goto LABEL_22;
    }

    v16 = v9;
  }

  v24(v16, AssociatedTypeWitness);
LABEL_22:
  result = (&v9[v7 + 1 + v4] & ~v7);
  v18 = result[v4];
  v19 = v18 - 2;
  if (v18 < 2)
  {
    goto LABEL_36;
  }

  if (v4 <= 3)
  {
    v20 = v4;
  }

  else
  {
    v20 = 4;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    v21 = *result;
  }

  else if (v20 == 2)
  {
    v21 = *result;
  }

  else if (v20 == 3)
  {
    v21 = *result | (*((&v9[v7 + 1 + v4] & ~v7) + 2) << 16);
  }

  else
  {
    v21 = *result;
  }

  v22 = (v21 | (v19 << (8 * v4))) + 2;
  v18 = v21 + 2;
  if (v4 < 4)
  {
    v18 = v22;
  }

LABEL_36:
  if (v18 == 1)
  {
    result = (&result[v8] & v15);
  }

  else if (v18)
  {
    return result;
  }

  return (v24)(result, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for CubicKeyframeHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v36 = a1;
  v11 = (v9 + v10 + a1) & ~v10;
  v12 = (v9 + v10 + a2) & ~v10;
  v7(v11, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = v10 | 7;
  v16 = v10 + 8;
  v17 = ((v13 + v10 + 8) & ~(v10 | 7));
  v18 = ((v14 + v10 + 8) & ~(v10 | 7));
  if (((v10 + 8) & ~v10) + v9 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = ((v10 + 8) & ~v10) + v9;
  }

  v20 = v18[v19];
  v21 = v20 - 2;
  if (v20 < 2)
  {
    goto LABEL_18;
  }

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

    v23 = *v18;
  }

  else if (v22 == 2)
  {
    v23 = *v18;
  }

  else if (v22 == 3)
  {
    v23 = *v18 | (v18[2] << 16);
  }

  else
  {
    v23 = *v18;
  }

  v24 = (v23 | (v21 << (8 * v19))) + 2;
  v20 = v23 + 2;
  if (v19 < 4)
  {
    v20 = v24;
  }

LABEL_18:
  v25 = ~v10;
  v26 = ~v15;
  if (v20 == 1)
  {
    *v17 = *v18;
    v7((v17 + v16) & v25, &v18[v16] & v25, AssociatedTypeWitness);
    *(v17 + v19) = 1;
  }

  else if (v20)
  {
    memcpy(v17, v18, v19 + 1);
  }

  else
  {
    v7(v17, v18, AssociatedTypeWitness);
    *(v17 + v19) = 0;
  }

  v27 = v19 + 1 + v15;
  v28 = ((v17 + v27) & v26);
  v29 = (&v18[v27] & v26);
  v30 = v29[v19];
  v31 = v30 - 2;
  if (v30 >= 2)
  {
    if (v19 <= 3)
    {
      v32 = v19;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_37;
      }

      v33 = *v29;
    }

    else if (v32 == 2)
    {
      v33 = *v29;
    }

    else if (v32 == 3)
    {
      v33 = *v29 | (v29[2] << 16);
    }

    else
    {
      v33 = *v29;
    }

    v34 = (v33 | (v31 << (8 * v19))) + 2;
    v30 = v33 + 2;
    if (v19 < 4)
    {
      v30 = v34;
    }
  }

LABEL_37:
  if (v30 == 1)
  {
    *v28 = *v29;
    v7((v28 + v16) & v25, &v29[v16] & v25, AssociatedTypeWitness);
    *(v28 + v19) = 1;
  }

  else if (v30)
  {
    memcpy(v28, v29, v19 + 1);
  }

  else
  {
    (v7)(v28);
    *(v28 + v19) = 0;
  }

  return v36;
}

uint64_t assignWithCopy for CubicKeyframeHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6;
  v8 = *(v6 + 24);
  v8(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80);
  v43 = ~v10;
  v44 = a1;
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, AssociatedTypeWitness);
  v12 = ((v9 + 7 + ((v9 + v10 + a1) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v10 + 8;
  v15 = ~(v10 | 7);
  v16 = ((v12 + v10 + 8) & v15);
  v17 = ((v13 + v10 + 8) & v15);
  if (((v10 + 8) & ~v10) + v9 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = ((v10 + 8) & ~v10) + v9;
  }

  if (v16 != v17)
  {
    v19 = v16[v18];
    v20 = v19 - 2;
    if (v19 < 2)
    {
      goto LABEL_19;
    }

    if (v18 <= 3)
    {
      v21 = v18;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = *v16;
    }

    else if (v21 == 2)
    {
      v22 = *v16;
    }

    else if (v21 == 3)
    {
      v22 = *v16 | (v16[2] << 16);
    }

    else
    {
      v22 = *v16;
    }

    v23 = (v22 | (v20 << (8 * v18))) + 2;
    v19 = v22 + 2;
    if (v18 < 4)
    {
      v19 = v23;
    }

LABEL_19:
    if (v19 == 1)
    {
      (*(v7 + 8))(&v16[v14] & v43, AssociatedTypeWitness);
    }

    else if (!v19)
    {
      (*(v7 + 8))(v16, AssociatedTypeWitness);
    }

    v24 = v17[v18];
    v25 = v24 - 2;
    if (v24 < 2)
    {
      goto LABEL_37;
    }

    if (v18 <= 3)
    {
      v26 = v18;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
LABEL_37:
        if (v24 == 1)
        {
          *v16 = *v17;
          (*(v7 + 16))(&v16[v14] & v43, &v17[v14] & v43, AssociatedTypeWitness);
          v16[v18] = 1;
        }

        else if (v24)
        {
          memcpy(v16, v17, v18 + 1);
        }

        else
        {
          (*(v7 + 16))(v16, v17, AssociatedTypeWitness);
          v16[v18] = 0;
        }

        goto LABEL_42;
      }

      v27 = *v17;
    }

    else if (v26 == 2)
    {
      v27 = *v17;
    }

    else if (v26 == 3)
    {
      v27 = *v17 | (v17[2] << 16);
    }

    else
    {
      v27 = *v17;
    }

    v28 = (v27 | (v25 << (8 * v18))) + 2;
    v24 = v27 + 2;
    if (v18 < 4)
    {
      v24 = v28;
    }

    goto LABEL_37;
  }

LABEL_42:
  v29 = v18 + 1 + (v10 | 7);
  v30 = (&v16[v29] & v15);
  v31 = (&v17[v29] & v15);
  if (v30 == v31)
  {
    return v44;
  }

  v32 = v30[v18];
  v33 = v32 - 2;
  if (v32 >= 2)
  {
    if (v18 <= 3)
    {
      v34 = v18;
    }

    else
    {
      v34 = 4;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
        goto LABEL_57;
      }

      v35 = *v30;
    }

    else if (v34 == 2)
    {
      v35 = *v30;
    }

    else if (v34 == 3)
    {
      v35 = *v30 | (v30[2] << 16);
    }

    else
    {
      v35 = *v30;
    }

    v36 = (v35 | (v33 << (8 * v18))) + 2;
    v32 = v35 + 2;
    if (v18 < 4)
    {
      v32 = v36;
    }
  }

LABEL_57:
  if (v32 == 1)
  {
    (*(v7 + 8))(&v30[v14] & v43, AssociatedTypeWitness);
  }

  else if (!v32)
  {
    (*(v7 + 8))(v30, AssociatedTypeWitness);
  }

  v37 = *(v31 + v18);
  v38 = v37 - 2;
  if (v37 < 2)
  {
    goto LABEL_75;
  }

  if (v18 <= 3)
  {
    v39 = v18;
  }

  else
  {
    v39 = 4;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v40 = *v31;
    }

    else if (v39 == 3)
    {
      v40 = *v31 | (*(v31 + 2) << 16);
    }

    else
    {
      v40 = *v31;
    }

LABEL_73:
    v41 = (v40 | (v38 << (8 * v18))) + 2;
    v37 = v40 + 2;
    if (v18 < 4)
    {
      v37 = v41;
    }

    goto LABEL_75;
  }

  if (v39)
  {
    v40 = *v31;
    goto LABEL_73;
  }

LABEL_75:
  if (v37 == 1)
  {
    *v30 = *v31;
    (*(v7 + 16))(&v30[v14] & v43, (v31 + v14) & v43, AssociatedTypeWitness);
    v30[v18] = 1;
  }

  else if (v37)
  {
    memcpy(v30, v31, v18 + 1);
  }

  else
  {
    (*(v7 + 16))(v30, v31, AssociatedTypeWitness);
    v30[v18] = 0;
  }

  return v44;
}

uint64_t initializeWithTake for CubicKeyframeHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  v36 = a1;
  v11 = (v9 + v10 + a1) & ~v10;
  v12 = (v9 + v10 + a2) & ~v10;
  v7(v11, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = v10 | 7;
  v16 = v10 + 8;
  v17 = ((v13 + v10 + 8) & ~(v10 | 7));
  v18 = ((v14 + v10 + 8) & ~(v10 | 7));
  if (((v10 + 8) & ~v10) + v9 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = ((v10 + 8) & ~v10) + v9;
  }

  v20 = v18[v19];
  v21 = v20 - 2;
  if (v20 < 2)
  {
    goto LABEL_18;
  }

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

    v23 = *v18;
  }

  else if (v22 == 2)
  {
    v23 = *v18;
  }

  else if (v22 == 3)
  {
    v23 = *v18 | (v18[2] << 16);
  }

  else
  {
    v23 = *v18;
  }

  v24 = (v23 | (v21 << (8 * v19))) + 2;
  v20 = v23 + 2;
  if (v19 < 4)
  {
    v20 = v24;
  }

LABEL_18:
  v25 = ~v10;
  v26 = ~v15;
  if (v20 == 1)
  {
    *v17 = *v18;
    v7((v17 + v16) & v25, &v18[v16] & v25, AssociatedTypeWitness);
    *(v17 + v19) = 1;
  }

  else if (v20)
  {
    memcpy(v17, v18, v19 + 1);
  }

  else
  {
    v7(v17, v18, AssociatedTypeWitness);
    *(v17 + v19) = 0;
  }

  v27 = v19 + 1 + v15;
  v28 = ((v17 + v27) & v26);
  v29 = (&v18[v27] & v26);
  v30 = v29[v19];
  v31 = v30 - 2;
  if (v30 >= 2)
  {
    if (v19 <= 3)
    {
      v32 = v19;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_37;
      }

      v33 = *v29;
    }

    else if (v32 == 2)
    {
      v33 = *v29;
    }

    else if (v32 == 3)
    {
      v33 = *v29 | (v29[2] << 16);
    }

    else
    {
      v33 = *v29;
    }

    v34 = (v33 | (v31 << (8 * v19))) + 2;
    v30 = v33 + 2;
    if (v19 < 4)
    {
      v30 = v34;
    }
  }

LABEL_37:
  if (v30 == 1)
  {
    *v28 = *v29;
    v7((v28 + v16) & v25, &v29[v16] & v25, AssociatedTypeWitness);
    *(v28 + v19) = 1;
  }

  else if (v30)
  {
    memcpy(v28, v29, v19 + 1);
  }

  else
  {
    (v7)(v28);
    *(v28 + v19) = 0;
  }

  return v36;
}