uint64_t getEnumTagSinglePayload for AccessibilityActionCategory.Category(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccessibilityActionCategory.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for AccessibilityActionCategory.Category(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityActionCategory.Category(uint64_t a1, void *a2, __n128 a3)
{
  v3 = *(a1 + 24);
  v4 = a2[3];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  return static Text.== infix(_:_:)();
}

uint64_t ActionSheet.init(title:message:buttons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

__n128 protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ActionSheet.Presentation.Key(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[9];
    v21 = a1[8];
    v22 = v3;
    v23 = *(a1 + 20);
    v4 = a1[5];
    v17 = a1[4];
    v18 = v4;
    v5 = a1[7];
    v19 = a1[6];
    v20 = v5;
    v6 = a1[1];
    v13 = *a1;
    v14 = v6;
    v7 = a1[3];
    v15 = a1[2];
    v16 = v7;
  }

  else
  {
    a2(&v13);
  }

  v8 = v22;
  a1[8] = v21;
  a1[9] = v8;
  *(a1 + 20) = v23;
  v9 = v18;
  a1[4] = v17;
  a1[5] = v9;
  v10 = v20;
  a1[6] = v19;
  a1[7] = v10;
  v11 = v14;
  *a1 = v13;
  a1[1] = v11;
  result = v16;
  a1[2] = v15;
  a1[3] = result;
  return result;
}

uint64_t closure #1 in View.presentationCommon(_:onDismiss:id:)(uint64_t a1, int *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  result = outlined destroy of AnyHashable?(a1, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
  v21 = *(a3 + 3);
  if (v21)
  {
    v22 = *a2;
    v23 = *(a3 + 8);
    v24 = a3[3];
    v47 = a3[2];
    v48 = v24;
    v45 = *a3;
    v46 = *(a3 + 16);
    v44 = v21;
    v49 = v23;
    v25 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOcTm_0(a6, v40, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v26 = *(a3 + 2);
    v34 = *a3;
    *&v35 = v26;
    *(&v35 + 1) = v21;
    v28 = v48;
    v36 = v47;
    v27 = v47;
    v37 = v48;
    *&v38 = v23;
    *(&v38 + 1) = a4;
    *&v39 = a5;
    DWORD2(v39) = v22;
    *(&v41 + 1) = a7;
    *&v42 = a8;
    *(&v42 + 1) = a9;
    v43 = a10;
    v29 = v39;
    *(a1 + 64) = v38;
    *(a1 + 80) = v29;
    *(a1 + 32) = v27;
    *(a1 + 48) = v28;
    *(a1 + 160) = v43;
    v30 = v42;
    *(a1 + 128) = v41;
    *(a1 + 144) = v30;
    v31 = v40[1];
    *(a1 + 96) = v40[0];
    *(a1 + 112) = v31;
    v32 = v35;
    *a1 = v34;
    *(a1 + 16) = v32;
    outlined init with copy of Text.Storage(&v45, &v34);
    v33 = MEMORY[0x1E69E62F8];
    _ss11AnyHashableVSgWOcTm_0(&v44, &v34, &lazy cache variable for type metadata for [Text.Modifier], MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    _ss11AnyHashableVSgWOcTm_0(&v47, &v34, &lazy cache variable for type metadata for Text?, MEMORY[0x1E6981148], v25);
    _ss11AnyHashableVSgWOcTm_0(&v49, &v34, &lazy cache variable for type metadata for [Alert.Button], &type metadata for Alert.Button, v33);
    return outlined copy of AppIntentExecutor?(a4, a5);
  }

  else
  {
    *(a1 + 160) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t View.actionSheet<A>(item:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v38 = a4;
  v40 = a2;
  v41 = a3;
  v43 = a8;
  v12 = type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v35 - v14;
  v45 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v35 = a1;
  v36 = &v35 - v17;
  MEMORY[0x18D00ACC0](v16);
  v47[2] = a4;
  v47[3] = a5;
  v19 = a6;
  v47[4] = a6;
  v47[5] = v44;
  v47[6] = v40;
  v47[7] = v41;
  v37 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v47, MEMORY[0x1E69E73E0], &type metadata for ActionSheet, v20, v54);
  v21 = *(v45 + 8);
  v45 += 8;
  v40 = v21;
  v41 = 0;
  v21(v18, v12);
  v51 = v54[2];
  v52 = v54[3];
  v53 = v55;
  v49 = v54[0];
  v50 = v54[1];
  v22 = v42;
  v23 = v39;
  v24 = v13;
  (*(v42 + 16))(v39, a1, v13);
  v25 = v22;
  v26 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v27 = swift_allocObject();
  v28 = v38;
  *(v27 + 2) = v38;
  *(v27 + 3) = a5;
  v29 = v44;
  *(v27 + 4) = v19;
  *(v27 + 5) = v29;
  (*(v25 + 32))(&v27[v26], v23, v24);
  v30 = v36;
  MEMORY[0x18D00ACC0](v24);
  v46[2] = v28;
  v46[3] = a5;
  v46[4] = v19;
  v46[5] = v29;
  v31 = MEMORY[0x1E69E69B8];
  v32 = v37;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in View.actionSheet<A>(item:content:), v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E69B8], v33, v48);
  v40(v30, v32);
  View.presentationCommon(_:onDismiss:id:)(&v49, partial apply for closure #2 in View.actionSheet<A>(item:content:), v27, v48, v28, v19);

  outlined destroy of AnyHashable?(v48, &lazy cache variable for type metadata for AnyHashable?, v31);
  v56[2] = v51;
  v56[3] = v52;
  v57 = v53;
  v56[0] = v49;
  v56[1] = v50;
  return outlined destroy of AnyHashable?(v56, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet);
}

uint64_t closure #2 in View.actionSheet<A>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(a3 - 8) + 56))(&v10 - v7, 1, 1, a3, v6);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t partial apply for closure #2 in View.actionSheet<A>(item:content:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in View.actionSheet<A>(item:content:)(v4, v1, v2);
}

uint64_t closure #3 in View.actionSheet<A>(item:content:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t View.actionSheet(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, void *, __n128, __n128, __n128, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  LOBYTE(v29) = a3;
  v12 = a3 & 1;
  type metadata accessor for AnyHashable?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v13 = MEMORY[0x18D00ACC0](&v23);
  v14 = 0;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  if (v23 == 1)
  {
    a4(&v28, v13, 0, 0, 0, 0);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v14 = v32;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v12;
  v22 = 0;
  memset(v21, 0, sizeof(v21));

  View.presentationCommon(_:onDismiss:id:)(&v23, partial apply for closure #1 in View.actionSheet(isPresented:content:), v19, v21, a6, a7);

  outlined destroy of AnyHashable?(v21, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v28 = v23;
  v29 = v24;
  return outlined destroy of AnyHashable?(&v28, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet);
}

uint64_t destroy for ActionSheet(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }
}

uint64_t initializeWithCopy for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ActionSheet(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 56);
  if (!v8)
  {
    outlined destroy of Text(a1 + 32);
LABEL_5:
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    goto LABEL_6;
  }

  v9 = *(a2 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(a1 + 56) = v8;

LABEL_6:
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AlertTransformModifier<ActionSheet.Presentation.Key>)
  {
    v4 = type metadata accessor for AlertTransformModifier(0, &type metadata for ActionSheet.Presentation.Key, &protocol witness table for ActionSheet.Presentation.Key, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AlertTransformModifier<ActionSheet.Presentation.Key>);
    }
  }
}

void destroy for ActionSheet.Presentation(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  if (*(a1 + 72))
  {
  }

  if (*(a1 + 120))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 96));
  }
}

uint64_t initializeWithCopy for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  v12 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);

  if (v12)
  {
    v13 = *(a2 + 80);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 120);
  if (v14)
  {
    v15 = *(a2 + 128);
    *(a1 + 120) = v14;
    *(a1 + 128) = v15;
    (**(v14 - 8))(a1 + 96, a2 + 96);
  }

  else
  {
    v16 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v16;
    *(a1 + 128) = *(a2 + 128);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithCopy for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);

  v22 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v22)
    {
      v23 = *(a2 + 80);
      *(a1 + 72) = v22;
      *(a1 + 80) = v23;

      goto LABEL_15;
    }
  }

  else if (v22)
  {
    v24 = *(a2 + 80);
    *(a1 + 72) = v22;
    *(a1 + 80) = v24;

    goto LABEL_15;
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_15:
  *(a1 + 88) = *(a2 + 88);
  v25 = *(a2 + 120);
  if (*(a1 + 120))
  {
    v26 = (a1 + 96);
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_1(v26, (a2 + 96));
    }

    else
    {
      outlined destroy of AnyHashable(v26);
      v27 = *(a2 + 128);
      v28 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v28;
      *(a1 + 128) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + 120) = v25;
    *(a1 + 128) = *(a2 + 128);
    (**(v25 - 8))(a1 + 96, a2 + 96);
  }

  else
  {
    v29 = *(a2 + 96);
    v30 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 96) = v29;
    *(a1 + 112) = v30;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for ActionSheet.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      v9 = *(a2 + 48);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 56) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v13 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v13;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);

  v14 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v14)
    {
      v15 = *(a2 + 80);
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;

      goto LABEL_13;
    }
  }

  else if (v14)
  {
    v16 = *(a2 + 80);
    *(a1 + 72) = v14;
    *(a1 + 80) = v16;
    goto LABEL_13;
  }

  *(a1 + 72) = *(a2 + 72);
LABEL_13:
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 96));
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 96);
    }
  }

  v17 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v17;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t _ConditionalContent<>.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static _ConditionalContent<>._makeContent(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[3];
  v40 = a2[2];
  v41 = v13;
  v42 = a2[4];
  v43 = *(a2 + 20);
  v14 = a2[1];
  v38 = *a2;
  v39 = v14;
  *&v51 = v13;
  DWORD2(v51) = DWORD2(v13);

  PreferencesInputs.makeIndirectOutputs()();

  v15 = v59;
  v16 = DWORD2(v59);
  v46 = v40;
  v47 = v41;
  v48 = v42;
  LODWORD(v49) = v43;
  v44 = v38;
  v45 = v39;
  *(&v49 + 1) = v59;
  v50 = DWORD2(v59);
  LODWORD(v30) = v12;
  outlined init with copy of _TableColumnInputs(&v38, &v59);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v63 = v48;
  v64 = v49;
  LODWORD(v65) = v50;
  v59 = v44;
  v60 = v45;
  v61 = v46;
  v62 = v47;
  *&v51 = a3;
  *(&v51 + 1) = a4;
  *&v52 = a5;
  *(&v52 + 1) = a6;
  v17 = type metadata accessor for _ConditionalContent<>.TableColumnProvider(0, &v51);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v51, &v44, v17);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B><>.TableColumnProvider, v17);
  _ConditionalContent.Container.init(content:provider:)();
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v27 = type metadata accessor for _ConditionalContent.Info();
  *&v59 = a3;
  *(&v59 + 1) = a4;
  *&v60 = v17;
  *(&v60 + 1) = WitnessTable;
  v20 = type metadata accessor for _ConditionalContent.Container();
  v28 = v20;
  v29 = swift_getWitnessTable(MEMORY[0x1E697F958], v20);
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v59, &v51, v20);
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v26, v20, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v59 = v30;
  v60 = v31;
  v61 = v32;
  v62 = v33;
  v24 = *(v21 + 8);
  v24(&v59, v20);
  *&v30 = v15;
  DWORD2(v30) = v16;

  PreferencesOutputs.setIndirectDependency(_:)();
  v24(&v51, v20);
  (*(v18 + 8))(&v44, v17);

  *a7 = v15;
  *(a7 + 8) = v16;
  return result;
}

uint64_t static _ConditionalContent<>._tableColumnCount(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[3];
  v19 = a1[2];
  v20 = v8;
  v21 = a1[4];
  v22 = *(a1 + 20);
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  result = (*(a4 + 72))(&v17);
  if ((v11 & 1) == 0)
  {
    v12 = a1[3];
    v19 = a1[2];
    v20 = v12;
    v21 = a1[4];
    v22 = *(a1 + 20);
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    v14 = result;
    v15 = result != (*(a5 + 72))(&v17, a3, a5);
    if ((v16 | v15))
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t _ConditionalContent<>.TableColumnProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t _ConditionalContent<>.TableColumnProvider.attachOutputs(to:)(uint64_t *a1)
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

__n128 _ConditionalContent<>.TableColumnProvider.makeChildInputs()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v19 = *(v1 + 32);
  v5 = v19;
  v20 = v4;
  v21 = *(v1 + 64);
  v6 = v21;
  v22 = *(v1 + 80);
  v7 = v22;
  *(a1 + 32) = v19;
  *(a1 + 48) = v4;
  *(a1 + 64) = v6;
  v8 = *(v1 + 16);
  v18[0] = *v1;
  v10 = v18[0];
  v9 = v18[0];
  v18[1] = v8;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  v23[1] = v3;
  v23[2] = v5;
  v23[0] = v10;
  v11 = v3;
  swift_beginAccess();
  v12 = v11[3];
  v24[1] = v11[2];
  v24[2] = v12;
  v13 = v11[5];
  v24[3] = v11[4];
  v24[4] = v13;
  v24[0] = v11[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v14 = swift_allocObject();
  memmove((v14 + 16), v11 + 1, 0x50uLL);
  outlined init with copy of _TableColumnInputs(v18, v17);
  outlined init with copy of _GraphInputs(v23, v17);
  outlined init with copy of CachedEnvironment(v24, v17);

  v15 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v15;
  v17[2] = *(v1 + 32);
  outlined destroy of _GraphInputs(v17);
  *a1 = *v1;
  *(a1 + 16) = v14;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(v1 + 40);
  return result;
}

uint64_t _ConditionalContent<>.TableColumnProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v3;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  _GraphValue.init(_:)();
  return (*(v6 + 64))(v10, v8, v5, v6);
}

uint64_t _ConditionalContent<>.TableColumnProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v3;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(a3 + 40);
  _GraphValue.init(_:)();
  return (*(v6 + 64))(v10, v8, v5, v6);
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.TableColumnProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _TableColumnInputs(v9, v8);
}

double protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.TableColumnProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;

  return result;
}

uint64_t Optional<A>.ChildTableColumn.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for EmptyTableColumnContent(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v13 = type metadata accessor for _ConditionalContent.Storage();
  v14 = type metadata accessor for Optional();
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  Optional<A>.ChildTableColumn.content.getter(v9);
  v31 = a2;
  v32 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.ChildTableColumn.value.getter, v30, MEMORY[0x1E69E73E0], v13, v21, v16);
  (*(v7 + 8))(v9, v6);
  v22 = *(v17 + 48);
  if (v22(v16, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v22(v16, 1, v13) != 1)
    {
      (*(v26 + 8))(v16, v27);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v16, v13);
  }

  v23 = swift_checkMetadataState();
  swift_getWitnessTable(protocol conformance descriptor for EmptyTableColumnContent<A>, v23);
  v24 = type metadata accessor for _ConditionalContent.Storage();
  return (*(*(v24 - 8) + 32))(v29, v20, v24);
}

uint64_t closure #1 in Optional<A>.ChildTableColumn.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableColumnContent(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance A?<A>.ChildTableColumn@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EmptyTableColumnContent(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v6 = type metadata accessor for _ConditionalContent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance A?<A>.ChildTableColumn(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for A?<A>.ChildTableColumn, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static Optional<A>._makeContent(content:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 48);
  v18[2] = *(a1 + 32);
  v18[3] = v7;
  v18[4] = *(a1 + 64);
  v19 = *(a1 + 80);
  v8 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v8;
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v17[1] = _GraphValue.value.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for EmptyTableColumnContent(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  type metadata accessor for _ConditionalContent();
  v14 = type metadata accessor for Optional<A>.ChildTableColumn(0, a2, a3, v13);
  swift_getWitnessTable(protocol conformance descriptor for A?<A>.ChildTableColumn, v14);
  _GraphValue.init<A>(_:)();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EmptyTableColumnContent<A>, v12);
  return static _ConditionalContent<>._makeContent(content:inputs:)(v17, v18, a2, v12, a3, WitnessTable, a4);
}

uint64_t static Optional<A>._tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  (*(a3 + 72))(v6);
  return 0;
}

uint64_t static EmptyTableColumnContent._makeContent(content:inputs:)()
{
  PreferencesOutputs.init()();

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static EmptyTableColumnContent._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[3] = type metadata accessor for EmptyTableColumnContent.EmptyTableColumnList(0, a1, a2, a4);
  v6[4] = &protocol witness table for EmptyTableColumnContent<A>.EmptyTableColumnList;
  type metadata accessor for TableColumnList();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for <> _ConditionalContent<A, B>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <A> A?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable("ظ\b", a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyTableColumnContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for EmptyTableColumnContent<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for _ConditionalContent<>.TableColumnProvider(void *a1)
{
}

uint64_t initializeWithCopy for _ConditionalContent<>.TableColumnProvider(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = *(a2 + 24);

  return a1;
}

uint64_t *assignWithCopy for _ConditionalContent<>.TableColumnProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  a1[11] = a2[11];

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy100_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t *assignWithTake for _ConditionalContent<>.TableColumnProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 7) = *(a2 + 7);
  a1[9] = a2[9];
  *(a1 + 20) = *(a2 + 20);
  a1[11] = a2[11];

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ConditionalContent<>.TableColumnProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ConditionalContent<>.TableColumnProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for TableColumnList()
{
  result = lazy cache variable for type metadata for TableColumnList;
  if (!lazy cache variable for type metadata for TableColumnList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TableColumnList);
  }

  return result;
}

void protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance ListControlGroupStyle(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>)
  {
    type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>();
    type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>, _TraitWritingModifier<UseCompactSectionSpacingTraitKey>>);
    }
  }
}

void type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>()
{
  if (!lazy cache variable for type metadata for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>)
  {
    v0 = type metadata accessor for Section(0, &type metadata for ControlGroupStyleConfiguration.Label, &type metadata for ControlGroupStyleConfiguration.Content, MEMORY[0x1E6981E70]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>)
  {
    v4[3] = v0;
    v4[4] = v1;
    type metadata accessor for Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView>();
    v4[0] = &protocol witness table for ControlGroupStyleConfiguration.Label;
    v4[1] = &protocol witness table for ControlGroupStyleConfiguration.Content;
    v4[2] = MEMORY[0x1E6981E60];
    result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<UseCompactSectionSpacingTraitKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<UseCompactSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationState.Base(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 448);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4)
    {
      if (v4 == 2)
      {

        v5 = *(a1 + 24);
        if (v5)
        {
          if (v5 == 1)
          {
            goto LABEL_38;
          }
        }

        if (*(a1 + 40))
        {
        }

        if (*(a1 + 64))
        {

LABEL_37:
        }
      }

      else
      {
        if (*(a1 + 48))
        {
        }

        if (*(a1 + 104))
        {
        }

        v6 = *(a1 + 208);
        if (*(a1 + 240))
        {
          if (v6 != 255)
          {
            if (v6)
            {

              if (*(a1 + 152))
              {
                __swift_destroy_boxed_opaque_existential_1((a1 + 128));
              }

              if (*(a1 + 176) != 1)
              {
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1((a1 + 120));
            }
          }
        }

        else
        {
          if (v6 != 255)
          {
            if (v6)
            {

              if (*(a1 + 152))
              {
                __swift_destroy_boxed_opaque_existential_1((a1 + 128));
              }

              if (*(a1 + 176) != 1)
              {
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1((a1 + 120));
            }
          }
        }

        if (*(a1 + 360))
        {

          goto LABEL_37;
        }
      }
    }

LABEL_38:
    v7 = *(a2 + 448);
    if (v7 >= 3)
    {
      v7 = *a2 + 3;
    }

    if (v7 != 2)
    {
      if (v7 == 1)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 2);
        v8 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *(a1 + 16) = v8;
        if (*(a2 + 6))
        {
          *(a1 + 40) = *(a2 + 10);
          *(a1 + 48) = *(a2 + 6);
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 64) = *(a2 + 8);
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 80) = *(a2 + 10);
          *(a1 + 88) = *(a2 + 22);
        }

        else
        {
          v15 = *(a2 + 40);
          v16 = *(a2 + 56);
          v17 = *(a2 + 72);
          *(a1 + 88) = *(a2 + 22);
          *(a1 + 72) = v17;
          *(a1 + 56) = v16;
          *(a1 + 40) = v15;
        }

        *(a1 + 92) = *(a2 + 23);
        if (*(a2 + 13))
        {
          *(a1 + 96) = *(a2 + 12);
          *(a1 + 104) = *(a2 + 13);
          *(a1 + 112) = *(a2 + 14);
        }

        else
        {
          v18 = a2[6];
          *(a1 + 112) = *(a2 + 14);
          *(a1 + 96) = v18;
        }

        v19 = *(a2 + 208);
        if (a2[15])
        {
          if (v19 == 255)
          {
            v22 = *(a2 + 120);
            *(a1 + 136) = *(a2 + 136);
            *(a1 + 120) = v22;
            v23 = *(a2 + 152);
            v24 = *(a2 + 168);
            v25 = *(a2 + 184);
            *(a1 + 193) = *(a2 + 193);
            *(a1 + 184) = v25;
            *(a1 + 168) = v24;
            *(a1 + 152) = v23;
          }

          else if (v19)
          {
            *(a1 + 120) = *(a2 + 15);
            v20 = *(a2 + 19);

            if (v20)
            {
              *(a1 + 152) = v20;
              *(a1 + 160) = *(a2 + 20);
              (**(v20 - 8))(a1 + 128, a2 + 8, v20);
            }

            else
            {
              v36 = a2[8];
              v37 = a2[9];
              *(a1 + 160) = *(a2 + 20);
              *(a1 + 128) = v36;
              *(a1 + 144) = v37;
            }

            if (*(a2 + 22) == 1)
            {
              *(a1 + 168) = *(a2 + 168);
            }

            else
            {
              *(a1 + 168) = *(a2 + 42);
              *(a1 + 172) = *(a2 + 43);
              *(a1 + 176) = *(a2 + 22);
            }

            *(a1 + 184) = *(a2 + 23);
            v38 = *(a2 + 25);
            *(a1 + 192) = *(a2 + 24);
            *(a1 + 200) = v38;
            *(a1 + 208) = 1;
          }

          else
          {
            v34 = *(a2 + 18);
            *(a1 + 144) = v34;
            *(a1 + 152) = *(a2 + 19);
            (**(v34 - 8))(a1 + 120, a2 + 120);
            *(a1 + 208) = 0;
          }

          *(a1 + 240) = 1;
        }

        else
        {
          if (v19 == 255)
          {
            v26 = *(a2 + 120);
            *(a1 + 136) = *(a2 + 136);
            *(a1 + 120) = v26;
            v27 = *(a2 + 152);
            v28 = *(a2 + 168);
            v29 = *(a2 + 184);
            *(a1 + 193) = *(a2 + 193);
            *(a1 + 184) = v29;
            *(a1 + 168) = v28;
            *(a1 + 152) = v27;
          }

          else if (v19)
          {
            *(a1 + 120) = *(a2 + 15);
            v21 = *(a2 + 19);

            if (v21)
            {
              *(a1 + 152) = v21;
              *(a1 + 160) = *(a2 + 20);
              (**(v21 - 8))(a1 + 128, a2 + 8, v21);
            }

            else
            {
              v39 = a2[8];
              v40 = a2[9];
              *(a1 + 160) = *(a2 + 20);
              *(a1 + 128) = v39;
              *(a1 + 144) = v40;
            }

            if (*(a2 + 22) == 1)
            {
              *(a1 + 168) = *(a2 + 168);
            }

            else
            {
              *(a1 + 168) = *(a2 + 42);
              *(a1 + 172) = *(a2 + 43);
              *(a1 + 176) = *(a2 + 22);
            }

            *(a1 + 184) = *(a2 + 23);
            v41 = *(a2 + 25);
            *(a1 + 192) = *(a2 + 24);
            *(a1 + 200) = v41;
            *(a1 + 208) = 1;
          }

          else
          {
            v35 = *(a2 + 18);
            *(a1 + 144) = v35;
            *(a1 + 152) = *(a2 + 19);
            (**(v35 - 8))(a1 + 120, a2 + 120);
            *(a1 + 208) = 0;
          }

          *(a1 + 216) = *(a2 + 27);
          *(a1 + 224) = *(a2 + 28);
          *(a1 + 232) = *(a2 + 29);
          *(a1 + 240) = 0;
        }

        *(a1 + 248) = *(a2 + 31);
        *(a1 + 256) = *(a2 + 32);
        *(a1 + 264) = *(a2 + 33);
        *(a1 + 272) = *(a2 + 34);
        *(a1 + 280) = *(a2 + 35);
        *(a1 + 288) = *(a2 + 36);
        *(a1 + 296) = *(a2 + 37);
        *(a1 + 304) = *(a2 + 38);
        v42 = *(a2 + 312);
        *(a1 + 328) = *(a2 + 41);
        *(a1 + 312) = v42;
        *(a1 + 336) = *(a2 + 84);
        *(a1 + 340) = *(a2 + 85);
        *(a1 + 344) = *(a2 + 43);
        *(a1 + 352) = *(a2 + 352);
        *(a1 + 353) = *(a2 + 353);
        v43 = *(a2 + 45);

        if (v43)
        {
          *(a1 + 360) = v43;
          *(a1 + 368) = *(a2 + 46);
          *(a1 + 376) = *(a2 + 47);
          *(a1 + 384) = *(a2 + 48);
          *(a1 + 392) = *(a2 + 49);
          *(a1 + 400) = *(a2 + 50);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 416) = *(a2 + 52);
          v44 = *(a2 + 424);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 424) = v44;
        }

        else
        {
          v45 = *(a2 + 376);
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 376) = v45;
          v46 = *(a2 + 392);
          v47 = *(a2 + 408);
          v48 = *(a2 + 424);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 408) = v47;
          *(a1 + 424) = v48;
          *(a1 + 392) = v46;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v14;
      }

      goto LABEL_90;
    }

    *a1 = *a2;
    v9 = *(a2 + 3);

    if (v9 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      v10 = *(a2 + 24);
      v11 = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 36);
      *(a1 + 40) = v11;
      *(a1 + 56) = v12;
      *(a1 + 24) = v10;
LABEL_71:
      v13 = 2;
LABEL_90:
      *(a1 + 448) = v13;
      return a1;
    }

    *(a1 + 8) = *(a2 + 1);
    if (*(a2 + 3))
    {
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v30 = a2[1];
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v30;
    }

    *(a1 + 33) = *(a2 + 33);
    v31 = *(a2 + 5);
    if (v31)
    {
      v32 = *(a2 + 6);
      *(a1 + 40) = v31;
      *(a1 + 48) = v32;

      if (*(a2 + 8))
      {
LABEL_67:
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 72) = *(a2 + 72);

LABEL_70:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_71;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      if (*(a2 + 8))
      {
        goto LABEL_67;
      }
    }

    v33 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v33;
    goto LABEL_70;
  }

  return a1;
}

unsigned __int8 *assignWithTake for NavigationState.Base(unsigned __int8 *__dst, unsigned __int8 *__src)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v4 = __dst[448];
  if (v4 >= 3)
  {
    v4 = *__dst + 3;
  }

  if (v4)
  {
    if (v4 != 2)
    {
      if (*(__dst + 6))
      {
      }

      if (*(__dst + 13))
      {
      }

      v6 = __dst[208];
      if (__dst[240])
      {
        if (v6 != 255)
        {
          if (v6)
          {

            if (*(__dst + 19))
            {
              __swift_destroy_boxed_opaque_existential_1(__dst + 16);
            }

            if (*(__dst + 22) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(__dst + 15);
          }
        }
      }

      else
      {
        if (v6 != 255)
        {
          if (v6)
          {

            if (*(__dst + 19))
            {
              __swift_destroy_boxed_opaque_existential_1(__dst + 16);
            }

            if (*(__dst + 22) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(__dst + 15);
          }
        }
      }

      if (!*(__dst + 45))
      {
        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v5 = *(__dst + 3);
    if (!v5)
    {
LABEL_9:
      if (*(__dst + 5))
      {
      }

      if (!*(__dst + 8))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v5 != 1)
    {

      goto LABEL_9;
    }
  }

LABEL_38:
  v7 = __src[448];
  if (v7 >= 3)
  {
    v7 = *__src + 3;
  }

  if (v7 == 2)
  {
    v8 = *(__src + 3);
    *(__dst + 2) = *(__src + 2);
    *(__dst + 3) = v8;
    *(__dst + 58) = *(__src + 58);
    v9 = *(__src + 1);
    *__dst = *__src;
    *(__dst + 1) = v9;
  }

  else if (v7 == 1)
  {
    memcpy(__dst, __src, 0x1C0uLL);
    LOBYTE(v7) = 1;
  }

  else
  {
    LOBYTE(v7) = 0;
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
  }

  __dst[448] = v7;
  return __dst;
}

uint64_t getEnumTag for NavigationState.Base(uint64_t a1)
{
  result = *(a1 + 448);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationState.Base(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 416) = 0u;
    *(result + 432) = 0u;
    *(result + 384) = 0u;
    *(result + 400) = 0u;
    *(result + 352) = 0u;
    *(result + 368) = 0u;
    *(result + 320) = 0u;
    *(result + 336) = 0u;
    *(result + 288) = 0u;
    *(result + 304) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
  }

  *(result + 448) = a2;
  return result;
}

uint64_t *assignWithCopy for NavigationState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  a1[3] = a2[3];

  v4 = a2[5];
  if (a1[5])
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      a1[5] = a2[5];

      a1[6] = a2[6];

      a1[7] = a2[7];

      a1[8] = a2[8];

      a1[9] = a2[9];

      *(a1 + 20) = *(a2 + 20);
    }

    else
    {
      outlined destroy of NavigationListState((a1 + 4));
      v6 = *(a2 + 3);
      v5 = *(a2 + 4);
      v7 = *(a2 + 2);
      *(a1 + 20) = *(a2 + 20);
      *(a1 + 3) = v6;
      *(a1 + 4) = v5;
      *(a1 + 2) = v7;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    *(a1 + 20) = *(a2 + 20);
  }

  else
  {
    v8 = *(a2 + 2);
    v9 = *(a2 + 3);
    v10 = *(a2 + 4);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 3) = v9;
    *(a1 + 4) = v10;
    *(a1 + 2) = v8;
  }

  v11 = a1[13];
  v12 = a2[13];
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      outlined destroy of NavigationSplitViewState((a1 + 11));
      *(a1 + 11) = *(a2 + 11);
      v16 = *(a2 + 15);
      v17 = *(a2 + 17);
      v18 = *(a2 + 76);
      *(a1 + 13) = *(a2 + 13);
      *(a1 + 76) = v18;
      *(a1 + 17) = v17;
      *(a1 + 15) = v16;
      return a1;
    }

    *(a1 + 22) = *(a2 + 22);
    *(a1 + 23) = *(a2 + 23);
    v19 = a2[13];
    if (v11)
    {
      if (v19)
      {
        a1[12] = a2[12];

        a1[13] = a2[13];

        *(a1 + 112) = *(a2 + 112);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>((a1 + 12), &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
        v23 = *(a2 + 112);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 112) = v23;
      }
    }

    else if (v19)
    {
      a1[12] = a2[12];
      a1[13] = a2[13];
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v24 = *(a2 + 6);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 6) = v24;
    }

    v25 = a1[15];
    *(a1 + 113) = *(a2 + 113);
    v26 = a2[15];
    if (v25)
    {
      if (v26)
      {
        v27 = a2[16];
        a1[15] = v26;
        a1[16] = v27;

        goto LABEL_35;
      }
    }

    else if (v26)
    {
      v28 = a2[16];
      a1[15] = v26;
      a1[16] = v28;

      goto LABEL_35;
    }

    *(a1 + 15) = *(a2 + 15);
LABEL_35:
    v29 = a2[18];
    if (a1[18])
    {
      if (v29)
      {
        a1[17] = a2[17];

        a1[18] = a2[18];

        *(a1 + 152) = *(a2 + 152);
      }

      else
      {
        outlined destroy of Binding<NavigationSplitViewColumn>((a1 + 17), &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
        v31 = *(a2 + 152);
        *(a1 + 17) = *(a2 + 17);
        *(a1 + 152) = v31;
      }

      goto LABEL_41;
    }

    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (v12 != 1)
  {
    a1[11] = a2[11];
    if (a2[13])
    {
      a1[12] = a2[12];
      a1[13] = a2[13];
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v20 = *(a2 + 6);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 6) = v20;
    }

    *(a1 + 113) = *(a2 + 113);
    v21 = a2[15];
    if (v21)
    {
      v22 = a2[16];
      a1[15] = v21;
      a1[16] = v22;
    }

    else
    {
      *(a1 + 15) = *(a2 + 15);
    }

    if (a2[18])
    {
LABEL_25:
      a1[17] = a2[17];
      a1[18] = a2[18];
      *(a1 + 152) = *(a2 + 152);

LABEL_41:
      *(a1 + 153) = *(a2 + 153);
      return a1;
    }

LABEL_39:
    v30 = *(a2 + 17);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 17) = v30;
    goto LABEL_41;
  }

  *(a1 + 11) = *(a2 + 11);
  v13 = *(a2 + 13);
  v14 = *(a2 + 15);
  v15 = *(a2 + 17);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 17) = v15;
  *(a1 + 15) = v14;
  *(a1 + 13) = v13;
  return a1;
}

__n128 __swift_memcpy154_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t *assignWithTake for NavigationState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  if (a1[5])
  {
    v4 = a2[5];
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      a1[5] = v4;

      a1[6] = a2[6];

      a1[7] = a2[7];

      a1[8] = a2[8];

      a1[9] = a2[9];

      *(a1 + 20) = *(a2 + 20);
      goto LABEL_6;
    }

    outlined destroy of NavigationListState((a1 + 4));
  }

  v5 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v5;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
LABEL_6:
  v6 = a1[13];
  if (v6 != 1)
  {
    v7 = a2[13];
    if (v7 == 1)
    {
      outlined destroy of NavigationSplitViewState((a1 + 11));
      goto LABEL_9;
    }

    a1[11] = a2[11];
    if (v6)
    {
      if (v7)
      {
        a1[12] = a2[12];

        a1[13] = v7;

        *(a1 + 112) = *(a2 + 112);
        goto LABEL_15;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>((a1 + 12), &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
    }

    *(a1 + 6) = *(a2 + 6);
    *(a1 + 112) = *(a2 + 112);
LABEL_15:
    v8 = a2[15];
    v9 = a1[15];
    *(a1 + 113) = *(a2 + 113);
    if (v9)
    {
      if (v8)
      {
        v10 = a2[16];
        a1[15] = v8;
        a1[16] = v10;

        if (!a1[18])
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    else if (v8)
    {
      v11 = a2[16];
      a1[15] = v8;
      a1[16] = v11;
      if (!a1[18])
      {
        goto LABEL_27;
      }

LABEL_24:
      v12 = a2[18];
      if (v12)
      {
        a1[17] = a2[17];

        a1[18] = v12;

        *(a1 + 152) = *(a2 + 152);
LABEL_28:
        *(a1 + 153) = *(a2 + 153);
        return a1;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>((a1 + 17), &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
LABEL_27:
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 152) = *(a2 + 152);
      goto LABEL_28;
    }

    *(a1 + 15) = *(a2 + 15);
    if (!a1[18])
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_9:
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t NavigationState.pendingPopCount(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of NavigationColumnState(*(v4 + 56) + 360 * v5, v9);
  if (v10)
  {
    v7 = *(v11 + 16);
  }

  else
  {
    v7 = 0;
  }

  outlined destroy of NavigationColumnState(v9);
  return v7;
}

void NavigationState.StackContent.topKey.getter()
{
  outlined init with copy of NavigationState.Base(v0, __src);
  if (!v32)
  {
    return;
  }

  if (v32 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
    memcpy(__dst, __src, 0x163uLL);
LABEL_65:
    outlined destroy of NavigationColumnState(__dst);
    return;
  }

  v1 = __src[0];
  v34 = __src[9];
  v33[2] = *&__src[5];
  v33[3] = *&__src[7];
  v33[0] = *&__src[1];
  v33[1] = *&__src[3];
  v2 = *(__src[0] + 16);
  if (v2)
  {
    v3 = 360 * v2;
    v4 = *(__src[0] + 16);
    while (1)
    {
      if (v4 > *(v1 + 16))
      {
        goto LABEL_67;
      }

      v5 = v4 - 1;
      outlined init with copy of NavigationColumnState(v1 + v3 - 328, __dst);
      if (LOBYTE(__dst[3]) > 2u)
      {
        if (LOBYTE(__dst[3]) != 5)
        {
          goto LABEL_63;
        }

        goto LABEL_8;
      }

      if (LOBYTE(__dst[3]) == 1)
      {
        break;
      }

      if (LOBYTE(__dst[3]) != 2)
      {
        goto LABEL_63;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, __dst, v4 - 1, v1);
      v7 = v6;
      outlined destroy of NavigationColumnState(__dst);
      if (v7)
      {
        goto LABEL_64;
      }

LABEL_9:
      v3 -= 360;
      v4 = v5;
      if (!v5)
      {
        goto LABEL_66;
      }
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, __dst, v4 - 1, v1);
    if (v8)
    {
      goto LABEL_63;
    }

    if (v4 >= v2)
    {
      goto LABEL_8;
    }

    if (v4 >= *(v1 + 16))
    {
      goto LABEL_68;
    }

    outlined init with copy of NavigationColumnState(v1 + v3 + 32, v28);
    if (v29 > 2u)
    {
      if (v29 != 5)
      {
        goto LABEL_62;
      }

LABEL_44:
      outlined destroy of NavigationColumnState(v28);
LABEL_8:
      outlined destroy of NavigationColumnState(__dst);
      goto LABEL_9;
    }

    if (v29 != 1)
    {
      if (v29 != 2)
      {
        goto LABEL_62;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v28, v4, v1);
      v10 = v9 ^ 1;
LABEL_50:
      outlined destroy of NavigationColumnState(v28);
      outlined destroy of NavigationColumnState(__dst);
      if ((v10 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_9;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v28, v4, v1);
    if (v11)
    {
LABEL_62:
      outlined destroy of NavigationColumnState(v28);
LABEL_63:
      outlined destroy of NavigationColumnState(__dst);
LABEL_64:
      outlined init with copy of NavigationColumnState(v1 + v3 - 328, __dst);
      outlined destroy of Binding<NavigationSplitViewColumn>(v33, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

      goto LABEL_65;
    }

    if (v4 + 1 >= v2)
    {
      goto LABEL_44;
    }

    if (v4 + 1 >= *(v1 + 16))
    {
      goto LABEL_69;
    }

    outlined init with copy of NavigationColumnState(v1 + v3 + 392, v26);
    if (v27 > 2u)
    {
      if (v27 - 3 >= 2)
      {
LABEL_47:
        v10 = 1;
        goto LABEL_49;
      }
    }

    else if (v27)
    {
      v12 = v4 + 1;
      if (v27 != 1)
      {
        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v26, v12, v1);
        v10 = v18 ^ 1;
        goto LABEL_49;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v26, v12, v1);
      if ((v13 & 1) == 0)
      {
        if (v4 + 2 < *(v1 + 16))
        {
          outlined init with copy of NavigationColumnState(v1 + v3 + 752, v24);
          if (v25 > 2u)
          {
            if (v25 - 3 >= 2)
            {
LABEL_54:
              v10 = 1;
              goto LABEL_56;
            }
          }

          else if (v25)
          {
            v14 = v4 + 2;
            if (v25 != 1)
            {
              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v24, v14, v1);
              v10 = v19 ^ 1;
              goto LABEL_56;
            }

            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v24, v14, v1);
            if ((v15 & 1) == 0)
            {
              if (v4 + 3 < *(v1 + 16))
              {
                v21 = *(v1 + 16);
                outlined init with copy of NavigationColumnState(v1 + v3 + 1112, v22);
                if (v23 > 2u)
                {
                  if (v23 - 3 >= 2)
                  {
                    goto LABEL_59;
                  }
                }

                else if (v23)
                {
                  v16 = v4 + 3;
                  if (v23 != 1)
                  {
                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v22, v16, v1);
                    v10 = v20 ^ 1;
                    goto LABEL_61;
                  }

                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v33, v22, v16, v1);
                  if ((v17 & 1) == 0)
                  {
                    if (v4 + 4 < v21)
                    {
                      v10 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v4 + 4, v1, v33);
LABEL_61:
                      outlined destroy of NavigationColumnState(v22);
                      goto LABEL_56;
                    }

LABEL_59:
                    v10 = 1;
                    goto LABEL_61;
                  }
                }

                v10 = 0;
                goto LABEL_61;
              }

              goto LABEL_54;
            }
          }

          v10 = 0;
LABEL_56:
          outlined destroy of NavigationColumnState(v24);
          goto LABEL_49;
        }

        goto LABEL_47;
      }
    }

    v10 = 0;
LABEL_49:
    outlined destroy of NavigationColumnState(v26);
    goto LABEL_50;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t NavigationState.StackContent.animationSeed.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v20)
  {
    if (v20 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[42];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
      return result;
    }

    v5 = __src[0];
    outlined consume of NavigationSplitViewState?(__src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = v5 + 32;
      while (1)
      {
        outlined init with copy of NavigationColumnState(v9, __dst);
        v10 = LODWORD(__dst[42]);
        v11 = HIDWORD(__dst[42]);
        outlined destroy of NavigationColumnState(__dst);
        if (v8 == 0xFFFFFFFFLL || !v10)
        {
          goto LABEL_16;
        }

        if (v8)
        {
          break;
        }

        v8 = v10;
        if (v7 != 0xFFFFFFFFLL)
        {
LABEL_17:
          if (v11)
          {
            if (!v7 || v11 == 0xFFFFFFFFLL)
            {
              v7 = v11;
            }

            else
            {
              v15 = (v11 | (v7 << 32)) + ~(v11 << 32);
              v16 = (v15 ^ (v15 >> 22)) + ~((v15 ^ (v15 >> 22)) << 13);
              v17 = (9 * (v16 ^ (v16 >> 8))) ^ ((9 * (v16 ^ (v16 >> 8))) >> 15);
              v7 = ((v17 + ~(v17 << 27)) >> 31) ^ (v17 + ~(v17 << 27));
            }
          }
        }

LABEL_8:
        v9 += 360;
        if (!--v6)
        {

          goto LABEL_25;
        }
      }

      if (v10 != 0xFFFFFFFFLL)
      {
        v12 = (v10 | (v8 << 32)) + ~(v10 << 32);
        v13 = (v12 ^ (v12 >> 22)) + ~((v12 ^ (v12 >> 22)) << 13);
        v14 = (9 * (v13 ^ (v13 >> 8))) ^ ((9 * (v13 ^ (v13 >> 8))) >> 15);
        v8 = ((v14 + ~(v14 << 27)) >> 31) ^ (v14 + ~(v14 << 27));
        if (v7 != 0xFFFFFFFFLL)
        {
          goto LABEL_17;
        }

        goto LABEL_8;
      }

      v8 = 0xFFFFFFFFLL;
LABEL_16:
      if (v7 != 0xFFFFFFFFLL)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
LABEL_25:
    *a1 = v8;
    *(a1 + 4) = v7;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

BOOL NavigationState.StackContent.shouldAnimate(from:)(uint64_t a1)
{
  NavigationState.StackContent.animationSeed.getter(&v7);
  v2 = v7;
  outlined init with copy of NavigationState.Base?(a1, v6, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v6[448] == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v6, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
    return !v2;
  }

  NavigationState.StackContent.animationSeed.getter(&v5);
  v3 = v5;
  outlined destroy of NavigationState.StackContent(v6);
  result = 0;
  if (v2 != -1 && v3 != -1 && v2 == v3)
  {
    return 1;
  }

  return result;
}

uint64_t NavigationState.StackContent.Key.debugDescription.getter(uint64_t a1, unsigned __int8 a2)
{
  _StringGuts.grow(_:)(38);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0x3A6E6D756C6F6320, 0xE900000000000020);
  v4 = 0xE700000000000000;
  v5 = 0x72616265646973;
  v6 = 0xE500000000000000;
  v7 = 0x6B63617473;
  v8 = 0xE900000000000064;
  v9 = 0x657370616C6C6F63;
  if (a2 != 4)
  {
    v9 = 0x6F74636570736E69;
    v8 = 0xE900000000000072;
  }

  if (a2 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE700000000000000;
  v11 = 0x746E65746E6F63;
  if (a2 != 1)
  {
    v11 = 0x6C6961746564;
    v10 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = v11;
    v4 = v10;
  }

  if (a2 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x18D00C9B0](v12, v13);

  MEMORY[0x18D00C9B0](0x436E6D756C6F6320, 0xEE00203A746E756FLL);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v14);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0x203A64693C79654BLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationState.StackContent.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NavigationState.StackContent.Key()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x18D00F6F0](*v0);
  MEMORY[0x18D00F6F0](v1);
  return MEMORY[0x18D00F6F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationState.StackContent.Key(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NavigationState.StackContent.ChangeKind(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

void NavigationState.StackContent.Views.ViewsSequence.startIndex.getter()
{
  outlined init with copy of NavigationState.Base(v0, __src);
  if (!v34)
  {
    return;
  }

  if (v34 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
    memcpy(__dst, __src, 0x163uLL);
    outlined destroy of NavigationColumnState(__dst);
    return;
  }

  v1 = __src[0];
  v36 = __src[9];
  v35[2] = *&__src[5];
  v35[3] = *&__src[7];
  v35[0] = *&__src[1];
  v35[1] = *&__src[3];
  v2 = *(__src[0] + 16);
  if (!v2)
  {
LABEL_61:
    outlined destroy of Binding<NavigationSplitViewColumn>(v35, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

    return;
  }

  v3 = 0;
  v4 = __src[0] + 1472;
  while (v3 < *(v1 + 16))
  {
    v5 = v3 + 1;
    outlined init with copy of NavigationColumnState(v4 - 1440, __dst);
    outlined init with copy of NavigationColumnState(v4 - 1440, v30);
    if (v31 > 2u)
    {
      if (v31 != 5)
      {
        goto LABEL_63;
      }

      goto LABEL_8;
    }

    if (v31 == 1)
    {
      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v30, v3, v1);
      if (v8)
      {
        goto LABEL_63;
      }

      if (v5 >= v2)
      {
        goto LABEL_8;
      }

      if (v5 >= *(v1 + 16))
      {
        goto LABEL_66;
      }

      outlined init with copy of NavigationColumnState(v4 - 1080, v28);
      if (v29 > 2u)
      {
        if (v29 != 5)
        {
          goto LABEL_62;
        }

LABEL_43:
        outlined destroy of NavigationColumnState(v28);
LABEL_8:
        outlined destroy of NavigationColumnState(v30);
        goto LABEL_9;
      }

      if (v29 != 1)
      {
        if (v29 != 2)
        {
          goto LABEL_62;
        }

        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v28, v3 + 1, v1);
        v10 = v9 ^ 1;
LABEL_49:
        outlined destroy of NavigationColumnState(v28);
        outlined destroy of NavigationColumnState(v30);
        if ((v10 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_9;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v28, v3 + 1, v1);
      if (v11)
      {
LABEL_62:
        outlined destroy of NavigationColumnState(v28);
LABEL_63:
        outlined destroy of NavigationColumnState(v30);
LABEL_64:
        outlined destroy of NavigationColumnState(__dst);

        outlined destroy of Binding<NavigationSplitViewColumn>(v35, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        return;
      }

      if (v3 + 2 >= *(v1 + 16))
      {
        goto LABEL_43;
      }

      outlined init with copy of NavigationColumnState(v4 - 720, v26);
      if (v27 > 2u)
      {
        if (v27 - 3 >= 2)
        {
          goto LABEL_46;
        }
      }

      else if (v27)
      {
        v12 = v3 + 2;
        if (v27 != 1)
        {
          specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v26, v12, v1);
          v10 = v19 ^ 1;
          goto LABEL_48;
        }

        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v26, v12, v1);
        if ((v13 & 1) == 0)
        {
          if (v3 + 3 < *(v1 + 16))
          {
            outlined init with copy of NavigationColumnState(v4 - 360, v24);
            if (v25 > 2u)
            {
              if (v25 - 3 >= 2)
              {
                goto LABEL_53;
              }
            }

            else if (v25)
            {
              v14 = v3 + 3;
              if (v25 != 1)
              {
                specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v24, v14, v1);
                v10 = v20 ^ 1;
                goto LABEL_55;
              }

              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v24, v14, v1);
              if ((v15 & 1) == 0)
              {
                v16 = *(v1 + 16);
                if (v3 + 4 < v16)
                {
                  outlined init with copy of NavigationColumnState(v4, v22);
                  if (v23 > 2u)
                  {
                    if (v23 - 3 >= 2)
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v23)
                  {
                    v17 = v3 + 4;
                    if (v23 != 1)
                    {
                      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v22, v17, v1);
                      v10 = v21 ^ 1;
                      goto LABEL_60;
                    }

                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v22, v17, v1);
                    if ((v18 & 1) == 0)
                    {
                      if (v3 + 5 < v16)
                      {
                        v10 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v3 + 5, v1, v35);
                        goto LABEL_60;
                      }

LABEL_58:
                      v10 = 1;
LABEL_60:
                      outlined destroy of NavigationColumnState(v22);
LABEL_55:
                      outlined destroy of NavigationColumnState(v24);
LABEL_48:
                      outlined destroy of NavigationColumnState(v26);
                      goto LABEL_49;
                    }
                  }

                  v10 = 0;
                  goto LABEL_60;
                }

LABEL_53:
                v10 = 1;
                goto LABEL_55;
              }
            }

            v10 = 0;
            goto LABEL_55;
          }

LABEL_46:
          v10 = 1;
          goto LABEL_48;
        }
      }

      v10 = 0;
      goto LABEL_48;
    }

    if (v31 != 2)
    {
      goto LABEL_63;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v35, v30, v3, v1);
    v7 = v6;
    outlined destroy of NavigationColumnState(v30);
    if (v7)
    {
      goto LABEL_64;
    }

LABEL_9:
    outlined destroy of NavigationColumnState(__dst);
    v4 += 360;
    ++v3;
    if (v2 == v5)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
}

void NavigationState.StackContent.Views.ViewsSequence.index(after:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a4;
  outlined init with copy of NavigationState.Base(v6, __src);
  if (!v46)
  {
    return;
  }

  if (v46 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
    memcpy(__dst, __src, 0x163uLL);
    specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, a2 & 1, a3, v8, __dst, a5[2], a5[3], a5[4], a5[5]);
    outlined destroy of NavigationColumnState(__dst);
    return;
  }

  v12 = __src[0];
  v47[2] = *&__src[5];
  v47[3] = *&__src[7];
  v48 = __src[9];
  v47[0] = *&__src[1];
  v47[1] = *&__src[3];
  if (a2)
  {
LABEL_81:
    __break(1u);
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if (*(__src[0] + 16) <= a1)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
  specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(a1, 0, a3, v8, __dst, a5[2], a5[3], a5[4], a5[5]);
  v14 = ~v13;
  outlined destroy of NavigationColumnState(__dst);
  if (v14)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v47, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

    return;
  }

  v15 = *(v12 + 16);
  if (v15 <= a1)
  {
    goto LABEL_78;
  }

  if (a1 + 1 != v15)
  {

    v16 = a1 + 6;
    v17 = 360 * a1;
    while (1)
    {
      if ((v16 - 5) >= v15)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      outlined init with copy of NavigationColumnState(v12 + v17 + 392, __dst);
      if (v16 - 5 >= *(v12 + 16))
      {
        goto LABEL_75;
      }

      outlined init with copy of NavigationColumnState(v12 + v17 + 392, v42);
      if (v43 > 2u)
      {
        if (v43 != 5)
        {
          goto LABEL_72;
        }

        goto LABEL_16;
      }

      if (v43 == 1)
      {
        break;
      }

      if (v43 != 2)
      {
        goto LABEL_72;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v42, v16 - 5, v12);
      v19 = v18;
      outlined destroy of NavigationColumnState(v42);
      if (v19)
      {
        goto LABEL_73;
      }

LABEL_17:
      outlined destroy of NavigationColumnState(__dst);
      ++v16;
      v17 += 360;
      if (1 - v15 + v16 == 6)
      {
        goto LABEL_13;
      }
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v42, v16 - 5, v12);
    if (v20)
    {
      goto LABEL_72;
    }

    if ((v16 - 4) >= v15)
    {
      goto LABEL_16;
    }

    if (v16 - 4 >= *(v12 + 16))
    {
      goto LABEL_79;
    }

    outlined init with copy of NavigationColumnState(v12 + v17 + 752, v40);
    if (v41 > 2u)
    {
      if (v41 != 5)
      {
        goto LABEL_71;
      }

LABEL_53:
      outlined destroy of NavigationColumnState(v40);
LABEL_16:
      outlined destroy of NavigationColumnState(v42);
      goto LABEL_17;
    }

    if (v41 != 1)
    {
      if (v41 != 2)
      {
        goto LABEL_71;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v40, v16 - 4, v12);
      v22 = v21 ^ 1;
LABEL_59:
      outlined destroy of NavigationColumnState(v40);
      outlined destroy of NavigationColumnState(v42);
      if ((v22 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_17;
    }

    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v40, v16 - 4, v12);
    if (v23)
    {
LABEL_71:
      outlined destroy of NavigationColumnState(v40);
LABEL_72:
      outlined destroy of NavigationColumnState(v42);
LABEL_73:
      outlined destroy of NavigationColumnState(__dst);

      outlined destroy of Binding<NavigationSplitViewColumn>(v47, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

      return;
    }

    if (v16 - 3 >= v15)
    {
      goto LABEL_53;
    }

    if (v16 - 3 >= *(v12 + 16))
    {
      goto LABEL_80;
    }

    outlined init with copy of NavigationColumnState(v12 + v17 + 1112, v38);
    if (v39 > 2u)
    {
      if (v39 - 3 >= 2)
      {
LABEL_56:
        v22 = 1;
        goto LABEL_58;
      }
    }

    else if (v39)
    {
      v24 = v16 - 3;
      if (v39 != 1)
      {
        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v38, v24, v12);
        v22 = v31 ^ 1;
        goto LABEL_58;
      }

      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v38, v24, v12);
      if ((v25 & 1) == 0)
      {
        if (v16 - 2 < *(v12 + 16))
        {
          outlined init with copy of NavigationColumnState(v12 + v17 + 1472, v36);
          if (v37 > 2u)
          {
            if (v37 - 3 >= 2)
            {
LABEL_63:
              v22 = 1;
              goto LABEL_65;
            }
          }

          else if (v37)
          {
            v26 = v16 - 2;
            if (v37 != 1)
            {
              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v36, v26, v12);
              v22 = v32 ^ 1;
              goto LABEL_65;
            }

            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v36, v26, v12);
            if ((v27 & 1) == 0)
            {
              v28 = *(v12 + 16);
              if (v16 - 1 < v28)
              {
                outlined init with copy of NavigationColumnState(v12 + v17 + 1832, v34);
                if (v35 > 2u)
                {
                  if (v35 - 3 >= 2)
                  {
                    goto LABEL_68;
                  }
                }

                else if (v35)
                {
                  v29 = v16 - 1;
                  if (v35 != 1)
                  {
                    specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v34, v29, v12);
                    v22 = v33 ^ 1;
                    goto LABEL_70;
                  }

                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v47, v34, v29, v12);
                  if ((v30 & 1) == 0)
                  {
                    if (v16 < v28)
                    {
                      v22 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v16, v12, v47);
LABEL_70:
                      outlined destroy of NavigationColumnState(v34);
                      goto LABEL_65;
                    }

LABEL_68:
                    v22 = 1;
                    goto LABEL_70;
                  }
                }

                v22 = 0;
                goto LABEL_70;
              }

              goto LABEL_63;
            }
          }

          v22 = 0;
LABEL_65:
          outlined destroy of NavigationColumnState(v36);
          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    v22 = 0;
LABEL_58:
    outlined destroy of NavigationColumnState(v38);
    goto LABEL_59;
  }

LABEL_13:
  outlined destroy of Binding<NavigationSplitViewColumn>(v47, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
  swift_bridgeObjectRelease_n();
}

void NavigationState.StackContent.Views.ViewsSequence.index(before:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a4;
  outlined init with copy of NavigationState.Base(v5, __src);
  if (!v47)
  {
    NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    return;
  }

  if (v47 != 1)
  {
    v12 = __src[0];
    v48[2] = *&__src[5];
    v48[3] = *&__src[7];
    v49 = __src[9];
    v48[0] = *&__src[1];
    v48[1] = *&__src[3];
    if (a2)
    {
      a1 = *(__src[0] + 16);
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (*(__src[0] + 16) <= a1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      outlined init with copy of NavigationColumnState(__src[0] + 360 * a1 + 32, __dst);
      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(a1, 0, a3, v7, __dst, a5[2], a5[3], a5[4], a5[5]);
      v15 = ~v14;
      outlined destroy of NavigationColumnState(__dst);
      if (v15)
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

        return;
      }
    }

    if (!a1)
    {
LABEL_74:

      NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      outlined destroy of Binding<NavigationSplitViewColumn>(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      return;
    }

    v16 = a1 - 1;
    v17 = 360 * a1;
    while (1)
    {
      if (v16 >= *(v12 + 16))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      outlined init with copy of NavigationColumnState(v12 + v17 - 328, __dst);
      if (__dst[24] > 2u)
      {
        if (__dst[24] - 3 >= 2)
        {
          goto LABEL_18;
        }
      }

      else if (__dst[24])
      {
        if (__dst[24] != 1)
        {
          specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, __dst, v16, v12);
          v32 = v31;
          outlined destroy of NavigationColumnState(__dst);
          if ((v32 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_50;
        }

        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, __dst, v16, v12);
        if ((v18 & 1) == 0)
        {
          v19 = *(v12 + 16);
          if (v16 + 1 >= v19)
          {
            goto LABEL_18;
          }

          outlined init with copy of NavigationColumnState(v12 + v17 + 32, v43);
          if (v44 > 2u)
          {
            if (v44 - 3 >= 2)
            {
LABEL_17:
              outlined destroy of NavigationColumnState(v43);
LABEL_18:
              outlined destroy of NavigationColumnState(__dst);
              goto LABEL_19;
            }
          }

          else if (v44)
          {
            v20 = v16 + 1;
            if (v44 != 1)
            {
              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v43, v20, v12);
              v28 = v33 ^ 1;
              goto LABEL_57;
            }

            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v43, v20, v12);
            if ((v21 & 1) == 0)
            {
              if (v16 + 2 >= v19)
              {
                goto LABEL_17;
              }

              if (v16 + 2 >= *(v12 + 16))
              {
                goto LABEL_78;
              }

              outlined init with copy of NavigationColumnState(v12 + v17 + 392, v41);
              if (v42 > 2u)
              {
                if (v42 - 3 >= 2)
                {
                  goto LABEL_61;
                }
              }

              else if (v42)
              {
                v22 = v16 + 2;
                if (v42 != 1)
                {
                  specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v41, v22, v12);
                  v28 = v34 ^ 1;
                  goto LABEL_63;
                }

                specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v41, v22, v12);
                if ((v23 & 1) == 0)
                {
                  if (v16 + 3 < *(v12 + 16))
                  {
                    outlined init with copy of NavigationColumnState(v12 + v17 + 752, v39);
                    if (v40 > 2u)
                    {
                      if (v40 - 3 >= 2)
                      {
                        goto LABEL_66;
                      }
                    }

                    else if (v40)
                    {
                      v24 = v16 + 3;
                      if (v40 != 1)
                      {
                        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v39, v24, v12);
                        v28 = v35 ^ 1;
                        goto LABEL_68;
                      }

                      specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v39, v24, v12);
                      if ((v25 & 1) == 0)
                      {
                        if (v16 + 4 < *(v12 + 16))
                        {
                          outlined init with copy of NavigationColumnState(v12 + v17 + 1112, v37);
                          if (v38 > 2u)
                          {
                            if (v38 - 3 >= 2)
                            {
                              goto LABEL_71;
                            }
                          }

                          else if (v38)
                          {
                            v26 = v16 + 4;
                            if (v38 != 1)
                            {
                              specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v37, v26, v12);
                              v28 = v36 ^ 1;
                              goto LABEL_73;
                            }

                            specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v48, v37, v26, v12);
                            if ((v27 & 1) == 0)
                            {
                              if (v16 + 5 < *(v12 + 16))
                              {
                                v28 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v16 + 5, v12, v48);
                                goto LABEL_73;
                              }

LABEL_71:
                              v28 = 1;
LABEL_73:
                              outlined destroy of NavigationColumnState(v37);
LABEL_68:
                              outlined destroy of NavigationColumnState(v39);
LABEL_63:
                              outlined destroy of NavigationColumnState(v41);
LABEL_57:
                              outlined destroy of NavigationColumnState(v43);
                              outlined destroy of NavigationColumnState(__dst);
                              if (v28)
                              {
                                goto LABEL_19;
                              }

                              goto LABEL_50;
                            }
                          }

                          v28 = 0;
                          goto LABEL_73;
                        }

LABEL_66:
                        v28 = 1;
                        goto LABEL_68;
                      }
                    }

                    v28 = 0;
                    goto LABEL_68;
                  }

LABEL_61:
                  v28 = 1;
                  goto LABEL_63;
                }
              }

              v28 = 0;
              goto LABEL_63;
            }
          }

          outlined destroy of NavigationColumnState(v43);
        }
      }

      outlined destroy of NavigationColumnState(__dst);
LABEL_50:
      outlined init with copy of NavigationColumnState(v12 + v17 - 328, __dst);
      specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(__dst);
      v30 = ~v29;
      outlined destroy of NavigationColumnState(__dst);
      if (v30)
      {
        outlined destroy of Binding<NavigationSplitViewColumn>(v48, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

        return;
      }

LABEL_19:
      --v16;
      v17 -= 360;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }
    }
  }

  outlined consume of ResolvedNavigationDestinations?(__src[45], __src[46], __src[47], __src[48], __src[49], __src[50], __src[51], __src[52]);
  outlined init with copy of NavigationColumnState(__src, __dst);
  if ((a2 & 1) == 0)
  {
    outlined destroy of NavigationColumnState(__dst);
    memcpy(__dst, __src, 0x163uLL);
    specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(a1, 0, a3, v7, __dst, a5[2], a5[3], a5[4], a5[5]);
    if (v13 != -1)
    {
      outlined destroy of NavigationColumnState(__dst);
      return;
    }

    goto LABEL_80;
  }

  specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(__dst);
  if (v11 != -1)
  {
    outlined destroy of NavigationColumnState(__dst);
    outlined destroy of NavigationColumnState(__src);
    return;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

void NavigationState.StackContent.Views.ViewsSequence.subscript.getter(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4;
  v13 = outlined init with copy of NavigationState.Base(v6, v21);
  if (!v24)
  {
    NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)(0, 0, v21[0], v21[1], v21[2], a5, a6);
    return;
  }

  if (v24 != 1)
  {
    v14 = v21[0];
    v25[2] = *&v21[5];
    v25[3] = *&v21[7];
    v26 = v21[9];
    v25[0] = *&v21[1];
    v25[1] = *&v21[3];
    if (a2)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      LODWORD(v19) = 0;
      v18 = 894;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v21[0] + 16) >= a1)
    {
      v20[0] = v21[0];
      MEMORY[0x1EEE9AC00](v13);
      v18 = v20;
      v19 = v25;
      v15 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), &v17, 0, a1);
      if (*(v14 + 16) > a1)
      {
        v16 = v15;
        outlined init with copy of NavigationColumnState(v14 + 360 * a1 + 32, v20);

        NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(a1, 0, a3, v8, v20, v16, a5, a6);
        outlined destroy of Binding<NavigationSplitViewColumn>(v25, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v23;
  v17 = v22;
  outlined consume of ResolvedNavigationDestinations?(v21[45], v21[46], v21[47], v21[48], v21[49], v21[50], v21[51], v21[52]);
  memcpy(v20, v21, 0x163uLL);
  if ((a2 & 1) != 0 || a1)
  {
    goto LABEL_18;
  }

  NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)(0, 0, a3, v8, v20, 0, a5, a6);
LABEL_12:
  outlined destroy of NavigationColumnState(v20);
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v17 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v104);
  if (!a4)
  {
    if ((v111 & 1) == 0)
    {
      v37 = v108;

      v38 = a3 + 1;
      if (!__OFADD__(a3, 1))
      {
        v39 = *(a5 + 248);
        v40 = *(a5 + 296);
        v41 = *(a5 + 264);
        v114 = *(a5 + 280);
        v115 = v40;
        v42 = *(a5 + 296);
        v116 = *(a5 + 312);
        v43 = *(a5 + 264);
        v112 = v39;
        v113 = v43;
        v117 = *(a5 + 328);
        v98 = v114;
        v99 = v42;
        v100 = *(a5 + 312);
        v101 = *(a5 + 328);
        v96 = *(a5 + 248);
        v97 = v41;
        v44 = a6 + v38;
        if (!__OFADD__(a6, v38))
        {
          v45 = *(a5 + 32);
          v46 = a8;
          v47 = *(a5 + 24);
          v48 = *(a5 + 16);
          v51 = v8 + 456;
          v49 = *(v8 + 456);
          v50 = *(v51 + 8);
          *&v118 = a3 + 1;
          *(&v118 + 1) = v48;
          LOBYTE(v119) = v47;
          *(&v119 + 1) = v45;
          v120 = v44;
          v121 = 1;
          outlined init with copy of ResolvedNavigationDestinations(&v112, &v89);
          v52 = AnyNavigationPath.view<A>(basedOn:applying:index:apparentPosition:)(v102, &v96, v49, v50, a3, &v118, v37, a7[3], a7[5]);
          v91 = v98;
          v92 = v99;
          v93 = v100;
          v94 = v101;
          v89 = v96;
          v90 = v97;
          outlined destroy of ResolvedNavigationDestinations(&v89);
          if (v47 >= 3)
          {
            LOBYTE(v47) = 3;
          }

          v53 = __swift_project_boxed_opaque_existential_1(v102, v102[3]);
          v54 = MEMORY[0x1EEE9AC00](v53);
          (*(v56 + 16))(v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
          AnyHashable.init<A>(_:)();

          *(v46 + 88) = 0;
          *v46 = v52;
          *(v46 + 8) = v47;
          *(v46 + 16) = v38;
          __swift_destroy_boxed_opaque_existential_1(v102);
          return outlined destroy of Binding<NavigationSplitViewColumn>(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_53:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1)
  {
    if ((v111 & 1) == 0)
    {
      v18 = v8;
      v19 = v108;
      v20 = v109;
      v21 = v110;
      v22 = (*(*v108 + 88))(v17);
      v23 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        v24 = v23 + a3;
        if (!__OFADD__(v23, a3))
        {
          if ((a3 & 0x8000000000000000) == 0)
          {
            if (*(v20 + 16) > a3)
            {
              v25 = a6 + v24;
              if (!__OFADD__(a6, v24))
              {
                v84[1] = v21;
                v85 = v19;
                v86 = a8;
                v26 = *(a5 + 32);
                v27 = *(a5 + 24);
                v28 = v20 + 88 * a3;
                v29 = *(a5 + 16);
                v30 = *(v28 + 32);
                *&v112 = v24;
                *(&v112 + 1) = v29;
                LOBYTE(v113) = v27;
                *(&v113 + 1) = v26;
                *&v114 = v25;
                BYTE8(v114) = 1;
                v31 = *(v18 + 456);
                v32 = *(v18 + 464);
                v33 = a7[3];
                v34 = a7[5];
                v84[0] = v24;

                v35 = AnyNavigationLinkPresentedView.view<A>(at:applying:)(&v112, v31, v32, v30, v33, v34);

                if (*(v20 + 16) > a3)
                {
                  if (v27 >= 3)
                  {
                    LOBYTE(v27) = 3;
                  }

                  outlined init with copy of NavigationViewDestinationView(v28 + 32, &v89);

                  v36 = v86;
                  outlined init with copy of NavigationLinkSelectionIdentifier(&v89 + 8, v86 + 24);
                  outlined destroy of NavigationViewDestinationView(&v89);
                  *(v86 + 88) = 1;
                  *v36 = v35;
                  *(v36 + 8) = v27;
                  *(v36 + 16) = v84[0];
                  return outlined destroy of Binding<NavigationSplitViewColumn>(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
                }

                goto LABEL_49;
              }

LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (!v111)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v104, &v89);

    if (v95 != 255)
    {
      if ((v95 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_32:
      v86 = a8;
      v114 = v91;
      v115 = v92;
      v116 = v93;
      v117 = v94;
      v112 = v89;
      v113 = v90;
      outlined destroy of NavigationColumnState.ColumnContent(v104);
      v71 = v112;
      v72 = *(a5 + 16);
      v73 = *(a5 + 24);
      v74 = *(a5 + 32);
      outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v103);
      v75 = v109;
      if ((v109 & 1) == 0)
      {
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v103, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v103[0] = 0;
      v103[1] = v72;
      v104[0] = v73;
      v105 = v74;
      v106 = a6;
      v107 = v75 ^ 1;
      v76 = NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(v72, v73, v74, a7);
      v78 = v77;
      v79 = type metadata accessor for ModifiedContent();
      v87[0] = a7[5];
      v87[1] = &protocol witness table for ReplacedRootDismissModifier;
      WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E840], v79, v87);
      v81 = AnyNavigationLinkPresentedView.view<A>(at:applying:)(v103, v76, v78, v71, v79, WitnessTable);

      if (v73 >= 3)
      {
        v82 = 3;
      }

      else
      {
        v82 = v73;
      }

      v83 = v86;
      outlined init with copy of NavigationLinkSelectionIdentifier(&v112 + 8, v86 + 24);
      result = outlined destroy of NavigationViewDestinationView(&v112);
      *(v86 + 88) = 1;
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = 0;
      return result;
    }

    if (a2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_41:
    NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)(a1, a6, *(a5 + 16), *(a5 + 24), *(a5 + 32), a7, a8);
    return outlined destroy of NavigationColumnState.ColumnContent(v104);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v104, &v89);
  if (v95 == 255)
  {
    if (a2)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  if (v95)
  {
    goto LABEL_32;
  }

LABEL_23:
  v118 = v89;
  v119 = v90;
  v120 = v91;
  v86 = a8;
  outlined destroy of NavigationColumnState.ColumnContent(v104);
  if (a2)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, &v89);
  v58 = *(a5 + 16);
  v59 = *(a5 + 24);
  v60 = *(a5 + 32);
  v85 = NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(v58, *(a5 + 24), v60, a7);
  v62 = v61;
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v103);
  v63 = v109;
  if ((v109 & 1) == 0)
  {
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v103, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  *&v96 = 0;
  *(&v96 + 1) = v58;
  LOBYTE(v97) = v59;
  *(&v97 + 1) = v60;
  *&v98 = a6;
  BYTE8(v98) = v63 ^ 1;
  v64 = type metadata accessor for ModifiedContent();
  v88[0] = a7[5];
  v88[1] = &protocol witness table for ReplacedRootDismissModifier;
  v65 = swift_getWitnessTable(MEMORY[0x1E697E840], v64, v88);
  v66 = AnyNavigationLinkPresentedValue.view<A>(basedOn:applying:apparentPosition:)(&v89, v85, v62, &v96, v64, v65);
  v114 = v91;
  v115 = v92;
  v116 = v93;
  v117 = v94;
  v112 = v89;
  v113 = v90;
  outlined destroy of ResolvedNavigationDestinations(&v112);

  if (v59 >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = v59;
  }

  v68 = *(&v119 + 1);
  v69 = v120;
  __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
  v70 = v86;
  (*(v69 + 24))(v68, v69);
  result = outlined destroy of AnyNavigationLinkPresentedValue(&v118);
  *(v86 + 88) = 0;
  *v70 = v66;
  *(v70 + 8) = v67;
  *(v70 + 16) = 0;
  return result;
}

double NavigationState.StackContent.Views.ViewsSequence.nonReplacedRoot(stateIndex:baseDepth:key:isStacked:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a2;
  v26 = a5;
  v13 = a4;
  v14 = type metadata accessor for _VariadicView.Tree();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  NavigationState.StackContent.Views.ViewsSequence.formattedRoot(_:)(a1, a6);
  v28[0] = 0;
  v28[1] = a3;
  v29 = a4;
  v30 = v26;
  v31 = v25;
  v32 = v13 == 3;
  v19 = *(v7 + 456);
  v18 = *(v7 + 464);
  v21 = a6[3];
  v20 = a6[4];
  v27[0] = MEMORY[0x1E697E2E8];
  v27[1] = v20;
  if (v13 >= 3)
  {
    LOBYTE(v13) = 3;
  }

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E308], v14, v27, v25, v26);
  v23 = specialized static ResolvedNavigationDestinations.prepareToPresent<A, B>(view:at:shouldUpdateDestinations:applying:)(v17, v28, v19, v18, v14, v21, WitnessTable, a6[5]);
  (*(v15 + 8))(v17, v14);
  result = 0.0;
  *(a7 + 72) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 88) = 2;
  *a7 = v23;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  return result;
}

uint64_t (*NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  (*(*(a4 - 8) + 16))(v12, v4, a4);
  v9 = swift_allocObject();
  v10 = *(a4 + 32);
  *(v9 + 16) = *(a4 + 16);
  *(v9 + 32) = v10;
  memcpy((v9 + 48), v12, 0x1E0uLL);
  *(v9 + 528) = a1;
  *(v9 + 536) = a2;
  *(v9 + 544) = a3;
  return partial apply for closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:);
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.destinations(before:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of NavigationState.Base(v3, v29);
  if (v30 == 1)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v13[3] = *&v28[48];
    v13[4] = *&v28[64];
    v14 = *&v28[80];
    v13[0] = *v28;
    v13[1] = *&v28[16];
    v13[2] = *&v28[32];
    if (!*v28)
    {
LABEL_12:
      outlined destroy of NavigationColumnState(v27);
      goto LABEL_14;
    }

    if (!a1)
    {
      *a2 = *&v13[0];
      v6 = *&v28[8];
      *(a2 + 24) = *&v28[24];
      v7 = *&v28[56];
      *(a2 + 40) = *&v28[40];
      *(a2 + 56) = v7;
      *(a2 + 72) = *&v28[72];
      *(a2 + 8) = v6;
      outlined destroy of NavigationColumnState(v27);
      return outlined destroy of NavigationState.Base(v29);
    }

LABEL_11:
    outlined destroy of Binding<NavigationSplitViewColumn>(v13, &lazy cache variable for type metadata for ResolvedNavigationDestinations?, &type metadata for ResolvedNavigationDestinations, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  if (v30 == 2)
  {
    outlined init with copy of NavigationState.Base(v29, v27);
    v8 = v27[0];
    outlined consume of NavigationSplitViewState?(v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
    if (a1 < 1)
    {

      goto LABEL_14;
    }

    if (*(v8 + 16) >= a1)
    {
      outlined init with copy of NavigationColumnState(v8 + 360 * a1 - 328, v13);

      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v21 = v15;
      v22 = v16;
      outlined init with copy of ResolvedNavigationDestinations(&v21, v12);
      outlined destroy of NavigationColumnState(v13);
      v9 = v24;
      *(a2 + 32) = v23;
      *(a2 + 48) = v9;
      *(a2 + 64) = v25;
      *(a2 + 80) = v26;
      v10 = v22;
      *a2 = v21;
      *(a2 + 16) = v10;
      return outlined destroy of NavigationState.Base(v29);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NavigationState.StackContent.Views.ViewsSequence.formattedRoot(_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  static HorizontalAlignment.center.getter();
  Array.subscript.getter();
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a7 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 456))(v14);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  MEMORY[0x18D003AC0](&v20, a7, &type metadata for ReplacedRootDismissModifier, a9);
  return (*(v13 + 8))(v16, a7);
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.< infix(_:_:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a6)
  {
    return (a2 ^ 1) & 1;
  }

  if (a2)
  {
    return 0;
  }

  if (a1 < a5)
  {
    return 1;
  }

  if (a5 < a1)
  {
    return 0;
  }

  if (a4)
  {
    v10 = a8 == 1 && a3 < a7;
    v12 = a8 != 2 || a7 != 0;
    if (a4 == 1)
    {
      return v10;
    }

    else
    {
      return v12;
    }
  }

  else if (a8)
  {
    return a8 == 1;
  }

  else
  {
    return a3 < a7;
  }
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.Kind.< infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v5 = a4 == 1 && a1 < a3;
    v7 = a4 != 2 || a3 != 0;
    if (a2 == 1)
    {
      return v5;
    }

    else
    {
      return v7;
    }
  }

  else if (a4)
  {
    return a4 == 1;
  }

  else
  {
    return a1 < a3;
  }
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.Kind.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

BOOL static NavigationState.StackContent.Views.ViewsSequence.Index.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a4 != 1)
      {
        return a8 == 2 && !a7;
      }

      if (a8 != 1)
      {
        return 0;
      }
    }

    else if (a8)
    {
      return 0;
    }

    return a3 == a7;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

void protocol witness for Collection.startIndex.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1@<X8>)
{
  NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a2@<X8>)
{
  result = specialized NavigationState.StackContent.Views.ViewsSequence.endIndex.getter();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t **a1, uint64_t a2, void *a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = NavigationState.StackContent.Views.ViewsSequence.subscript.read(v6, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), a3);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*NavigationState.StackContent.Views.ViewsSequence.subscript.read(uint64_t *a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x59uLL);
  }

  *a1 = v12;
  NavigationState.StackContent.Views.ViewsSequence.subscript.getter(a2, a3 & 1, a4, a5, a6, v12);
  return NavigationState.StackContent.Views.ViewsSequence.subscript.read;
}

void NavigationState.StackContent.Views.ViewsSequence.subscript.read(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of NavigationState.StackContent.PositionedView(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, a3);

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, a4);

  return MEMORY[0x1EEE68B98](a1, a2, a3, a4, WitnessTable);
}

void protocol witness for Collection.distance(from:to:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, a3);

  JUMPOUT(0x18D00C6C0);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void, void, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  result = a3(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void, uint64_t))
{
  result = a4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 480) = v7;
  *(a2 + 488) = v9 & 1;
  *(a2 + 496) = v11;
  *(a2 + 504) = v13;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for NavigationState.StackContent.Views.ViewsSequence<A, B>, a1);
  v3 = specialized Collection._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t NavigationState.ListKey.description.getter()
{
  _StringGuts.grow(_:)(50);
  MEMORY[0x18D00C9B0](0x3A79654B7473694CLL, 0xEE00203A64695B20);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD3DDC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v1, v2);

  MEMORY[0x18D00C9B0](0x6B636174735B205DLL, 0xED0000203A79654BLL);
  v3 = *(v0 + 16);
  if (v3 == 6)
  {
    v4 = 0xEB0000000079654BLL;
    v5 = 0x6B63617453206F4ELL;
  }

  else
  {
    v5 = NavigationState.StackContent.Key.debugDescription.getter(*(v0 + 8), v3);
    v4 = v6;
  }

  MEMORY[0x18D00C9B0](v5, v4);

  return 0;
}

Swift::Int NavigationState.ListKey.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  if (v3 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
    MEMORY[0x18D00F6F0](v3);
    MEMORY[0x18D00F6F0](v4);
  }

  Hasher._combine(_:)(v0[4] & 1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NavigationState.ListKey()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x18D00F6F0](*v0);
  if (v2 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v1);
    MEMORY[0x18D00F6F0](v2);
    MEMORY[0x18D00F6F0](v3);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationState.ListKey(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = *(v1 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v3);
  if (v4 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v2);
    MEMORY[0x18D00F6F0](v4);
    MEMORY[0x18D00F6F0](v5);
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationState.ListKey(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 6)
  {
    if (v3 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 6)
    {
      return 0;
    }

    v4 = (v3 ^ v2);
    v5 = *(a1 + 8) == *(a2 + 8) && v4 == 0;
    if (!v5 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  return *(a1 + 32) ^ *(a2 + 32) ^ 1u;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of ToolbarPlacement.Role(a2, v5);
  v5[13] = specialized Dictionary._Variant.asNative.modify(v5 + 5);
  v5[14] = specialized _NativeDictionary.subscript.modify(v5 + 9, v5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xD0uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v5);
  v5[24] = specialized Dictionary._Variant.asNative.modify(v5 + 16);
  v5[25] = specialized _NativeDictionary.subscript.modify(v5 + 20, v5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = specialized Dictionary._Variant.asNative.modify(v11);
  v11[9] = specialized _NativeDictionary.subscript.modify(v11 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x1F8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 480) = a2;
  *(v8 + 488) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 73) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 496) = v11;
  if (v17)
  {
    memmove((v9 + 160), (*(*v4 + 56) + 80 * v11), 0x49uLL);
  }

  else
  {
    *(v9 + 160) = xmmword_18CD633F0;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 217) = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 240);
  v4 = (*a1 + 320);
  v5 = *(*a1 + 176);
  v2[15] = *(*a1 + 160);
  v2[16] = v5;
  v6 = v2[13];
  v2[17] = v2[12];
  v2[18] = v6;
  *(v3 + 57) = *(v2 + 217);
  v7 = *(v2 + 31);
  if (a2)
  {
    if (v7 != 1)
    {
      v8 = *(v2 + 61);
      v9 = *(v2 + 62);
      if ((*(v2 + 73) & 1) == 0)
      {
        v10 = *v8;
        outlined init with copy of ToolbarPlacement.Role(*(v2 + 60), v4);
        v11 = v3[3];
        v2[2] = v3[2];
        v2[3] = v11;
        *(v2 + 57) = *(v3 + 57);
        v12 = v3[1];
        *v2 = *v3;
        v2[1] = v12;
        v13 = v9;
        v14 = v4;
        v15 = v2;
LABEL_11:
        specialized _NativeDictionary._insert(at:key:value:)(v13, v14, v15, v10);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v7 != 1)
  {
    v8 = *(v2 + 61);
    v9 = *(v2 + 62);
    if ((*(v2 + 73) & 1) == 0)
    {
      v10 = *v8;
      outlined init with copy of ToolbarPlacement.Role(*(v2 + 60), v4);
      v18 = v3[3];
      v2[7] = v3[2];
      v2[8] = v18;
      *(v2 + 137) = *(v3 + 57);
      v19 = v3[1];
      v2[5] = *v3;
      v2[6] = v19;
      v15 = v2 + 5;
      v13 = v9;
      v14 = v4;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v8 + 56) + 80 * v9), v2 + 10, 0x49uLL);
    goto LABEL_12;
  }

  if (*(v2 + 73))
  {
    v16 = *(v2 + 62);
    v17 = **(v2 + 61);
    outlined destroy of ToolbarPlacement.Role(*(v17 + 48) + 40 * v16);
    specialized _NativeDictionary._delete(at:)(v16, v17);
  }

LABEL_12:
  v20 = v2[13];
  v4[2] = v2[12];
  v4[3] = v20;
  *(v4 + 57) = *(v2 + 217);
  v21 = v2[11];
  *v4 = v2[10];
  v4[1] = v21;
  outlined init with copy of NavigationState.Base?(v3, (v2 + 25), &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration);
  outlined destroy of Binding<NavigationSplitViewColumn>(v4, &lazy cache variable for type metadata for ToolbarAppearanceConfiguration?, &type metadata for ToolbarAppearanceConfiguration, MEMORY[0x1E69E6720]);

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5))(uint64_t *a1)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x28uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 8) = a3;
  *(v12 + 16) = v5;
  *(v12 + 34) = a4;
  *v12 = a2;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  *(v13 + 35) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 24) = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 2 * v15);
  }

  else
  {
    v25 = 3;
  }

  *(v13 + 32) = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, unint64_t a2, unint64_t a3, char a4))(void ***a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  v23 = 0uLL;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 16 * v13);
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 48);
  v5 = (*a1)[1];
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, v1[2], v1[3], v3, v5, v7);
    }
  }

  else if ((*a1)[6])
  {
    specialized _NativeDictionary._delete(at:)(v1[5], *v1[4]);
  }

  v8 = *v1;
  outlined copy of DisplayList.AccessibilityUpdater.CacheValue?(v3);
  outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(v8);

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 65);
  if (v2)
  {
    v6 = v1[7];
    if (v5)
    {
      v7 = (*(*v1[6] + 56) + 24 * v6);
      *v7 = v2;
      v7[1] = v3;
      v7[2] = v4;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, v1[3], v1[4], v1[5], *(v1 + 64), v2, v3, v4, *v1[6]);
    }
  }

  else if (*(*a1 + 65))
  {
    v8 = v1[7];
    v9 = *v1[6];
    outlined destroy of KeyboardShortcut(*(v9 + 48) + 32 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v9);
  }

  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  outlined copy of KeyboardShortcutBridge.Shortcut?(v2, v3, v4);
  outlined consume of KeyboardShortcutBridge.Shortcut?(v10, v11, v12);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t *a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 136) = a2;
  *(v8 + 144) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 33) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 152) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 16 * v11;
    v22 = *v21;
    v23 = *(v21 + 8) | (*(v21 + 9) << 8);
  }

  else
  {
    v22 = 0;
    v23 = 768;
  }

  *(v9 + 120) = v22;
  *(v9 + 128) = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 15);
  v4 = *(*a1 + 64);
  v5 = v4 & 0xFF00;
  v6 = (*a1)[33];
  if (a2)
  {
    if (v5 != 768)
    {
      v7 = *(v2 + 19);
      v8 = **(v2 + 18);
      if ((v6 & 1) == 0)
      {
        v9 = *(v2 + 17);
        specialized _NativeDictionary._insert(at:key:value:)(v7, v9, v3, v4 & 0xFF01, v8);
        v10 = *v9;
        v11 = *(v9 + 16);
        *(v2 + 32) = *(v9 + 32);
        *v2 = v10;
        *(v2 + 1) = v11;
        v12 = (v2 + 40);
        v13 = v2;
LABEL_11:
        outlined init with copy of TableColumnCustomizationID.Base(v13, v12);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v5 != 768)
  {
    v7 = *(v2 + 19);
    v8 = **(v2 + 18);
    if ((v6 & 1) == 0)
    {
      v17 = *(v2 + 17);
      specialized _NativeDictionary._insert(at:key:value:)(v7, v17, v3, v4 & 0xFF01, v8);
      v18 = *v17;
      v19 = *(v17 + 16);
      *(v2 + 72) = *(v17 + 32);
      *(v2 + 28) = v19;
      *(v2 + 20) = v18;
      v13 = (v2 + 20);
      v12 = (v2 + 40);
      goto LABEL_11;
    }

LABEL_9:
    v16 = v8[7] + 16 * v7;
    *v16 = v3;
    *(v16 + 8) = v4 & 1;
    *(v16 + 9) = HIBYTE(v4);
    goto LABEL_12;
  }

  if ((*a1)[33])
  {
    v14 = *(v2 + 19);
    v15 = **(v2 + 18);
    outlined destroy of TableColumnCustomizationID(*(v15 + 48) + 40 * v14);
    specialized _NativeDictionary._delete(at:)(v14, v15);
  }

LABEL_12:

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(void ***a1)
{
  v7 = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x48uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 64) = a5;
  *(v14 + 40) = a4;
  *(v14 + 48) = v6;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v16 = *v6;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  *(v15 + 65) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_12;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a6 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_12:
  *(v15 + 56) = v18;
  if (v22)
  {
    v26 = *(*v7 + 56) + 24 * v18;
    v27 = *v26;
    v28 = *(v26 + 16);
  }

  else
  {
    v28 = 0;
    v27 = 0uLL;
  }

  *v15 = v27;
  *(v15 + 16) = v28;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x238uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 552) = v3;
  *(v8 + 180) = a2;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 178) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 560) = v11;
  if (v17)
  {
    outlined init with take of ConfirmationDialog(*(*v4 + 56) + 184 * v11, v9);
  }

  else
  {
    *(v9 + 176) = 0;
    *(v9 + 144) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *v9 = 0u;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 136) = a2;
  *(v8 + 144) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 121) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 152) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 128) = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(before:for:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    goto LABEL_23;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v21);
  v22 = a3;
  v23 = a4;
  if (a4)
  {
    if (a4 != 1)
    {
LABEL_14:
      v20[0] = a6;
      v20[1] = a7;
      v20[2] = a8;
      v20[3] = a9;
      type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(255, v20);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 8))(v21, TupleTypeMetadata2);
      return 0;
    }

    if (!__OFSUB__(a3, 1))
    {
      if (((a3 - 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      if (v21[120])
      {
        goto LABEL_14;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v21, v20);
      v16 = v20[12];

      if (a3)
      {

        outlined destroy of Binding<NavigationSplitViewColumn>(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        goto LABEL_14;
      }

      if ((*(*v16 + 80))(v17))
      {

LABEL_19:
        outlined destroy of Binding<NavigationSplitViewColumn>(v20, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_9:
        outlined destroy of NavigationColumnState.ColumnContent(v21);
        return a1;
      }

      v19 = (*(*v16 + 88))();

      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!__OFSUB__(a3, 1))
  {
    if (((a3 - 1) & 0x8000000000000000) == 0 || !a3)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void specialized NavigationState.StackContent.Views.ViewsSequence.lastIndex(for:stateIndex:)(uint64_t a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a1 + 120, v4);
  if (v5)
  {
    goto LABEL_7;
  }

  v1 = v4[12];
  if (*(v4[13] + 16))
  {

LABEL_7:
    outlined destroy of Binding<NavigationSplitViewColumn>(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return;
  }

  if ((*(*v1 + 80))(v2))
  {

    goto LABEL_7;
  }

  v3 = (*(*v1 + 88))();

  if (!__OFSUB__(v3, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
}

{
  outlined init with copy of NavigationColumnState.ColumnContent(a1 + 120, v4);
  if (v5)
  {
    goto LABEL_7;
  }

  v1 = v4[12];
  if (*(v4[13] + 16))
  {

LABEL_7:
    outlined destroy of NavigationState?(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    return;
  }

  if ((*(*v1 + 80))(v2))
  {

    goto LABEL_7;
  }

  v3 = (*(*v1 + 88))();

  if (!__OFSUB__(v3, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
}

void specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v25);
  v26 = a3;
  v27 = a4;
  if (v25[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v25, v22);
    outlined destroy of Binding<NavigationSplitViewColumn>(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    if (a4 != 2 || a3)
    {
      v22[0] = a6;
      v22[1] = a7;
      v22[2] = a8;
      v22[3] = a9;
      type metadata accessor for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(255, v22);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(TupleTypeMetadata2 - 8) + 8))(v25, TupleTypeMetadata2);
      return;
    }

    goto LABEL_16;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v25, v22);
  v15 = v24;
  if (!a4)
  {
    v18 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_20;
    }

    v19 = (*(*v23 + 88))();

    if (v18 >= v19)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a4 != 1)
  {
    v20 = (*(*v23 + 80))();

    if (v20)
    {
LABEL_14:
      v21 = *(v15 + 16);

      if (!v21)
      {
        goto LABEL_15;
      }

LABEL_18:
      outlined destroy of Binding<NavigationSplitViewColumn>(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationColumnState.ColumnContent(v25);
      return;
    }

LABEL_17:

    goto LABEL_18;
  }

  v16 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v17 = *(v15 + 16);

    if (v16 < v17)
    {
      goto LABEL_18;
    }

LABEL_15:
    outlined destroy of Binding<NavigationSplitViewColumn>(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_16:
    outlined destroy of NavigationColumnState.ColumnContent(v25);
    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

double outlined copy of DisplayList.AccessibilityUpdater.CacheValue?(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  return result;
}

void *outlined consume of DisplayList.AccessibilityUpdater.CacheValue?(void *result)
{
  if (result)
  {
  }

  return result;
}

double outlined copy of KeyboardShortcutBridge.Shortcut?(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

double outlined consume of KeyboardShortcutBridge.Shortcut?(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for NavigationState.StackContent.Views.ViewsSequence.Index.Kind(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *assignWithCopy for NavigationState.StackContent.PositionedView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource((a1 + 3));
    if (*(a2 + 88) == 1)
    {
      v5 = a2[6];
      if (v5)
      {
        a1[6] = v5;
        a1[7] = a2[7];
        (**(v5 - 8))(a1 + 3, a2 + 3);
      }

      else
      {
        v9 = *(a2 + 3);
        v10 = *(a2 + 5);
        a1[7] = a2[7];
        *(a1 + 5) = v10;
        *(a1 + 3) = v9;
      }

      if (a2[9] == 1)
      {
        *(a1 + 4) = *(a2 + 4);
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        a1[9] = a2[9];
      }

      a1[10] = a2[10];
      *(a1 + 88) = 1;
    }

    else if (*(a2 + 88))
    {
      *(a1 + 3) = *(a2 + 3);
      v6 = *(a2 + 5);
      v7 = *(a2 + 7);
      v8 = *(a2 + 9);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 9) = v8;
      *(a1 + 7) = v7;
      *(a1 + 5) = v6;
    }

    else
    {
      v4 = a2[6];
      a1[6] = v4;
      a1[7] = a2[7];
      (**(v4 - 8))(a1 + 3, a2 + 3);
      *(a1 + 88) = 0;
    }
  }

  return a1;
}

uint64_t *assignWithTake for NavigationState.StackContent.PositionedView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  a1[2] = a2[2];
  if (a1 != a2)
  {
    outlined destroy of NavigationStackViewSource((a1 + 3));
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 9) = *(a2 + 9);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 3) = *(a2 + 3);
  }

  return a1;
}

void *assignWithCopy for NavigationState.StackContent.Views.ViewsSequence(void *a1, void *a2)
{
  if (a1 == a2)
  {
    goto LABEL_53;
  }

  outlined destroy of NavigationState.Base(a1);
  v4 = *(a2 + 448);
  if (v4 == 2)
  {
    *a1 = *a2;
    v6 = a2[3];

    if (v6 == 1)
    {
      *(a1 + 1) = *(a2 + 1);
      v7 = *(a2 + 3);
      v8 = *(a2 + 5);
      v9 = *(a2 + 7);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 5) = v8;
      *(a1 + 7) = v9;
      *(a1 + 3) = v7;
LABEL_33:
      v29 = 2;
LABEL_52:
      *(a1 + 448) = v29;
      goto LABEL_53;
    }

    a1[1] = a2[1];
    if (a2[3])
    {
      a1[2] = a2[2];
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v25 = *(a2 + 1);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 1) = v25;
    }

    *(a1 + 33) = *(a2 + 33);
    v26 = a2[5];
    if (v26)
    {
      v27 = a2[6];
      a1[5] = v26;
      a1[6] = v27;

      if (a2[8])
      {
LABEL_29:
        a1[7] = a2[7];
        a1[8] = a2[8];
        *(a1 + 72) = *(a2 + 72);

LABEL_32:
        *(a1 + 73) = *(a2 + 73);
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 5) = *(a2 + 5);
      if (a2[8])
      {
        goto LABEL_29;
      }
    }

    v28 = *(a2 + 7);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 7) = v28;
    goto LABEL_32;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v5 = *(a2 + 1);
    a1[4] = a2[4];
    *(a1 + 1) = v5;
    if (a2[6])
    {
      *(a1 + 10) = *(a2 + 10);
      a1[6] = a2[6];
      a1[7] = a2[7];
      a1[8] = a2[8];
      a1[9] = a2[9];
      a1[10] = a2[10];
      *(a1 + 22) = *(a2 + 22);
    }

    else
    {
      v10 = *(a2 + 5);
      v11 = *(a2 + 7);
      v12 = *(a2 + 9);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 9) = v12;
      *(a1 + 7) = v11;
      *(a1 + 5) = v10;
    }

    *(a1 + 23) = *(a2 + 23);
    if (a2[13])
    {
      a1[12] = a2[12];
      a1[13] = a2[13];
      a1[14] = a2[14];
    }

    else
    {
      v13 = *(a2 + 6);
      a1[14] = a2[14];
      *(a1 + 6) = v13;
    }

    v14 = *(a2 + 208);
    if (a2[30])
    {
      if (v14 == 255)
      {
        v17 = *(a2 + 15);
        *(a1 + 17) = *(a2 + 17);
        *(a1 + 15) = v17;
        v18 = *(a2 + 19);
        v19 = *(a2 + 21);
        v20 = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 23) = v20;
        *(a1 + 21) = v19;
        *(a1 + 19) = v18;
      }

      else if (v14)
      {
        a1[15] = a2[15];
        v15 = a2[19];

        if (v15)
        {
          a1[19] = v15;
          a1[20] = a2[20];
          (**(v15 - 8))(a1 + 16, a2 + 16, v15);
        }

        else
        {
          v32 = *(a2 + 8);
          v33 = *(a2 + 9);
          a1[20] = a2[20];
          *(a1 + 8) = v32;
          *(a1 + 9) = v33;
        }

        if (a2[22] == 1)
        {
          *(a1 + 21) = *(a2 + 21);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          a1[22] = a2[22];
        }

        a1[23] = a2[23];
        v34 = a2[25];
        a1[24] = a2[24];
        a1[25] = v34;
        *(a1 + 208) = 1;
      }

      else
      {
        v30 = a2[18];
        a1[18] = v30;
        a1[19] = a2[19];
        (**(v30 - 8))(a1 + 15, a2 + 15);
        *(a1 + 208) = 0;
      }

      *(a1 + 240) = 1;
    }

    else
    {
      if (v14 == 255)
      {
        v21 = *(a2 + 15);
        *(a1 + 17) = *(a2 + 17);
        *(a1 + 15) = v21;
        v22 = *(a2 + 19);
        v23 = *(a2 + 21);
        v24 = *(a2 + 23);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 23) = v24;
        *(a1 + 21) = v23;
        *(a1 + 19) = v22;
      }

      else if (v14)
      {
        a1[15] = a2[15];
        v16 = a2[19];

        if (v16)
        {
          a1[19] = v16;
          a1[20] = a2[20];
          (**(v16 - 8))(a1 + 16, a2 + 16, v16);
        }

        else
        {
          v35 = *(a2 + 8);
          v36 = *(a2 + 9);
          a1[20] = a2[20];
          *(a1 + 8) = v35;
          *(a1 + 9) = v36;
        }

        if (a2[22] == 1)
        {
          *(a1 + 21) = *(a2 + 21);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          a1[22] = a2[22];
        }

        a1[23] = a2[23];
        v37 = a2[25];
        a1[24] = a2[24];
        a1[25] = v37;
        *(a1 + 208) = 1;
      }

      else
      {
        v31 = a2[18];
        a1[18] = v31;
        a1[19] = a2[19];
        (**(v31 - 8))(a1 + 15, a2 + 15);
        *(a1 + 208) = 0;
      }

      a1[27] = a2[27];
      a1[28] = a2[28];
      a1[29] = a2[29];
      *(a1 + 240) = 0;
    }

    a1[31] = a2[31];
    a1[32] = a2[32];
    a1[33] = a2[33];
    a1[34] = a2[34];
    a1[35] = a2[35];
    a1[36] = a2[36];
    a1[37] = a2[37];
    a1[38] = a2[38];
    v38 = *(a2 + 39);
    a1[41] = a2[41];
    *(a1 + 39) = v38;
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 85) = *(a2 + 85);
    a1[43] = a2[43];
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 353) = *(a2 + 353);
    v39 = a2[45];

    if (v39)
    {
      a1[45] = v39;
      a1[46] = a2[46];
      a1[47] = a2[47];
      a1[48] = a2[48];
      a1[49] = a2[49];
      a1[50] = a2[50];
      a1[51] = a2[51];
      a1[52] = a2[52];
      v40 = *(a2 + 53);
      a1[55] = a2[55];
      *(a1 + 53) = v40;
    }

    else
    {
      v41 = *(a2 + 47);
      *(a1 + 45) = *(a2 + 45);
      *(a1 + 47) = v41;
      v42 = *(a2 + 49);
      v43 = *(a2 + 51);
      v44 = *(a2 + 53);
      a1[55] = a2[55];
      *(a1 + 51) = v43;
      *(a1 + 53) = v44;
      *(a1 + 49) = v42;
    }

    v29 = 1;
    goto LABEL_52;
  }

  memcpy(a1, a2, 0x1C1uLL);
LABEL_53:
  v45 = a2[58];
  a1[57] = a2[57];
  a1[58] = v45;

  a1[59] = a2[59];

  return a1;
}

uint64_t assignWithTake for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of NavigationState.Base(a1);
    memcpy(a1, a2, 0x1C1uLL);
  }

  *(a1 + 456) = *(a2 + 456);

  *(a1 + 472) = *(a2 + 472);

  return a1;
}

char *assignWithCopy for NavigationState.StackContent(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of NavigationState.Base(a1);
  v4 = a2[448];
  if (v4 == 2)
  {
    *a1 = *a2;
    v6 = *(a2 + 3);

    if (v6 == 1)
    {
      *(a1 + 8) = *(a2 + 8);
      v7 = *(a2 + 24);
      v8 = *(a2 + 40);
      v9 = *(a2 + 56);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = v8;
      *(a1 + 56) = v9;
      *(a1 + 24) = v7;
LABEL_35:
      v30 = 2;
LABEL_54:
      a1[448] = v30;
      return a1;
    }

    *(a1 + 1) = *(a2 + 1);
    if (*(a2 + 3))
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
    }

    else
    {
      v26 = *(a2 + 1);
      a1[32] = a2[32];
      *(a1 + 1) = v26;
    }

    a1[33] = a2[33];
    v27 = *(a2 + 5);
    if (v27)
    {
      v28 = *(a2 + 6);
      *(a1 + 5) = v27;
      *(a1 + 6) = v28;

      if (*(a2 + 8))
      {
LABEL_31:
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        a1[72] = a2[72];

LABEL_34:
        a1[73] = a2[73];
        goto LABEL_35;
      }
    }

    else
    {
      *(a1 + 40) = *(a2 + 40);
      if (*(a2 + 8))
      {
        goto LABEL_31;
      }
    }

    v29 = *(a2 + 56);
    a1[72] = a2[72];
    *(a1 + 56) = v29;
    goto LABEL_34;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v5 = *(a2 + 1);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 1) = v5;
    if (*(a2 + 6))
    {
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 22) = *(a2 + 22);
    }

    else
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 56);
      v13 = *(a2 + 72);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 72) = v13;
      *(a1 + 56) = v12;
      *(a1 + 40) = v11;
    }

    *(a1 + 23) = *(a2 + 23);
    if (*(a2 + 13))
    {
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = *(a2 + 13);
      *(a1 + 14) = *(a2 + 14);
    }

    else
    {
      v14 = *(a2 + 6);
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 6) = v14;
    }

    v15 = a2[208];
    if (a2[240])
    {
      if (v15 == 255)
      {
        v18 = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 120) = v18;
        v19 = *(a2 + 152);
        v20 = *(a2 + 168);
        v21 = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 184) = v21;
        *(a1 + 168) = v20;
        *(a1 + 152) = v19;
      }

      else if (v15)
      {
        *(a1 + 15) = *(a2 + 15);
        v16 = *(a2 + 19);

        if (v16)
        {
          *(a1 + 19) = v16;
          *(a1 + 20) = *(a2 + 20);
          (**(v16 - 8))(a1 + 128, a2 + 128, v16);
        }

        else
        {
          v33 = *(a2 + 8);
          v34 = *(a2 + 9);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 8) = v33;
          *(a1 + 9) = v34;
        }

        if (*(a2 + 22) == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          *(a1 + 22) = *(a2 + 22);
        }

        *(a1 + 23) = *(a2 + 23);
        v35 = *(a2 + 25);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 25) = v35;
        a1[208] = 1;
      }

      else
      {
        v31 = *(a2 + 18);
        *(a1 + 18) = v31;
        *(a1 + 19) = *(a2 + 19);
        (**(v31 - 8))(a1 + 120, a2 + 120);
        a1[208] = 0;
      }

      a1[240] = 1;
    }

    else
    {
      if (v15 == 255)
      {
        v22 = *(a2 + 120);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 120) = v22;
        v23 = *(a2 + 152);
        v24 = *(a2 + 168);
        v25 = *(a2 + 184);
        *(a1 + 193) = *(a2 + 193);
        *(a1 + 184) = v25;
        *(a1 + 168) = v24;
        *(a1 + 152) = v23;
      }

      else if (v15)
      {
        *(a1 + 15) = *(a2 + 15);
        v17 = *(a2 + 19);

        if (v17)
        {
          *(a1 + 19) = v17;
          *(a1 + 20) = *(a2 + 20);
          (**(v17 - 8))(a1 + 128, a2 + 128, v17);
        }

        else
        {
          v36 = *(a2 + 8);
          v37 = *(a2 + 9);
          *(a1 + 20) = *(a2 + 20);
          *(a1 + 8) = v36;
          *(a1 + 9) = v37;
        }

        if (*(a2 + 22) == 1)
        {
          *(a1 + 168) = *(a2 + 168);
        }

        else
        {
          *(a1 + 42) = *(a2 + 42);
          *(a1 + 43) = *(a2 + 43);
          *(a1 + 22) = *(a2 + 22);
        }

        *(a1 + 23) = *(a2 + 23);
        v38 = *(a2 + 25);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 25) = v38;
        a1[208] = 1;
      }

      else
      {
        v32 = *(a2 + 18);
        *(a1 + 18) = v32;
        *(a1 + 19) = *(a2 + 19);
        (**(v32 - 8))(a1 + 120, a2 + 120);
        a1[208] = 0;
      }

      *(a1 + 27) = *(a2 + 27);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = *(a2 + 29);
      a1[240] = 0;
    }

    *(a1 + 31) = *(a2 + 31);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 34) = *(a2 + 34);
    *(a1 + 35) = *(a2 + 35);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 37) = *(a2 + 37);
    *(a1 + 38) = *(a2 + 38);
    v39 = *(a2 + 312);
    *(a1 + 41) = *(a2 + 41);
    *(a1 + 312) = v39;
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 85) = *(a2 + 85);
    *(a1 + 43) = *(a2 + 43);
    a1[352] = a2[352];
    *(a1 + 353) = *(a2 + 353);
    v40 = *(a2 + 45);

    if (v40)
    {
      *(a1 + 45) = v40;
      *(a1 + 46) = *(a2 + 46);
      *(a1 + 47) = *(a2 + 47);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 49) = *(a2 + 49);
      *(a1 + 50) = *(a2 + 50);
      *(a1 + 51) = *(a2 + 51);
      *(a1 + 52) = *(a2 + 52);
      v41 = *(a2 + 424);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 424) = v41;
    }

    else
    {
      v42 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v42;
      v43 = *(a2 + 392);
      v44 = *(a2 + 408);
      v45 = *(a2 + 424);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 408) = v44;
      *(a1 + 424) = v45;
      *(a1 + 392) = v43;
    }

    v30 = 1;
    goto LABEL_54;
  }

  return memcpy(a1, a2, 0x1C1uLL);
}

uint64_t initializeWithCopy for NavigationState.RequestResults(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = outlined copy of ResolvedNavigationDestinations.ChangeRequest(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (*(a2 + 160) >> 2 == 0x7FFFFFFFLL)
  {
    memcpy((a1 + 24), (a2 + 24), 0x139uLL);
  }

  else
  {
    switch(*(a2 + 120))
    {
      case 0:
        v9 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v9;
        *(a1 + 120) = 0;
        goto LABEL_60;
      case 1:
        v25 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v25;
        v26 = *(a2 + 48);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v26;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 120) = 1;

        goto LABEL_60;
      case 2:
        v18 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v18;
        v19 = *(a2 + 64);
        *(a1 + 64) = v19;
        v20 = v19;
        v21 = **(v19 - 8);

        v21(a1 + 40, a2 + 40, v20);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 2;
        break;
      case 3:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 120) = 3;

        break;
      case 4:
        v34 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v34;
        *(a1 + 40) = *(a2 + 40);
        v17 = 4;
        goto LABEL_24;
      case 5:
        v22 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v22;
        *(a1 + 40) = *(a2 + 40);
        v17 = 5;
        goto LABEL_24;
      case 6:
        v27 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v27;
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 120) = 6;

        goto LABEL_60;
      case 0xA:
        v28 = *(a2 + 48);
        *(a1 + 48) = v28;
        (**(v28 - 8))(a1 + 24, a2 + 24);
        v29 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v29;
        *(a1 + 80) = *(a2 + 80);
        v17 = 10;
        goto LABEL_24;
      case 0xB:
        v37 = *(a2 + 48);
        *(a1 + 48) = v37;
        (**(v37 - 8))(a1 + 24, a2 + 24);
        *(a1 + 120) = 11;
        break;
      case 0xC:
        *(a1 + 24) = *(a2 + 24);
        v35 = *(a2 + 56);

        if (v35)
        {
          v36 = *(a2 + 64);
          *(a1 + 56) = v35;
          *(a1 + 64) = v36;
          (**(v35 - 8))(a1 + 32, a2 + 32, v35);
        }

        else
        {
          v51 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v51;
          *(a1 + 64) = *(a2 + 64);
        }

        v52 = *(a2 + 80);
        if (v52 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v52;
        }

        v53 = *(a2 + 96);
        v54 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v53;
        *(a1 + 104) = v54;
        v41 = 12;
        goto LABEL_59;
      case 0xD:
        *(a1 + 24) = *(a2 + 24);
        v13 = *(a2 + 56);

        if (v13)
        {
          v14 = *(a2 + 64);
          *(a1 + 56) = v13;
          *(a1 + 64) = v14;
          (**(v13 - 8))(a1 + 32, a2 + 32, v13);
        }

        else
        {
          v42 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v42;
          *(a1 + 64) = *(a2 + 64);
        }

        v43 = *(a2 + 80);
        if (v43 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v43;
        }

        v44 = *(a2 + 96);
        v45 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = v44;
        *(a1 + 104) = v45;
        *(a1 + 112) = *(a2 + 112);
        v41 = 13;
        goto LABEL_59;
      case 0xE:
        *(a1 + 24) = *(a2 + 24);
        v23 = *(a2 + 56);

        if (v23)
        {
          v24 = *(a2 + 64);
          *(a1 + 56) = v23;
          *(a1 + 64) = v24;
          (**(v23 - 8))(a1 + 32, a2 + 32, v23);
        }

        else
        {
          v46 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v46;
          *(a1 + 64) = *(a2 + 64);
        }

        v47 = *(a2 + 80);
        if (v47 == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = v47;
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 120) = 14;
        break;
      case 0x11:
        v15 = *(a2 + 48);
        *(a1 + 48) = v15;
        (**(v15 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        v16 = *(a2 + 80);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = v16;
        *(a1 + 88) = *(a2 + 88);
        v17 = 17;
LABEL_24:
        *(a1 + 120) = v17;

        goto LABEL_60;
      case 0x12:
        v10 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v10;
        v11 = *(a2 + 64);

        if (v11)
        {
          v12 = *(a2 + 72);
          *(a1 + 64) = v11;
          *(a1 + 72) = v12;
          (**(v11 - 8))(a1 + 40, a2 + 40, v11);
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
        }

        v38 = *(a2 + 88);
        if (v38 == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = v38;
        }

        v39 = *(a2 + 104);
        v40 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v39;
        *(a1 + 112) = v40;
        v41 = 18;
LABEL_59:
        *(a1 + 120) = v41;
LABEL_60:

        break;
      case 0x13:
        v30 = *(a2 + 48);
        if (v30)
        {
          v31 = *(a2 + 56);
          *(a1 + 48) = v30;
          *(a1 + 56) = v31;
          (**(v30 - 8))(a1 + 24, a2 + 24, v7);
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
        }

        v48 = *(a2 + 72);
        if (v48 == 1)
        {
          *(a1 + 64) = *(a2 + 64);
        }

        else
        {
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = v48;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 19;
        break;
      case 0x15:
        v32 = *(a2 + 24);
        if (v32)
        {
          v33 = *(a2 + 32);
          *(a1 + 24) = v32;
          *(a1 + 32) = v33;
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
        }

        v49 = *(a2 + 40);
        if (v49)
        {
          v50 = *(a2 + 48);
          *(a1 + 40) = v49;
          *(a1 + 48) = v50;
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
        }

        *(a1 + 120) = 21;
        break;
      default:
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        break;
    }

    v55 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v55;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    v56 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v56;
    *(a1 + 224) = *(a2 + 224);
    v57 = *(a2 + 336);

    switch(v57)
    {
      case 0:
        v58 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v58;
        *(a1 + 336) = 0;

        break;
      case 1:
        v69 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v69;
        v70 = *(a2 + 264);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = v70;
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 336) = 1;

        break;
      case 2:
        v74 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v74;
        v76 = *(a2 + 280);
        v75 = *(a2 + 288);
        *(a1 + 280) = v76;
        *(a1 + 288) = v75;
        v77 = **(v76 - 8);

        v77(a1 + 256, a2 + 256, v76);
        v78 = *(a2 + 304);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = v78;
        *(a1 + 336) = 2;
        break;
      case 3:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 336) = 3;

        break;
      case 4:
        v66 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v66;
        *(a1 + 256) = *(a2 + 256);
        v67 = 4;
        goto LABEL_81;
      case 5:
        v68 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v68;
        *(a1 + 256) = *(a2 + 256);
        v67 = 5;
        goto LABEL_81;
      case 6:
        v89 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v89;
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 336) = 6;

        break;
      case 10:
        v71 = *(a2 + 264);
        v72 = *(a2 + 272);
        *(a1 + 264) = v71;
        *(a1 + 272) = v72;
        (**(v71 - 8))(a1 + 240, a2 + 240);
        v73 = *(a2 + 288);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 288) = v73;
        *(a1 + 296) = *(a2 + 296);
        v67 = 10;
        goto LABEL_81;
      case 11:
        v90 = *(a2 + 264);
        v91 = *(a2 + 272);
        *(a1 + 264) = v90;
        *(a1 + 272) = v91;
        (**(v90 - 8))(a1 + 240, a2 + 240);
        *(a1 + 336) = 11;
        break;
      case 12:
        *(a1 + 240) = *(a2 + 240);
        v64 = *(a2 + 272);

        if (v64)
        {
          v65 = *(a2 + 280);
          *(a1 + 272) = v64;
          *(a1 + 280) = v65;
          (**(v64 - 8))(a1 + 248, a2 + 248, v64);
        }

        else
        {
          v97 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v97;
          *(a1 + 280) = *(a2 + 280);
        }

        v98 = *(a2 + 296);
        if (v98 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v98;
        }

        v99 = *(a2 + 312);
        v100 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = v99;
        *(a1 + 320) = v100;
        v101 = 12;
        goto LABEL_111;
      case 13:
        *(a1 + 240) = *(a2 + 240);
        v79 = *(a2 + 272);

        if (v79)
        {
          v80 = *(a2 + 280);
          *(a1 + 272) = v79;
          *(a1 + 280) = v80;
          (**(v79 - 8))(a1 + 248, a2 + 248, v79);
        }

        else
        {
          v102 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v102;
          *(a1 + 280) = *(a2 + 280);
        }

        v103 = *(a2 + 296);
        if (v103 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v103;
        }

        v104 = *(a2 + 312);
        v105 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = v104;
        *(a1 + 320) = v105;
        *(a1 + 328) = *(a2 + 328);
        v101 = 13;
        goto LABEL_111;
      case 14:
        *(a1 + 240) = *(a2 + 240);
        v81 = *(a2 + 272);

        if (v81)
        {
          v82 = *(a2 + 280);
          *(a1 + 272) = v81;
          *(a1 + 280) = v82;
          (**(v81 - 8))(a1 + 248, a2 + 248, v81);
        }

        else
        {
          v106 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v106;
          *(a1 + 280) = *(a2 + 280);
        }

        v107 = *(a2 + 296);
        if (v107 == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 296) = v107;
        }

        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 336) = 14;
        break;
      case 17:
        v86 = *(a2 + 264);
        v87 = *(a2 + 272);
        *(a1 + 264) = v86;
        *(a1 + 272) = v87;
        (**(v86 - 8))(a1 + 240, a2 + 240);
        *(a1 + 280) = *(a2 + 280);
        v88 = *(a2 + 296);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = v88;
        *(a1 + 304) = *(a2 + 304);
        v67 = 17;
LABEL_81:
        *(a1 + 336) = v67;

        break;
      case 18:
        v83 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v83;
        v84 = *(a2 + 280);

        if (v84)
        {
          v85 = *(a2 + 288);
          *(a1 + 280) = v84;
          *(a1 + 288) = v85;
          (**(v84 - 8))(a1 + 256, a2 + 256, v84);
        }

        else
        {
          v108 = *(a2 + 272);
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 272) = v108;
          *(a1 + 288) = *(a2 + 288);
        }

        v109 = (a2 + 296);
        v110 = *(a2 + 304);
        if (v110 == 1)
        {
          *(a1 + 296) = *v109;
        }

        else
        {
          *(a1 + 296) = *v109;
          *(a1 + 304) = v110;
        }

        v111 = *(a2 + 320);
        v112 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 320) = v111;
        *(a1 + 328) = v112;
        v101 = 18;
LABEL_111:
        *(a1 + 336) = v101;

        break;
      case 19:
        v62 = *(a2 + 264);
        if (v62)
        {
          v63 = *(a2 + 272);
          *(a1 + 264) = v62;
          *(a1 + 272) = v63;
          (**(v62 - 8))(a1 + 240, a2 + 240);
        }

        else
        {
          v94 = *(a2 + 256);
          *(a1 + 240) = *(a2 + 240);
          *(a1 + 256) = v94;
          *(a1 + 272) = *(a2 + 272);
        }

        v95 = (a2 + 280);
        v96 = *(a2 + 288);
        if (v96 == 1)
        {
          *(a1 + 280) = *v95;
        }

        else
        {
          *(a1 + 280) = *v95;
          *(a1 + 288) = v96;
        }

        *(a1 + 296) = *(a2 + 296);
        *(a1 + 336) = 19;
        break;
      case 21:
        v92 = *(a2 + 240);
        if (v92)
        {
          v93 = *(a2 + 248);
          *(a1 + 240) = v92;
          *(a1 + 248) = v93;
        }

        else
        {
          *(a1 + 240) = *(a2 + 240);
        }

        v113 = *(a2 + 256);
        if (v113)
        {
          v114 = *(a2 + 264);
          *(a1 + 256) = v113;
          *(a1 + 264) = v114;
        }

        else
        {
          *(a1 + 256) = *(a2 + 256);
        }

        *(a1 + 336) = 21;
        break;
      default:
        v59 = *(a2 + 320);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 320) = v59;
        *(a1 + 336) = *(a2 + 336);
        v60 = *(a2 + 256);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = v60;
        v61 = *(a2 + 288);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 288) = v61;
        break;
    }
  }

  *(a1 + 340) = *(a2 + 340);
  return a1;
}

uint64_t assignWithCopy for NavigationState.RequestResults(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of ResolvedNavigationDestinations.ChangeRequest(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of ResolvedNavigationDestinations.ChangeRequest(v7, v8, v9);
  v10 = *(a2 + 160) & 0xFFFFFFFFFFFFFFFCLL;
  if (*(a1 + 160) >> 2 == 0x7FFFFFFFLL)
  {
    if (v10 != 0x1FFFFFFFCLL)
    {
      switch(*(a2 + 120))
      {
        case 0:
          v11 = *(a2 + 32);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = v11;
          *(a1 + 120) = 0;
          goto LABEL_89;
        case 1:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 120) = 1;

          goto LABEL_89;
        case 2:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          v18 = *(a2 + 64);
          *(a1 + 64) = v18;
          *(a1 + 72) = *(a2 + 72);
          v19 = **(v18 - 8);

          v19(a1 + 40, a2 + 40, v18);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 120) = 2;
          break;
        case 3:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 120) = 3;

          break;
        case 4:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v17 = 4;
          goto LABEL_30;
        case 5:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 41) = *(a2 + 41);
          v17 = 5;
          goto LABEL_30;
        case 6:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 120) = 6;

          goto LABEL_89;
        case 0xA:
          v21 = *(a2 + 48);
          *(a1 + 48) = v21;
          *(a1 + 56) = *(a2 + 56);
          (**(v21 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 81) = *(a2 + 81);
          v17 = 10;
          goto LABEL_30;
        case 0xB:
          v26 = *(a2 + 48);
          *(a1 + 48) = v26;
          *(a1 + 56) = *(a2 + 56);
          (**(v26 - 8))(a1 + 24, a2 + 24);
          *(a1 + 120) = 11;
          break;
        case 0xC:
          *(a1 + 24) = *(a2 + 24);
          v25 = *(a2 + 56);

          if (v25)
          {
            *(a1 + 56) = v25;
            *(a1 + 64) = *(a2 + 64);
            (**(v25 - 8))(a1 + 32, a2 + 32, v25);
          }

          else
          {
            v63 = *(a2 + 32);
            v64 = *(a2 + 48);
            *(a1 + 64) = *(a2 + 64);
            *(a1 + 32) = v63;
            *(a1 + 48) = v64;
          }

          if (*(a2 + 80) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 72);
            *(a1 + 76) = *(a2 + 76);
            *(a1 + 80) = *(a2 + 80);
          }

          *(a1 + 88) = *(a2 + 88);
          v65 = *(a2 + 104);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 104) = v65;
          v53 = 12;
          goto LABEL_88;
        case 0xD:
          *(a1 + 24) = *(a2 + 24);
          v15 = *(a2 + 56);

          if (v15)
          {
            *(a1 + 56) = v15;
            *(a1 + 64) = *(a2 + 64);
            (**(v15 - 8))(a1 + 32, a2 + 32, v15);
          }

          else
          {
            v54 = *(a2 + 32);
            v55 = *(a2 + 48);
            *(a1 + 64) = *(a2 + 64);
            *(a1 + 32) = v54;
            *(a1 + 48) = v55;
          }

          if (*(a2 + 80) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 72);
            *(a1 + 76) = *(a2 + 76);
            *(a1 + 80) = *(a2 + 80);
          }

          *(a1 + 88) = *(a2 + 88);
          v56 = *(a2 + 104);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 104) = v56;
          *(a1 + 112) = *(a2 + 112);
          v53 = 13;
          goto LABEL_88;
        case 0xE:
          *(a1 + 24) = *(a2 + 24);
          v20 = *(a2 + 56);

          if (v20)
          {
            *(a1 + 56) = v20;
            *(a1 + 64) = *(a2 + 64);
            (**(v20 - 8))(a1 + 32, a2 + 32, v20);
          }

          else
          {
            v57 = *(a2 + 32);
            v58 = *(a2 + 48);
            *(a1 + 64) = *(a2 + 64);
            *(a1 + 32) = v57;
            *(a1 + 48) = v58;
          }

          if (*(a2 + 80) == 1)
          {
            *(a1 + 72) = *(a2 + 72);
          }

          else
          {
            *(a1 + 72) = *(a2 + 72);
            *(a1 + 76) = *(a2 + 76);
            *(a1 + 80) = *(a2 + 80);
          }

          *(a1 + 88) = *(a2 + 88);
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 120) = 14;
          break;
        case 0x11:
          v16 = *(a2 + 48);
          *(a1 + 48) = v16;
          *(a1 + 56) = *(a2 + 56);
          (**(v16 - 8))(a1 + 24, a2 + 24);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          v17 = 17;
LABEL_30:
          *(a1 + 120) = v17;

          goto LABEL_89;
        case 0x12:
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          v14 = *(a2 + 64);

          if (v14)
          {
            *(a1 + 64) = v14;
            *(a1 + 72) = *(a2 + 72);
            (**(v14 - 8))(a1 + 40, a2 + 40, v14);
          }

          else
          {
            v50 = *(a2 + 40);
            v51 = *(a2 + 56);
            *(a1 + 72) = *(a2 + 72);
            *(a1 + 56) = v51;
            *(a1 + 40) = v50;
          }

          if (*(a2 + 88) == 1)
          {
            *(a1 + 80) = *(a2 + 80);
          }

          else
          {
            *(a1 + 80) = *(a2 + 80);
            *(a1 + 84) = *(a2 + 84);
            *(a1 + 88) = *(a2 + 88);
          }

          *(a1 + 96) = *(a2 + 96);
          v52 = *(a2 + 112);
          *(a1 + 104) = *(a2 + 104);
          *(a1 + 112) = v52;
          v53 = 18;
LABEL_88:
          *(a1 + 120) = v53;
LABEL_89:

          break;
        case 0x13:
          v22 = *(a2 + 48);
          if (v22)
          {
            *(a1 + 48) = v22;
            *(a1 + 56) = *(a2 + 56);
            (**(v22 - 8))(a1 + 24, a2 + 24);
          }

          else
          {
            v59 = *(a2 + 24);
            v60 = *(a2 + 40);
            *(a1 + 56) = *(a2 + 56);
            *(a1 + 40) = v60;
            *(a1 + 24) = v59;
          }

          if (*(a2 + 72) == 1)
          {
            *(a1 + 64) = *(a2 + 64);
          }

          else
          {
            *(a1 + 64) = *(a2 + 64);
            *(a1 + 68) = *(a2 + 68);
            *(a1 + 72) = *(a2 + 72);
          }

          *(a1 + 80) = *(a2 + 80);
          *(a1 + 120) = 19;
          break;
        case 0x15:
          v23 = *(a2 + 24);
          if (v23)
          {
            v24 = *(a2 + 32);
            *(a1 + 24) = v23;
            *(a1 + 32) = v24;
          }

          else
          {
            *(a1 + 24) = *(a2 + 24);
          }

          v61 = *(a2 + 40);
          if (v61)
          {
            v62 = *(a2 + 48);
            *(a1 + 40) = v61;
            *(a1 + 48) = v62;
          }

          else
          {
            *(a1 + 40) = *(a2 + 40);
          }

          *(a1 + 120) = 21;
          break;
        default:
          v27 = *(a2 + 24);
          v28 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v28;
          *(a1 + 24) = v27;
          v29 = *(a2 + 72);
          v30 = *(a2 + 88);
          v31 = *(a2 + 104);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 104) = v31;
          *(a1 + 88) = v30;
          *(a1 + 72) = v29;
          break;
      }

      v66 = *(a2 + 128);
      v67 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v67;
      *(a1 + 128) = v66;
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      v68 = *(a2 + 192);
      v69 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v69;
      *(a1 + 192) = v68;
      v70 = *(a2 + 336);

      switch(v70)
      {
        case 0:
          goto LABEL_129;
        case 1:
          goto LABEL_136;
        case 2:
          goto LABEL_138;
        case 3:
          goto LABEL_137;
        case 4:
          goto LABEL_134;
        case 5:
          goto LABEL_135;
        case 6:
          goto LABEL_148;
        case 10:
          goto LABEL_139;
        case 11:
          goto LABEL_149;
        case 12:
          goto LABEL_132;
        case 13:
          goto LABEL_140;
        case 14:
          goto LABEL_142;
        case 17:
          goto LABEL_146;
        case 18:
          goto LABEL_144;
        case 19:
          goto LABEL_130;
        case 21:
          goto LABEL_150;
        default:
          goto LABEL_183;
      }
    }

    goto LABEL_7;
  }

  if (v10 == 0x1FFFFFFFCLL)
  {
    outlined destroy of NavigationRequest.TargetedRequest(a1 + 24);
LABEL_7:
    memcpy((a1 + 24), (a2 + 24), 0x139uLL);
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 24);
    switch(*(a2 + 120))
    {
      case 0:
        v13 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v13;
        *(a1 + 120) = 0;
        goto LABEL_122;
      case 1:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 120) = 1;

        goto LABEL_122;
      case 2:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        v36 = *(a2 + 64);
        *(a1 + 64) = v36;
        *(a1 + 72) = *(a2 + 72);
        v37 = **(v36 - 8);

        v37(a1 + 40, a2 + 40, v36);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 120) = 2;
        break;
      case 3:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 120) = 3;

        break;
      case 4:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 41) = *(a2 + 41);
        v35 = 4;
        goto LABEL_53;
      case 5:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 41) = *(a2 + 41);
        v35 = 5;
        goto LABEL_53;
      case 6:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 120) = 6;

        goto LABEL_122;
      case 0xA:
        v39 = *(a2 + 48);
        *(a1 + 48) = v39;
        *(a1 + 56) = *(a2 + 56);
        (**(v39 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 81) = *(a2 + 81);
        v35 = 10;
        goto LABEL_53;
      case 0xB:
        v44 = *(a2 + 48);
        *(a1 + 48) = v44;
        *(a1 + 56) = *(a2 + 56);
        (**(v44 - 8))(a1 + 24, a2 + 24);
        *(a1 + 120) = 11;
        break;
      case 0xC:
        *(a1 + 24) = *(a2 + 24);
        v43 = *(a2 + 56);

        if (v43)
        {
          *(a1 + 56) = v43;
          *(a1 + 64) = *(a2 + 64);
          (**(v43 - 8))(a1 + 32, a2 + 32, v43);
        }

        else
        {
          v84 = *(a2 + 32);
          v85 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v84;
          *(a1 + 48) = v85;
        }

        if (*(a2 + 80) == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 80) = *(a2 + 80);
        }

        *(a1 + 88) = *(a2 + 88);
        v86 = *(a2 + 104);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v86;
        v74 = 12;
        goto LABEL_121;
      case 0xD:
        *(a1 + 24) = *(a2 + 24);
        v33 = *(a2 + 56);

        if (v33)
        {
          *(a1 + 56) = v33;
          *(a1 + 64) = *(a2 + 64);
          (**(v33 - 8))(a1 + 32, a2 + 32, v33);
        }

        else
        {
          v75 = *(a2 + 32);
          v76 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v75;
          *(a1 + 48) = v76;
        }

        if (*(a2 + 80) == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 80) = *(a2 + 80);
        }

        *(a1 + 88) = *(a2 + 88);
        v77 = *(a2 + 104);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v77;
        *(a1 + 112) = *(a2 + 112);
        v74 = 13;
        goto LABEL_121;
      case 0xE:
        *(a1 + 24) = *(a2 + 24);
        v38 = *(a2 + 56);

        if (v38)
        {
          *(a1 + 56) = v38;
          *(a1 + 64) = *(a2 + 64);
          (**(v38 - 8))(a1 + 32, a2 + 32, v38);
        }

        else
        {
          v78 = *(a2 + 32);
          v79 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v78;
          *(a1 + 48) = v79;
        }

        if (*(a2 + 80) == 1)
        {
          *(a1 + 72) = *(a2 + 72);
        }

        else
        {
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 80) = *(a2 + 80);
        }

        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 120) = 14;
        break;
      case 0x11:
        v34 = *(a2 + 48);
        *(a1 + 48) = v34;
        *(a1 + 56) = *(a2 + 56);
        (**(v34 - 8))(a1 + 24, a2 + 24);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 89) = *(a2 + 89);
        v35 = 17;
LABEL_53:
        *(a1 + 120) = v35;

        goto LABEL_122;
      case 0x12:
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        v32 = *(a2 + 64);

        if (v32)
        {
          *(a1 + 64) = v32;
          *(a1 + 72) = *(a2 + 72);
          (**(v32 - 8))(a1 + 40, a2 + 40, v32);
        }

        else
        {
          v71 = *(a2 + 40);
          v72 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v72;
          *(a1 + 40) = v71;
        }

        if (*(a2 + 88) == 1)
        {
          *(a1 + 80) = *(a2 + 80);
        }

        else
        {
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 84) = *(a2 + 84);
          *(a1 + 88) = *(a2 + 88);
        }

        *(a1 + 96) = *(a2 + 96);
        v73 = *(a2 + 112);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 112) = v73;
        v74 = 18;
LABEL_121:
        *(a1 + 120) = v74;
LABEL_122:

        break;
      case 0x13:
        v40 = *(a2 + 48);
        if (v40)
        {
          *(a1 + 48) = v40;
          *(a1 + 56) = *(a2 + 56);
          (**(v40 - 8))(a1 + 24, a2 + 24);
        }

        else
        {
          v80 = *(a2 + 24);
          v81 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v81;
          *(a1 + 24) = v80;
        }

        if (*(a2 + 72) == 1)
        {
          *(a1 + 64) = *(a2 + 64);
        }

        else
        {
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 68) = *(a2 + 68);
          *(a1 + 72) = *(a2 + 72);
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 120) = 19;
        break;
      case 0x15:
        v41 = *(a2 + 24);
        if (v41)
        {
          v42 = *(a2 + 32);
          *(a1 + 24) = v41;
          *(a1 + 32) = v42;
        }

        else
        {
          *(a1 + 24) = *(a2 + 24);
        }

        v82 = *(a2 + 40);
        if (v82)
        {
          v83 = *(a2 + 48);
          *(a1 + 40) = v82;
          *(a1 + 48) = v83;
        }

        else
        {
          *(a1 + 40) = *(a2 + 40);
        }

        *(a1 + 120) = 21;
        break;
      default:
        v45 = *(a2 + 24);
        v46 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v46;
        *(a1 + 24) = v45;
        v47 = *(a2 + 72);
        v48 = *(a2 + 88);
        v49 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v49;
        *(a1 + 88) = v48;
        *(a1 + 72) = v47;
        break;
    }
  }

  v87 = *(a2 + 128);
  v88 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v88;
  *(a1 + 128) = v87;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);

  v89 = *(a2 + 192);
  v90 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v90;
  *(a1 + 192) = v89;
  if (*(a1 + 336) == 255)
  {
    switch(*(a2 + 336))
    {
      case 0:
LABEL_129:
        v96 = *(a2 + 248);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = v96;
        *(a1 + 336) = 0;

        break;
      case 1:
LABEL_136:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 336) = 1;

        break;
      case 2:
LABEL_138:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        v100 = *(a2 + 280);
        *(a1 + 280) = v100;
        *(a1 + 288) = *(a2 + 288);
        v101 = **(v100 - 8);

        v101(a1 + 256, a2 + 256, v100);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 336) = 2;
        break;
      case 3:
LABEL_137:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 336) = 3;

        break;
      case 4:
LABEL_134:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 257) = *(a2 + 257);
        v99 = 4;
        goto LABEL_147;
      case 5:
LABEL_135:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 257) = *(a2 + 257);
        v99 = 5;
        goto LABEL_147;
      case 6:
LABEL_148:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 336) = 6;

        break;
      case 0xA:
LABEL_139:
        v102 = *(a2 + 264);
        *(a1 + 264) = v102;
        *(a1 + 272) = *(a2 + 272);
        (**(v102 - 8))(a1 + 240, a2 + 240);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 297) = *(a2 + 297);
        v99 = 10;
        goto LABEL_147;
      case 0xB:
LABEL_149:
        v107 = *(a2 + 264);
        *(a1 + 264) = v107;
        *(a1 + 272) = *(a2 + 272);
        (**(v107 - 8))(a1 + 240, a2 + 240);
        *(a1 + 336) = 11;
        break;
      case 0xC:
LABEL_132:
        *(a1 + 240) = *(a2 + 240);
        v98 = *(a2 + 272);

        if (v98)
        {
          *(a1 + 272) = v98;
          *(a1 + 280) = *(a2 + 280);
          (**(v98 - 8))(a1 + 248, a2 + 248, v98);
        }

        else
        {
          v110 = *(a2 + 248);
          v111 = *(a2 + 264);
          *(a1 + 280) = *(a2 + 280);
          *(a1 + 248) = v110;
          *(a1 + 264) = v111;
        }

        if (*(a2 + 296) == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 292) = *(a2 + 292);
          *(a1 + 296) = *(a2 + 296);
        }

        *(a1 + 304) = *(a2 + 304);
        v112 = *(a2 + 320);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 320) = v112;
        v113 = 12;
        goto LABEL_177;
      case 0xD:
LABEL_140:
        *(a1 + 240) = *(a2 + 240);
        v103 = *(a2 + 272);

        if (v103)
        {
          *(a1 + 272) = v103;
          *(a1 + 280) = *(a2 + 280);
          (**(v103 - 8))(a1 + 248, a2 + 248, v103);
        }

        else
        {
          v116 = *(a2 + 248);
          v117 = *(a2 + 264);
          *(a1 + 280) = *(a2 + 280);
          *(a1 + 248) = v116;
          *(a1 + 264) = v117;
        }

        if (*(a2 + 296) == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 292) = *(a2 + 292);
          *(a1 + 296) = *(a2 + 296);
        }

        *(a1 + 304) = *(a2 + 304);
        v118 = *(a2 + 320);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 320) = v118;
        *(a1 + 328) = *(a2 + 328);
        v113 = 13;
        goto LABEL_177;
      case 0xE:
LABEL_142:
        *(a1 + 240) = *(a2 + 240);
        v104 = *(a2 + 272);

        if (v104)
        {
          *(a1 + 272) = v104;
          *(a1 + 280) = *(a2 + 280);
          (**(v104 - 8))(a1 + 248, a2 + 248, v104);
        }

        else
        {
          v119 = *(a2 + 248);
          v120 = *(a2 + 264);
          *(a1 + 280) = *(a2 + 280);
          *(a1 + 248) = v119;
          *(a1 + 264) = v120;
        }

        if (*(a2 + 296) == 1)
        {
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 292) = *(a2 + 292);
          *(a1 + 296) = *(a2 + 296);
        }

        *(a1 + 304) = *(a2 + 304);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 336) = 14;
        break;
      case 0x11:
LABEL_146:
        v106 = *(a2 + 264);
        *(a1 + 264) = v106;
        *(a1 + 272) = *(a2 + 272);
        (**(v106 - 8))(a1 + 240, a2 + 240);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = *(a2 + 304);
        *(a1 + 305) = *(a2 + 305);
        v99 = 17;
LABEL_147:
        *(a1 + 336) = v99;

        break;
      case 0x12:
LABEL_144:
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 248) = *(a2 + 248);
        v105 = *(a2 + 280);

        if (v105)
        {
          *(a1 + 280) = v105;
          *(a1 + 288) = *(a2 + 288);
          (**(v105 - 8))(a1 + 256, a2 + 256, v105);
        }

        else
        {
          v121 = *(a2 + 256);
          v122 = *(a2 + 272);
          *(a1 + 288) = *(a2 + 288);
          *(a1 + 256) = v121;
          *(a1 + 272) = v122;
        }

        if (*(a2 + 304) == 1)
        {
          *(a1 + 296) = *(a2 + 296);
        }

        else
        {
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 300) = *(a2 + 300);
          *(a1 + 304) = *(a2 + 304);
        }

        *(a1 + 312) = *(a2 + 312);
        v123 = *(a2 + 328);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 328) = v123;
        v113 = 18;
LABEL_177:
        *(a1 + 336) = v113;

        break;
      case 0x13:
LABEL_130:
        v97 = *(a2 + 264);
        if (v97)
        {
          *(a1 + 264) = v97;
          *(a1 + 272) = *(a2 + 272);
          (**(v97 - 8))(a1 + 240, a2 + 240);
        }

        else
        {
          v114 = *(a2 + 240);
          v115 = *(a2 + 256);
          *(a1 + 272) = *(a2 + 272);
          *(a1 + 240) = v114;
          *(a1 + 256) = v115;
        }

        if (*(a2 + 288) == 1)
        {
          *(a1 + 280) = *(a2 + 280);
        }

        else
        {
          *(a1 + 280) = *(a2 + 280);
          *(a1 + 284) = *(a2 + 284);
          *(a1 + 288) = *(a2 + 288);
        }

        *(a1 + 296) = *(a2 + 296);
        *(a1 + 336) = 19;
        break;
      case 0x15:
LABEL_150:
        v108 = *(a2 + 240);
        if (v108)
        {
          v109 = *(a2 + 248);
          *(a1 + 240) = v108;
          *(a1 + 248) = v109;
        }

        else
        {
          *(a1 + 240) = *(a2 + 240);
        }

        v124 = *(a2 + 256);
        if (v124)
        {
          v125 = *(a2 + 264);
          *(a1 + 256) = v124;
          *(a1 + 264) = v125;
        }

        else
        {
          *(a1 + 256) = *(a2 + 256);
        }

        *(a1 + 336) = 21;
        break;
      default:
LABEL_183:
        v126 = *(a2 + 240);
        v127 = *(a2 + 272);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 272) = v127;
        *(a1 + 240) = v126;
        v128 = *(a2 + 288);
        v129 = *(a2 + 304);
        v130 = *(a2 + 320);
        *(a1 + 336) = *(a2 + 336);
        *(a1 + 304) = v129;
        *(a1 + 320) = v130;
        *(a1 + 288) = v128;
        break;
    }
  }

  else if (*(a2 + 336) == 255)
  {
    outlined destroy of NavigationRequest.Action(a1 + 240);
    v92 = *(a2 + 256);
    v91 = *(a2 + 272);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v92;
    *(a1 + 272) = v91;
    v94 = *(a2 + 304);
    v93 = *(a2 + 320);
    v95 = *(a2 + 288);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 304) = v94;
    *(a1 + 320) = v93;
    *(a1 + 288) = v95;
  }

  else if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 240);
    switch(*(a2 + 336))
    {
      case 0:
        goto LABEL_129;
      case 1:
        goto LABEL_136;
      case 2:
        goto LABEL_138;
      case 3:
        goto LABEL_137;
      case 4:
        goto LABEL_134;
      case 5:
        goto LABEL_135;
      case 6:
        goto LABEL_148;
      case 0xA:
        goto LABEL_139;
      case 0xB:
        goto LABEL_149;
      case 0xC:
        goto LABEL_132;
      case 0xD:
        goto LABEL_140;
      case 0xE:
        goto LABEL_142;
      case 0x11:
        goto LABEL_146;
      case 0x12:
        goto LABEL_144;
      case 0x13:
        goto LABEL_130;
      case 0x15:
        goto LABEL_150;
      default:
        goto LABEL_183;
    }
  }

LABEL_8:
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  return a1;
}

uint64_t assignWithTake for NavigationState.RequestResults(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of ResolvedNavigationDestinations.ChangeRequest(v5, v6, v7);
  if (*(a1 + 160) >> 2 == 0x7FFFFFFFLL)
  {
    goto LABEL_4;
  }

  if (*(a2 + 160) >> 2 == 0x7FFFFFFFLL)
  {
    outlined destroy of NavigationRequest.TargetedRequest(a1 + 24);
LABEL_4:
    memcpy((a1 + 24), (a2 + 24), 0x139uLL);
    goto LABEL_12;
  }

  if (a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 24);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);

  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 336) == 255)
  {
LABEL_11:
    v10 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v10;
    *(a1 + 336) = *(a2 + 336);
    v11 = *(a2 + 256);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v11;
    v12 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v12;
    goto LABEL_12;
  }

  if (*(a2 + 336) == 255 || a1 != a2)
  {
    outlined destroy of NavigationRequest.Action(a1 + 240);
    goto LABEL_11;
  }

LABEL_12:
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationState.RequestResults(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 348))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 160) >> 1;
  v4 = -3 - v3;
  if (-3 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationState.RequestResults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
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
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 348) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 348) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 160) = 2 * (-2 - a2);
      *(result + 168) = 0;
    }
  }

  return result;
}

char *assignWithCopy for NavigationState.UpdateResult(char *__dst, char *__src)
{
  v4 = *(__src + 17) >> 1;
  if ((*(__dst + 17) >> 1) > 0x80000000)
  {
    if (v4 <= 0x80000000)
    {
      switch(__src[96])
      {
        case 0:
          v6 = *(__src + 1);
          *__dst = *__src;
          *(__dst + 1) = v6;
          __dst[96] = 0;
          goto LABEL_149;
        case 1:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          __dst[96] = 1;

          goto LABEL_149;
        case 2:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          v12 = *(__src + 5);
          *(__dst + 5) = v12;
          *(__dst + 6) = *(__src + 6);
          v13 = **(v12 - 8);

          v13(__dst + 16, __src + 16, v12);
          *(__dst + 7) = *(__src + 7);
          *(__dst + 8) = *(__src + 8);
          __dst[96] = 2;
          break;
        case 3:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          __dst[96] = 3;

          break;
        case 4:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          __dst[16] = __src[16];
          __dst[17] = __src[17];
          v11 = 4;
          goto LABEL_88;
        case 5:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          __dst[16] = __src[16];
          __dst[17] = __src[17];
          v11 = 5;
          goto LABEL_88;
        case 6:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = *(__src + 2);
          __dst[96] = 6;

          goto LABEL_149;
        case 10:
          v17 = *(__src + 3);
          *(__dst + 3) = v17;
          *(__dst + 4) = *(__src + 4);
          (**(v17 - 8))(__dst, __src);
          *(__dst + 5) = *(__src + 5);
          *(__dst + 6) = *(__src + 6);
          __dst[56] = __src[56];
          __dst[57] = __src[57];
          v11 = 10;
          goto LABEL_88;
        case 11:
          v24 = *(__src + 3);
          *(__dst + 3) = v24;
          *(__dst + 4) = *(__src + 4);
          (**(v24 - 8))(__dst, __src);
          __dst[96] = 11;
          break;
        case 12:
          *__dst = *__src;
          v22 = __dst + 8;
          v23 = *(__src + 4);

          if (v23)
          {
            *(__dst + 4) = v23;
            *(__dst + 5) = *(__src + 5);
            (**(v23 - 8))(__dst + 8, __src + 8, v23);
          }

          else
          {
            v60 = *(__src + 8);
            v61 = *(__src + 24);
            *(__dst + 5) = *(__src + 5);
            *v22 = v60;
            *(__dst + 24) = v61;
          }

          if (*(__src + 7) == 1)
          {
            *(__dst + 3) = *(__src + 3);
          }

          else
          {
            *(__dst + 12) = *(__src + 12);
            *(__dst + 13) = *(__src + 13);
            *(__dst + 7) = *(__src + 7);
          }

          *(__dst + 8) = *(__src + 8);
          v62 = *(__src + 10);
          *(__dst + 9) = *(__src + 9);
          *(__dst + 10) = v62;
          v50 = 12;
          goto LABEL_148;
        case 13:
          *__dst = *__src;
          v8 = __dst + 8;
          v9 = *(__src + 4);

          if (v9)
          {
            *(__dst + 4) = v9;
            *(__dst + 5) = *(__src + 5);
            (**(v9 - 8))(__dst + 8, __src + 8, v9);
          }

          else
          {
            v51 = *(__src + 8);
            v52 = *(__src + 24);
            *(__dst + 5) = *(__src + 5);
            *v8 = v51;
            *(__dst + 24) = v52;
          }

          if (*(__src + 7) == 1)
          {
            *(__dst + 3) = *(__src + 3);
          }

          else
          {
            *(__dst + 12) = *(__src + 12);
            *(__dst + 13) = *(__src + 13);
            *(__dst + 7) = *(__src + 7);
          }

          *(__dst + 8) = *(__src + 8);
          v53 = *(__src + 10);
          *(__dst + 9) = *(__src + 9);
          *(__dst + 10) = v53;
          __dst[88] = __src[88];
          v50 = 13;
          goto LABEL_148;
        case 14:
          *__dst = *__src;
          v14 = __dst + 8;
          v15 = *(__src + 4);

          if (v15)
          {
            *(__dst + 4) = v15;
            *(__dst + 5) = *(__src + 5);
            (**(v15 - 8))(__dst + 8, __src + 8, v15);
          }

          else
          {
            v54 = *(__src + 8);
            v55 = *(__src + 24);
            *(__dst + 5) = *(__src + 5);
            *v14 = v54;
            *(__dst + 24) = v55;
          }

          if (*(__src + 7) == 1)
          {
            *(__dst + 3) = *(__src + 3);
          }

          else
          {
            *(__dst + 12) = *(__src + 12);
            *(__dst + 13) = *(__src + 13);
            *(__dst + 7) = *(__src + 7);
          }

          *(__dst + 8) = *(__src + 8);
          __dst[72] = __src[72];
          __dst[96] = 14;
          break;
        case 17:
          v10 = *(__src + 3);
          *(__dst + 3) = v10;
          *(__dst + 4) = *(__src + 4);
          (**(v10 - 8))(__dst, __src);
          __dst[40] = __src[40];
          *(__dst + 6) = *(__src + 6);
          *(__dst + 7) = *(__src + 7);
          __dst[64] = __src[64];
          __dst[65] = __src[65];
          v11 = 17;
LABEL_88:
          __dst[96] = v11;

          goto LABEL_149;
        case 18:
          *__dst = *__src;
          *(__dst + 1) = *(__src + 1);
          v7 = *(__src + 5);

          if (v7)
          {
            *(__dst + 5) = v7;
            *(__dst + 6) = *(__src + 6);
            (**(v7 - 8))(__dst + 16, __src + 16, v7);
          }

          else
          {
            v47 = *(__src + 1);
            v48 = *(__src + 2);
            *(__dst + 6) = *(__src + 6);
            *(__dst + 1) = v47;
            *(__dst + 2) = v48;
          }

          if (*(__src + 8) == 1)
          {
            *(__dst + 56) = *(__src + 56);
          }

          else
          {
            *(__dst + 14) = *(__src + 14);
            *(__dst + 15) = *(__src + 15);
            *(__dst + 8) = *(__src + 8);
          }

          *(__dst + 9) = *(__src + 9);
          v49 = *(__src + 11);
          *(__dst + 10) = *(__src + 10);
          *(__dst + 11) = v49;
          v50 = 18;
LABEL_148:
          __dst[96] = v50;
LABEL_149:

          break;
        case 19:
          v18 = *(__src + 3);
          if (v18)
          {
            *(__dst + 3) = v18;
            *(__dst + 4) = *(__src + 4);
            (**(v18 - 8))(__dst, __src);
          }

          else
          {
            v56 = *__src;
            v57 = *(__src + 1);
            *(__dst + 4) = *(__src + 4);
            *__dst = v56;
            *(__dst + 1) = v57;
          }

          if (*(__src + 6) == 1)
          {
            *(__dst + 40) = *(__src + 40);
          }

          else
          {
            *(__dst + 10) = *(__src + 10);
            *(__dst + 11) = *(__src + 11);
            *(__dst + 6) = *(__src + 6);
          }

          *(__dst + 7) = *(__src + 7);
          __dst[96] = 19;
          break;
        case 21:
          if (*__src)
          {
            v19 = *(__src + 1);
            *__dst = *__src;
            *(__dst + 1) = v19;
          }

          else
          {
            *__dst = *__src;
          }

          v58 = *(__src + 2);
          if (v58)
          {
            v59 = *(__src + 3);
            *(__dst + 2) = v58;
            *(__dst + 3) = v59;
          }

          else
          {
            *(__dst + 1) = *(__src + 1);
          }

          __dst[96] = 21;
          break;
        default:
          v25 = *__src;
          v26 = *(__src + 2);
          *(__dst + 1) = *(__src + 1);
          *(__dst + 2) = v26;
          *__dst = v25;
          v27 = *(__src + 3);
          v28 = *(__src + 4);
          v29 = *(__src + 5);
          __dst[96] = __src[96];
          *(__dst + 4) = v28;
          *(__dst + 5) = v29;
          *(__dst + 3) = v27;
          break;
      }

      v63 = *(__src + 104);
      v64 = *(__src + 120);
      *(__dst + 136) = *(__src + 136);
      *(__dst + 120) = v64;
      *(__dst + 104) = v63;
      __dst[152] = __src[152];
      *(__dst + 20) = *(__src + 20);
      v65 = *(__src + 168);
      v66 = *(__src + 184);
      *(__dst + 200) = *(__src + 200);
      *(__dst + 184) = v66;
      *(__dst + 168) = v65;
      v67 = __dst + 216;
      v68 = __src + 216;
      v69 = __src[312];

      switch(v69)
      {
        case 0:
LABEL_189:
          v95 = *(__src + 28);
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = v95;
          __dst[312] = 0;

          return __dst;
        case 1:
LABEL_196:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          *(__dst + 29) = *(__src + 29);
          *(__dst + 30) = *(__src + 30);
          *(__dst + 31) = *(__src + 31);
          __dst[312] = 1;

          goto LABEL_209;
        case 2:
LABEL_198:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          v99 = *(__src + 32);
          *(__dst + 32) = v99;
          *(__dst + 33) = *(__src + 33);
          v100 = **(v99 - 8);

          v100(__dst + 232, __src + 232, v99);
          *(__dst + 34) = *(__src + 34);
          *(__dst + 35) = *(__src + 35);
          __dst[312] = 2;
          return __dst;
        case 3:
LABEL_197:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          *(__dst + 29) = *(__src + 29);
          *(__dst + 30) = *(__src + 30);
          __dst[312] = 3;

          return __dst;
        case 4:
LABEL_194:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          __dst[232] = __src[232];
          __dst[233] = __src[233];
          v98 = 4;
          goto LABEL_207;
        case 5:
LABEL_195:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          __dst[232] = __src[232];
          __dst[233] = __src[233];
          v98 = 5;
          goto LABEL_207;
        case 6:
LABEL_208:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          *(__dst + 29) = *(__src + 29);
          __dst[312] = 6;

LABEL_209:

          return __dst;
        case 10:
LABEL_199:
          v101 = *(__src + 30);
          *(__dst + 30) = v101;
          *(__dst + 31) = *(__src + 31);
          (**(v101 - 8))(v67, v68);
          *(__dst + 32) = *(__src + 32);
          *(__dst + 33) = *(__src + 33);
          __dst[272] = __src[272];
          __dst[273] = __src[273];
          v98 = 10;
          goto LABEL_207;
        case 11:
LABEL_210:
          v106 = *(__src + 30);
          *(__dst + 30) = v106;
          *(__dst + 31) = *(__src + 31);
          (**(v106 - 8))(v67, v68);
          __dst[312] = 11;
          return __dst;
        case 12:
LABEL_192:
          *(__dst + 27) = *(__src + 27);
          v97 = *(__src + 31);

          if (v97)
          {
            *(__dst + 31) = v97;
            *(__dst + 32) = *(__src + 32);
            (**(v97 - 8))(__dst + 224, __src + 224, v97);
          }

          else
          {
            v108 = *(__src + 14);
            v109 = *(__src + 15);
            *(__dst + 32) = *(__src + 32);
            *(__dst + 14) = v108;
            *(__dst + 15) = v109;
          }

          if (*(__src + 34) == 1)
          {
            *(__dst + 264) = *(__src + 264);
          }

          else
          {
            *(__dst + 66) = *(__src + 66);
            *(__dst + 67) = *(__src + 67);
            *(__dst + 34) = *(__src + 34);
          }

          *(__dst + 35) = *(__src + 35);
          v110 = *(__src + 37);
          *(__dst + 36) = *(__src + 36);
          *(__dst + 37) = v110;
          v111 = 12;
          goto LABEL_238;
        case 13:
LABEL_200:
          *(__dst + 27) = *(__src + 27);
          v102 = *(__src + 31);

          if (v102)
          {
            *(__dst + 31) = v102;
            *(__dst + 32) = *(__src + 32);
            (**(v102 - 8))(__dst + 224, __src + 224, v102);
          }

          else
          {
            v114 = *(__src + 14);
            v115 = *(__src + 15);
            *(__dst + 32) = *(__src + 32);
            *(__dst + 14) = v114;
            *(__dst + 15) = v115;
          }

          if (*(__src + 34) == 1)
          {
            *(__dst + 264) = *(__src + 264);
          }

          else
          {
            *(__dst + 66) = *(__src + 66);
            *(__dst + 67) = *(__src + 67);
            *(__dst + 34) = *(__src + 34);
          }

          *(__dst + 35) = *(__src + 35);
          v116 = *(__src + 37);
          *(__dst + 36) = *(__src + 36);
          *(__dst + 37) = v116;
          __dst[304] = __src[304];
          v111 = 13;
          goto LABEL_238;
        case 14:
LABEL_202:
          *(__dst + 27) = *(__src + 27);
          v103 = *(__src + 31);

          if (v103)
          {
            *(__dst + 31) = v103;
            *(__dst + 32) = *(__src + 32);
            (**(v103 - 8))(__dst + 224, __src + 224, v103);
          }

          else
          {
            v117 = *(__src + 14);
            v118 = *(__src + 15);
            *(__dst + 32) = *(__src + 32);
            *(__dst + 14) = v117;
            *(__dst + 15) = v118;
          }

          if (*(__src + 34) == 1)
          {
            *(__dst + 264) = *(__src + 264);
          }

          else
          {
            *(__dst + 66) = *(__src + 66);
            *(__dst + 67) = *(__src + 67);
            *(__dst + 34) = *(__src + 34);
          }

          *(__dst + 35) = *(__src + 35);
          __dst[288] = __src[288];
          __dst[312] = 14;
          return __dst;
        case 17:
LABEL_206:
          v105 = *(__src + 30);
          *(__dst + 30) = v105;
          *(__dst + 31) = *(__src + 31);
          (**(v105 - 8))(v67, v68);
          __dst[256] = __src[256];
          *(__dst + 33) = *(__src + 33);
          *(__dst + 34) = *(__src + 34);
          __dst[280] = __src[280];
          __dst[281] = __src[281];
          v98 = 17;
LABEL_207:
          __dst[312] = v98;

          break;
        case 18:
LABEL_204:
          *(__dst + 27) = *(__src + 27);
          *(__dst + 28) = *(__src + 28);
          v104 = *(__src + 32);

          if (v104)
          {
            *(__dst + 32) = v104;
            *(__dst + 33) = *(__src + 33);
            (**(v104 - 8))(__dst + 232, __src + 232, v104);
          }

          else
          {
            v119 = *(__src + 232);
            v120 = *(__src + 248);
            *(__dst + 33) = *(__src + 33);
            *(__dst + 248) = v120;
            *(__dst + 232) = v119;
          }

          if (*(__src + 35) == 1)
          {
            *(__dst + 17) = *(__src + 17);
          }

          else
          {
            *(__dst + 68) = *(__src + 68);
            *(__dst + 69) = *(__src + 69);
            *(__dst + 35) = *(__src + 35);
          }

          *(__dst + 36) = *(__src + 36);
          v121 = *(__src + 38);
          *(__dst + 37) = *(__src + 37);
          *(__dst + 38) = v121;
          v111 = 18;
LABEL_238:
          __dst[312] = v111;

          break;
        case 19:
LABEL_190:
          v96 = *(__src + 30);
          if (v96)
          {
            *(__dst + 30) = v96;
            *(__dst + 31) = *(__src + 31);
            (**(v96 - 8))(v67, v68);
          }

          else
          {
            v112 = *v68;
            v113 = *(v68 + 1);
            *(v67 + 4) = *(v68 + 4);
            *v67 = v112;
            *(v67 + 1) = v113;
          }

          if (*(__src + 33) == 1)
          {
            *(__dst + 16) = *(__src + 16);
          }

          else
          {
            *(__dst + 64) = *(__src + 64);
            *(__dst + 65) = *(__src + 65);
            *(__dst + 33) = *(__src + 33);
          }

          *(__dst + 34) = *(__src + 34);
          __dst[312] = 19;
          break;
        case 21:
LABEL_211:
          if (*v68)
          {
            v107 = *(__src + 28);
            *(__dst + 27) = *v68;
            *(__dst + 28) = v107;
          }

          else
          {
            *v67 = *v68;
          }

          v122 = *(__src + 29);
          if (v122)
          {
            v123 = *(__src + 30);
            *(__dst + 29) = v122;
            *(__dst + 30) = v123;
          }

          else
          {
            *(__dst + 232) = *(__src + 232);
          }

          __dst[312] = 21;
          break;
        default:
LABEL_244:
          v124 = *v68;
          v125 = *(v68 + 2);
          *(v67 + 1) = *(v68 + 1);
          *(v67 + 2) = v125;
          *v67 = v124;
          v126 = *(v68 + 3);
          v127 = *(v68 + 4);
          v128 = *(v68 + 5);
          v67[96] = v68[96];
          *(v67 + 4) = v127;
          *(v67 + 5) = v128;
          *(v67 + 3) = v126;
          break;
      }

      return __dst;
    }
  }

  else
  {
    if (v4 <= 0x80000000)
    {
      if (__dst != __src)
      {
        outlined destroy of NavigationRequest.Action(__dst);
        switch(__src[96])
        {
          case 0:
            v5 = *(__src + 1);
            *__dst = *__src;
            *(__dst + 1) = v5;
            __dst[96] = 0;
            goto LABEL_182;
          case 1:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            *(__dst + 2) = *(__src + 2);
            *(__dst + 3) = *(__src + 3);
            *(__dst + 4) = *(__src + 4);
            __dst[96] = 1;

            goto LABEL_182;
          case 2:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            v34 = *(__src + 5);
            *(__dst + 5) = v34;
            *(__dst + 6) = *(__src + 6);
            v35 = **(v34 - 8);

            v35(__dst + 16, __src + 16, v34);
            *(__dst + 7) = *(__src + 7);
            *(__dst + 8) = *(__src + 8);
            __dst[96] = 2;
            break;
          case 3:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            *(__dst + 2) = *(__src + 2);
            *(__dst + 3) = *(__src + 3);
            __dst[96] = 3;

            break;
          case 4:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            __dst[16] = __src[16];
            __dst[17] = __src[17];
            v33 = 4;
            goto LABEL_113;
          case 5:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            __dst[16] = __src[16];
            __dst[17] = __src[17];
            v33 = 5;
            goto LABEL_113;
          case 6:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            *(__dst + 2) = *(__src + 2);
            __dst[96] = 6;

            goto LABEL_182;
          case 10:
            v37 = *(__src + 3);
            *(__dst + 3) = v37;
            *(__dst + 4) = *(__src + 4);
            (**(v37 - 8))(__dst, __src);
            *(__dst + 5) = *(__src + 5);
            *(__dst + 6) = *(__src + 6);
            __dst[56] = __src[56];
            __dst[57] = __src[57];
            v33 = 10;
            goto LABEL_113;
          case 11:
            v41 = *(__src + 3);
            *(__dst + 3) = v41;
            *(__dst + 4) = *(__src + 4);
            (**(v41 - 8))(__dst, __src);
            __dst[96] = 11;
            break;
          case 12:
            *__dst = *__src;
            v40 = *(__src + 4);

            if (v40)
            {
              *(__dst + 4) = v40;
              *(__dst + 5) = *(__src + 5);
              (**(v40 - 8))(__dst + 8, __src + 8, v40);
            }

            else
            {
              v83 = *(__src + 8);
              v84 = *(__src + 24);
              *(__dst + 5) = *(__src + 5);
              *(__dst + 8) = v83;
              *(__dst + 24) = v84;
            }

            if (*(__src + 7) == 1)
            {
              *(__dst + 3) = *(__src + 3);
            }

            else
            {
              *(__dst + 12) = *(__src + 12);
              *(__dst + 13) = *(__src + 13);
              *(__dst + 7) = *(__src + 7);
            }

            *(__dst + 8) = *(__src + 8);
            v85 = *(__src + 10);
            *(__dst + 9) = *(__src + 9);
            *(__dst + 10) = v85;
            v73 = 12;
            goto LABEL_181;
          case 13:
            *__dst = *__src;
            v31 = *(__src + 4);

            if (v31)
            {
              *(__dst + 4) = v31;
              *(__dst + 5) = *(__src + 5);
              (**(v31 - 8))(__dst + 8, __src + 8, v31);
            }

            else
            {
              v74 = *(__src + 8);
              v75 = *(__src + 24);
              *(__dst + 5) = *(__src + 5);
              *(__dst + 8) = v74;
              *(__dst + 24) = v75;
            }

            if (*(__src + 7) == 1)
            {
              *(__dst + 3) = *(__src + 3);
            }

            else
            {
              *(__dst + 12) = *(__src + 12);
              *(__dst + 13) = *(__src + 13);
              *(__dst + 7) = *(__src + 7);
            }

            *(__dst + 8) = *(__src + 8);
            v76 = *(__src + 10);
            *(__dst + 9) = *(__src + 9);
            *(__dst + 10) = v76;
            __dst[88] = __src[88];
            v73 = 13;
            goto LABEL_181;
          case 14:
            *__dst = *__src;
            v36 = *(__src + 4);

            if (v36)
            {
              *(__dst + 4) = v36;
              *(__dst + 5) = *(__src + 5);
              (**(v36 - 8))(__dst + 8, __src + 8, v36);
            }

            else
            {
              v77 = *(__src + 8);
              v78 = *(__src + 24);
              *(__dst + 5) = *(__src + 5);
              *(__dst + 8) = v77;
              *(__dst + 24) = v78;
            }

            if (*(__src + 7) == 1)
            {
              *(__dst + 3) = *(__src + 3);
            }

            else
            {
              *(__dst + 12) = *(__src + 12);
              *(__dst + 13) = *(__src + 13);
              *(__dst + 7) = *(__src + 7);
            }

            *(__dst + 8) = *(__src + 8);
            __dst[72] = __src[72];
            __dst[96] = 14;
            break;
          case 17:
            v32 = *(__src + 3);
            *(__dst + 3) = v32;
            *(__dst + 4) = *(__src + 4);
            (**(v32 - 8))(__dst, __src);
            __dst[40] = __src[40];
            *(__dst + 6) = *(__src + 6);
            *(__dst + 7) = *(__src + 7);
            __dst[64] = __src[64];
            __dst[65] = __src[65];
            v33 = 17;
LABEL_113:
            __dst[96] = v33;

            goto LABEL_182;
          case 18:
            *__dst = *__src;
            *(__dst + 1) = *(__src + 1);
            v30 = *(__src + 5);

            if (v30)
            {
              *(__dst + 5) = v30;
              *(__dst + 6) = *(__src + 6);
              (**(v30 - 8))(__dst + 16, __src + 16, v30);
            }

            else
            {
              v70 = *(__src + 1);
              v71 = *(__src + 2);
              *(__dst + 6) = *(__src + 6);
              *(__dst + 1) = v70;
              *(__dst + 2) = v71;
            }

            if (*(__src + 8) == 1)
            {
              *(__dst + 56) = *(__src + 56);
            }

            else
            {
              *(__dst + 14) = *(__src + 14);
              *(__dst + 15) = *(__src + 15);
              *(__dst + 8) = *(__src + 8);
            }

            *(__dst + 9) = *(__src + 9);
            v72 = *(__src + 11);
            *(__dst + 10) = *(__src + 10);
            *(__dst + 11) = v72;
            v73 = 18;
LABEL_181:
            __dst[96] = v73;
LABEL_182:

            break;
          case 19:
            v38 = *(__src + 3);
            if (v38)
            {
              *(__dst + 3) = v38;
              *(__dst + 4) = *(__src + 4);
              (**(v38 - 8))(__dst, __src);
            }

            else
            {
              v79 = *__src;
              v80 = *(__src + 1);
              *(__dst + 4) = *(__src + 4);
              *__dst = v79;
              *(__dst + 1) = v80;
            }

            if (*(__src + 6) == 1)
            {
              *(__dst + 40) = *(__src + 40);
            }

            else
            {
              *(__dst + 10) = *(__src + 10);
              *(__dst + 11) = *(__src + 11);
              *(__dst + 6) = *(__src + 6);
            }

            *(__dst + 7) = *(__src + 7);
            __dst[96] = 19;
            break;
          case 21:
            if (*__src)
            {
              v39 = *(__src + 1);
              *__dst = *__src;
              *(__dst + 1) = v39;
            }

            else
            {
              *__dst = *__src;
            }

            v81 = *(__src + 2);
            if (v81)
            {
              v82 = *(__src + 3);
              *(__dst + 2) = v81;
              *(__dst + 3) = v82;
            }

            else
            {
              *(__dst + 1) = *(__src + 1);
            }

            __dst[96] = 21;
            break;
          default:
            v42 = *__src;
            v43 = *(__src + 2);
            *(__dst + 1) = *(__src + 1);
            *(__dst + 2) = v43;
            *__dst = v42;
            v44 = *(__src + 3);
            v45 = *(__src + 4);
            v46 = *(__src + 5);
            __dst[96] = __src[96];
            *(__dst + 4) = v45;
            *(__dst + 5) = v46;
            *(__dst + 3) = v44;
            break;
        }
      }

      v86 = *(__src + 104);
      v87 = *(__src + 120);
      *(__dst + 136) = *(__src + 136);
      *(__dst + 120) = v87;
      *(__dst + 104) = v86;
      __dst[152] = __src[152];
      *(__dst + 20) = *(__src + 20);

      v88 = *(__src + 168);
      v89 = *(__src + 184);
      *(__dst + 200) = *(__src + 200);
      *(__dst + 184) = v89;
      *(__dst + 168) = v88;
      v67 = __dst + 216;
      v68 = __src + 216;
      if (__dst[312] == 255)
      {
        switch(__src[312])
        {
          case 0:
            goto LABEL_189;
          case 1:
            goto LABEL_196;
          case 2:
            goto LABEL_198;
          case 3:
            goto LABEL_197;
          case 4:
            goto LABEL_194;
          case 5:
            goto LABEL_195;
          case 6:
            goto LABEL_208;
          case 10:
            goto LABEL_199;
          case 11:
            goto LABEL_210;
          case 12:
            goto LABEL_192;
          case 13:
            goto LABEL_200;
          case 14:
            goto LABEL_202;
          case 17:
            goto LABEL_206;
          case 18:
            goto LABEL_204;
          case 19:
            goto LABEL_190;
          case 21:
            goto LABEL_211;
          default:
            goto LABEL_244;
        }
      }

      if (__src[312] == 255)
      {
        outlined destroy of NavigationRequest.Action((__dst + 216));
        v91 = *(__src + 232);
        v90 = *(__src + 248);
        *v67 = *v68;
        *(__dst + 232) = v91;
        *(__dst + 248) = v90;
        v93 = *(__src + 280);
        v92 = *(__src + 296);
        v94 = *(__src + 264);
        __dst[312] = __src[312];
        *(__dst + 280) = v93;
        *(__dst + 296) = v92;
        *(__dst + 264) = v94;
      }

      else if (__dst != __src)
      {
        outlined destroy of NavigationRequest.Action((__dst + 216));
        switch(__src[312])
        {
          case 0:
            goto LABEL_189;
          case 1:
            goto LABEL_196;
          case 2:
            goto LABEL_198;
          case 3:
            goto LABEL_197;
          case 4:
            goto LABEL_194;
          case 5:
            goto LABEL_195;
          case 6:
            goto LABEL_208;
          case 10:
            goto LABEL_199;
          case 11:
            goto LABEL_210;
          case 12:
            goto LABEL_192;
          case 13:
            goto LABEL_200;
          case 14:
            goto LABEL_202;
          case 17:
            goto LABEL_206;
          case 18:
            goto LABEL_204;
          case 19:
            goto LABEL_190;
          case 21:
            goto LABEL_211;
          default:
            goto LABEL_244;
        }
      }

      return __dst;
    }

    switch(__dst[96])
    {
      case 0:
        goto LABEL_53;
      case 1:

        goto LABEL_53;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(__dst + 2);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_53;
      case 6:

        goto LABEL_53;
      case 10:
      case 17:
        __swift_destroy_boxed_opaque_existential_1(__dst);

        goto LABEL_53;
      case 11:
        __swift_destroy_boxed_opaque_existential_1(__dst);
        break;
      case 12:
      case 13:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 1);
        }

        if (*(__dst + 7) != 1)
        {
        }

        goto LABEL_53;
      case 14:

        if (*(__dst + 4))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 1);
        }

        v16 = *(__dst + 7);
        goto LABEL_46;
      case 18:

        if (*(__dst + 5))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 2);
        }

        if (*(__dst + 8) != 1)
        {
        }

        goto LABEL_53;
      case 19:
        if (*(__dst + 3))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst);
        }

        v16 = *(__dst + 6);
LABEL_46:
        if (v16 == 1)
        {
          break;
        }

        goto LABEL_53;
      case 21:
        if (*__dst)
        {
        }

        if (*(__dst + 2))
        {
LABEL_53:
        }

        break;
      default:
        break;
    }

    switch(__dst[312])
    {
      case 0:
        goto LABEL_82;
      case 1:

        goto LABEL_82;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(__dst + 29);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_82;
      case 6:

        goto LABEL_82;
      case 10:
      case 17:
        __swift_destroy_boxed_opaque_existential_1(__dst + 27);

        goto LABEL_82;
      case 11:
        __swift_destroy_boxed_opaque_existential_1(__dst + 27);
        break;
      case 12:
      case 13:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 28);
        }

        if (*(__dst + 34) != 1)
        {
        }

        goto LABEL_82;
      case 14:

        if (*(__dst + 31))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 28);
        }

        v20 = *(__dst + 34);
        goto LABEL_77;
      case 18:

        if (*(__dst + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 29);
        }

        if (*(__dst + 35) != 1)
        {
        }

        goto LABEL_82;
      case 19:
        if (*(__dst + 30))
        {
          __swift_destroy_boxed_opaque_existential_1(__dst + 27);
        }

        v20 = *(__dst + 33);
LABEL_77:
        if (v20 == 1)
        {
          break;
        }

        goto LABEL_82;
      case 21:
        if (*(__dst + 27))
        {
        }

        if (*(__dst + 29))
        {
LABEL_82:
        }

        break;
      default:
        break;
    }
  }

  return memcpy(__dst, __src, 0x139uLL);
}