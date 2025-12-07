uint64_t AnimatableAttribute.init(source:phase:time:transaction:environment:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  *a8 = a1;
  *(a8 + 1) = a5;
  v14 = type metadata accessor for AnimatableAttribute(0, a6, a7, a4);
  return AnimatableAttributeHelper.init(phase:time:transaction:)(v12, v11, v10, a6, a7, &a8[*(v14 + 40)]);
}

uint64_t AnimatableAttributeHelper.init(phase:time:transaction:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for AnimatableAttributeHelper(0, a4, a5, a4);
  v11 = v10[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 56))(&a6[v11], 1, 1, AssociatedTypeWitness);
  *&a6[v10[12]] = 0;
  *&a6[v10[13]] = 0;
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018TextRepresentationV0018_03CAEBF34B5290A85J13CA97765182271LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018TextRepresentationV0018_03CAEBF34B5290A85J13CA97765182271LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.TextRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TextChildQuery<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TextChildQuery<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for ResolvedTextFilter(uint64_t a1)
{
  result = type metadata accessor for ResolvedTextHelper(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedTextHelper(uint64_t a1)
{
  result = type metadata accessor for ResolvedTextHelper.NextUpdate(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedTextHelper.NextUpdate(uint64_t a1)
{
  v4 = MEMORY[0x1E69E5D08] + 64;
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    v5 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DisplayList.ChameleonColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static Text._makeView(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v66 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for ResolvedTextFilter(0);
  MEMORY[0x1EEE9AC00](v53);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *a2;
  v10 = *(a2 + 8);
  v9 = *(a2 + 12);
  v11 = *(a2 + 16);
  v63 = *(a2 + 24);
  v12 = *(a2 + 56);
  v64 = *(a2 + 40);
  *v65 = v12;
  *&v65[12] = *(a2 + 68);
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v8);
  if (v13 && (v15 = v13, *v57 = v8, *&v57[8] = v10, v58 = v9, v59 = v11, v16 = *(a2 + 40), v60 = *(a2 + 24), v61 = v16, v62[0] = *(a2 + 56), *(v62 + 12) = *(a2 + 68), v17 = *(v14 + 8), v54 = v14, v18 = v17(v57, v13, v14), v19 = v54, (v18 & 1) != 0))
  {
    LODWORD(v56[0]) = v7;
    *v57 = v8;
    *&v57[8] = v10;
    v58 = v9;
    v59 = v11;
    v20 = *(a2 + 40);
    v60 = *(a2 + 24);
    v61 = v20;
    v62[0] = *(a2 + 56);
    *(v62 + 12) = *(a2 + 68);
    static Text.makeCommonAttributes(view:inputs:)(v56, v57, v55);
    *v57 = v8;
    v51 = v10;
    *&v57[8] = v10;
    v58 = v9;
    v52 = v9;
    v59 = v11;
    v21 = *(a2 + 40);
    v60 = *(a2 + 24);
    v61 = v21;
    v62[0] = *(a2 + 56);
    *(v62 + 12) = *(a2 + 68);
    (*(v19 + 16))(v56, v57, v15, v19);
    v49 = v56[0];
    swift_beginAccess();
    v22 = *(v11 + 16);
    v48 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v8);
    v47 = HIDWORD(v48);
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v8, *v57);
    if (v23)
    {
      v24 = (v23 + 72);
      v25 = (v23 + 73);
    }

    else
    {
      v24 = &static ArchivedViewInput.defaultValue;
      v25 = &static ArchivedViewInput.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v46 = *v25;
    v45 = *v24;
    HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v8);
    v50 = 0;
    BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
    v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v8, *v57);
    if (v27 && (v28 = *(v27 + 72)) != 0)
    {
      v29 = *(v27 + 80);
    }

    else
    {
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v28 = v30;
      v29 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    *v6 = v7;
    v6[1] = v22;
    v31 = v6 + *(v53 + 24);
    v32 = type metadata accessor for ResolvedTextHelper(0);
    *&v31[*(v32 + 60)] = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    swift_storeEnumTagMultiPayload();
    v33 = v51;
    v34 = v48;
    *v31 = v51;
    *(v31 + 1) = v34;
    *(v31 + 2) = v47;
    v35 = v49;
    v31[12] = v49 & 1;
    v31[13] = 0;
    v31[14] = v45;
    v31[15] = v46;
    *(v31 + 8) = 0;
    v31[18] = HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 & 1;
    v31[19] = (v35 & 2) != 0;
    *(v31 + 3) = v28;
    *(v31 + 4) = v29;
    type metadata accessor for PropertyList.Tracker();
    v36 = swift_allocObject();
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = MEMORY[0x1E69E7CC8];
    v39 = MEMORY[0x1E69E7CC0];
    *(v37 + 24) = 0;
    *(v37 + 32) = v38;
    *(v37 + 40) = v38;
    *(v37 + 48) = v39;
    *(v37 + 56) = 0;
    *(v36 + 16) = v37;
    *(v31 + 5) = v36;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *&v31[*(v32 + 64)] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedTextFilter and conformance ResolvedTextFilter, type metadata accessor for ResolvedTextFilter, protocol conformance descriptor for ResolvedTextFilter);
    LODWORD(v36) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of Date?(v6, type metadata accessor for ResolvedTextFilter);
    v40 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v8);
    v41 = *(v11 + 16);
    *v57 = v36;
    *&v57[4] = v40;
    v58 = v41;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Text.MakeRepresentableContext and conformance Text.MakeRepresentableContext();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    v60 = v63;
    v61 = v64;
    *v57 = v8;
    *&v57[8] = v33;
    v58 = v52;
    v59 = v11;
    v62[0] = *v65;
    *(v62 + 12) = *&v65[12];
    (*(v54 + 24))(v57, v42, v55, v15);
  }

  else
  {
    LODWORD(v56[0]) = v7;
    *v57 = v8;
    *&v57[8] = v10;
    v58 = v9;
    v59 = v11;
    v26 = *(a2 + 40);
    v60 = *(a2 + 24);
    v61 = v26;
    v62[0] = *(a2 + 56);
    *(v62 + 12) = *(a2 + 68);
    static Text.makeCommonAttributes(view:inputs:)(v56, v57, v55);
  }
}

void static Text.makeCommonAttributes(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v7;
  v23[0] = *(a2 + 56);
  *(v23 + 12) = *(a2 + 68);
  v20 = *(a2 + 8);
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v6) & 1) != 0 && (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v6) & 1) == 0)
  {
    type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)(&v15, partial apply for closure #1 in static Text.makeCommonAttributes(view:inputs:), v9, &v13);

    if (v13)
    {
      v10 = v14;
      v11 = HIDWORD(v14);
      *a3 = v13;
      *(a3 + 8) = v10;
      *(a3 + 12) = v11;
      return;
    }

    v12 = v5;
    v15 = v6;
    v17 = v21;
    v18 = v22;
    v19[0] = v23[0];
    *(v19 + 12) = *(v23 + 12);
    v16 = v20;
    v8 = &v12;
  }

  else
  {
    LODWORD(v13) = v5;
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v8 = &v13;
  }

  static Text.makeTextAttributes(view:inputs:)(v8, &v15, a3);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19TextAllowsSelectionV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19TextAllowsSelectionV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TextAllowsSelection)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17TextRendererInputV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for TextRendererInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(a1, v6);
  if (v2)
  {
    v3 = (v2 + 72);
    v4 = (v2 + 76);
  }

  else
  {
    v3 = &static TextRendererInput.defaultValue;
    v4 = &static TextRendererInput.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3 | (*v4 << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TextRendererInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA28PreferTextLayoutManagerInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for PreferTextLayoutManagerInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for Text.LayoutKey);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for Text.LayoutKey;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19VariantThatFitsFlagV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for VariantThatFitsFlag)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ReferenceDateInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE017HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = HasWidgetMetadataV033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt0B5;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.HasWidgetMetadataKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *initializeWithCopy for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 4) = *(a2 + v4 + 4);
  v7 = *(a2 + v4 + 16);
  *(v5 + 3) = *(a2 + v4 + 12);
  *(v5 + 4) = v7;
  *(v5 + 24) = *(a2 + v4 + 24);
  *(v5 + 5) = *(a2 + v4 + 40);
  v8 = *(a2 + v4 + 72);

  if (v8)
  {
    v9 = *(v6 + 6);
    v10 = *(v6 + 7);
    v11 = v6[64];
    outlined copy of Text.Storage(v9, v10, v11);
    *(v5 + 6) = v9;
    *(v5 + 7) = v10;
    v5[64] = v11;
    *(v5 + 9) = v8;
  }

  else
  {
    v12 = *(v6 + 4);
    *(v5 + 3) = *(v6 + 3);
    *(v5 + 4) = v12;
  }

  v13 = type metadata accessor for ResolvedTextHelper(0);
  v14 = *(v13 + 60);
  v15 = &v5[v14];
  v16 = &v6[v14];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v16;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v19 = v18;
    v20 = *(v18 + 48);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 16))(&v15[v20], &v16[v20], v21);
    v15[*(v19 + 64)] = v16[*(v19 + 64)];
    *&v15[*(v19 + 80)] = *&v16[*(v19 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v15, v16, *(*(Update - 8) + 64));
  }

  *&v5[*(v13 + 64)] = *&v6[*(v13 + 64)];
  return a1;
}

void lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

double destroy for ResolvedTextFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 24);

  if (*(v2 + 72))
  {
    outlined consume of Text.Storage(*(v2 + 48), *(v2 + 56), *(v2 + 64));
  }

  v3 = v2 + *(type metadata accessor for ResolvedTextHelper(0) + 60);
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v6 = *(v5 + 48);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.TextAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE025TextAccessibilityProviderV033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.TextAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

void *static Text.makeTextChildQuery<A>(_:styledText:view:renderer:inputs:isScrapeable:)@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, __int128 *a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v15 = a4[1];
  v57 = *a4;
  v58 = v15;
  v16 = a4[3];
  v59 = a4[2];
  v60 = v16;
  v61 = a4[4];
  v62 = *(a4 + 20);
  swift_beginAccess();
  v17 = *(v58 + 16);
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v57, v51);
  if (v18)
  {
    v19 = *(v18 + 72);
  }

  else
  {
    v19 = 0;
  }

  *&v51 = __PAIR64__(a2, a1);
  *(&v51 + 1) = a3;
  *&v52 = __PAIR64__(v61, v17);
  *(&v52 + 1) = __PAIR64__(HIDWORD(v60), DWORD2(v61));
  LODWORD(v53) = v19;
  MEMORY[0x1EEE9AC00](v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[2] = AssociatedTypeWitness;
  v33 = type metadata accessor for TextChildQuery(0, a6, a7, v21);
  swift_getWitnessTable(protocol conformance descriptor for TextChildQuery<A>, v33);
  v34 = v22;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v51, partial apply for closure #1 in Attribute.init<A>(_:), v32, v33, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  v25 = LODWORD(v49[0]);
  if (a5)
  {
    AGGraphSetFlags();
  }

  _GraphValue.init(_:)(v25, v36);
  v26 = v36[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v43 = v57;
  v44 = v58;
  v28 = v59;
  LODWORD(v45) = 0;
  v35 = v26;
  v49[0] = v57;
  v49[1] = v58;
  v50 = v62;
  v49[3] = v60;
  v49[4] = v61;
  v49[2] = v45;
  v39 = v45;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v37 = v57;
  v38 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v57, &v51);
  outlined init with copy of _ViewInputs(v49, &v51);
  v30(&v35, &v37, AssociatedTypeWitness, AssociatedConformanceWitness);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v51 = v37;
  v52 = v38;
  outlined destroy of _ViewInputs(&v51);
  LODWORD(v45) = v28;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v43);
    AGSubgraphEndTreeElement();
  }

  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  return outlined destroy of _ViewInputs(&v37);
}

void *static StyledTextContentView._makeInnerView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v84 = *(a2 + 32);
  v85[0] = v4;
  v6 = *(a2 + 48);
  v85[1] = *(a2 + 64);
  v7 = *(a2 + 16);
  v82 = *a2;
  v83 = v7;
  v72 = v84;
  v73 = v6;
  v74 = *(a2 + 64);
  v8 = *a1;
  v86 = *(a2 + 80);
  v9 = v82;
  v48 = *(&v7 + 1);
  v10 = v7;
  v49 = DWORD2(v82);
  v11 = v84;
  v75 = *(a2 + 80);
  v70 = v82;
  v71 = v5;
  v51 = WORD2(v84);
  DWORD1(v72) = DWORD1(v84) & 0xFFFFFFFD;
  v12 = v6;
  *&v76 = v6;
  v13 = &type metadata for ViewRespondersKey;
  v14 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  outlined init with copy of _ViewInputs(&v82, &v55);

  v15 = *(v12 + 16);
  if (v14 != v15)
  {
    if (v14 >= v15)
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_10;
    }

    if (*(v12 + 16 * v14 + 32) == &type metadata for ViewRespondersKey)
    {
      specialized Array.remove(at:)(v14);
    }
  }

  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  LOBYTE(v64) = 1;
  swift_beginAccess();
  LOBYTE(v62[0]) = 1;
  v52 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v55, &v64, 0x100000000);
  swift_endAccess();
  v13 = *&v85[0];
  LODWORD(v14) = DWORD2(v85[0]);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v85[0]) & 1) == 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v13) & 1) == 0)
  {
    v57 = v72;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    v55 = v70;
    v56 = v71;
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(v8, &v55, v52, 0, &v76);
    v29 = *(&v76 + 1);
    *&v54 = v76;
    goto LABEL_24;
  }

  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v9, v55);
  if (v16)
  {
    v17 = (v16 + 72);
    goto LABEL_11;
  }

  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_40;
  }

LABEL_10:
  v17 = &static ArchivedViewInput.defaultValue;
LABEL_11:
  v50 = a3;
  if (*v17)
  {
    v47 = v8;
    *&v55 = __PAIR64__(*(v10 + 16), v8);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment();
    v23 = Attribute.init<A>(body:value:flags:update:)();
    v24 = MEMORY[0x1E69E7CC0];
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 256;
    *(v25 + 88) = v9;

    *&v71 = v25;
    if ((v11 & 0x20) == 0)
    {
      LODWORD(v72) = v11 | 0x20;
    }

    swift_beginAccess();
    LODWORD(v55) = *(v25 + 16);
    *(&v55 + 1) = 1;
    BYTE4(v56) = 3;
    LODWORD(v56) = 0x2000000;
    *(&v56 + 5) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init();
    v26 = Attribute.init<A>(body:value:flags:update:)();
    outlined consume of ContentTransition.Storage(1, 0x302000000, 0);
    v78 = v72;
    v79 = v73;
    v80 = v74;
    v81 = v75;
    v76 = v70;
    v77 = v71;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    a3 = v50;
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v66 = v78;
    v67 = v79;
    v68 = v80;
    v69 = v81;
    v64 = v76;
    v65 = v77;
    v28 = v78;
    LODWORD(v66) = 0;
    v60 = v81;
    v58 = v79;
    v59 = v80;
    v55 = v76;
    v56 = v77;
    v57 = v66;
    outlined init with copy of _ViewInputs(&v76, v62);
    outlined init with copy of _ViewInputs(&v55, v62);
    v8 = v47;
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a14UI21StyledTextni5V010_e63InnerF033_641995D812913A47B866B20B887823764view6inputsAA01_F7j6VAA11_kl13VyACG_AA01_F6M21VtFZAiA01_Q0V_ANtcfU_AA0rsnI0VXMtAKyAUG09AttributeK09AttributeVyAA16_ShapeStyle_PackVGTf1nnnc_n(v26, &v55, v47, v52, v53);
    outlined destroy of _ViewInputs(&v55);
    LODWORD(v66) = v28;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v53, &v64);
      AGSubgraphEndTreeElement();
    }

    v62[2] = v66;
    v62[3] = v67;
    v62[4] = v68;
    v63 = v69;
    v62[0] = v64;
    v62[1] = v65;
    outlined destroy of _ViewInputs(v62);
    *&v54 = v53[0];
    v29 = v53[1];
LABEL_24:
    *(&v54 + 1) = v29;
    if ((v51 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  type metadata accessor for _ShapeStyle_InterpolatorGroup();
  swift_allocObject();
  v9 = _ShapeStyle_InterpolatorGroup.init()();
  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  swift_beginAccess();
  v18 = CachedEnvironment.animatedPosition(for:)(&v55);
  swift_endAccess();
  DWORD1(v74) = v18;
  v78 = v72;
  v79 = v73;
  v81 = v75;
  v76 = v70;
  v77 = v71;
  v80 = v74;

  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(v8, &v76, v52, v9, &v55);

  v19 = v55;
  v54 = v55;
  v47 = DWORD2(v55);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v21 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v19);
  if ((v21 & 0x100000000) != 0)
  {

    if ((v51 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v44 = v13;
  v45 = v14;
  v46 = v21;
  v47 = v8;
  LODWORD(v14) = v85[1];
  v57 = v84;
  v58 = v85[0];
  v59 = v85[1];
  v60 = v86;
  v55 = v82;
  v56 = v83;
  swift_beginAccess();
  LODWORD(v13) = CachedEnvironment.animatedPosition(for:)(&v55);
  swift_endAccess();
  v43 = DWORD1(v85[1]);
  LODWORD(a3) = AGGraphCreateOffsetAttribute2();
  v8 = *(v10 + 16);
  if (one-time initialization token for pixelLength != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    HIDWORD(v42) = specialized CachedEnvironment.attribute<A>(id:_:)(v22, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v55 = v9;
    *(&v55 + 1) = __PAIR64__(v14, OffsetAttribute2);
    *&v56 = __PAIR64__(v43, v13);
    *(&v56 + 1) = __PAIR64__(v48, a3);
    *&v57 = __PAIR64__(HIDWORD(v48), v49);
    *(&v57 + 1) = __PAIR64__(HIDWORD(v42), v8);
    LODWORD(v42) = v8;
    LODWORD(v58) = v46;
    WORD2(v58) = 0;
    BYTE6(v58) = (v51 & 0x400) != 0;
    v61 = 0;
    *(&v58 + 1) = 0;
    v59 = 0uLL;
    v60 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>(0);
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type InterpolatedDisplayList<ResolvedStyledText> and conformance InterpolatedDisplayList<A>, type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>, protocol conformance descriptor for InterpolatedDisplayList<A>);

    LODWORD(v22) = Attribute.init<A>(body:value:flags:update:)();
    *&v55 = v9;
    *(&v55 + 1) = __PAIR64__(v14, OffsetAttribute2);
    *&v56 = __PAIR64__(v43, v13);
    *(&v56 + 1) = __PAIR64__(v48, a3);
    *&v57 = __PAIR64__(HIDWORD(v48), v49);
    *(&v57 + 1) = v42;
    LODWORD(v58) = v46;
    WORD2(v58) = 0;
    BYTE6(v58) = (v51 & 0x400) != 0;
    v61 = 0;
    *(&v58 + 1) = 0;
    v59 = 0uLL;
    v60 = 0;
    outlined destroy of Date?(&v55, type metadata accessor for InterpolatedDisplayList<ResolvedStyledText>);
    AGGraphSetFlags();
    LOBYTE(v64) = 0;
    PreferencesOutputs.subscript.setter(v22, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

    a3 = v50;
    v8 = v47;
    LODWORD(v14) = v45;
    v13 = v44;
    if ((v51 & 2) != 0)
    {
LABEL_27:
      LODWORD(v64) = v8;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type StyledTextLayoutComputer and conformance StyledTextLayoutComputer();
      HIDWORD(v54) = Attribute.init<A>(body:value:flags:update:)();
      if ((BYTE8(v54) & 0x80) == 0)
      {
        DWORD2(v54) |= 0x80u;
      }
    }

LABEL_29:
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(v13))
    {
      v30 = AGGraphCreateOffsetAttribute2();
      v31 = v85[1];
      v32 = AGGraphCreateOffsetAttribute2();
      *&v64 = __PAIR64__(v31, v30);
      *(&v64 + 1) = __PAIR64__(HIDWORD(v85[0]), v32);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _sypSgMaTm_5(0, &lazy cache variable for type metadata for [Text.LayoutKey.AnchoredLayout], &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type TextLayoutQuery and conformance TextLayoutQuery();
      v33 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v64) = 0;
      PreferencesOutputs.subscript.setter(v33, &type metadata for Text.LayoutKey, &protocol witness table for Text.LayoutKey);
    }

    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v13))
    {
      v66 = v84;
      v67 = v85[0];
      v68 = v85[1];
      v69 = v86;
      v64 = v82;
      v65 = v83;
      type metadata accessor for StyledTextResponder();
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v82, v62);
      *&v64 = StyledTextResponder.init(view:styles:inputs:)(v8, v52, &v64);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for [ViewResponder], 255, type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type StyledTextResponderFilter and conformance StyledTextResponderFilter();
      v34 = Attribute.init<A>(body:value:flags:update:)();

      LOBYTE(v64) = 0;
      PreferencesOutputs.subscript.setter(v34, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v13) & 1) == 0)
    {
      break;
    }

    v35 = *MEMORY[0x1E698D3F8];
    v36 = *(v85 + 12);
    v37 = AGGraphCreateOffsetAttribute2();
    *&v64 = v36;
    *(&v64 + 1) = __PAIR64__(v8, v37);
    LODWORD(v65) = v35;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>();
    OffsetAttribute2 = Attribute.init<A>(body:value:flags:update:)();
    *&v64 = v13;
    v38 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    Kind = v13[1].Kind;
    if (v38 == Kind)
    {
      break;
    }

    if (v38 < Kind)
    {
      if (v13[v38 + 2].Kind == &type metadata for ContentShapePathData)
      {
        LODWORD(v64) = OffsetAttribute2;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        _sypSgMaTm_5(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        _sypSgMaTm_5(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v40 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v64) = 0;
        PreferencesOutputs.subscript.setter(v40, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

      break;
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v66 = v72;
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v64 = v70;
  v65 = v71;
  result = outlined destroy of _ViewInputs(&v64);
  *a3 = v54;
  return result;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance StyledTextContentView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
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
  v9 = v3;
  return static StyledTextContentView._makeInnerView(view:inputs:)(&v9, v7, a3);
}

void LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v102 = a7;
  v103 = a8;
  v105 = a1;
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v99 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v98 - v20;
  v21 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Locale();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v98 - v27;
  v30 = *a2;
  v29 = *(a2 + 8);
  v109 = *a3;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v108 = v30;
  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v32 = dyld_program_sdk_at_least();
  }

  else
  {
    v32 = static Semantics.forced >= v31;
  }

  v33 = v104;
  v100 = a10;
  v101 = a9;
  v106 = a12;
  if (v32 && (v109 & 0x100) == 0)
  {
    if (a6)
    {
      v34 = a6;
    }

    else
    {
      v34 = [objc_opt_self() mainBundle];
    }

    v42 = a6;
    v43 = MEMORY[0x193ABEC20](v102, v103);
    if (a5)
    {
      v44 = MEMORY[0x193ABEC20](a4, a5);
      v99 = a11;
      if (v29)
      {
LABEL_24:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v108, v28);

        v45 = v107;
LABEL_40:
        isa = Locale._bridgeToObjectiveC()().super.isa;
        v60 = *(v33 + 8);
        v60(v28, v45);
        v61 = _LocalizeAttributedString(v34, v43, v44, isa);

        if (v101)
        {
          v62 = v60;
          v63 = v106;
          v64 = v99;
          (*(v106 + 56))(&v112, v99, v106);
          v65 = v112;
          v66 = v113;
          (*(v63 + 8))(v64, v63);
          if (v29)
          {

            v67 = v108;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v108, v111);

            v69 = v111[0];
          }

          else
          {
            v68 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v108);
            if (v68)
            {
              v69 = *(v68 + 72);
            }

            else
            {
              v69 = 0;
            }

            v67 = v108;
          }

          v81 = v62;
          LOBYTE(v111[0]) = v69 == 0;
          MEMORY[0x1EEE9AC00](v68);
          *(&v98 - 12) = v67;
          *(&v98 - 11) = v29;
          *(&v98 - 10) = v65;
          *(&v98 - 9) = v66;
          *(&v98 - 8) = v111;
          *(&v98 - 7) = v61;
          v82 = v103;
          *(&v98 - 6) = v102;
          *(&v98 - 5) = v82;
          *(&v98 - 32) = 1;
          v83 = v100;
          *(&v98 - 3) = v100;
          v96 = v23;
          v97 = v109;
          _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(partial apply for closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:), (&v98 - 14), v83);
          v84 = v111[0];
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v23, type metadata accessor for Text.Style);
          if (v29)
          {

            v85 = v67;
            v86 = v98;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v85, v98);

            v87 = v107;
            v88 = v104;
          }

          else
          {
            v89 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v67);
            v87 = v107;
            if (v89)
            {
              v88 = v104;
              v86 = v98;
              (*(v104 + 16))(v98, &v89[*(*v89 + 248)], v107);
            }

            else
            {
              v86 = v98;
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v90 = __swift_project_value_buffer(v87, static LocaleKey.defaultValue);
              v88 = v104;
              (*(v104 + 16))(v86, v90, v87);
            }
          }

          (*(v88 + 56))(v86, 0, 1, v87);
          v91 = getVaList(_:)();

          v92 = (*(v88 + 48))(v86, 1, v87);
          v93 = v61;
          if (v92 == 1)
          {
            v94 = 0;
          }

          else
          {
            v94 = Locale._bridgeToObjectiveC()().super.isa;
            v81(v86, v87);
          }

          v95 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initSwiftUIAttributedStringWithFormat:v93 options:0 locale:v94 arguments:v91];

          v112 = v108;
          v113 = v29;
          v111[0] = v109;
          specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(v95, v105, &v112, v111, v84, v100, v99, v106);
        }

        else
        {
          v112 = v108;
          v113 = v29;
          v111[0] = v109;
          ResolvedTextContainer.append(_:in:with:)(v61, &v112, v111, v99, v106);
        }

        return;
      }
    }

    else
    {
      v44 = 0;
      v99 = a11;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v108);
    if (v46)
    {
      v45 = v107;
      (*(v33 + 16))(v28, &v46[*(*v46 + 248)], v107);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v45 = v107;
      v58 = __swift_project_value_buffer(v107, static LocaleKey.defaultValue);
      (*(v33 + 16))(v28, v58, v45);
    }

    goto LABEL_40;
  }

  v35 = v108;
  if (a6)
  {
    v36 = a6;
  }

  else
  {
    v36 = [objc_opt_self() mainBundle];
  }

  v37 = v107;
  v38 = a6;
  v39 = MEMORY[0x193ABEC20](v102, v103);
  if (!a5)
  {
    v40 = 0;
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_19:
    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v35);
    if (v41)
    {
      (*(v33 + 16))(v25, &v41[*(*v41 + 248)], v37);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v37, static LocaleKey.defaultValue);
      (*(v33 + 16))(v25, v47, v37);
    }

    goto LABEL_31;
  }

  v40 = MEMORY[0x193ABEC20](a4, a5);
  if (!v29)
  {
    goto LABEL_19;
  }

LABEL_17:

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v35, v25);

LABEL_31:
  v48 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v33 + 8))(v25, v37);
  v49 = _LocalizeString(v36, v39, v40, v48);

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if (v101)
  {
    v104 = v52;
    if (v29)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v35, &v112);

      LOBYTE(v110) = v112 == 0;

      v53 = v99;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v35, v99);

      v54 = v107;
    }

    else
    {
      v56 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v35);
      v53 = v99;
      if (v56)
      {
        v57 = v56[9] == 0;
      }

      else
      {
        v57 = 1;
      }

      v54 = v107;
      LOBYTE(v110) = v57;
      v70 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v35);
      if (v70)
      {
        (*(v33 + 16))(v53, &v70[*(*v70 + 248)], v54);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v71 = __swift_project_value_buffer(v54, static LocaleKey.defaultValue);
        (*(v33 + 16))(v53, v71, v54);
      }
    }

    v72 = (*(v33 + 56))(v53, 0, 1, v54);
    MEMORY[0x1EEE9AC00](v72);
    v74 = v105;
    v73 = v106;
    *(&v98 - 6) = a11;
    *(&v98 - 5) = v73;
    *(&v98 - 4) = v35;
    *(&v98 - 3) = v29;
    v97 = &v110;
    v75 = v100;
    v76 = v35;
    v77 = v53;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(partial apply for closure #1 in LocalizedStringKey.resolve<A>(into:in:options:table:bundle:), (&v98 - 8), v100);
    v78 = String.init(format:locale:arguments:)();
    v80 = v79;

    _sypSgWOhTm_3(v77, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
    v112 = v76;
    v113 = v29;
    v111[0] = v109;
    specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(v78, v80, v74, &v112, v111, v110, v75, a11, v106);
  }

  else
  {
    v112 = v50;
    v113 = v52;
    v111[0] = v35;
    v111[1] = v29;
    v110 = v109;
    lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v112, v111, &v110, a11, MEMORY[0x1E69E6158], v106, v55);
  }
}

void LocalizedTextStorage.resolve<A>(into:in:with:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v11 = *a2;
  v10 = v6;
  LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(a1, &v11, &v10, *(v5 + 48), *(v5 + 56), *(v5 + 64), v7, v8, v9, *(v5 + 40), a4, a5);
}

void type metadata accessor for NSInlinePresentationIntent?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t _LocalizeAttributedString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = _getBestLocalization(v9, a4);
  if (v10)
  {
    [v9 localizedAttributedStringForKey:v8 value:0 table:v7 localization:v10];
  }

  else
  {
    [v9 localizedAttributedStringForKey:v8 value:0 table:v7];
  }
  v11 = ;

  return v11;
}

id _getBestLocalization(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF58] currentLocale];
  if ([v4 isEqual:v5])
  {

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v6 = [v4 languageIdentifier];

  if (!v6)
  {
    goto LABEL_9;
  }

  os_unfair_lock_lock(&_getBestLocalization_lock);
  v7 = _getBestLocalization_cache;
  if (!_getBestLocalization_cache)
  {
    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = _getBestLocalization_cache;
    _getBestLocalization_cache = v8;

    v7 = _getBestLocalization_cache;
  }

  v10 = [v7 objectForKey:v3];
  v11 = [v4 localeIdentifier];
  v12 = [v10 objectForKey:v11];

  os_unfair_lock_unlock(&_getBestLocalization_lock);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v15 = [v3 localizations];
    v16 = MEMORY[0x1E696AAE8];
    v17 = [v4 languageIdentifier];
    v21[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v19 = [v16 preferredLocalizationsFromArray:v15 forPreferences:v18];

    v13 = [v19 firstObject];
    os_unfair_lock_lock(&_getBestLocalization_lock);
    if (!v10)
    {
      v10 = objc_opt_new();
      [_getBestLocalization_cache setObject:v10 forKey:v3];
    }

    v20 = [v4 localeIdentifier];
    [v10 setObject:v13 forKeyedSubscript:v20];

    os_unfair_lock_unlock(&_getBestLocalization_lock);
  }

LABEL_10:

  return v13;
}

uint64_t ResolvedTextContainer.append(_:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *a3;
  v16[0] = *a2;
  v16[1] = v8;
  v15 = v10;
  if (v8)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v9, &v14);

    v11 = v14;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v9);
    if (v12)
    {
      v11 = v12[9];
    }

    else
    {
      v11 = 0;
    }
  }

  return (*(a5 + 72))(a1, v16, &v15, v11 == 0, a4, a5);
}

uint64_t static CoreViewRepresentableFeatureBuffer._VTable.update<A>(elt:forHost:environment:isInitialUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 152);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v6 + 160) + 40))(a2, a3, a4, a5, a6, v12);
}

uint64_t CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = **v5;
  v9 = v6;
  return (*(v7 + 144))(&v9, a1, a2, a3, a4, a5);
}

uint64_t ViewRendererHost.performExternalUpdate(_:)(void (*a1)(void), uint64_t a2, uint64_t ObjectType, uint64_t a4)
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        break;
      }
    }

    v6 = ViewRendererHost.enclosingHosts.getter(ObjectType, a4);
    a4 = v6;
    v7 = *(v6 + 16);
    if (!v7)
    {
LABEL_10:
      a1();
      $defer #1 <A>() in ViewRendererHost.performExternalUpdate(_:)(a4);
    }

    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v10 = *(v9 + 8);
      v11 = *(v10 + 104);
      swift_unknownObjectRetain();
      v12 = v11(v16, ObjectType, v10);
      if (__OFADD__(*v13, 1))
      {
        break;
      }

      ++*v13;
      v12(v16, 0);
      swift_unknownObjectRelease();
      v8 += 2;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ViewRendererHost.enclosingHosts.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(*(a2 + 8) + 8))(a1);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (!Strong)
  {
LABEL_10:
    type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDA6EB0;
    *(v9 + 32) = v3;
    *(v9 + 40) = a2;
    swift_unknownObjectRetain();
    return v9;
  }

  v6 = swift_conformsToProtocol2();
  if (!v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = ViewRendererHost.enclosingHosts.getter(ObjectType, v7);
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v16 = *(v9 + 16);
    v15 = v11 + 1;
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v15, 1, v9);

    v12 = v15;
    v11 = v16;
  }

  else
  {

    v12 = v11 + 1;
  }

  *(v9 + 16) = v12;
  v13 = v9 + 16 * v11;
  *(v13 + 32) = v3;
  *(v13 + 40) = a2;
  return v9;
}

void type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ViewRendererHost>)
  {
    type metadata accessor for CustomAttributeWriter(255, &lazy cache variable for type metadata for ViewRendererHost, &protocol descriptor for ViewRendererHost, 0);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewRendererHost>);
    }
  }
}

uint64_t $defer #1 <A>() in ViewRendererHost.performExternalUpdate(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = (result + 40); ; i += 2)
    {
      v3 = *i;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *(v5 + 88);
      swift_unknownObjectRetain();
      if (v6(ObjectType, v5) < 1)
      {
        break;
      }

      v7 = (*(v5 + 104))(v9, ObjectType, v5);
      if (__OFSUB__(*v8, 1))
      {
        __break(1u);
        break;
      }

      --*v8;
      v7(v9, 0);
      result = swift_unknownObjectRelease();
      if (!--v1)
      {
        return result;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for Text.ResolvedString(uint64_t a1)
{
  result = type metadata accessor for Text.Style(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *EnvironmentValues.accessibilityEnabled.getter(__n128 a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v2);

    return (v3 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v2);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020AccessibilityEnabledV0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem()
{
  if (!lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewTransform.ScrollGeometryItem, &type metadata for ViewTransform.ScrollGeometryItem, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem);
  }
}

{
  if (!lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem)
  {
    swift_getWitnessTable(protocol conformance descriptor for ViewTransform.ScrollGeometryItem, &type metadata for ViewTransform.ScrollGeometryItem, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem);
  }
}

Swift::Int one-time initialization function for hostingViewCoordinateSpace(uint64_t a1)
{
  result = AGMakeUniqueID();
  hostingViewCoordinateSpace.value.value = result;
  return result;
}

void lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement()
{
  if (!lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceElement, &type metadata for CoordinateSpaceElement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement);
  }
}

{
  if (!lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceElement, &type metadata for CoordinateSpaceElement, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoordinateSpaceElement and conformance CoordinateSpaceElement);
  }
}

void BufferedElement.forEach(inverted:stop:_:)(char a1, _BYTE *a2, uint64_t (*a3)(float64x2_t *, _BYTE *), uint64_t a4)
{
  if ((a1 & 1) != 0 || (v9 = v4[2].f64[1], v4[2].f64[0] == 0.0) && v9 == 0.0 || (v11.f64[0] = v4[2].f64[0], v11.f64[1] = v9, v12 = 0, a3(&v11, a2), (*a2 & 1) == 0))
  {
    swift_beginAccess();
    v11 = v4[3];
    ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(a1 & 1, a2, a3, a4);
    if (*a2 & 1) == 0 && (a1)
    {
      v10 = v4[2];
      if (v10.f64[0] != 0.0 || v10.f64[1] != 0.0)
      {
        v11 = vnegq_f64(v10);
        v12 = 0;
        a3(&v11, a2);
      }
    }
  }
}

void ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = *v4;
  v11 = *(v4 + 12);
  if (a1)
  {
    if ((v11 & 0x80000000) == 0)
    {
      v5 = 0;
      v6 = v11;
      if (v11 > 128)
      {
        goto LABEL_29;
      }

      v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
      v14 = &v27[-v13];
      if (!v11)
      {
LABEL_14:
        v5 = (v14 - 8);
        while (1)
        {
          if (!v6)
          {
            return;
          }

          v10 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          v4 = *v5[v6];
          v28[0] = v5[v6];
          (*(v4 + 112))(v28, 1, a2, a3, a4, v12);
          --v6;
          if (*a2 == 1)
          {
            return;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

      if (v10)
      {
        while (1)
        {
          v15 = 0;
          v16 = 0;
          v17 = v11 - 1;
          while (1)
          {
            v18 = v10 + v16;
            if (v17 == v15)
            {
              v16 = 0;
            }

            else
            {
              v16 += *(v18 + 8);
            }

            if (__OFADD__(v15, 1))
            {
              break;
            }

            *&v14[8 * v15] = v18;
            v19 = v15 + 1;
            if (v17 == v15++)
            {
              v15 = v19;
              if (!v16)
              {
                goto LABEL_14;
              }
            }
          }

LABEL_28:
          __break(1u);
LABEL_29:
          v4 = *(v4 + 8);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (!isStackAllocationSafe)
          {
            break;
          }

          v12.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v14 = &v27[-v25];
          if (!v10)
          {
            goto LABEL_31;
          }
        }

LABEL_33:
        v26 = swift_slowAlloc();
        closure #1 in ViewTransform.UnsafeBuffer.forEach(inverted:stop:_:)(v26, v6, v10, v4 | (v11 << 32), a2, a3, a4);
        if (v5)
        {

          MEMORY[0x193AC4820](v26, -1, -1);
          __break(1u);
        }

        JUMPOUT(0x193AC4820);
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v21 = 0;
  do
  {
    if (!(v11 | v21))
    {
      break;
    }

    if (!v10)
    {
      __break(1u);
    }

    v23 = v10 + v21;
    LODWORD(v11) = v11 - 1;
    if (v11)
    {
      v21 += *(v23 + 8);
    }

    else
    {
      v21 = 0;
    }

    v22 = *v23;
    v28[0] = v23;
    (*(v22 + 112))(v28, 0, a2, a3, a4);
  }

  while ((*a2 & 1) == 0);
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.forEach(elt:inverted:stop:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 136);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *v14;
  v15 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  (*(v11 + 16))(v13, v15, v10);
  (*(*(v5 + 144) + 16))(a2, a3, a4, a5, v10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance CoordinateSpaceElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5[0] = *v3;
  v6 = 96;
  return (a3)(v5, a2);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t protocol witness for ViewTransformElement.forEach(inverted:stop:_:) in conformance ViewTransform.ScrollGeometryItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(v3 + 112);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v6;
  v7 = *(v3 + 80);
  v9[4] = *(v3 + 64);
  v9[5] = v7;
  v9[6] = *(v3 + 96);
  v10 = v4 & 1 | 0xA0;
  return (a3)(v9, a2);
}

void *ViewTransform.UnsafeBuffer.appendScrollGeometry(_:isClipped:)(_OWORD *a1, char a2)
{
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<ViewTransform.ScrollGeometryItem>, lazy protocol witness table accessor for type ViewTransform.ScrollGeometryItem and conformance ViewTransform.ScrollGeometryItem, &type metadata for ViewTransform.ScrollGeometryItem, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x90);
  *result = v6;
  result[1] = 144;
  v8 = a1[1];
  *(result + 1) = *a1;
  *(result + 2) = v8;
  v9 = a1[6];
  *(result + 6) = a1[5];
  *(result + 7) = v9;
  v10 = a1[4];
  *(result + 4) = a1[3];
  *(result + 5) = v10;
  *(result + 3) = a1[2];
  *(result + 128) = a2;
  if (!*v2)
  {
    goto LABEL_9;
  }

  v11 = result - *v2;
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    v12 = *(v2 + 12);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (!v13)
    {
      *(v2 + 12) = v14;
      return result;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void *ViewTransform.UnsafeBuffer.appendCoordinateSpace(id:transform:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v24[0] = *a1;
  v25 = 1;
  v5 = *(a2 + 8);
  *&v20 = *a2;
  *(&v20 + 1) = v5;
  v6 = *(a2 + 32);
  *v21 = *(a2 + 16);
  *&v21[16] = v6;

  ViewTransform.coordinateSpaceTag(_:)(v24, &v22);

  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined init with copy of CoordinateSpace(v24, &v20);
  type metadata accessor for CoordinateSpaceNode();
  v7 = swift_allocObject();
  v8 = v7;
  v9 = *v21;
  *(v7 + 24) = v20;
  *(v7 + 40) = v9;
  *(v7 + 49) = *&v21[9];
  *(v7 + 16) = v5;
  if (v5)
  {
    v10 = *(v5 + 72);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_6:
    v13 = v22;
    outlined destroy of CoordinateSpace(v24);
    goto LABEL_9;
  }

  v12 = 1;
LABEL_8:
  *(v7 + 72) = v12;
  *(a2 + 8) = v7;
  outlined destroy of CoordinateSpace(v24);
  v13 = *(v8 + 72);
LABEL_9:
  type metadata accessor for Element<ProjectionTransformElement>(0, &lazy cache variable for type metadata for ViewTransform.UnsafeBuffer._VTable<CoordinateSpaceElement>, lazy protocol witness table accessor for type CoordinateSpaceElement and conformance CoordinateSpaceElement, &type metadata for CoordinateSpaceElement, type metadata accessor for ViewTransform.UnsafeBuffer._VTable);
  v15 = v14;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
  *result = v15;
  result[1] = 32;
  result[2] = v13;
  if (*v3)
  {
    v17 = result - *v3;
    if (v17 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v18 = *(v3 + 12);
      v11 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (!v11)
      {
        *(v3 + 12) = v19;
        return result;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *ViewTransform.append(movingContentsOf:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = v1[4];
  v5 = v1[5];
  v6 = *a1;
  type metadata accessor for BufferedElement();
  result = swift_allocObject();
  result[4] = v4;
  result[5] = v5;
  result[6] = v6;
  result[7] = a1[1];
  result[2] = v3;
  if (v3)
  {
    v8 = *(v3 + 24);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v10 = 1;
LABEL_6:
  result[3] = v10;
  *v1 = result;
  v1[4] = 0;
  v1[5] = 0;
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t static ViewTransform.UnsafeBuffer._VTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

uint64_t specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, uint64_t a2)
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = result | (result << 32);

    specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v2, v7, a1, v6, a2);
  }

  return result;
}

void specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
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

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5(a3, v6, a5, v18);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5(v18, v14);
    AGGraphSetOutputValue();
  }
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA014GeometryReaderD033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt3B5@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 1;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 1;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 1;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  v6 = MEMORY[0x1E69E7CC0];
  *(a5 + 304) = 0;
  *(a5 + 232) = 0;
  *(a5 + 240) = 0;
  *(a5 + 224) = v6;
  *(a5 + 248) = 0;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 272) = 0;
  *(a5 + 280) = 0;
  *(a5 + 288) = 0;
  *(a5 + 296) = 0;
  *a5 = a3;
  *(a5 + 8) = a4;
  v9 = a2;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v9);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v7 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a5 + 16) = v7;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>(0);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 328) = v7;
    *(v4 + 332) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x138uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for ViewLayoutEngine);
    v4 = type metadata accessor for LayoutEngineBox(a1, v2, &protocol witness table for ViewLayoutEngine<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<GeometryReaderLayout>>);
    }
  }
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance GeometryReaderLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

void specialized GeometryReaderLayout.placeSubviews(in:proposal:subviews:cache:)(int *a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 1);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

  v11 = 0;
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 17);
  for (i = (v5 + 32); ; i += 3)
  {
    v19 = *(v5 + 16);
    if (v13)
    {
      break;
    }

    if (v11 >= v19)
    {
      goto LABEL_11;
    }

    v21 = (v5 + 32 + 8 * v11);
    v20 = v11;
LABEL_3:
    ++v11;
    v18 = v21;
    v16 = *v21;
    v17 = v18[1];
    v32 = v12;
    v33 = v16;
    v34 = v17;
    v35 = v20;
    v36 = v14;
    v26 = v12;
    v27 = v16;
    v28 = v17;
    v22 = a4;
    LOBYTE(v23) = 0;
    *&v24 = a5;
    BYTE8(v24) = 0;
    LayoutProxy.dimensions(in:)(&v22, v29);
    v22 = *v29;
    v23 = v29[1];
    v24 = v30;
    v25 = v31;
    LayoutSubview.place(at:anchor:dimensions:)(&v22, a2, a3, 0.0, 0.0);

    if (v6 == v11)
    {
      return;
    }
  }

  if (v11 < v19)
  {
    v20 = i[2];
    v21 = i;
    goto LABEL_3;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = a1;
  v98 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v90 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v90 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v90 - v24;
  v27 = type metadata accessor for SpringState(0, v25, v26, v26);
  v28 = *(v27 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v90 - v29;
  if (a3 == MEMORY[0x1E69E63B0])
  {
    result = specialized FluidSpringAnimation.animate<A>(value:time:context:)(a2, *v11, a6, *v6, v6[1], v6[2]);
    *a5 = result;
    *(a5 + 8) = v52 & 1;
    return result;
  }

  v99 = a2;
  v96 = a5;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v32 == a3)
  {
    result = specialized FluidSpringAnimation.animate<A>(value:time:context:)(v99, &v114, *v11, v11[1], v11[2], v11[3], a6, *v6, v6[1], v6[2]);
    v53 = v115;
    v54 = v96;
    *v96 = v114;
    v54[1] = v53;
    *(v54 + 32) = v116;
    return result;
  }

  v34 = *v6;
  v33 = v6[1];
  v35 = v6[2];
  v94 = type metadata accessor for AnimationContext(0, a3, a4, v31);
  AnimationContext.springState.getter(v94, v36, v37, v38);
  v41 = v34;
  if (v35 > 0.0)
  {
    v42 = *&v30[v27[14]];
    v41 = v34;
    if (v42 != 0.0)
    {
      v43 = v27[13];
      v44 = (a6 - *&v30[v43]) / v35;
      if (v44 <= 1.0)
      {
        v45 = (a6 - *&v30[v43]) / v35;
      }

      else
      {
        v45 = 1.0;
      }

      v46 = v44 < 0.0;
      v47 = 0.0;
      if (!v46)
      {
        v47 = v45;
      }

      v41 = v34 + v42 * (1.0 - v47 * v47 * (3.0 - (v47 + v47)));
    }
  }

  v48 = v98;
  v49 = v97;
  if (v41 <= 0.0)
  {
    v50 = INFINITY;
  }

  else
  {
    v50 = 6.28318531 / v41 * (6.28318531 / v41);
  }

  if (v50 <= 45000.0)
  {
    v55 = v50;
  }

  else
  {
    v55 = 45000.0;
  }

  if (v41 <= a6 - *&v30[v27[12]])
  {
    *(v99 + 17) = 1;
  }

  v93 = v14;
  v56 = v27[11];
  v57 = *&v30[v56];
  if (a6 - v57 > 1.0)
  {
    v57 = a6 + -0.0166666667;
    *&v30[v56] = a6 + -0.0166666667;
  }

  v95 = v28;
  v106 = v11;
  if (v57 < a6)
  {
    v90 = v56;
    v58 = a4[2];
    v104 = a4 + 2;
    v107 = v58;
    v109 = v27[10];
    v92 = v27;
    v108 = v27[9];
    v91 = v33;
    v59 = v33 * (sqrt(v55) * -2.0);
    v105 = a4;
    v102 = *(v48 + 16);
    v101 = (v48 + 24);
    v103 = v48 + 16;
    v100 = (v48 + 8);
    v60 = v113;
    v61 = a4;
    do
    {
      v62 = &v30[v109];
      v63 = v30;
      v64 = v102;
      (v102)(v60, v62, a3);
      v65 = v107;
      v107(a3, v61, 0.00166666667);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v64();
      v65(a3, v61, 0.00333333333);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v66 = v111;
      (v64)(v111, v113, a3);
      v65(a3, v61, v59);
      (v64)(v112, v106, a3);
      dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
      v65(a3, v61, v55);
      v30 = v63;
      v67 = *v101;
      v68 = v109;
      (*v101)(&v63[v109], v66, a3);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v67(&v30[v108], &v30[v68], a3);
      v69 = v112;
      v107(a3, v61, 0.00166666667);
      v60 = v113;
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v70 = *v100;
      (*v100)(v69, a3);
      v70(v111, a3);
      v70(v110, a3);
      v70(v60, a3);
      v57 = v57 + 0.00333333333;
    }

    while (v57 < a6);
    *&v63[v90] = v57;
    v48 = v98;
    v49 = v97;
    v27 = v92;
    a4 = v105;
    v11 = v106;
    v33 = v91;
  }

  v71 = v27;
  v72 = v48;
  v73 = v94;
  v74 = v99;
  specialized AnimationContext.springState.setter(v30, v94, v39, v40);
  v75 = *(v72 + 16);
  v112 = (v72 + 16);
  v113 = v75;
  (v75)(v49, v11, a3);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v76 = v74[1];
  v77 = *(v74 + 16);
  v78 = *(v74 + 17);
  *&v114 = *v74;
  *(&v114 + 1) = v76;
  LOBYTE(v115) = v77;
  BYTE1(v115) = v78;
  MEMORY[0x1EEE9AC00](v114);
  *(&v90 - 8) = a3;
  *(&v90 - 7) = a4;
  *(&v90 - 6) = v49;
  *(&v90 - 5) = v30;
  *(&v90 - 4) = v34;
  *(&v90 - 3) = v33;
  *(&v90 - 2) = v35;

  LOBYTE(v74) = AnimationContext.shouldFinishEarly(data:)(partial apply for implicit closure #2 in FluidSpringAnimation.animate<A>(value:time:context:), (&v90 - 10), v73, v79);

  if (v74)
  {
    (*(v72 + 56))(v96, 1, 1, a3);
    (*(v72 + 8))(v49, a3);
    return (*(v95 + 8))(v30, v71);
  }

  v80 = a4[3];
  v81 = v80(a3, a4);
  v82 = v80(a3, a4);
  if (v81 > v82)
  {
    v82 = v81;
  }

  if (v82 <= 0.0036)
  {
    v111 = v30;
    v84 = v93;
    (v113)(v93, v106, a3);
    (a4[2])(a3, a4, 0.01);
    v85 = v80(a3, a4);
    if (v85 <= 0.0)
    {
      v88 = *(v72 + 8);
      v88(v84, a3);
    }

    else
    {
      v86 = v85;
      v87 = v80(a3, a4);
      v88 = *(v72 + 8);
      v88(v84, a3);
      if (v86 < v87)
      {
        v89 = v96;
        v30 = v111;
        (v113)(v96, v111, a3);
        (*(v72 + 56))(v89, 0, 1, a3);
        v88(v49, a3);
        return (*(v95 + 8))(v30, v71);
      }
    }

    (*(v72 + 56))(v96, 1, 1, a3);
    v88(v49, a3);
    return (*(v95 + 8))(v111, v71);
  }

  else
  {
    v83 = v96;
    (v113)(v96, v30, a3);
    (*(v72 + 56))(v83, 0, 1, a3);
    (*(v72 + 8))(v49, a3);
    return (*(v95 + 8))(v30, v71);
  }
}

uint64_t AnimationContext.springState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SpringState(0, v4, v5, a4);
  v8 = type metadata accessor for AnimationState(0, v4, v5, v7);
  swift_getWitnessTable(protocol conformance descriptor for SpringState<A>, v6);
  return AnimationState.subscript.getter(v6, v8, v6, v9);
}

uint64_t AnimationState.subscript.getter(void x0_0, void x1_0, uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  if (!*(v6 + 16))
  {
    return (*(a2 + 16))(a1, a2);
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {
    return (*(a2 + 16))(a1, a2);
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v7, v10);
  outlined init with take of Any(v10, v11);
  outlined init with take of Any(v11, v10);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t specialized AnimationContext.springState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for SpringState(0, v5, v6, a4);
  v9 = type metadata accessor for AnimationState(0, v5, v6, v8);
  swift_getWitnessTable(protocol conformance descriptor for SpringState<A>, v7);

  return specialized AnimationState.subscript.setter(a1, v7, v9, v7, v10);
}

uint64_t specialized AnimationState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  return specialized Dictionary.subscript.setter(v10, a4);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    v20 = (*(v19 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    result = a3(v23, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v21;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CA0];
    outlined destroy of NamedImage.VectorInfo?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v16 = a4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v22 = *v7;
      if (!v19)
      {
        a6();
        v20 = v22;
      }

      outlined init with take of Any((*(v20 + 56) + 32 * v18), v23);
      a5(v18, v20);
      *v7 = v20;
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    return outlined destroy of NamedImage.VectorInfo?(v23, &lazy cache variable for type metadata for Any?, v15 + 8);
  }

  return result;
}

void *Animation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (a4 == MEMORY[0x1E69E63B0])
  {
    *&v23[0] = *a1;
    result = (*(*a3 + 120))(v24, v23, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a5, a7);
    v16 = BYTE8(v24[0]);
    *a6 = *&v24[0];
    *(a6 + 8) = v16;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v14 == a4)
    {
      v17 = v14;
      v18 = *(a1 + 16);
      v23[0] = *a1;
      v23[1] = v18;
      v19 = *(*a3 + 120);
      _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v19(v24, v23, a2, v17, v20, a7);
      v21 = v25;
      v22 = v24[1];
      *a6 = v24[0];
      *(a6 + 16) = v22;
      *(a6 + 32) = v21;
    }

    else
    {
      return (*(*a3 + 120))(a1, a2, a4, a5, a7);
    }
  }

  return result;
}

void AnimationBox.animate<A>(value:time:context:)(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *v5;
  v12 = *(*v5 + 160);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - v15;
  if (v17 == MEMORY[0x1E69E63B0])
  {
    *a4 = specialized AnimationBox.animate<A>(value:time:context:)(a2, *a1, a5);
    *(a4 + 8) = v20 & 1;
  }

  else
  {
    v18 = v14;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v19 == a3)
    {
      specialized AnimationBox.animate<A>(value:time:context:)(a2, v23, a5);
      v21 = v23[1];
      *a4 = v23[0];
      *(a4 + 16) = v21;
      *(a4 + 32) = v24;
    }

    else
    {
      (*(v13 + 16))(v16, v5 + *(v11 + 176), v12);
      (*(*(v11 + 168) + 16))(a1, a2, a3, v18, v12, a5);
      (*(v13 + 8))(v16, v12);
    }
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
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

uint64_t type metadata completion function for SpringState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation()
{
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for FluidSpringAnimation, &type metadata for FluidSpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for FluidSpringAnimation, &type metadata for FluidSpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for FluidSpringAnimation, &type metadata for FluidSpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for FluidSpringAnimation, &type metadata for FluidSpringAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type FluidSpringAnimation and conformance FluidSpringAnimation);
  }
}

uint64_t Transaction.animation.setter(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v1, a1);
}

uint64_t SpringState.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v7 = type metadata accessor for SpringState(0, a1, a2, v6);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  result = dispatch thunk of static AdditiveArithmetic.zero.getter();
  *(a3 + v7[11]) = 0;
  *(a3 + v7[12]) = 0;
  *(a3 + v7[13]) = 0;
  *(a3 + v7[14]) = 0;
  return result;
}

double *static Animation.spring(response:dampingFraction:blendDuration:)(double a1, double a2, double a3)
{
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, type metadata accessor for InternalAnimationBox);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, &type metadata for FluidSpringAnimation, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void instantiation function for generic protocol witness table for FluidSpringAnimation(uint64_t a1)
{
  lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
  *(a1 + 8) = v2;
}

void type metadata accessor for ImageProviderBox<Image.ResizableProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>)
  {
    lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider();
    v4 = type metadata accessor for ImageProviderBox(a1, &type metadata for Image.ResizableProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ImageProviderBox<Image.ResizableProvider>);
    }
  }
}

uint64_t Image.resizable(capInsets:resizingMode:)(char *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *a1;
  type metadata accessor for ImageProviderBox<Image.ResizableProvider>(0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = v11;

  return v12;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

void lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider()
{
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.ResizableProvider, &type metadata for Image.ResizableProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.ResizableProvider, &type metadata for Image.ResizableProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }
}

void lazy protocol witness table accessor for type Color and conformance Color()
{
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color, &type metadata for Color, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color and conformance Color);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color, &type metadata for Color, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color and conformance Color);
  }
}

uint64_t Color.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13(0, v10);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  swift_getWitnessTable(a6, v14, v15);
  type metadata accessor for ColorBox(0, v14, v18, v19);
  (*(v9 + 16))(v12, a1, a2);
  (*(v9 + 32))(v17, v12, a2);
  v20 = ColorBox.__allocating_init(_:)(v17);
  (*(v9 + 8))(a1, a2);
  return v20;
}

uint64_t Color.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return Color.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for CustomColorProvider, protocol conformance descriptor for CustomColorProvider<A>);
}

{
  return Color.init<A>(_:)(a1, a2, a3, a4, type metadata accessor for CustomHDRColorProvider, protocol conformance descriptor for CustomHDRColorProvider<A>);
}

uint64_t type metadata completion function for ProtobufCodable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = MEMORY[0x1E69E7CA0];
    v5 = a1 + 32;
    v6 = MEMORY[0x1E69E5FE0];
    while (1)
    {
      outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v5, &v13, &lazy cache variable for type metadata for (ObjectIdentifier, Any), v6, v4 + 8);
      v7 = v13;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      result = outlined init with take of Any(&v14, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v5 += 40;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t wait_for_lock(pthread_mutex_t *a1, uint64_t a2)
{
  ++HIDWORD(a1[2].__sig);
  if (*&a1[1].__opaque[40] == a2)
  {
    a1[2].__opaque[17] = 1;
    run_moved_callback(a1);
  }

  result = pthread_cond_wait(&a1[1], a1);
  if (*&a1[1].__opaque[40] == a2)
  {
    result = run_moved_callback(a1);
    a1[2].__opaque[17] = 0;
  }

  --HIDWORD(a1[2].__sig);
  return result;
}

uint64_t run_moved_callback(uint64_t result)
{
  v1 = (result + 136);
  if (*(result + 136))
  {
    v2 = result;
    v3 = atomic_load((result + 120));
    v4 = *(result + 128);
    *(result + 120) = *(result + 112);
    *(result + 128) = v4 + 1;
    (*(result + 136))(*(result + 144));
    *(v2 + 128) = v4;
    *(v2 + 120) = v3;
    *v1 = 0;
    v1[1] = 0;

    return pthread_cond_broadcast((v2 + 64));
  }

  return result;
}

void one-time initialization function for default()
{
  static ContentTransition.default = 0x8000000000;
  byte_1ED53699C = 3;
  dword_1ED536998 = 0x2000000;
  word_1ED53699D = 0;
}

uint64_t _ForegroundStyleModifier.ForegroundStyleEnvironment.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = type metadata accessor for _ForegroundStyleModifier(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  MaterialView.ChildEnvironment.environment.getter(a5);
  _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter(type metadata accessor for _ForegroundStyleModifier, v10);
  v11 = *a5;
  v12 = a5[1];
  v17[0] = *a5;
  v17[1] = v12;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v16);

  v13 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v16, v17, 0, a2, a3);

  (*(*(a2 - 8) + 8))(v10, a2);
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a5, v13);

  if (v12)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v11, *a5);
  }
}

uint64_t _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment.modifier.getter@<X0>(uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = a2(0);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

double LeafLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  (*(v19 + 16))(v6, v3, a2, v11);
  v20 = *(v9 + 32);
  v62 = v8;
  v20(v13, v6, v8);
  v21 = v3 + *(a2 + 36);
  v22 = v15;
  v23 = *v21;
  v24 = *(v21 + 8);
  v26 = *(v21 + 16);
  v25 = *(v21 + 24);
  v28 = *(v21 + 32);
  v27 = *(v21 + 40);
  v29 = *(v21 + 48);
  v30 = *(v21 + 72);
  v31 = *(v21 + 56);
  v33 = *(v21 + 88);
  v32 = *(v21 + 96);
  v34 = *(v21 + 144);
  if ((v29 & 1) == 0)
  {
    if (v16)
    {
      if ((v24 & 1) == 0)
      {
        if (*(v21 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v21 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v24 & 1) != 0 || v15 != v23)
    {
      goto LABEL_2;
    }

    if (v18)
    {
      if ((v25 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v25 & 1) != 0 || v17 != v26)
    {
      goto LABEL_2;
    }

    v34 = *(v21 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v21 + 104))
  {
    goto LABEL_22;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  if ((*(v21 + 64) & 1) != 0 || *&v31 != v15)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v18)
  {
    if (*(v21 + 80))
    {
LABEL_21:
      v34 = *(v21 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v21 + 80) & 1) == 0 && *&v30 == v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v21 + 160))
  {
LABEL_23:
    v51 = *(v21 + 104);
    v52 = v30;
    v53 = v31;
    v54 = v32;
    v56 = v29;
    v57 = v25;
    v58 = v26;
    v59 = v24;
    v60 = v27;
    v55 = v23;
    v61 = v9;
    v35 = v28;
    v36 = v17;
    v37 = v22;
    swift_beginAccess();
    v38 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v38[4] = v37;
      *(v38 + 5) = v16;
      v38[6] = v36;
      *(v38 + 28) = v18;
    }

    v39 = *(a2 + 24);
    v63 = v18;
    v64 = v37;
    v65 = v16;
    v66 = v36;
    v67 = v18;
    v40 = v62;
    v34 = (*(v39 + 16))(&v64, v62);
    v41 = v52;
    *(v21 + 112) = v53;
    *(v21 + 128) = v41;
    v42 = v54;
    *(v21 + 144) = v33;
    *(v21 + 152) = v42;
    *(v21 + 160) = v51;
    v44 = v58;
    v43 = v59;
    *(v21 + 56) = v55;
    *(v21 + 64) = v43;
    v45 = v57;
    *(v21 + 72) = v44;
    *(v21 + 80) = v45;
    v46 = v60;
    *(v21 + 88) = v35;
    *(v21 + 96) = v46;
    *(v21 + 104) = v56;
    *v21 = v37;
    *(v21 + 8) = v16;
    *(v21 + 16) = v36;
    *(v21 + 24) = v18;
    *(v21 + 32) = v34;
    *(v21 + 40) = v47;
    *(v21 + 48) = 0;
    v9 = v61;
    goto LABEL_42;
  }

  if (v16)
  {
    if ((*(v21 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v21 + 120) & 1) != 0 || *(v21 + 112) != v15)
  {
    goto LABEL_23;
  }

  if (v18)
  {
    if ((*(v21 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v21 + 136) & 1) != 0 || *(v21 + 128) != v17)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v48 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v48[4] = v15;
    *(v48 + 5) = v16;
    v48[6] = v17;
    *(v48 + 28) = v18 | 0x100;
  }

  v40 = v62;
LABEL_42:
  (*(v9 + 8))(v13, v40);
  return v34;
}

uint64_t static _ForegroundStyleModifier.graphInputsSemantics.getter()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  return static Semantics.v4;
}

uint64_t static _ForegroundStyleModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(a1, a2, a3, a4, type metadata accessor for _ForegroundStyleModifier.ForegroundStyleEnvironment, protocol conformance descriptor for _ForegroundStyleModifier<A>.ForegroundStyleEnvironment, closure #1 in Attribute.init<A>(_:)partial apply);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier<A>.ForegroundStyleEnvironment(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ForegroundStyleModifier<A>.ForegroundStyleEnvironment, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AspectRatioLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _AspectRatioLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_AspectRatioLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_AspectRatioLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout()
{
  if (!lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AspectRatioLayout, &type metadata for _AspectRatioLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AspectRatioLayout, &type metadata for _AspectRatioLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AspectRatioLayout and conformance _AspectRatioLayout);
  }
}

uint64_t getEnumTagSinglePayload for Image.Resolved(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 187))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
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

void instantiation function for generic protocol witness table for Circle(uint64_t a1)
{
  lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Circle and conformance Circle();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type Circle and conformance Circle()
{
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle, &type metadata for Circle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }
}

{
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle, &type metadata for Circle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }
}

{
  if (!lazy protocol witness table cache variable for type Circle and conformance Circle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Circle, &type metadata for Circle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Circle and conformance Circle);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Image.ImageViewChild<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Image.ImageViewChild<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledResponderFilter<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderFilter);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledResponderFilter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>);
  }
}

void static Image._makeView(view:inputs:)(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v7;
  v23[0] = *(a2 + 56);
  *(v23 + 12) = *(a2 + 68);
  v20 = *(a2 + 8);
  if ((_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA31ShouldAttachScrollEdgeEffectTagV_Tt2g5(v6) & 1) != 0 && (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v6) & 1) == 0)
  {
    type metadata accessor for PlatformScrollEdgeEffectTagDefinition();
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    static PlatformScrollEdgeEffectTagDefinition.apply(inputs:body:)(&v15, partial apply for closure #1 in static Image._makeView(view:inputs:), v9, &v13);

    if (v13)
    {
      v10 = v14;
      v11 = HIDWORD(v14);
      *a3 = v13;
      *(a3 + 8) = v10;
      *(a3 + 12) = v11;
      return;
    }

    v12 = v5;
    v15 = v6;
    v17 = v21;
    v18 = v22;
    v19[0] = v23[0];
    *(v19 + 12) = *(v23 + 12);
    v16 = v20;
    v8 = &v12;
  }

  else
  {
    LODWORD(v13) = v5;
    v15 = v6;
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    v19[0] = *(a2 + 56);
    *(v19 + 12) = *(a2 + 68);
    v16 = *(a2 + 8);
    v8 = &v13;
  }

  static Image.makeImageAttributes(view:inputs:)(v8, &v15, a3);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA5ImageV5StyleV_Tt2B5(Swift::UInt *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for Image.Style);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(v4, v6) || (type metadata accessor for Stack<ImageStyleProtocol.Type>(0), !AGCompareValues()))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<Image.Style>, &type metadata for Image.Style, &protocol witness table for Image.Style, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for Image.Style, 0, v5);
  }
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA5ImageV5StyleV_AA0jK8Protocol_pXpTt0g5()
{
  v1 = *v0;
  BloomFilter.init(hashValue:)(&type metadata for Image.Style);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(v1, v7);
  if (v2 && (v3 = *(v2 + 72)) != 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA5ImageV5StyleV_Tt2B5(v0, v4);

  return v5;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA5ImageV5StyleV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for Image.Style)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE026ImageAccessibilityProviderF033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ImageAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE026ImageAccessibilityProviderV033_850D6677B8CDB42F6FE21E92D1B9BAE5LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.ImageAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

double static Image.makeImageViewChild<A>(_:image:options:inputs:outputs:)(uint64_t a1, int a2, char *a3, __int128 *a4, double *a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v38 = a2;
  v80 = *MEMORY[0x1E69E9840];
  v40 = a5;

  v10 = *a3;
  v11 = a4[1];
  v77 = *a4;
  v78 = v11;
  v12 = a4[3];
  *v79 = a4[2];
  *&v79[16] = v12;
  *&v79[32] = a4[4];
  *&v79[48] = *(a4 + 20);
  v37 = HIDWORD(v78);
  swift_beginAccess();
  v13 = *(v78 + 16);
  v45 = v10;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v77, *&v75[0]);
  v39 = *&v79[4];
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = *&v79[40];
  v18 = *&v79[28];
  v17 = *&v79[32];
  LODWORD(v65[0]) = v15;
  _SymbolEffect.Phase.init()(v75);
  v36[5] = a7;
  v19 = a7;
  v20 = v41;
  Image.ImageViewChild.init(view:environment:transaction:position:size:transform:options:parentID:symbolAnimator:symbolEffects:)(v38, v13, v37, v17, v16, v18, &v45, v65, &v72, 0, v75);
  MEMORY[0x1EEE9AC00](v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36[2] = AssociatedTypeWitness;
  v24 = type metadata accessor for Image.ImageViewChild(0, v20, v19, v23);
  v36[3] = v24;
  swift_getWitnessTable(protocol conformance descriptor for Image.ImageViewChild<A>, v24);
  v36[4] = v25;
  v26 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v72, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v36, v24, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v75[3] = v74[1];
  v75[4] = v74[2];
  v76[0] = v74[3];
  *(v76 + 14) = *(&v74[3] + 14);
  v75[0] = v72;
  v75[1] = v73;
  v75[2] = v74[0];
  (*(*(v24 - 8) + 8))(v75, v24);
  v28 = LODWORD(v65[0]);
  v29 = v39;
  if ((v39 & 0x20) != 0)
  {
    _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v79[16]);
  }

  AGGraphSetFlags();
  v69 = v77;
  v70 = v78;
  v71 = *v79;
  v67 = *&v79[8];
  v68[0] = *&v79[24];
  *(v68 + 12) = *&v79[36];
  _GraphValue.init(_:)(v28, &v42);
  v30 = v42;
  v72 = v69;
  v73 = v70;
  LODWORD(v74[0]) = v71;
  v39 = v29 | 0x2000;
  DWORD1(v74[0]) = v29 | 0x2000;
  *(v74 + 8) = v67;
  *(&v74[1] + 8) = v68[0];
  *(&v74[2] + 4) = *(v68 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  outlined init with copy of _ViewInputs(&v77, v65);
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v59 = v74[0];
  v60 = v74[1];
  v61 = v74[2];
  v62 = v74[3];
  v57 = v72;
  v58 = v73;
  v64 = v74[3];
  v38 = v74[0];
  LODWORD(v59) = 0;
  LODWORD(v46[0]) = v30;
  v63[0] = v72;
  v63[1] = v73;
  v63[3] = v74[1];
  v63[4] = v74[2];
  v63[2] = v59;
  v53 = v59;
  v54 = v74[1];
  v55 = v74[2];
  v56 = v74[3];
  v51 = v72;
  v52 = v73;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v72, v65);
  outlined init with copy of _ViewInputs(v63, v65);
  v33(&v43, v46, &v51, AssociatedTypeWitness, AssociatedConformanceWitness);
  v65[2] = v53;
  v65[3] = v54;
  v65[4] = v55;
  v66 = v56;
  v65[0] = v51;
  v65[1] = v52;
  outlined destroy of _ViewInputs(v65);
  LODWORD(v59) = v38;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v43, &v57);
    AGSubgraphEndTreeElement();
  }

  v46[0] = v69;
  v46[1] = v70;
  v47 = v71;
  v48 = v39;
  v49 = v67;
  v50[0] = v68[0];
  *(v50 + 12) = *(v68 + 12);
  outlined destroy of _ViewInputs(v46);
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v51 = v57;
  v52 = v58;
  outlined destroy of _ViewInputs(&v51);
  v34 = v40;
  *v40 = v43;
  result = v44;
  v34[1] = v44;
  return result;
}

void _SymbolEffect.Phase.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = 1;
  *(a1 + 44) = 1065353216;
  *(a1 + 52) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 257;
}

uint64_t initializeWithCopy for Image.ImageViewChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 108) = *(a2 + 108);

  v4 = v3;

  return a1;
}

uint64_t destroy for Image.ImageViewChild(uint64_t a1)
{
}

uint64_t static Image.Resolved._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v167 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v163 = *(a2 + 32);
  v164 = v5;
  v165 = *(a2 + 64);
  v6 = *(a2 + 16);
  v161 = *a2;
  v162 = v6;
  v7 = *a1;
  v166 = *(a2 + 80);
  v154 = v161;
  v155 = v6;
  v156 = *(a2 + 32);
  v153[0] = *(a2 + 40);
  *(v153 + 12) = *(a2 + 52);
  v8 = DWORD1(v163);
  v9 = DWORD1(v165);
  v10 = a2 + 72;
  v103 = *(a2 + 72);
  v104 = *(a2 + 80);
  if ((BYTE4(v163) & 2) != 0)
  {
    outlined init with copy of _ViewInputs(&v161, &v128);
    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v12 = static Semantics_v2.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      v11 = dyld_program_sdk_at_least();
    }

    else
    {
      v11 = static Semantics.forced >= v12;
    }

    v13 = v8 & 0xFFFFFFFD;
    if (!v11)
    {
      v13 = v8;
    }

    v94 = v13;
  }

  else
  {
    outlined init with copy of _ViewInputs(&v161, &v128);
    v11 = 0;
    v94 = v8;
  }

  v14 = v164;
  v95 = v7;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v164) & 1) != 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v14))
  {
    v88 = v11;
    v92 = v9;
    v90 = DWORD2(v161);
    v91 = v165;
    v15 = DWORD2(v165);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v16 = static CachedEnvironment.ID.pixelLength;
    v17 = v162;
    swift_beginAccess();
    v86 = specialized CachedEnvironment.attribute<A>(id:_:)(v16, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    v18 = v161;
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v18, v128);
    if (v19)
    {
      v20 = (v19 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v20 = &static ArchivedViewInput.defaultValue;
    }

    v89 = a3;
    if (*v20)
    {
      v38 = *(v17 + 16);
      if (one-time initialization token for fadeIfDifferent != -1)
      {
        swift_once();
      }

      v39 = static ContentTransition.fadeIfDifferent;
      v40 = dword_1ED527B40 | (word_1ED527B44 << 32);
      v41 = HIBYTE(word_1ED527B44);
      LODWORD(v128) = v38;
      *(&v128 + 1) = static ContentTransition.fadeIfDifferent;
      WORD2(v129) = word_1ED527B44;
      LODWORD(v129) = dword_1ED527B40;
      BYTE6(v129) = byte_1ED527B46;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      outlined copy of ContentTransition.Storage(v39, v40, v41);
      lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init();
      v42 = Attribute.init<A>(body:value:flags:update:)();
      outlined consume of ContentTransition.Storage(v39, v40, v41);
      LODWORD(v39) = AGGraphCreateOffsetAttribute2();
      v130 = v163;
      *v131 = v164;
      *&v131[16] = v165;
      *&v131[32] = v166;
      v128 = v161;
      v129 = v162;
      LOBYTE(v157) = 1;
      swift_beginAccess();
      LOBYTE(v147) = 0;
      v43 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v128, &v157, v39);
      swift_endAccess();
      v44 = *(a2 + 16);
      v119 = *a2;
      v120 = v44;
      *v121 = *(a2 + 32);
      v9 = v92;
      *&v121[4] = v94;
      *&v121[8] = *(a2 + 40);
      *&v121[20] = *(a2 + 52);
      *&v121[36] = v92;
      *&v121[40] = *v10;
      LODWORD(v122) = *(v10 + 8);
      ShouldRecordTree = AGSubgraphShouldRecordTree();
      if (ShouldRecordTree)
      {
        AGSubgraphBeginTreeElement();
      }

      v85 = v42;
      v149 = *v121;
      v150 = *&v121[16];
      v151 = *&v121[32];
      v152 = v122;
      v147 = v119;
      v148 = v120;
      v46 = *v121;
      LODWORD(v149) = 0;
      v158 = v120;
      v157 = v119;
      v160 = v122;
      *&v159[32] = *&v121[32];
      *&v159[16] = *&v121[16];
      *v159 = v149;
      v115 = v149;
      v116 = *&v121[16];
      v117 = *&v121[32];
      v113 = v119;
      v114 = v120;
      v98 = *&v121[40];
      v99 = v122;
      v47 = *&v121[36];
      v48 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v121[16]);
      if (v48)
      {
        v130 = *v159;
        *v131 = *&v159[16];
        *&v131[16] = *&v159[32];
        *&v131[32] = v160;
        v128 = v157;
        v129 = v158;
        swift_beginAccess();
        outlined init with copy of _ViewInputs(&v157, &v107);
        outlined init with copy of _ViewInputs(&v157, &v107);
        outlined init with copy of _ViewInputs(&v119, &v107);
        v47 = CachedEnvironment.animatedPosition(for:)(&v128);
        swift_endAccess();
      }

      else
      {
        outlined init with copy of _ViewInputs(&v157, &v128);
        outlined init with copy of _ViewInputs(&v157, &v128);
        outlined init with copy of _ViewInputs(&v119, &v128);
      }

      v130 = v115;
      *v131 = v116;
      v128 = v113;
      v129 = v114;
      *&v131[16] = v117;
      *&v131[20] = v47;
      *&v131[24] = v98;
      *&v131[32] = v99;
      outlined init with copy of _ViewInputs(&v128, &v107);
      _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5(v95, &v128, v43, 0, v90 | (v91 << 32), v15 | (v86 << 32), 0, &v96);
      outlined destroy of _ViewInputs(&v128);
      if (v48)
      {
        v50 = ++lastIdentity;
        v51 = v157;
        if (v159[5])
        {
          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v157, &v107);
          result = AGWeakAttributeGetAttribute();
          v52 = *MEMORY[0x1E698D3F8];
          if (result == *MEMORY[0x1E698D3F8])
          {
            __break(1u);
            return result;
          }

          LODWORD(v105[0]) = v50;
          v77 = Attribute<A>.subscript.modify(&v107, result);
          v78 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v105);
          (v77)(&v107, 0, v78);
        }

        else
        {
          v52 = *MEMORY[0x1E698D3F8];
        }

        v53 = v158;
        v109 = *v159;
        v110 = *&v159[16];
        v111 = *&v159[32];
        v112 = v160;
        v107 = v157;
        v108 = v158;
        swift_beginAccess();
        v54 = CachedEnvironment.animatedPosition(for:)(&v107);
        v109 = *v159;
        v110 = *&v159[16];
        v111 = *&v159[32];
        v112 = v160;
        v107 = v157;
        v108 = v158;
        v55 = CachedEnvironment.animatedSize(for:)(&v107);
        swift_endAccess();
        v56 = *(v53 + 16);
        v57 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v96);
        if ((v57 & 0x100000000) == 0)
        {
          v52 = v57;
        }

        BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
        v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v107);
        if (v58)
        {
          v59 = *(v58 + 72);
        }

        else
        {
          v59 = 0;
        }

        BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
        v61 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v51, v107);
        if (v61)
        {
          v62 = *(v61 + 72);
        }

        else
        {
          v62 = 0;
        }

        *&v107 = __PAIR64__(v85, v50);
        *(&v107 + 1) = __PAIR64__(v55, v54);
        *&v108 = __PAIR64__(*&v159[36], *&v159[28]);
        *(&v108 + 1) = __PAIR64__(*&v159[44], v56);
        LODWORD(v109) = v52;
        BYTE4(v109) = v59;
        DWORD2(v109) = 0;
        HIDWORD(v109) = v62;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
        lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
        v63 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v107) = 0;
        PreferencesOutputs.subscript.setter(v63, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
        v9 = v92;
        v60 = v88;
      }

      else
      {
        v60 = v88;
      }

      v109 = v115;
      v110 = v116;
      v107 = v113;
      v108 = v114;
      *&v111 = __PAIR64__(v47, v117);
      *(&v111 + 1) = v98;
      v112 = v99;
      outlined destroy of _ViewInputs(&v107);
      outlined destroy of _ViewInputs(&v157);
      v64 = v96;
      v65 = v97;
      v100 = v96;
      v101 = v97;
      LODWORD(v149) = v46;
      if (ShouldRecordTree)
      {
        _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt0t2g5Tm(&v100, &v147);
        AGSubgraphEndTreeElement();
        v64 = v100;
        v65 = v101;
      }

      v37 = v121[4];
      v105[2] = v149;
      v105[3] = v150;
      v105[4] = v151;
      v106 = v152;
      v105[0] = v147;
      v105[1] = v148;
      outlined destroy of _ViewInputs(v105);
      *&v102 = v64;
      *(&v102 + 1) = v65;
      a3 = v89;
      v36 = v94;
      if (v60)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v83 = v8;
      type metadata accessor for _ShapeStyle_InterpolatorGroup();
      swift_allocObject();
      v21 = _ShapeStyle_InterpolatorGroup.init()();
      v130 = v163;
      *v131 = v164;
      *&v131[16] = v165;
      *&v131[32] = v166;
      v128 = v161;
      v129 = v162;
      swift_beginAccess();
      v22 = v15;
      v23 = CachedEnvironment.animatedPosition(for:)(&v128);
      swift_endAccess();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v130 = v163;
      *v131 = v164;
      *&v131[16] = v165;
      *&v131[32] = v166;
      v128 = v161;
      v129 = v162;
      LOBYTE(v157) = 1;
      swift_beginAccess();
      LOBYTE(v147) = 0;
      v25 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v128, &v157, OffsetAttribute2);
      swift_endAccess();
      v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v18);
      v27 = *(a2 + 16);
      v157 = *a2;
      v158 = v27;
      *v159 = *(a2 + 32);
      *&v159[4] = v94;
      *&v159[8] = *(a2 + 40);
      *&v159[20] = *(a2 + 52);
      v93 = v23;
      *&v159[36] = v23;
      *&v159[40] = *v10;
      v160 = *(v10 + 8);

      _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5(v95, &v157, v25, v21, v90 | (v91 << 32), v22 | (v86 << 32), (v26 & 1) == 0, &v128);

      v102 = v128;
      v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v128);
      if ((v28 & 0x100000000) == 0)
      {
        v29 = v28;
        v130 = v163;
        *v131 = v164;
        *&v131[16] = v165;
        *&v131[32] = v166;
        v128 = v161;
        v129 = v162;
        swift_beginAccess();
        v87 = CachedEnvironment.animatedPosition(for:)(&v128);
        swift_endAccess();
        v30 = DWORD1(v165);
        v82 = DWORD1(v165);
        v31 = AGGraphCreateOffsetAttribute2();
        v32 = HIDWORD(v162);
        v81 = HIDWORD(v162);
        v79 = DWORD2(v162);
        v33 = *(v17 + 16);
        v34 = static CachedEnvironment.ID.pixelLength;
        swift_beginAccess();
        v80 = specialized CachedEnvironment.attribute<A>(id:_:)(v34, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
        swift_endAccess();
        _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v119);
        *&v118[129] = v125;
        *&v118[145] = v126;
        *&v118[161] = v127[0];
        *&v118[172] = *(v127 + 11);
        *&v118[65] = *&v121[32];
        *&v118[81] = v122;
        *&v118[97] = v123;
        *&v118[113] = v124;
        *&v118[1] = v119;
        *&v118[17] = v120;
        *&v118[33] = *v121;
        *&v118[49] = *&v121[16];
        v84 = (v83 >> 10) & 1;
        *&v128 = v21;
        *(&v128 + 1) = __PAIR64__(v91, v95);
        *&v129 = __PAIR64__(v30, v87);
        *(&v129 + 1) = __PAIR64__(v79, v31);
        *&v130 = __PAIR64__(v32, v90);
        *(&v130 + 1) = __PAIR64__(v80, v33);
        *v131 = v29;
        *&v131[4] = 1;
        v131[6] = v84;
        v133 = *&v118[48];
        v132 = *&v118[32];
        *&v131[23] = *&v118[16];
        *&v131[7] = *v118;
        v137 = *&v118[112];
        v136 = *&v118[96];
        v135 = *&v118[80];
        v134 = *&v118[64];
        *&v140[12] = *(v127 + 11);
        *v140 = *&v118[160];
        v139 = *&v118[144];
        v138 = *&v118[128];
        v146 = 0;
        v144 = 0;
        v143 = 0;
        v145 = 0;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
        lazy protocol witness table accessor for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>();

        v35 = Attribute.init<A>(body:value:flags:update:)();
        *&v128 = v21;
        *(&v128 + 1) = __PAIR64__(v91, v95);
        *&v129 = __PAIR64__(v82, v87);
        *(&v129 + 1) = __PAIR64__(v79, v31);
        *&v130 = __PAIR64__(v81, v90);
        *(&v130 + 1) = __PAIR64__(v80, v33);
        *v131 = v29;
        *&v131[4] = 1;
        v131[6] = v84;
        v133 = *&v118[48];
        v132 = *&v118[32];
        *&v131[23] = *&v118[16];
        *&v131[7] = *v118;
        v137 = *&v118[112];
        v136 = *&v118[96];
        v135 = *&v118[80];
        v134 = *&v118[64];
        *&v140[12] = *&v118[172];
        *v140 = *&v118[160];
        v139 = *&v118[144];
        v138 = *&v118[128];
        v141 = v147;
        v142 = BYTE4(v147);
        v146 = 0;
        v144 = 0;
        v143 = 0;
        v145 = 0;
        outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v128, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
        AGGraphSetFlags();
        LOBYTE(v147) = 0;
        PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
      }

      v9 = v93;
      v36 = v94;
      v37 = v94;
      a3 = v89;
      if (v88)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v49 = *MEMORY[0x1E698D3F8];
    *&v102 = MEMORY[0x1E69E7CC0];
    DWORD2(v102) = 0;
    HIDWORD(v102) = v49;
    v36 = v94;
    v37 = v94;
    if (v11)
    {
LABEL_53:
      LODWORD(v119) = v95;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer();
LABEL_54:
      HIDWORD(v102) = Attribute.init<A>(body:value:flags:update:)();
      if ((BYTE8(v102) & 0x80) == 0)
      {
        DWORD2(v102) |= 0x80u;
      }

      goto LABEL_56;
    }
  }

  if ((v37 & 2) != 0)
  {
    LODWORD(v119) = v95;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for LeafLayoutComputer<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutComputer);
    lazy protocol witness table accessor for type LeafLayoutComputer<Image.Resolved> and conformance LeafLayoutComputer<A>();
    goto LABEL_54;
  }

LABEL_56:
  v66 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v161);
  if (v66 && (v68 = v66, v69 = v67, *v121 = v163, *&v121[16] = v164, *&v121[32] = v165, LODWORD(v122) = v166, v119 = v161, v120 = v162, ((*(v67 + 8))(&v119, v66, v67) & 1) != 0))
  {
    if (one-time initialization token for tintColor != -1)
    {
      swift_once();
    }

    v70 = static CachedEnvironment.ID.tintColor;
    swift_beginAccess();
    v71 = specialized CachedEnvironment.attribute<A>(id:_:)(v70, specialized implicit closure #1 in _GraphInputs.tintColor.getter, 0);
    swift_endAccess();
    if (one-time initialization token for foregroundStyle != -1)
    {
      swift_once();
    }

    v72 = static CachedEnvironment.ID.foregroundStyle;
    swift_beginAccess();
    v73 = specialized CachedEnvironment.attribute<A>(id:_:)(v72, specialized implicit closure #1 in _GraphInputs.foregroundStyle.getter, 0);
    swift_endAccess();
    *&v119 = __PAIR64__(v71, v95);
    DWORD2(v119) = v73;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext();
    v74 = Attribute.init<A>(body:value:flags:update:)();
    v149 = v163;
    v150 = v164;
    v151 = v165;
    v152 = v166;
    v147 = v161;
    v148 = v162;
    (*(v69 + 16))(&v147, v74, &v102, v68, v69);
    v119 = v154;
    v120 = v155;
    *v121 = v156;
    *&v121[4] = v36;
    *&v121[8] = v153[0];
    v75 = *(v153 + 12);
  }

  else
  {
    v119 = v154;
    v120 = v155;
    *v121 = v156;
    *&v121[4] = v36;
    *&v121[8] = v153[0];
    v75 = *(v153 + 12);
  }

  *&v121[20] = v75;
  *&v121[36] = v9;
  *&v121[40] = v103;
  LODWORD(v122) = v104;
  result = outlined destroy of _ViewInputs(&v119);
  *a3 = v102;
  return result;
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA5ImageVAAE8ResolvedV_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  v91 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  LODWORD(v72) = 0;
  HIDWORD(v72) = *MEMORY[0x1E698D3F8];
  v65 = *MEMORY[0x1E698D3F8];
  v69 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v69) & 1) == 0)
  {
    goto LABEL_7;
  }

  v66 = ++lastIdentity;
  v14 = *a2;
  v15 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    v16 = a7;
    v63 = a4;
    v64 = HIDWORD(a6);
    v17 = v14;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v19 = *(a2 + 3);
    v81 = *(a2 + 2);
    *v82 = v19;
    *&v82[16] = *(a2 + 4);
    LODWORD(v83) = *(a2 + 20);
    v20 = *(a2 + 1);
    v79 = *a2;
    v80 = v20;
    swift_beginAccess();
    v21 = CachedEnvironment.animatedSize(for:)(&v79);
    v22 = *(a2 + 3);
    v81 = *(a2 + 2);
    *v82 = v22;
    *&v82[16] = *(a2 + 4);
    LODWORD(v83) = *(a2 + 20);
    v23 = *(a2 + 1);
    v79 = *a2;
    v80 = v23;
    v24 = CachedEnvironment.animatedPosition(for:)(&v79);
    swift_endAccess();
    v25 = *(v15 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v26 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v79);
    if (v26)
    {
      v27 = *(v26 + 72);
    }

    else
    {
      v27 = 0;
    }

    v59 = v27;
    v60 = *(a2 + 15);
    v61 = *(a2 + 17);
    v62 = *(a2 + 19);
    *&v79 = v63;
    *(&v79 + 1) = __PAIR64__(a1, v66);
    *&v80 = __PAIR64__(OffsetAttribute2, a3);
    *(&v80 + 1) = __PAIR64__(v24, v21);
    *&v81 = __PAIR64__(v60, v61);
    *(&v81 + 1) = __PAIR64__(v62, v25);
    v82[0] = v27;
    *&v82[4] = a5;
    *&v82[12] = a6;
    v82[20] = v16 & 1;
    *&v82[22] = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    v58 = a6;
    lazy protocol witness table accessor for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    *&v79 = v63;
    *(&v79 + 1) = __PAIR64__(a1, v66);
    *&v80 = __PAIR64__(OffsetAttribute2, a3);
    *(&v80 + 1) = __PAIR64__(v24, v21);
    *&v81 = __PAIR64__(v60, v61);
    *(&v81 + 1) = __PAIR64__(v62, v25);
    v82[0] = v59;
    *&v82[1] = v73;
    v82[3] = BYTE2(v73);
    *&v82[4] = a5;
    *&v82[12] = v58;
    *&v82[16] = v64;
    v82[20] = v16 & 1;
    *&v82[22] = 0;
    outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v79, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    v78[0] = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v29 = *(a2 + 3);
    v30 = *(a2 + 4);
    v31 = *(a2 + 1);
    v81 = *(a2 + 2);
    *v82 = v29;
    *&v82[16] = v30;
    LODWORD(v83) = *(a2 + 20);
    v79 = *a2;
    v80 = v31;
    swift_beginAccess();
    v32 = CachedEnvironment.animatedSize(for:)(&v79);
    v33 = *(a2 + 3);
    v81 = *(a2 + 2);
    *v82 = v33;
    *&v82[16] = *(a2 + 4);
    LODWORD(v83) = *(a2 + 20);
    v34 = *(a2 + 1);
    v79 = *a2;
    v80 = v34;
    v35 = CachedEnvironment.animatedPosition(for:)(&v79);
    swift_endAccess();
    v36 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>, &lazy cache variable for type metadata for ShapeStyledResponderData<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved);
    v37 = swift_allocObject();
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOi0_(&v79);
    v38 = v86;
    *(v37 + 200) = v87;
    v39 = v89;
    *(v37 + 216) = v88;
    *(v37 + 232) = v39;
    v40 = *&v82[16];
    *(v37 + 136) = v83;
    v41 = v85;
    *(v37 + 152) = v84;
    *(v37 + 168) = v41;
    *(v37 + 184) = v38;
    v42 = v79;
    *(v37 + 72) = v80;
    v43 = *v82;
    *(v37 + 88) = v81;
    *(v37 + 104) = v43;
    *(v37 + 120) = v40;
    *(v37 + 248) = v90;
    *(v37 + 56) = v42;
    *(v37 + 272) = 0u;
    *(v37 + 288) = 0u;
    *(v37 + 256) = 0u;
    *(v37 + 304) = v13;
    *(v37 + 24) = 0;
    *(v37 + 312) = 0u;
    *(v37 + 328) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v44 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v45 = *(v44 + 208);

    swift_beginAccess();
    *(v37 + 24) = v45;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v73 = v69;
    v46 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v47 = *(v69 + 16);
    if (v46 != v47)
    {
      if (v46 >= v47)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v69 + 16 * v46 + 32) == &type metadata for ViewRespondersKey)
      {
        v73 = __PAIR64__(a3, a1);
        v74 = v32;
        v75 = v35;
        v76 = v36;
        v77 = v37;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledResponderFilter<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledResponderFilter);
        lazy protocol witness table accessor for type ShapeStyledResponderFilter<Image.Resolved> and conformance ShapeStyledResponderFilter<A>();
        v48 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v73) = 0;
        PreferencesOutputs.subscript.setter(v48, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v69) & 1) == 0)
    {
      goto LABEL_16;
    }

    v49 = *(a2 + 16);
    v50 = AGGraphCreateOffsetAttribute2();
    v73 = __PAIR64__(v49, v36);
    v74 = v50;
    v75 = a1;
    v76 = v65;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<Image.Resolved> and conformance ContentResponderPathDataRule<A>();
    v51 = Attribute.init<A>(body:value:flags:update:)();
    v73 = v69;
    v52 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v52 == v47)
    {
      goto LABEL_16;
    }

    if (v52 < v47)
    {
      if (*(v69 + 16 * v52 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v73) = v51;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v73) = 0;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a8 = v71;
      a8[1] = v72;
      return;
    }

LABEL_20:
    __break(1u);
  }

  v54 = a6;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v79);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v65)
  {
    LODWORD(v73) = v66;
    v56 = Attribute<A>.subscript.modify(&v79, Attribute);
    v57 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v73);
    (v56)(&v79, 0, v57);
    a6 = v54;
    goto LABEL_3;
  }

  __break(1u);
}

void lazy protocol witness table accessor for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ShapeStyledDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledDisplayList<Image.Resolved> and conformance ShapeStyledDisplayList<A>);
  }
}

double _s7SwiftUI24ShapeStyledResponderDataVyAA5ImageVAAE8ResolvedVGSgWOi0_(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  return result;
}

double _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0x1FFFFFFFCLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 183) = 0;
  return result;
}

void lazy protocol witness table accessor for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for InterpolatedDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type InterpolatedDisplayList<Image.Resolved> and conformance InterpolatedDisplayList<A>);
  }
}

__n128 Image.ImageViewChild.init(view:environment:transaction:position:size:transform:options:parentID:symbolAnimator:symbolEffects:)@<Q0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a7;
  v13 = *a8;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = v12;
  *(a9 + 28) = v13;
  type metadata accessor for PropertyList.Tracker();
  v14 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v15, v16, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 24) = 0;
  *(v18 + 32) = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 40) = v19;
  *(v18 + 48) = v20;
  *(v18 + 56) = 0;
  *(v14 + 16) = v18;
  *(a9 + 32) = v14;
  *(a9 + 40) = a10;
  v21 = *(a11 + 16);
  *(a9 + 48) = *a11;
  *(a9 + 64) = v21;
  *(a9 + 80) = *(a11 + 32);
  result = *(a11 + 46);
  *(a9 + 94) = result;
  return result;
}

void lazy protocol witness table accessor for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedImageLayoutComputer, &unk_1F004D7E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedImageLayoutComputer and conformance ResolvedImageLayoutComputer);
  }
}

uint64_t static LeafViewLayout.makeLeafLayout(_:view:inputs:)(uint64_t result, int *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 36) & 2) != 0)
  {
    v3 = result;
    v14 = *a2;
    MEMORY[0x1EEE9AC00](result);
    v11 = type metadata accessor for LeafLayoutComputer(0, v4, v5, v4);
    swift_getWitnessTable(protocol conformance descriptor for LeafLayoutComputer<A>, v11);
    v12 = v6;
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer);
    result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, closure #1 in Attribute.init<A>(_:)partial apply, &v10, v11, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
    *(v3 + 12) = v13;
    v9 = *(v3 + 8);
    if ((v9 & 0x80) == 0)
    {
      *(v3 + 8) = v9 | 0x80;
    }
  }

  return result;
}

uint64_t LeafLayoutEngine.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = a3 + *(type metadata accessor for LeafLayoutEngine(0, a2, a4, a5) + 36);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 1;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 1;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0u;
  *(v8 + 160) = 1;
  v9 = *(*(a2 - 8) + 32);

  return v9(a3, a1, a2);
}

uint64_t LeafLayoutComputer.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v9 = type metadata accessor for LeafLayoutEngine(0, v2, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  LeafLayoutEngine.init(_:)(v5, v2, v12, v7, v14);
  swift_getWitnessTable(protocol conformance descriptor for LeafLayoutComputer<A>, a1);
  StatefulRule<>.update<A>(to:)(v12, a1, v9, v15, &protocol witness table for LeafLayoutEngine<A>);
  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata completion function for LeafLayoutEngine(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t EnvironmentValues.imageIsTemplate(renderingMode:)(unsigned __int8 *a1)
{
  v4 = *a1;
  if (v4 != 2)
  {
    return (v4 & 1) == 0;
  }

  v10 = v2;
  v11 = v3;
  v5 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, &v9);

    v6 = v9;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v8)
    {
      v6 = *(v8 + 72);
    }

    else
    {
      v6 = 1;
    }
  }

  return v6 ^ 1u;
}

uint64_t specialized Gradient.init(colors:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (v4 > 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = 0;
    v6 = v14;
    v7 = *(a1 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(a1 + 16))
      {
        goto LABEL_16;
      }

      v1 = *(a1 + 8 * v5 + 32);
      v14 = v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v2 = v8 + 1;

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      }

      v10 = 1.0 / (v4 - 1) * v5++;
      *(v6 + 16) = v2;
      v11 = v6 + 16 * v8;
      *(v11 + 32) = v1;
      *(v11 + 40) = v10;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v1, 1);
    v6 = v14;
    goto LABEL_11;
  }

  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v6 = v14;
  v4 = *(a1 + 32);
  v2 = *(v14 + 16);
  v5 = *(v14 + 24);
  v1 = v2 + 1;

  if (v2 >= v5 >> 1)
  {
    goto LABEL_17;
  }

LABEL_11:
  *(v6 + 16) = v1;
  v12 = v6 + 16 * v2;
  *(v12 + 32) = v4;
  *(v12 + 40) = 0;
LABEL_12:

  return v6;
}

uint64_t ImageProviderBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

void destroy for Image.NamedImageProvider(void *a1)
{

  v2 = a1[3];
  if (v2 >= 2)
  {
  }

  v3 = a1[4];
  if (v3 >= 3)
  {
  }

  v4 = a1[7];
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[8];

    outlined consume of AccessibilityImageLabel(v5, v6, v4, v7);
  }
}

void lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint()
{
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearGradient._Paint, &type metadata for LinearGradient._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearGradient._Paint, &type metadata for LinearGradient._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearGradient._Paint, &type metadata for LinearGradient._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearGradient._Paint and conformance LinearGradient._Paint);
  }
}

uint64_t instantiation function for generic protocol witness table for LinearGradient._Paint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

id NamedImage.Cache.subscript.getter(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  result = [objc_opt_self() defaultUICatalogForBundle_];
  if (!result)
  {
    v17 = MEMORY[0x193ABEC20](0x737465737341, 0xE600000000000000);
    v18 = MEMORY[0x193ABEC20](7496035, 0xE300000000000000);
    v19 = [a1 URLForResource:v17 withExtension:v18];

    if (v19)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v4 + 32))(v15, v12, v3);
      os_unfair_lock_lock((v1 + 24));
      _s7SwiftUI10NamedImageO5CacheCySo10CUICatalogC_Sb6retaintSgSo8NSBundleCcigAGSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(v1 + 32, v15, &v29);
      os_unfair_lock_unlock((v1 + 24));
      if (v29)
      {
        v20 = v29;
        (*(v4 + 8))(v15, v3);
        return v20;
      }

      os_unfair_lock_lock((v1 + 24));
      specialized _NativeDictionary.filter(_:)(*(v1 + 56));
      *(v1 + 56) = v21;

      v28 = v1;
      os_unfair_lock_unlock((v1 + 24));
      v22 = *(v4 + 16);
      v22(v9, v15, v3);
      v23 = objc_allocWithZone(MEMORY[0x1E6999368]);
      v24 = @nonobjc CUICatalog.init(url:)(v9);
      if (v24)
      {
        v25 = v28;
        v26 = v24;
        os_unfair_lock_lock(v28 + 6);
        v22(v6, v15, v3);
        swift_unknownObjectWeakInit();
        v27 = swift_unknownObjectWeakAssign();
        v30 = 0;
        specialized Dictionary.subscript.setter(v27, v6);
        os_unfair_lock_unlock(v25 + 6);
        (*(v4 + 8))(v15, v3);
        return v26;
      }

      (*(v4 + 8))(v15, v3);
    }

    return 0;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017DefaultSymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
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

double protocol witness for LayoutEngine.sizeThatFits(_:) in conformance ResolvedImageLayoutEngine(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = v1[9];
  v23[8] = v1[8];
  v23[9] = v6;
  v24[0] = v1[10];
  *(v24 + 11) = *(v1 + 171);
  v7 = v1[5];
  v23[4] = v1[4];
  v23[5] = v7;
  v8 = v1[7];
  v23[6] = v1[6];
  v23[7] = v8;
  v9 = v1[1];
  v23[0] = *v1;
  v23[1] = v9;
  v10 = v1[3];
  v23[2] = v1[2];
  v23[3] = v10;
  v19[24] = v2;
  v20 = v3;
  v21 = v4;
  v22 = v5;
  Image.Resolved.sizeThatFits(in:)();
  v12 = v11;
  v13 = v1[9];
  v25[8] = v1[8];
  v25[9] = v13;
  v26[0] = v1[10];
  *(v26 + 11) = *(v1 + 171);
  v14 = v1[5];
  v25[4] = v1[4];
  v25[5] = v14;
  v15 = v1[7];
  v25[6] = v1[6];
  v25[7] = v15;
  v16 = v1[1];
  v25[0] = *v1;
  v25[1] = v16;
  v17 = v1[3];
  v25[2] = v1[2];
  v25[3] = v17;
  outlined init with copy of Image.Resolved(v23, v19);
  outlined destroy of Image.Resolved(v25);
  return v12;
}

uint64_t ResolvedImageLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  if (*(v2 + 104) != 2 || v3 == 0)
  {
    goto LABEL_6;
  }

  v6 = v3[7];
  v7 = *(a2 + 8) - v3[2];
  if (one-time initialization token for lastTextBaseline != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v8 = v7 - v6;
  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for firstTextBaseline != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  if (static VerticalAlignment.firstTextBaseline == a1)
  {
LABEL_13:
    *&result = v8;
    return result;
  }

  if (one-time initialization token for _firstTextLineCenter != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  if (static VerticalAlignment._firstTextLineCenter != a1)
  {
LABEL_6:
    *&result = 0.0;
    return result;
  }

  *&result = v8 + v3[3] * -0.5;
  return result;
}

void specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v11[24] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v9 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA013ResolvedImagecE033_A3C1DB6976F54697C11EFA754256BBD1LLV_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[27] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, LinearGradient>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14LinearGradientVGG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<SpacingLayout>, lazy protocol witness table accessor for type SpacingLayout and conformance SpacingLayout, &type metadata for SpacingLayout, type metadata accessor for UnaryLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<SpacingLayout>>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[5] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v9 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA017AlignmentModifiedcD033_1A9A538762FDCD24410B0F017CAED17ALLV0E0V_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[100] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[100] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[50] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[50] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[45] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LeafLayoutEngine<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA5ImageVAAE8ResolvedVG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[23] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v11, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<CombinedContentShape, ForegroundStyle>>>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[29] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>.Engine, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LazycD0V0E0VyAA0f6HStackC0V_G_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>, type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyHStackLayout>.Engine>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[29] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>.Engine, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LazycD0V0E0VyAA0f6HStackC0V_G_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>, type metadata accessor for LayoutEngineBox<LazyLayoutComputer<LazyVStackLayout>.Engine>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[23] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v11, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<AnyShape>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<AnyShape>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<AnyShape>>>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[26] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm(v11, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>>, &v10);
    AGGraphSetOutputValue();
  }
}

{
  v11[29] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
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
      type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>(0);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA12MeshGradientVGG_Tt1B5(v11, &v10);
    AGGraphSetOutputValue();
  }
}

uint64_t initializeWithCopy for LinearGradient(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ImageResolutionContextVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ImageResolutionContextVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(_OWORD *a1@<X8>)
{
  return specialized closure #2 in StatefulRule<>.update<A>(to:)(*(v1 + 16), a1);
}

{
  v2 = *(v1 + 16);
  v20[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v20[3] = v2[3];
  v20[4] = v5;
  v20[1] = v3;
  v20[2] = v4;
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[8];
  v20[7] = v2[7];
  v20[8] = v8;
  v20[5] = v6;
  v20[6] = v7;
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  *(v21 + 9) = *(v2 + 185);
  v20[10] = v10;
  v21[0] = v11;
  v20[9] = v9;
  v12 = v2[11];
  a1[10] = v2[10];
  a1[11] = v12;
  *(a1 + 185) = *(v2 + 185);
  v13 = v2[7];
  a1[6] = v2[6];
  a1[7] = v13;
  v14 = v2[9];
  a1[8] = v2[8];
  a1[9] = v14;
  v15 = v2[3];
  a1[2] = v2[2];
  a1[3] = v15;
  v16 = v2[5];
  a1[4] = v2[4];
  a1[5] = v16;
  v17 = v2[1];
  *a1 = *v2;
  a1[1] = v17;
  return outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v20, &v19, type metadata accessor for LeafLayoutEngine<_ShapeView<Path, ForegroundStyle>>);
}

uint64_t _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFqd__yXEfU0_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0@<X0>(__int128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v19[2] = v2[2];
  v19[3] = v5;
  v19[0] = v3;
  v19[1] = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[7];
  v19[6] = v2[6];
  v19[7] = v8;
  v19[4] = v6;
  v19[5] = v7;
  v9 = v2[8];
  v10 = v2[9];
  v11 = v2[10];
  *(v20 + 11) = *(v2 + 171);
  v19[9] = v10;
  v20[0] = v11;
  v19[8] = v9;
  v12 = v2[9];
  a1[8] = v2[8];
  a1[9] = v12;
  a1[10] = v2[10];
  *(a1 + 171) = *(v2 + 171);
  v13 = v2[5];
  a1[4] = v2[4];
  a1[5] = v13;
  v14 = v2[7];
  a1[6] = v2[6];
  a1[7] = v14;
  v15 = v2[1];
  *a1 = *v2;
  a1[1] = v15;
  v16 = v2[3];
  a1[2] = v2[2];
  a1[3] = v16;
  return outlined init with copy of ResolvedImageLayoutEngine(v19, &v18);
}

uint64_t specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[9];
  v3 = a1[7];
  v25 = a1[8];
  v26 = v2;
  v4 = a1[9];
  v27[0] = a1[10];
  *(v27 + 11) = *(a1 + 171);
  v5 = a1[5];
  v7 = a1[3];
  v21 = a1[4];
  v6 = v21;
  v22 = v5;
  v8 = a1[5];
  v9 = a1[7];
  v23 = a1[6];
  v10 = v23;
  v24 = v9;
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v19 = a1[2];
  v15 = v19;
  v20 = v12;
  a2[8] = v25;
  a2[9] = v4;
  a2[10] = a1[10];
  *(a2 + 171) = *(a1 + 171);
  a2[4] = v6;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v3;
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v7;
  return outlined init with copy of ResolvedImageLayoutEngine(v18, &v17);
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA013ResolvedImagecE033_A3C1DB6976F54697C11EFA754256BBD1LLV_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<ResolvedImageLayoutEngine>, &type metadata for ResolvedImageLayoutEngine, &protocol witness table for ResolvedImageLayoutEngine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 204) = v7;
    *(v4 + 208) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<ResolvedImageLayoutEngine>, &type metadata for ResolvedImageLayoutEngine, &protocol witness table for ResolvedImageLayoutEngine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v8;
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 187) = *(a1 + 171);
  v9 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v9;
  v10 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v10;
  v11 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v13;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t *initializeWithCopy for AccessibilityImageLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityImageLabel(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentKey.Identifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentKey.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AccessibilityImageLabel.text.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v3 < 0)
  {
    type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    v2 = v4;
  }

  else
  {
    outlined copy of Text.Storage(v2, v1, v3 & 1);
  }

  return v2;
}

uint64_t getEnumTag for Environment.Content(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
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

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for Environment.Content(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010SymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    if (!v2)
    {

      v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

      if (!v2)
      {

        v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017DefaultSymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

        if (!v2)
        {

          v3 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

          return v3;
        }
      }
    }
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (!v5 || (v2 = v5[9], , !v2))
    {
      v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
      if (!v6 || (v2 = v6[9], , !v2))
      {
        v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
        if (!v7 || (v2 = v7[9], , !v2))
        {
          v8[0] = v1;
          v8[1] = 0;

          v2 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(v8);
        }
      }
    }
  }

  return v2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010SymbolFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata completion function for ImageResolutionContext(uint64_t a1)
{
  _s7SwiftUI4TextV5StyleVSgMaTm_1(319, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t _s7SwiftUI14FontDefinitionPAAE016resolveTextStyleC4Info04textG06design6weight2inAA0C0V14ResolvedTraitsVAJ0fG0O_AJ6DesignOSgAJ6WeightVSgAJ7ContextVtFZAA07DefaultcD0O_Tt1t4B5@<X0>(double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v9 = 0.0;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  return result;
}

uint64_t protocol witness for FontProvider.resolveTraits(in:) in conformance Font.TextStyleProvider(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v10 = *(a1 + 3);
  v11 = a1[5];
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v13 = *v1;
  v12 = v5;
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v4;
  return (*(v4 + 16))(&v13, &v12, v6, v7, v9);
}

uint64_t sub_18D122304(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for TypesettingConfiguration(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[21];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[23];
    goto LABEL_11;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[24];
    goto LABEL_11;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[26];

  return v17(v18, a2, v16);
}

void outlined consume of GraphicsImage.Contents?(void *a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of GraphicsImage.Contents(a1, a2);
  }
}

uint64_t destroy for ImageResolutionContext(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for Text.Style(0);
  result = (*(*(v5 - 1) + 48))(v4, 1, v5);
  if (!result)
  {
    if (*v4 >= 2uLL)
    {
    }

    outlined consume of Gradient.ProviderTag(*(v4 + 16));

    if ((*(v4 + 88) - 1) >= 2)
    {
    }

    if ((*(v4 + 104) - 1) >= 2)
    {
    }

    if (*(v4 + 176) != 1)
    {
    }

    if (*(v4 + 248) != 1)
    {
    }

    if (*(v4 + 288) >= 2uLL)
    {
      outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
    }

    v7 = v5[21];
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
    if (!(*(*(v8 - 8) + 48))(v4 + v7, 2, v8))
    {
      v9 = type metadata accessor for Locale.Language();
      (*(*(v9 - 8) + 8))(v4 + v7, v9);
    }

    v10 = v5[23];
    v11 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v4 + v10, 1, v11))
    {
      (*(v12 + 8))(v4 + v10, v11);
    }

    v13 = v5[24];
    v14 = type metadata accessor for AttributedString.TextAlignment();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v4 + v13, 1, v14))
    {
      (*(v15 + 8))(v4 + v13, v14);
    }

    v16 = v5[26];
    v17 = type metadata accessor for AttributedString.LineHeight();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v4 + v16, 1, v17))
    {
      (*(v18 + 8))(v4 + v16, v17);
    }
  }

  return result;
}

void destroy for ImagePaint._Paint(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v1);
  }
}

__n128 initializeWithCopy for GraphicsImage(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    v5 = a1;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    a1 = v5;
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  result = *(a2 + 11);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  return result;
}

void outlined copy of GraphicsImage.Contents(void *a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a2 < 2u)
  {
    v2 = a1;
    return;
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }
}

void Image.ImageViewChild.updateValue()(uint64_t a1)
{
  v132 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v93 = *(a1 + 16);
  v94 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v82 - v5;
  _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v82 - v8;
  v9 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Value = AGGraphGetValue();
  v13 = v12;
  v14 = *Value;
  v100 = v1;

  v15 = AGGraphGetValue();
  v18 = *v15;
  v17 = v15[1];
  if (v13)
  {

    goto LABEL_10;
  }

  if (v16)
  {

    v19 = swift_retain_n();
    v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (!AGGraphGetOutputValue())
  {
LABEL_10:
    v89 = v17;
    v21 = *(v100 + 32);
    PropertyList.Tracker.reset()();
    v99 = v14;
    v91 = v6;
    v92 = AssociatedTypeWitness;
    v90 = a1;
    v88 = v9;
    if (v18)
    {
      v22 = v18[8];
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v21 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v23 + 16));
    *(v23 + 24) = v22;
    os_unfair_lock_unlock((v23 + 16));

    v24 = type metadata accessor for Text.Style(0);
    v25 = *(*(v24 - 8) + 56);
    v25(v97, 1, 1, v24);
    v26 = v18;
    v27 = v100;
    v87 = *(v100 + 8);
    v28 = v88;
    v29 = v88[6];
    v30 = v98;
    v25(v98 + v29, 1, 1, v24);
    v31 = v28[7];
    v32 = v30 + v28[8];
    *v32 = 520;
    v32[2] = 2;
    *(v30 + v28[9]) = 3;
    v33 = v28[10];
    *(v30 + v33) = 1;
    v96 = v26;
    *v30 = v26;
    v30[1] = v21;
    v88 = v21;
    outlined assign with take of Text.Style?(v97, v30 + v29);
    *(v30 + v31) = v87;
    v34 = *(v27 + 24);
    *(v30 + v33) = v34 | 1;
    v35 = *(v27 + 40);
    v30[2] = v35;
    v36 = *(*v99 + 80);
    v37 = v35;
    v36(&v121, v30);
    if (BYTE8(v121) == 2)
    {
      v38 = v121;
      v39 = *(v27 + 8);
      v40 = (v34 >> 3) & 1;
      v41 = *(v121 + 16);
      v42 = *(v121 + 24);
      v43 = *(v121 + 32);
      v44 = *(v121 + 44);
      v83 = v40;
      v84 = v44;
      v45 = *(v121 + 45);
      v86 = v42;
      v87 = v45;
      v46 = *(v121 + 48);
      v47 = v41;
      outlined copy of Image.Location(v43);
      v85 = v46;
      v48 = v47;

      v49 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v96);
      v97 = v37;
      v50 = v49;

      RBSymbolAnimator.updateSymbolEffects(_:effects:transaction:animationsDisabled:)((v27 + 48), v50, v39, v83);

      LODWORD(v47) = [v48 version];
      LOBYTE(v46) = v84 & ~*(v27 + 90);
      v51 = swift_allocObject();
      *(v51 + 16) = v48;
      *(v51 + 24) = v86;
      *(v51 + 32) = v43;
      *(v51 + 40) = v47;
      *(v51 + 44) = v46 & 1;
      *(v51 + 45) = v87;
      *(v51 + 48) = v85;
      outlined consume of GraphicsImage.Contents?(v38, 2u);
      *&v121 = v51;
      BYTE8(v121) = 2;
      LOBYTE(v43) = BYTE10(v131[1]);
      v52 = *(v51 + 32);
      v53 = *(v51 + 48);
      v54 = *(v51 + 16);
      outlined copy of Image.Location(v52);
      v55 = v53;
      outlined copy of Image.Location(v52);
      v56 = [v54 styleMask];
      *&v108[0] = v52;
      _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v56, v108, &v110);

      outlined consume of Image.Location(v52);
      v57 = v110;
      LOWORD(v53) = WORD4(v110);
      v58 = BYTE10(v110);
      v59 = *&v131[1];

      v60 = v48;
      *&v131[1] = v57;
      WORD4(v131[1]) = v53;
      BYTE10(v131[1]) = v58;
      if ((v43 & 2) != 0)
      {
LABEL_15:
        v61 = v58 | 2;
LABEL_18:
        v65 = v100;
        BYTE10(v131[1]) = v61;
        v106[9] = v130;
        *v107 = v131[0];
        *&v107[11] = *(v131 + 11);
        v106[4] = v125;
        v106[5] = v126;
        v106[6] = v127;
        v106[7] = v128;
        v106[8] = v129;
        v106[0] = v121;
        v106[1] = v122;
        v66 = v123;
        v67 = v124;
        v106[2] = v123;
        v106[3] = v124;
        v118 = v129;
        v119 = v130;
        v120[0] = v131[0];
        *(v120 + 11) = *(v131 + 11);
        v114 = v125;
        v115 = v126;
        v116 = v127;
        v117 = v128;
        v110 = v121;
        v111 = v122;
        *(v100 + 40) = v60;
        LODWORD(v100) = v107[0];
        v112 = v66;
        v113 = v67;
        v68 = v128;
        v69 = v129;
        v70 = *(v65 + 90);
        v71 = v99;

        outlined init with copy of Image.Resolved(v106, v108);
        outlined copy of AccessibilityImageLabel?(v68, *(&v68 + 1), v69, *(&v69 + 1));
        outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
        v101 = v71;
        v102 = v68;
        v103 = v69;
        v104 = v100;
        v105 = v70;
        v72 = v91;
        (*(v94 + 24))(&v110, &v101);
        v74 = *(&v102 + 1);
        v73 = v102;
        v76 = *(&v103 + 1);
        v75 = v103;

        outlined consume of AccessibilityImageLabel?(v73, v74, v75, v76);
        v108[8] = v118;
        v108[9] = v119;
        v109[0] = v120[0];
        *(v109 + 11) = *(v120 + 11);
        v108[4] = v114;
        v108[5] = v115;
        v108[6] = v116;
        v108[7] = v117;
        v108[0] = v110;
        v108[1] = v111;
        v108[2] = v112;
        v108[3] = v113;
        v77 = outlined destroy of Image.Resolved(v108);
        v78 = MEMORY[0x1EEE9AC00](v77);
        *(&v82 - 2) = v90;
        swift_getWitnessTable(protocol conformance descriptor for Image.ImageViewChild<A>, v78);
        *(&v82 - 1) = v79;
        v80 = v92;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v72, partial apply for closure #1 in StatefulRule.value.setter, (&v82 - 4), v92, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v81);

        (*(v95 + 8))(v72, v80);
        v118 = v129;
        v119 = v130;
        v120[0] = v131[0];
        *(v120 + 11) = *(v131 + 11);
        v114 = v125;
        v115 = v126;
        v116 = v127;
        v117 = v128;
        v110 = v121;
        v111 = v122;
        v112 = v123;
        v113 = v124;
        outlined destroy of Image.Resolved(&v110);
        _s7SwiftUI22ImageResolutionContextVWOhTm_1(v98, type metadata accessor for ImageResolutionContext);
        return;
      }
    }

    else
    {
      v62 = BYTE10(v131[1]);
      v63 = (BYTE8(v121) != 255) & (v125 ^ 1);
      v64 = *&v131[1];

      v60 = 0;
      v58 = 0;
      *&v131[1] = 0;
      WORD4(v131[1]) = v63;
      BYTE10(v131[1]) = 0;
      if ((v62 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    v61 = v58 & 0xFD;
    goto LABEL_18;
  }
}

uint64_t sub_18D123428()
{
  v1 = *(v0 + 32);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

void type metadata accessor for Text.Style?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Text.Style?)
  {
    type metadata accessor for Text.Style(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Text.Style?);
    }
  }
}

void type metadata accessor for Text.Style?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI4TextV5StyleVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI4TextV5StyleVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_18D123600(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for TypesettingConfiguration(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[21];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[23];
    goto LABEL_9;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[24];
    goto LABEL_9;
  }

  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[26];

  return v17(v18, a2, a2, v16);
}

uint64_t outlined assign with take of Text.Style?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Text.Style?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for NamedImage.VectorKey(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey()
{
  if (!lazy protocol witness table cache variable for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.EffectiveSymbolFontKey, &type metadata for EnvironmentValues.EffectiveSymbolFontKey, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey);
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey, &type metadata for EnvironmentValues.EffectiveSymbolFontKey);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for NamedImage.BitmapKey(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for sharedCache()
{
  type metadata accessor for NamedImage.Cache();
  swift_allocObject();
  result = specialized NamedImage.Cache.init(archiveDelegate:)(0);
  static NamedImage.sharedCache = result;
  return result;
}

uint64_t specialized NamedImage.Cache.init(archiveDelegate:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  *(v1 + 40) = v2;
  *(v1 + 48) = v2;
  *(v1 + 56) = v2;
  *(v1 + 16) = a1;
  v3 = objc_opt_self();

  v4 = [v3 defaultCenter];

  v5 = MEMORY[0x193ABEC20](0xD000000000000030, 0x800000018DD7CB50);
  [v4 addObserver:v1 selector:sel_releaseImages name:v5 object:0];

  v6 = [v3 defaultCenter];

  v7 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD7CB90);
  [v6 addObserver:v1 selector:sel_releaseImages name:v7 object:0];

  return v1;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for (ColorScheme?, ColorSchemeContrast)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ColorScheme?, ColorSchemeContrast))
  {
    type metadata accessor for NamedImage.VectorInfo?(255, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ColorScheme?, ColorSchemeContrast));
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV019EffectiveSymbolFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
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
    v18 = a1;
    v19 = 0;

    v12 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v18);

    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey, &type metadata for EnvironmentValues.EffectiveSymbolFontKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    (v11[1])(v17, &type metadata for Font, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v18 = a1;
    v19 = 0;

    v13 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v18);

    *&v17[0] = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>(0);
    v20 = v14;
    v21 = &protocol witness table for DerivedValue<A>;
    v18 = v13;

    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  v15 = *&v17[0];
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveSymbolFontKey and conformance EnvironmentValues.EffectiveSymbolFontKey, &type metadata for EnvironmentValues.EffectiveSymbolFontKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveSymbolFontKey>>);
    }
  }
}

void *specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, void *a2, char a3, uint64_t (*a4)(void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  if ((a1 & 0x100) != 0)
  {
    if (a3 & 1 | (a2 != 8))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_18DDACA80;
      v8[32] = v7 & 1;
      v8[33] = 1;
      v8[34] = v7 & 1;
      *(v8 + 35) = 512;
      v8[37] = 1;
      v9 = v8 + 38;
      v10 = v8 + 39;
      goto LABEL_6;
    }

    v8 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  }

  else
  {
    if (a3 & 1 | (a2 != 8))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      *(v8 + 1) = xmmword_18DDAB4C0;
      v8[32] = v7 & 1;
      v8[33] = 0;
      v9 = v8 + 34;
      v10 = v8 + 35;
LABEL_6:
      *v9 = 2;
      *v10 = 0;
      goto LABEL_9;
    }

    v8 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  }

LABEL_9:
  v11 = *(v8 + 2);
  v12 = 0;
  if (v11)
  {
    v13 = v8 + 33;
    v37 = a4;
    v36 = v5;
    v35 = v6;
    while (1)
    {
      if (v12)
      {
        goto LABEL_12;
      }

      v14 = *(v13 - 1);
      v15 = 0xD00000000000001BLL;
      if (!*v13)
      {
        v15 = 0x7261657070414955;
      }

      v17 = "UIAppearanceHighContrastAny";
      v16 = 0x800000018DD7CA20;
      if (!*v13)
      {
        v16 = 0xEF796E4165636E61;
      }

      v18 = 0xD00000000000001CLL;
      if (!*v13)
      {
        v18 = 0xD000000000000010;
        v17 = "UIAppearanceHighContrastDark";
      }

      v19 = v17 | 0x8000000000000000;
      if (*v13)
      {
        v20 = 0xD00000000000001DLL;
      }

      else
      {
        v20 = 0xD000000000000011;
      }

      v21 = "UIAppearanceDark";
      if (!*v13)
      {
        v21 = "UIAppearanceHighContrastLight";
      }

      v22 = v21 | 0x8000000000000000;
      if (v14)
      {
        v20 = v18;
        v23 = v19;
      }

      else
      {
        v23 = v22;
      }

      if (v14 == 2)
      {
        v24 = v15;
      }

      else
      {
        v24 = v20;
      }

      if (v14 == 2)
      {
        v25 = v16;
      }

      else
      {
        v25 = v23;
      }

      v26 = a4(v24, v25);
      v12 = v26;
      if (!v26)
      {
        goto LABEL_11;
      }

      if (v5)
      {
        break;
      }

      if ([v12 idiom] != v6)
      {
        goto LABEL_47;
      }

LABEL_12:
      v13 += 2;
      if (!--v11)
      {
        goto LABEL_50;
      }
    }

    if (v6)
    {
      v27 = [v26 appearance];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        if (v29 == v24 && v31 == v25)
        {
        }

        else
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v33 & 1) == 0)
          {

            v12 = 0;
          }
        }

        a4 = v37;
        v5 = v36;
        v6 = v35;
        goto LABEL_12;
      }

LABEL_47:

      v12 = 0;
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_50:

  return v12;
}

void *NamedImage.VectorKey.loadVectorInfo(from:idiom:)@<X0>(uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  result = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v4 | *v2, 0, 1, partial apply for closure #1 in NamedImage.VectorKey.loadVectorInfo(from:idiom:));
  if (result)
  {
    v6 = result;
    v7 = [v6 layoutDirection];
    if ([v6 isFlippable])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = 4;
      if (!v2[32])
      {
        v10 = 5;
      }

      v9 = v7 != v10;
    }

    Image.LayoutMetrics.init(glyph:flipsRightToLeft:)(v6, v9, v13);
    *a2 = v6;
    *(a2 + 8) = v9;
    v11 = v13[1];
    *(a2 + 16) = v13[0];
    *(a2 + 32) = v11;
    v12 = v13[3];
    *(a2 + 48) = v13[2];
    *(a2 + 64) = v12;
    return swift_unknownObjectWeakInit();
  }

  else
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id closure #1 in NamedImage.VectorKey.loadVectorInfo(from:idiom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = *(a4 + 16);
  v33 = *(a4 + 8);
  v10 = MEMORY[0x193ABEC20]();
  v11 = *(a4 + 24);
  if (*(a4 + 32))
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  v13 = type metadata accessor for NamedImage.VectorKey(0);
  v31 = v13[10];
  v14 = qword_18DDE48D0[*(a4 + v31)];
  v15 = *(a4 + v13[9]);
  v16 = Font.Weight.glyphWeight.getter(v15);
  v17 = *(a4 + v13[11]);
  v34 = a2;
  v18 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v20 = [a3 namedVectorGlyphWithName:v10 scaleFactor:a5 deviceIdiom:v12 layoutDirection:v14 glyphSize:v16 glyphWeight:v18 glyphPointSize:v11 appearanceName:v17 locale:isa];

  if (v20)
  {
    NamedImage.VectorKey.symbolSizeScale(for:)(v20);
    v22 = v21;
    if (v21 != 1.0)
    {
      v23 = MEMORY[0x193ABEC20](v33, v32);
      if (*(a4 + 32))
      {
        v24 = 4;
      }

      else
      {
        v24 = 5;
      }

      v25 = v22 * **(&unk_1E7243F58 + *(a4 + v31));
      v26 = Font.Weight.glyphContinuousWeight.getter(v15);
      v27 = MEMORY[0x193ABEC20](a1, v34);
      v28 = Locale._bridgeToObjectiveC()().super.isa;
      v29 = [a3 namedVectorGlyphWithName:v23 scaleFactor:a5 deviceIdiom:v24 layoutDirection:v27 glyphContinuousSize:v28 glyphContinuousWeight:v11 glyphPointSize:v25 appearanceName:v26 locale:v17];

      if (v29)
      {

        return v29;
      }
    }
  }

  return v20;
}

uint64_t Font.Weight.glyphWeight.getter(double a1)
{
  if (vabdd_f64(-0.8, a1) < 0.001)
  {
    return 1;
  }

  if (vabdd_f64(-0.6, a1) < 0.001)
  {
    return 2;
  }

  if (vabdd_f64(-0.4, a1) < 0.001)
  {
    return 3;
  }

  if (vabdd_f64(0.0, a1) < 0.001)
  {
    return 4;
  }

  if (vabdd_f64(0.23, a1) < 0.001)
  {
    return 5;
  }

  if (vabdd_f64(0.3, a1) < 0.001)
  {
    return 6;
  }

  if (vabdd_f64(0.4, a1) < 0.001)
  {
    return 7;
  }

  if (vabdd_f64(0.56, a1) < 0.001)
  {
    return 8;
  }

  if (vabdd_f64(0.62, a1) >= 0.001)
  {
    return 4;
  }

  return 9;
}

uint64_t outlined destroy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Image.Location.fillVariant(_:name:)(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  LOWORD(v15) = *a1;
  if (one-time initialization token for fill != -1)
  {
    swift_once();
  }

  LOWORD(v13) = static SymbolVariants.fill;
  if ((SymbolVariants.contains(_:)(&v13) & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v7 = off_1ED530E10;
    if (!*(off_1ED530E10 + 2))
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v6 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v7 = off_1ED52C9C8;
    if (!*(off_1ED52C9C8 + 2))
    {
      return 0;
    }

LABEL_13:
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v9)
    {
      v10 = *(v7[7] + 16 * v8);

      return v10;
    }

    return 0;
  }

  v15 = 0x6C6C69662ELL;
  v16 = 0xE500000000000000;
  v13 = a2;
  v14 = a3;

  v13 = String.init<A>(_:)();
  v14 = v12;
  String.append<A>(contentsOf:)();
  return v13;
}

Swift::String_optional __swiftcall SymbolVariants.shapeVariantName(name:)(Swift::String name)
{
  if (*(v1 + 1) > 2u)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {

    v6 = String.init<A>(_:)();
    v7 = v2;
    String.append<A>(contentsOf:)();

    v3 = v6;
    v4 = v7;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

void Font.resolveTraits(in:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v5, v15);
  }

  else
  {
    v14[0] = v5;

    static EnvironmentValues.FontContextKey.value(in:)(v14, v15);
  }

  v14[0] = v15[0];
  v14[1] = v15[1];
  v14[2] = v15[2];
  (*(*a2 + 104))(&v16, v15);
  outlined destroy of Font.Context(v14);
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v5);

    if (v7 >> 62)
    {
LABEL_17:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];

      if (v7 >> 62)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_18:

    v12 = v17;
    v13 = v18;
    *a3 = v16;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    return;
  }

LABEL_10:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AC03C0](i, v7);
      }

      else
      {
        v11 = *(v7 + 8 * i + 32);
      }

      (*(*v11 + 88))(&v16);
    }

    goto LABEL_18;
  }

  __break(1u);
}

void Image.NamedImageProvider.resolve(in:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = (v2 + 21);
  v12 = *(v2 + 20);
  v75 = *(v2 + 21);
  v76 = *(v2 + 23);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 56);
  v72 = *(v2 + 40);
  v73 = v15;
  v74 = *(v2 + 72);
  v45 = v14;
  v46 = v9;
  v47 = v8;
  if (!v13)
  {
    v16 = (v2 + 21);
    v17 = v10;
    v48 = a1;
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v18 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    v16 = (v2 + 21);
    v17 = v10;
    v48 = a1;
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v18 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v19 = v18;
    goto LABEL_14;
  }

  v20 = v10;
  outlined copy of Image.Location(v13);
  outlined copy of Image.Location(v13);
  v21 = one-time initialization token for sharedCache;
  v22 = v13;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = NamedImage.Cache.subscript.getter(v22);
  if (!v23)
  {
    outlined consume of Image.Location(v13);
    outlined consume of Image.Location(v13);

    *&v52 = v47;
    *(&v52 + 1) = v46;
    LODWORD(v53) = v20;
    BYTE4(v53) = v12;
    *(&v53 + 5) = *v11;
    BYTE7(v53) = *(v11 + 2);
    *(&v53 + 1) = v13;
    *&v54[0] = v45;
    *(v54 + 8) = *(v3 + 40);
    *(&v54[1] + 8) = *(v3 + 56);
    BYTE8(v54[2]) = *(v3 + 72);

    Image.NamedImageProvider.resolveError(in:)(v44);

    return;
  }

  v19 = v23;
  v16 = v11;
  v48 = a1;
  v17 = v20;
  v14 = v45;
LABEL_14:
  v24 = v46;
  v61 = v47;
  v62 = v46;
  v63 = v17;
  v64 = v12;
  v25 = v16;
  v65 = *v16;
  v66 = *(v16 + 2);
  v67 = v13;
  v68 = v14;
  v69 = *(v3 + 40);
  v70 = *(v3 + 56);
  v71 = *(v3 + 72);
  *&v58 = v13;
  v26 = v47;
  v27 = v19;
  Image.NamedImageProvider.vectorInfo(in:from:at:)(v48, v19, &v58, &v49);
  outlined consume of Image.Location(v58);
  v28 = v49;
  outlined consume of Image.Location(v13);
  if (v28)
  {
    outlined init with take of NamedImage.VectorInfo(&v49, &v52);
    *&v49 = v26;
    *(&v49 + 1) = v24;
    LODWORD(v50) = v17;
    BYTE4(v50) = v12;
    *(&v50 + 5) = *v25;
    BYTE7(v50) = *(v25 + 2);
    *(&v50 + 1) = v13;
    *v51 = v45;
    *&v51[8] = *(v3 + 40);
    *&v51[24] = *(v3 + 56);
    v51[40] = *(v3 + 72);
    LOBYTE(v58) = v12 & 1;
    v61 = v13;
    Image.NamedImageProvider.resolveVector(info:value:in:at:catalog:)(&v52, v17 | ((v12 & 1) << 32), v48, &v61, v27, v44);

    outlined consume of Image.Location(v61);
    outlined destroy of NamedImage.VectorInfo(&v52);
    return;
  }

  v41 = v27;
  v42 = v17;
  _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  v29 = v45;
  if (!v45)
  {
    v30 = v46;
    v31 = v48;
    v32 = v12;
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v35 = static Image.Location.systemAssetManager;
    goto LABEL_32;
  }

  v30 = v46;
  v31 = v48;
  v32 = v12;
  if (v45 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v35 = static Image.Location.privateSystemAssetManager;
LABEL_32:
    v34 = v35;
    goto LABEL_33;
  }

  v33 = v43;
  if (v45 == 2)
  {
    goto LABEL_23;
  }

  outlined copy of Image.Location(v45);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v34 = NamedImage.Cache.subscript.getter(v29);
  if (v34)
  {
LABEL_33:
    v36 = v34;
    v69 = v72;
    v37 = v47;
    v61 = v47;
    v62 = v30;
    v38 = v42;
    v63 = v42;
    v64 = v32;
    v65 = v75;
    v66 = v76;
    v67 = v13;
    v68 = v29;
    v70 = v73;
    v71 = v74;
    *&v58 = v29;
    Image.NamedImageProvider.vectorInfo(in:from:at:)(v31, v34, &v58, &v49);
    if (v49)
    {
      outlined consume of Image.Location(v13);
      outlined init with take of NamedImage.VectorInfo(&v49, &v52);
      *&v51[8] = v72;
      *&v49 = v37;
      *(&v49 + 1) = v30;
      LODWORD(v50) = v38;
      BYTE4(v50) = v32;
      *(&v50 + 5) = v75;
      BYTE7(v50) = v76;
      *(&v50 + 1) = v13;
      *v51 = v29;
      *&v51[24] = v73;
      v51[40] = v74;
      LOBYTE(v58) = v32 & 1;
      v61 = v29;
      Image.NamedImageProvider.resolveVector(info:value:in:at:catalog:)(&v52, v38 | ((v32 & 1) << 32), v31, &v61, v36, v44);

      outlined destroy of NamedImage.VectorInfo(&v52);
      outlined consume of Image.Location?(v29);
      return;
    }

    outlined consume of Image.Location?(v29);

    _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    v33 = v43;
    if (v13 < 2)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  outlined consume of Image.Location?(v29);
LABEL_23:
  if (v13 < 2)
  {
LABEL_24:
    outlined consume of Image.Location(v13);
LABEL_40:
    *(v54 + 8) = v72;
    *&v52 = v47;
    *(&v52 + 1) = v30;
    LODWORD(v53) = v42;
    BYTE4(v53) = v32;
    *(&v53 + 5) = v75;
    BYTE7(v53) = v76;
    *(&v53 + 1) = v13;
    *&v54[0] = v29;
    *(&v54[1] + 8) = v73;
    BYTE8(v54[2]) = v74;

    Image.NamedImageProvider.resolveError(in:)(v44);

    return;
  }

LABEL_36:
  v61 = v13;
  v39 = v31[1];
  *&v49 = *v31;
  *(&v49 + 1) = v39;

  NamedImage.BitmapKey.init(name:location:in:)(v47, v30, &v61, &v49, v33);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v40 = *(v33 + 32);
  v61 = v40;
  outlined copy of Image.Location(v40);
  NamedImage.Cache.subscript.getter(v33, &v61, &v49);
  outlined consume of Image.Location(v40);
  v54[0] = *v51;
  v54[1] = *&v51[16];
  v54[2] = *&v51[32];
  *(&v54[2] + 9) = *&v51[41];
  v52 = v49;
  v53 = v50;
  v58 = v49;
  v59 = v50;
  v60 = *v51;
  v57 = v51[56];
  v55 = *&v51[24];
  v56 = *&v51[40];
  if (v51[16] == 3)
  {
    outlined destroy of NamedImage.BitmapKey(v33, type metadata accessor for NamedImage.BitmapKey);
    goto LABEL_40;
  }

  v69 = v72;
  v70 = v73;
  v49 = v58;
  v50 = v59;
  *v51 = v60;
  *&v51[24] = v55;
  v61 = v47;
  v62 = v30;
  v63 = v42;
  v64 = v32;
  v65 = v75;
  v66 = v76;
  v67 = v13;
  v68 = v29;
  v71 = v74;
  *&v51[40] = v56;
  v51[56] = v57;
  Image.NamedImageProvider.resolveBitmap(key:info:in:)(v33, &v49, v31, v44);

  outlined destroy of NamedImage.BitmapKey(v33, type metadata accessor for NamedImage.BitmapKey);
  outlined destroy of NamedImage.BitmapKey(&v52, type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t specialized Image.Location.aliasedName(_:)(uint64_t result, uint64_t a2)
{
  if (*v2 != 1)
  {
    if (*v2)
    {
      return result;
    }

    if (one-time initialization token for systemAssetManager != -1)
    {
      v7 = result;
      v8 = a2;
      swift_once();
      a2 = v8;
      result = v7;
    }

    v3 = off_1ED530E18;
    if (!*(off_1ED530E18 + 2))
    {
      return result;
    }

LABEL_10:
    v4 = result;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(result, a2);
    result = v4;
    if (v6)
    {
      return *(v3[7] + 16 * v5);
    }

    return result;
  }

  if (one-time initialization token for privateSystemAssetManager != -1)
  {
    v9 = result;
    v10 = a2;
    swift_once();
    a2 = v10;
    result = v9;
  }

  v3 = off_1ED52C9D0;
  if (*(off_1ED52C9D0 + 2))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t SymbolVariants.contains(_:)(unsigned __int8 *a1)
{
  v2 = a1[1];
  v3 = v1[1];
  v5 = v3 != 3 && v3 == v2;
  v6 = v2 == 3 || v5;
  if ((*a1 & ~*v1) != 0)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t ViewGraphHost.Idiom.cuiDeviceClass.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_18DE125A8[v1];
  }
}

void NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v51 = a5;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  v48 = type metadata accessor for Text.Style(0);
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a3;
  v18 = *a4;
  v19 = a4[1];
  v54 = *a4;
  v55 = v19;

  EnvironmentValues.colorScheme.getter(&v52);
  v20 = v52;
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v18, &v54);

    v21 = v54;
    *a7 = v20;
    *(a7 + 1) = v21;
    *(a7 + 8) = a1;
    *(a7 + 16) = a2;

    v22 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18);

    *(a7 + 24) = v22;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v18, &v54);

    v23 = v54;
    v24 = v51;
  }

  else
  {
    v25 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v18);
    if (v25)
    {
      v26 = *(v25 + 72);
    }

    else
    {
      v26 = 0;
    }

    *a7 = v20;
    *(a7 + 1) = v26;
    *(a7 + 8) = a1;
    *(a7 + 16) = a2;
    v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v27)
    {
      v28 = v27[9];
    }

    else
    {
      v28 = 1.0;
    }

    v24 = v51;
    *(a7 + 24) = v28;
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    if (v29)
    {
      v23 = *(v29 + 72);
    }

    else
    {
      v23 = 0;
    }
  }

  *(a7 + 32) = v23;
  v30 = type metadata accessor for NamedImage.VectorKey(0);
  v31 = v30[8];
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, a7 + v31);
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v32)
    {
      v33 = *(*v32 + 248);
      v34 = v32;
      v35 = type metadata accessor for Locale();
      v36 = v34 + v33;
      v24 = v51;
      (*(*(v35 - 8) + 16))(a7 + v31, v36, v35);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Locale();
      v38 = __swift_project_value_buffer(v37, static LocaleKey.defaultValue);
      (*(*(v37 - 8) + 16))(a7 + v31, v38, v37);
    }
  }

  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v24, v14, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  if ((*(v15 + 48))(v14, 1, v48) == 1)
  {
    outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    if (v19)
    {

      v39 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV019EffectiveSymbolFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18);
    }

    else
    {
      v54 = v18;
      v55 = 0;

      v39 = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(&v54);
    }

    v52 = v18;
    v53 = v19;
    Font.resolveTraits(in:)(&v52, v39, &v54);

    v41 = v54;
    v40 = v55;
    if (!v19)
    {
LABEL_27:
      v43 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
      if (!v43)
      {
        goto LABEL_33;
      }

      v42 = *(v43 + 72);
      if (v42 == 2)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else
  {
    outlined init with take of NamedImage.BitmapKey(v14, v17, type metadata accessor for Text.Style);
    v52 = v18;
    v53 = v19;
    Text.Style.fontTraits(in:)(&v52, &v54);
    outlined destroy of NamedImage.BitmapKey(v17, type metadata accessor for Text.Style);
    v41 = v54;
    v40 = v55;
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, &v54);

  LOBYTE(v42) = v54;
  if (v54 == 2)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v42)
  {
    CTFontGetAccessibilityBoldWeightOfWeight();
    v40 = v44;
  }

LABEL_33:
  *(a7 + v30[9]) = v40;
  if (v19)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v18, &v54);

    outlined destroy of Text.Style?(v24, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    v45 = v54;
  }

  else
  {
    v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v18);
    if (v46)
    {
      v45 = *(v46 + 72);
    }

    else
    {
      v45 = 1;
    }

    outlined destroy of Text.Style?(v24, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  }

  *(a7 + v30[10]) = v45;
  *(a7 + v30[11]) = v41;
  v47 = v50;
  *(a7 + v30[12]) = v49;
  *(a7 + v30[13]) = v47;
}

uint64_t outlined destroy of Text.Style?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FontBox.resolveTraits(in:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return (*(*(v2 + 152) + 40))(v5, *(v2 + 144));
}

double NamedImage.Cache.subscript.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v3 + 24));
  v11 = *(v3 + 32);
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v13 & 1) != 0))
  {
    outlined init with copy of NamedImage.VectorInfo(*(v11 + 56) + 88 * v12, v19);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  os_unfair_lock_unlock(v4 + 6);
  if (*&v19[0])
  {
    outlined init with take of NamedImage.VectorInfo(v19, v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CUICatalog, 0x1E6999368);
      v16 = a2;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of NamedImage.VectorInfo(v21);
  }

  else
  {
    _sypSgWOhTm_9(v19, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  }

  NamedImage.VectorKey.loadVectorInfo(from:idiom:)(v19);
  if (*&v19[0])
  {
    outlined init with take of NamedImage.VectorInfo(v19, v21);
    os_unfair_lock_lock(v4 + 6);
    outlined init with copy of NamedImage.Key(a1, v10, type metadata accessor for NamedImage.VectorKey);
    outlined init with copy of NamedImage.VectorInfo(v21, v19);
    specialized Dictionary.subscript.setter(v19, v10);
    os_unfair_lock_unlock(v4 + 6);
LABEL_12:
    outlined init with take of NamedImage.VectorInfo(v21, a3);
    return result;
  }

  _sypSgWOhTm_9(v19, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for NamedImage.VectorInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t outlined destroy of NamedImage.BitmapKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void destroy for NamedImage.VectorKey(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 32);
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 48));
  if (v6 >= 2)
  {
  }
}

uint64_t outlined init with copy of NamedImage.Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double outlined copy of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of AccessibilityImageLabel(a1, a2, a3, a4);
  }

  return result;
}

void specialized Paint._apply(to:)(uint64_t *a1)
{
  v6 = *(a1 + 24);
  if (v6 <= 2)
  {
    v59 = v5;
    v60 = v4;
    v61 = v1;
    v62 = v2;
    v63 = v3;
    if (!v6)
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (v6 == 1)
    {
      v8 = a1[1];
      if (v8 == a1[2])
      {
        return;
      }

      v9 = *a1;
      v10 = a1[7];
      *&v48 = a1[6];
      *(&v48 + 1) = v10;

      LinearGradient.resolvePaint(in:)(&v48, &v57);

      if (a1[13])
      {
        v48 = v57;
        v49 = v58[0];
        *v50 = v58[1];
        *&v50[9] = *(&v58[1] + 9);
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
        v11 = swift_allocObject();
        v12 = v58[0];
        *(v11 + 16) = v57;
        *(v11 + 32) = v12;
        *(v11 + 48) = v58[1];
        *(v11 + 57) = *(&v58[1] + 9);
        outlined init with copy of LinearGradient._Paint(&v48, v46);
      }

      else
      {
        v17 = v57;
        v18 = BYTE8(v57);
        v19 = HIDWORD(v57);
        v20 = v58[0];
        v21 = BYTE8(v58[2]);
        LOBYTE(v48) = v58[0];
        type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
        v11 = swift_allocObject();
        *(v11 + 16) = v17;
        *(v11 + 24) = v18;
        *(v11 + 28) = v19;
        *(v11 + 32) = v20;
        v22 = *(a1 + 11);
        v23 = *(a1 + 9);
        v24 = vmulq_f64(v22, *(&v58[1] + 8));
        v25 = vaddq_f64(v23, vmulq_f64(v22, *(v58 + 8)));
        *(v11 + 56) = vaddq_f64(v23, v24);
        *(v11 + 40) = v25;
        *(v11 + 72) = v21;
      }

      DWORD2(v52) = 1065353216;
      *&v53 = 0;
      BYTE8(v53) = -1;
      v54 = MEMORY[0x1E69E7CC0];
      *&v48 = v11;
      BYTE5(v52) = 1;
      v26 = *(a1 + 5);
      v55[4] = *(a1 + 4);
      v56[0] = v26;
      *(v56 + 12) = *(a1 + 92);
      v27 = *(a1 + 1);
      v55[0] = *a1;
      v55[1] = v27;
      v28 = *(a1 + 3);
      v55[2] = *(a1 + 2);
      v55[3] = v28;
      v29 = v28;
      if (*(&v28 + 1))
      {

        outlined init with copy of _ShapeStyle_Shape(v55, v46);

        v30 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v29);
        v32 = v31;
      }

      else
      {

        outlined init with copy of _ShapeStyle_Shape(v55, v46);
        v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v29);
        if (v33)
        {
          v30 = v33[9];
          v32 = v33[10];
        }

        else
        {
          v32 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
          v30 = &type metadata for CoreUIDefaultSystemColorDefinition;
        }
      }

      v46[0] = v29;
      v34 = v32[2];

      v35 = v34(v8, v46, v30, v32);

      outlined destroy of _ShapeStyle_Shape(v55);
      _ShapeStyle_Pack.Style.applyOpacity(_:)(v35);
      v46[4] = v51;
      v46[5] = v52;
      v46[6] = v53;
      v47 = v54;
      v46[0] = v48;
      v46[1] = v49;
      v46[2] = *v50;
      v46[3] = *&v50[16];
      v44[4] = v51;
      v44[5] = v52;
      v44[6] = v53;
      v45 = v54;
      v44[0] = v48;
      v44[1] = v49;
      v44[2] = *v50;
      v44[3] = *&v50[16];
      v43 = v9;
      if (*(a1 + 40) == 1)
      {
        v36 = a1[4];
        outlined init with copy of _ShapeStyle_Pack.Style(v46, v40);
        outlined copy of _ShapeStyle_Shape.Result(v36, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v36, 1u);
        a1[4] = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Style(v46, v40);
        v36 = MEMORY[0x1E69E7CC0];
      }

      v42 = v36;
      _ShapeStyle_Pack.subscript.setter(v44, &v43, v8);

      v40[4] = v51;
      v40[5] = v52;
      v40[6] = v53;
      v41 = v54;
      v40[0] = v48;
      v40[1] = v49;
      v40[2] = *v50;
      v40[3] = *&v50[16];
      outlined destroy of _ShapeStyle_Pack.Style(v40);
      v38[0] = v57;
      v38[1] = v58[0];
      v39[0] = v58[1];
      *(v39 + 9) = *(&v58[1] + 9);
      outlined destroy of LinearGradient._Paint(v38);
      v37 = v42;
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v37;
      v16 = 1;
    }

    else
    {
      if (!*(*v1 + 16))
      {
        return;
      }

      v13 = *(*v1 + 32);
      v14 = a1[4];
      v15 = *(a1 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v14, v15);
      a1[4] = v13;
      v16 = 3;
    }

    *(a1 + 40) = v16;
  }
}

{
  v6 = *(a1 + 24);
  if (v6 <= 2)
  {
    v65 = v5;
    v66 = v4;
    v67 = v1;
    v68 = v2;
    v69 = v3;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = a1[1];
        if (v8 != a1[2])
        {
          v9 = *a1;
          v10 = a1[7];
          *&v56 = a1[6];
          *(&v56 + 1) = v10;

          EllipticalGradient.resolvePaint(in:)(&v62, v11, &v56);

          if (a1[13])
          {
            v56 = v62;
            v57 = v63;
            *v58 = v64[0];
            *&v58[9] = *(v64 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v12 = swift_allocObject();
            v13 = v63;
            v12[1] = v62;
            v12[2] = v13;
            v12[3] = v64[0];
            *(v12 + 57) = *(v64 + 9);
            v14 = &v56;
            v15 = &v42;
          }

          else
          {
            v42 = v62;
            v43 = v63;
            *v44 = v64[0];
            *&v44[9] = *(v64 + 9);
            v56 = v62;
            v57 = v63;
            *v58 = v64[0];
            *&v58[9] = *(v64 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>(0);
            v12 = swift_allocObject();
            v19 = v57;
            v12[1] = v56;
            v12[2] = v19;
            v20 = *&v58[16];
            v12[3] = *v58;
            v12[4] = v20;
            v21 = *(a1 + 11);
            v12[5] = *(a1 + 9);
            v12[6] = v21;
            v14 = &v42;
            v15 = v40;
          }

          outlined init with copy of EllipticalGradient._Paint(v14, v15);
          v22 = *(a1 + 3);
          v23 = *(a1 + 5);
          v52 = *(a1 + 4);
          v53[0] = v23;
          *(v53 + 12) = *(a1 + 92);
          v24 = *(a1 + 1);
          v49[0] = *a1;
          v49[1] = v24;
          v25 = *(a1 + 3);
          v27 = *a1;
          v26 = *(a1 + 1);
          v50 = *(a1 + 2);
          v51 = v25;
          v28 = *(a1 + 5);
          v59 = v52;
          *v60 = v28;
          *&v60[12] = *(a1 + 92);
          v56 = v27;
          v57 = v26;
          DWORD2(v46) = 1065353216;
          *&v47 = 0;
          BYTE8(v47) = -1;
          v48 = MEMORY[0x1E69E7CC0];
          *&v42 = v12;
          BYTE5(v46) = 1;
          *v58 = v50;
          *&v58[16] = v22;

          outlined init with copy of _ShapeStyle_Shape(v49, v40);
          v29 = _ShapeStyle_Shape.opacity(at:)(v8);
          v54[4] = v59;
          v55[0] = *v60;
          *(v55 + 12) = *&v60[12];
          v54[0] = v56;
          v54[1] = v57;
          v54[2] = *v58;
          v54[3] = *&v58[16];
          outlined destroy of _ShapeStyle_Shape(v54);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v29);
          v59 = v45;
          *v60 = v46;
          *&v60[16] = v47;
          v61 = v48;
          v56 = v42;
          v57 = v43;
          *v58 = *v44;
          *&v58[16] = *&v44[16];
          v40[4] = v45;
          v40[5] = v46;
          v40[6] = v47;
          v41 = v48;
          v40[0] = v42;
          v40[1] = v43;
          v40[2] = *v44;
          v40[3] = *&v44[16];
          v39 = v9;
          if (*(a1 + 40) == 1)
          {
            v30 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v56, v36);
            outlined copy of _ShapeStyle_Shape.Result(v30, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v56, v36);
            v30 = MEMORY[0x1E69E7CC0];
          }

          v38 = v30;
          _ShapeStyle_Pack.subscript.setter(v40, &v39, v8);

          v36[4] = v45;
          v36[5] = v46;
          v36[6] = v47;
          v37 = v48;
          v36[0] = v42;
          v36[1] = v43;
          v36[2] = *v44;
          v36[3] = *&v44[16];
          outlined destroy of _ShapeStyle_Pack.Style(v36);
          v34[0] = v62;
          v34[1] = v63;
          v35[0] = v64[0];
          *(v35 + 9) = *(v64 + 9);
          outlined destroy of EllipticalGradient._Paint(v34);
          v31 = v38;
          v32 = a1[4];
          v33 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v32, v33);
          a1[4] = v31;
          *(a1 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v16 = *(*v1 + 32);
        v17 = a1[4];
        v18 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v17, v18);
        a1[4] = v16;
        *(a1 + 40) = 3;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 1u)
  {
    if (*(a1 + 24))
    {
      v3 = a1[1];
      if (v3 != a1[2])
      {
        v25 = *a1;
        v5 = a1[6];
        v4 = a1[7];
        v6 = v1[1];
        v34 = *v1;
        v35 = v6;
        LODWORD(v36) = *(v1 + 8);
        *&v32[0] = v5;
        *(&v32[0] + 1) = v4;

        v7 = v1;
        v8 = Shader.makeRBShader(in:)(v32);
        outlined consume of EnvironmentValues?(*&v32[0], *(&v32[0] + 1));
        v9 = *(v7 + 8);
        if (a1[13])
        {
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _AnyResolvedPaint);
          v10 = swift_allocObject();
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          *(v10 + 16) = v8;
          *(v10 + 40) = v9;
        }

        else
        {
          type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<Shader.ResolvedShader>>(0);
          v10 = swift_allocObject();
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          *(v10 + 16) = v8;
          *(v10 + 40) = v9;
          v11 = *(a1 + 11);
          *(v10 + 48) = *(a1 + 9);
          *(v10 + 64) = v11;
        }

        v12 = v8;
        DWORD2(v39) = 1065353216;
        *&v40 = 0;
        BYTE8(v40) = -1;
        v41 = MEMORY[0x1E69E7CC0];
        *&v34 = v10;
        BYTE5(v39) = 1;
        v13 = *(a1 + 5);
        v42[4] = *(a1 + 4);
        v43[0] = v13;
        *(v43 + 12) = *(a1 + 92);
        v14 = *(a1 + 1);
        v42[0] = *a1;
        v42[1] = v14;
        v15 = *(a1 + 3);
        v42[2] = *(a1 + 2);
        v42[3] = v15;
        v16 = v15;
        if (*(&v15 + 1))
        {

          outlined init with copy of _ShapeStyle_Shape(v42, v32);

          v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v16);
          v19 = v18;
        }

        else
        {

          outlined init with copy of _ShapeStyle_Shape(v42, v32);
          v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v16);
          if (v20)
          {
            v17 = v20[9];
            v19 = v20[10];
          }

          else
          {
            v19 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        v32[0] = v16;
        v21 = v19[2];

        v22 = v21(v3, v32, v17, v19);

        outlined destroy of _ShapeStyle_Shape(v42);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
        v32[4] = v38;
        v32[5] = v39;
        v32[6] = v40;
        v33 = v41;
        v32[0] = v34;
        v32[1] = v35;
        v32[2] = v36;
        v32[3] = v37;
        v30[4] = v38;
        v30[5] = v39;
        v30[6] = v40;
        v31 = v41;
        v30[0] = v34;
        v30[1] = v35;
        v30[2] = v36;
        v30[3] = v37;
        v29 = v25;
        if (*(a1 + 40) == 1)
        {
          v23 = a1[4];
          outlined init with copy of _ShapeStyle_Pack.Style(v32, v26);
          outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          a1[4] = 0;
          *(a1 + 40) = 5;
        }

        else
        {
          outlined init with copy of _ShapeStyle_Pack.Style(v32, v26);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v28 = v23;
        _ShapeStyle_Pack.subscript.setter(v30, &v29, v3);

        v26[4] = v38;
        v26[5] = v39;
        v26[6] = v40;
        v27 = v41;
        v26[0] = v34;
        v26[1] = v35;
        v26[2] = v36;
        v26[3] = v37;
        outlined destroy of _ShapeStyle_Pack.Style(v26);

        v24 = v28;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v24;
        *(a1 + 40) = 1;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 2u)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v3 = a1[1];
        if (v3 != a1[2])
        {
          v4 = *a1;
          v5 = a1[7];
          *&v50 = a1[6];
          *(&v50 + 1) = v5;

          _AnyEllipticalGradient.resolvePaint(in:)(&v50, &v56);

          if (a1[13])
          {
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<EllipticalGradient._Paint>, lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint, &type metadata for EllipticalGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v57;
            v6[1] = v56;
            v6[2] = v7;
            v6[3] = v58[0];
            *(v6 + 57) = *(v58 + 9);
            v8 = &v50;
            v9 = &v36;
          }

          else
          {
            v36 = v56;
            v37 = v57;
            *v38 = v58[0];
            *&v38[9] = *(v58 + 9);
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<EllipticalGradient._Paint>>(0);
            v6 = swift_allocObject();
            v13 = v51;
            v6[1] = v50;
            v6[2] = v13;
            v14 = *&v52[16];
            v6[3] = *v52;
            v6[4] = v14;
            v15 = *(a1 + 11);
            v6[5] = *(a1 + 9);
            v6[6] = v15;
            v8 = &v36;
            v9 = v34;
          }

          outlined init with copy of EllipticalGradient._Paint(v8, v9);
          v16 = *(a1 + 3);
          v17 = *(a1 + 5);
          v46 = *(a1 + 4);
          v47[0] = v17;
          *(v47 + 12) = *(a1 + 92);
          v18 = *(a1 + 1);
          v43[0] = *a1;
          v43[1] = v18;
          v19 = *(a1 + 3);
          v21 = *a1;
          v20 = *(a1 + 1);
          v44 = *(a1 + 2);
          v45 = v19;
          v22 = *(a1 + 5);
          v53 = v46;
          *v54 = v22;
          *&v54[12] = *(a1 + 92);
          v50 = v21;
          v51 = v20;
          DWORD2(v40) = 1065353216;
          *&v41 = 0;
          BYTE8(v41) = -1;
          v42 = MEMORY[0x1E69E7CC0];
          *&v36 = v6;
          BYTE5(v40) = 1;
          *v52 = v44;
          *&v52[16] = v16;

          outlined init with copy of _ShapeStyle_Shape(v43, v34);
          v23 = _ShapeStyle_Shape.opacity(at:)(v3);
          v48[4] = v53;
          v49[0] = *v54;
          *(v49 + 12) = *&v54[12];
          v48[0] = v50;
          v48[1] = v51;
          v48[2] = *v52;
          v48[3] = *&v52[16];
          outlined destroy of _ShapeStyle_Shape(v48);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v23);
          v53 = v39;
          *v54 = v40;
          *&v54[16] = v41;
          v55 = v42;
          v50 = v36;
          v51 = v37;
          *v52 = *v38;
          *&v52[16] = *&v38[16];
          v34[4] = v39;
          v34[5] = v40;
          v34[6] = v41;
          v35 = v42;
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = *v38;
          v34[3] = *&v38[16];
          v33 = v4;
          if (*(a1 + 40) == 1)
          {
            v24 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            outlined copy of _ShapeStyle_Shape.Result(v24, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            v24 = MEMORY[0x1E69E7CC0];
          }

          v32 = v24;
          _ShapeStyle_Pack.subscript.setter(v34, &v33, v3);

          v30[4] = v39;
          v30[5] = v40;
          v30[6] = v41;
          v31 = v42;
          v30[0] = v36;
          v30[1] = v37;
          v30[2] = *v38;
          v30[3] = *&v38[16];
          outlined destroy of _ShapeStyle_Pack.Style(v30);
          v28[0] = v56;
          v28[1] = v57;
          v29[0] = v58[0];
          *(v29 + 9) = *(v58 + 9);
          outlined destroy of EllipticalGradient._Paint(v28);
          v25 = v32;
          v26 = a1[4];
          v27 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v26, v27);
          a1[4] = v25;
          *(a1 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v50 = *(a1 + 3);
        v11 = (*(*v10 + 120))(&v50);
        if (v11)
        {
          v12 = v11;
          outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
          a1[4] = v12;
          *(a1 + 40) = 3;
        }
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 2u)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v3 = a1[1];
        if (v3 != a1[2])
        {
          v4 = *a1;
          v5 = a1[7];
          *&v50 = a1[6];
          *(&v50 + 1) = v5;

          _AnyLinearGradient.resolvePaint(in:)(&v50, &v56);

          if (a1[13])
          {
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v57;
            v6[1] = v56;
            v6[2] = v7;
            v6[3] = v58[0];
            *(v6 + 57) = *(v58 + 9);
            v8 = &v50;
            v9 = &v36;
          }

          else
          {
            v36 = v56;
            v37 = v57;
            *v38 = v58[0];
            *&v38[9] = *(v58 + 9);
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>(0);
            v6 = swift_allocObject();
            v13 = v51;
            v6[1] = v50;
            v6[2] = v13;
            v14 = *&v52[16];
            v6[3] = *v52;
            v6[4] = v14;
            v15 = *(a1 + 11);
            v6[5] = *(a1 + 9);
            v6[6] = v15;
            v8 = &v36;
            v9 = v34;
          }

          outlined init with copy of AngularGradient._Paint(v8, v9);
          v16 = *(a1 + 3);
          v17 = *(a1 + 5);
          v46 = *(a1 + 4);
          v47[0] = v17;
          *(v47 + 12) = *(a1 + 92);
          v18 = *(a1 + 1);
          v43[0] = *a1;
          v43[1] = v18;
          v19 = *(a1 + 3);
          v21 = *a1;
          v20 = *(a1 + 1);
          v44 = *(a1 + 2);
          v45 = v19;
          v22 = *(a1 + 5);
          v53 = v46;
          *v54 = v22;
          *&v54[12] = *(a1 + 92);
          v50 = v21;
          v51 = v20;
          DWORD2(v40) = 1065353216;
          *&v41 = 0;
          BYTE8(v41) = -1;
          v42 = MEMORY[0x1E69E7CC0];
          *&v36 = v6;
          BYTE5(v40) = 1;
          *v52 = v44;
          *&v52[16] = v16;

          outlined init with copy of _ShapeStyle_Shape(v43, v34);
          v23 = _ShapeStyle_Shape.opacity(at:)(v3);
          v48[4] = v53;
          v49[0] = *v54;
          *(v49 + 12) = *&v54[12];
          v48[0] = v50;
          v48[1] = v51;
          v48[2] = *v52;
          v48[3] = *&v52[16];
          outlined destroy of _ShapeStyle_Shape(v48);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v23);
          v53 = v39;
          *v54 = v40;
          *&v54[16] = v41;
          v55 = v42;
          v50 = v36;
          v51 = v37;
          *v52 = *v38;
          *&v52[16] = *&v38[16];
          v34[4] = v39;
          v34[5] = v40;
          v34[6] = v41;
          v35 = v42;
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = *v38;
          v34[3] = *&v38[16];
          v33 = v4;
          if (*(a1 + 40) == 1)
          {
            v24 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            outlined copy of _ShapeStyle_Shape.Result(v24, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            v24 = MEMORY[0x1E69E7CC0];
          }

          v32 = v24;
          _ShapeStyle_Pack.subscript.setter(v34, &v33, v3);

          v30[4] = v39;
          v30[5] = v40;
          v30[6] = v41;
          v31 = v42;
          v30[0] = v36;
          v30[1] = v37;
          v30[2] = *v38;
          v30[3] = *&v38[16];
          outlined destroy of _ShapeStyle_Pack.Style(v30);
          v28[0] = v56;
          v28[1] = v57;
          v29[0] = v58[0];
          *(v29 + 9) = *(v58 + 9);
          outlined destroy of LinearGradient._Paint(v28);
          v25 = v32;
          v26 = a1[4];
          v27 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v26, v27);
          a1[4] = v25;
          *(a1 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v50 = *(a1 + 3);
        v11 = (*(*v10 + 120))(&v50);
        if (v11)
        {
          v12 = v11;
          outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
          a1[4] = v12;
          *(a1 + 40) = 3;
        }
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 2u)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v3 = a1[1];
        if (v3 != a1[2])
        {
          v4 = *a1;
          v5 = a1[7];
          *&v50 = a1[6];
          *(&v50 + 1) = v5;

          _AnyRadialGradient.resolvePaint(in:)(&v50, &v56);

          if (a1[13])
          {
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = v57;
            v6[1] = v56;
            v6[2] = v7;
            v6[3] = v58[0];
            *(v6 + 57) = *(v58 + 9);
            v8 = &v50;
            v9 = &v36;
          }

          else
          {
            v36 = v56;
            v37 = v57;
            *v38 = v58[0];
            *&v38[9] = *(v58 + 9);
            v50 = v56;
            v51 = v57;
            *v52 = v58[0];
            *&v52[9] = *(v58 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>(0);
            v6 = swift_allocObject();
            v13 = v51;
            v6[1] = v50;
            v6[2] = v13;
            v14 = *&v52[16];
            v6[3] = *v52;
            v6[4] = v14;
            v15 = *(a1 + 11);
            v6[5] = *(a1 + 9);
            v6[6] = v15;
            v8 = &v36;
            v9 = v34;
          }

          outlined init with copy of RadialGradient._Paint(v8, v9);
          v16 = *(a1 + 3);
          v17 = *(a1 + 5);
          v46 = *(a1 + 4);
          v47[0] = v17;
          *(v47 + 12) = *(a1 + 92);
          v18 = *(a1 + 1);
          v43[0] = *a1;
          v43[1] = v18;
          v19 = *(a1 + 3);
          v21 = *a1;
          v20 = *(a1 + 1);
          v44 = *(a1 + 2);
          v45 = v19;
          v22 = *(a1 + 5);
          v53 = v46;
          *v54 = v22;
          *&v54[12] = *(a1 + 92);
          v50 = v21;
          v51 = v20;
          DWORD2(v40) = 1065353216;
          *&v41 = 0;
          BYTE8(v41) = -1;
          v42 = MEMORY[0x1E69E7CC0];
          *&v36 = v6;
          BYTE5(v40) = 1;
          *v52 = v44;
          *&v52[16] = v16;

          outlined init with copy of _ShapeStyle_Shape(v43, v34);
          v23 = _ShapeStyle_Shape.opacity(at:)(v3);
          v48[4] = v53;
          v49[0] = *v54;
          *(v49 + 12) = *&v54[12];
          v48[0] = v50;
          v48[1] = v51;
          v48[2] = *v52;
          v48[3] = *&v52[16];
          outlined destroy of _ShapeStyle_Shape(v48);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v23);
          v53 = v39;
          *v54 = v40;
          *&v54[16] = v41;
          v55 = v42;
          v50 = v36;
          v51 = v37;
          *v52 = *v38;
          *&v52[16] = *&v38[16];
          v34[4] = v39;
          v34[5] = v40;
          v34[6] = v41;
          v35 = v42;
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = *v38;
          v34[3] = *&v38[16];
          v33 = v4;
          if (*(a1 + 40) == 1)
          {
            v24 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            outlined copy of _ShapeStyle_Shape.Result(v24, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v50, v30);
            v24 = MEMORY[0x1E69E7CC0];
          }

          v32 = v24;
          _ShapeStyle_Pack.subscript.setter(v34, &v33, v3);

          v30[4] = v39;
          v30[5] = v40;
          v30[6] = v41;
          v31 = v42;
          v30[0] = v36;
          v30[1] = v37;
          v30[2] = *v38;
          v30[3] = *&v38[16];
          outlined destroy of _ShapeStyle_Pack.Style(v30);
          v28[0] = v56;
          v28[1] = v57;
          v29[0] = v58[0];
          *(v29 + 9) = *(v58 + 9);
          outlined destroy of LinearGradient._Paint(v28);
          v25 = v32;
          v26 = a1[4];
          v27 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v26, v27);
          a1[4] = v25;
          *(a1 + 40) = 1;
        }
      }

      else
      {
        v10 = *v1;
        v50 = *(a1 + 3);
        v11 = (*(*v10 + 120))(&v50);
        if (v11)
        {
          v12 = v11;
          outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
          a1[4] = v12;
          *(a1 + 40) = 3;
        }
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 2u)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v3 = a1[1];
        if (v3 != a1[2])
        {
          v4 = *a1;
          v5 = a1[7];
          *&v56 = a1[6];
          *(&v56 + 1) = v5;

          _AnyLinearGradient.resolvePaint(in:)(&v56, &v62);

          if (a1[13])
          {
            v56 = v62;
            v57 = *v63;
            *v58 = *&v63[16];
            *&v58[9] = *&v63[25];
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            v7 = *v63;
            *(v6 + 16) = v62;
            *(v6 + 32) = v7;
            *(v6 + 48) = *&v63[16];
            *(v6 + 57) = *&v63[25];
            outlined init with copy of LinearGradient._Paint(&v56, &v41);
          }

          else
          {
            v11 = v62;
            v12 = BYTE8(v62);
            v13 = HIDWORD(v62);
            v14 = v63[0];
            v15 = v4;
            v16 = v63[40];
            LOBYTE(v56) = v63[0];
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
            v6 = swift_allocObject();
            *(v6 + 16) = v11;
            *(v6 + 24) = v12;
            *(v6 + 28) = v13;
            *(v6 + 32) = v14;
            v17 = *(a1 + 11);
            v18 = *(a1 + 9);
            v19 = vmulq_f64(v17, *&v63[24]);
            v20 = vaddq_f64(v18, vmulq_f64(v17, *&v63[8]));
            *(v6 + 56) = vaddq_f64(v18, v19);
            *(v6 + 40) = v20;
            *(v6 + 72) = v16;
            LOBYTE(v4) = v15;
          }

          v21 = *(a1 + 3);
          v22 = *(a1 + 5);
          v52 = *(a1 + 4);
          v53[0] = v22;
          *(v53 + 12) = *(a1 + 92);
          v23 = *(a1 + 1);
          v49[0] = *a1;
          v49[1] = v23;
          v24 = *(a1 + 3);
          v26 = *a1;
          v25 = *(a1 + 1);
          v50 = *(a1 + 2);
          v51 = v24;
          v27 = *(a1 + 5);
          v59 = v52;
          *v60 = v27;
          *&v60[12] = *(a1 + 92);
          v56 = v26;
          v57 = v25;
          DWORD2(v46) = 1065353216;
          *&v47 = 0;
          BYTE8(v47) = -1;
          v48 = MEMORY[0x1E69E7CC0];
          *&v41 = v6;
          BYTE5(v46) = 1;
          *v58 = v50;
          *&v58[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v49, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v3);
          v54[4] = v59;
          v55[0] = *v60;
          *(v55 + 12) = *&v60[12];
          v54[0] = v56;
          v54[1] = v57;
          v54[2] = *v58;
          v54[3] = *&v58[16];
          outlined destroy of _ShapeStyle_Shape(v54);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v59 = v45;
          *v60 = v46;
          *&v60[16] = v47;
          v61 = v48;
          v56 = v41;
          v57 = v42;
          *v58 = v43;
          *&v58[16] = v44;
          v39[4] = v45;
          v39[5] = v46;
          v39[6] = v47;
          v40 = v48;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = v43;
          v39[3] = v44;
          v38 = v4;
          if (*(a1 + 40) == 1)
          {
            v29 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v56, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v56, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v3);

          v35[4] = v45;
          v35[5] = v46;
          v35[6] = v47;
          v36 = v48;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = v43;
          v35[3] = v44;
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v62;
          v33[1] = *v63;
          v34[0] = *&v63[16];
          *(v34 + 9) = *&v63[25];
          outlined destroy of LinearGradient._Paint(v33);
          v30 = v37;
          v31 = a1[4];
          v32 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          a1[4] = v30;
          *(a1 + 40) = 1;
        }
      }

      else
      {
        v8 = *v1;
        v56 = *(a1 + 3);
        v9 = (*(*v8 + 120))(&v56);
        if (v9)
        {
          v10 = v9;
          outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
          a1[4] = v10;
          *(a1 + 40) = 3;
        }
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  v6 = *(a1 + 24);
  if (v6 <= 2)
  {
    v64 = v5;
    v65 = v4;
    v66 = v1;
    v67 = v2;
    v68 = v3;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = a1[1];
        if (v8 != a1[2])
        {
          v9 = *a1;
          v10 = a1[7];
          *&v55 = a1[6];
          *(&v55 + 1) = v10;

          AngularGradient.resolvePaint(in:)(&v61, &v55);

          if (a1[13])
          {
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<AngularGradient._Paint>, lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint, &type metadata for AngularGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v11 = swift_allocObject();
            v12 = v62;
            v11[1] = v61;
            v11[2] = v12;
            v11[3] = v63[0];
            *(v11 + 57) = *(v63 + 9);
            v13 = &v55;
            v14 = &v41;
          }

          else
          {
            v41 = v61;
            v42 = v62;
            *v43 = v63[0];
            *&v43[9] = *(v63 + 9);
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<AngularGradient._Paint>>(0);
            v11 = swift_allocObject();
            v18 = v56;
            v11[1] = v55;
            v11[2] = v18;
            v19 = *&v57[16];
            v11[3] = *v57;
            v11[4] = v19;
            v20 = *(a1 + 11);
            v11[5] = *(a1 + 9);
            v11[6] = v20;
            v13 = &v41;
            v14 = v39;
          }

          outlined init with copy of AngularGradient._Paint(v13, v14);
          v21 = *(a1 + 3);
          v22 = *(a1 + 5);
          v51 = *(a1 + 4);
          v52[0] = v22;
          *(v52 + 12) = *(a1 + 92);
          v23 = *(a1 + 1);
          v48[0] = *a1;
          v48[1] = v23;
          v24 = *(a1 + 3);
          v26 = *a1;
          v25 = *(a1 + 1);
          v49 = *(a1 + 2);
          v50 = v24;
          v27 = *(a1 + 5);
          v58 = v51;
          *v59 = v27;
          *&v59[12] = *(a1 + 92);
          v55 = v26;
          v56 = v25;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v41 = v11;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v48, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v8);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v41;
          v56 = v42;
          *v57 = *v43;
          *&v57[16] = *&v43[16];
          v39[4] = v44;
          v39[5] = v45;
          v39[6] = v46;
          v40 = v47;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = *v43;
          v39[3] = *&v43[16];
          v38 = v9;
          if (*(a1 + 40) == 1)
          {
            v29 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v8);

          v35[4] = v44;
          v35[5] = v45;
          v35[6] = v46;
          v36 = v47;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = *v43;
          v35[3] = *&v43[16];
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v61;
          v33[1] = v62;
          v34[0] = v63[0];
          *(v34 + 9) = *(v63 + 9);
          outlined destroy of LinearGradient._Paint(v33);
          v30 = v37;
          v31 = a1[4];
          v32 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          a1[4] = v30;
          *(a1 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v15 = *(*v1 + 32);
        v16 = a1[4];
        v17 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v16, v17);
        a1[4] = v15;
        *(a1 + 40) = 3;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  v6 = *(a1 + 24);
  if (v6 <= 2)
  {
    v64 = v5;
    v65 = v4;
    v66 = v1;
    v67 = v2;
    v68 = v3;
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = a1[1];
        if (v8 != a1[2])
        {
          v9 = *a1;
          v10 = a1[7];
          *&v55 = a1[6];
          *(&v55 + 1) = v10;

          RadialGradient.resolvePaint(in:)(&v61, &v55);

          if (a1[13])
          {
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<RadialGradient._Paint>, lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint, &type metadata for RadialGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v11 = swift_allocObject();
            v12 = v62;
            v11[1] = v61;
            v11[2] = v12;
            v11[3] = v63[0];
            *(v11 + 57) = *(v63 + 9);
            v13 = &v55;
            v14 = &v41;
          }

          else
          {
            v41 = v61;
            v42 = v62;
            *v43 = v63[0];
            *&v43[9] = *(v63 + 9);
            v55 = v61;
            v56 = v62;
            *v57 = v63[0];
            *&v57[9] = *(v63 + 9);
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<RadialGradient._Paint>>(0);
            v11 = swift_allocObject();
            v18 = v56;
            v11[1] = v55;
            v11[2] = v18;
            v19 = *&v57[16];
            v11[3] = *v57;
            v11[4] = v19;
            v20 = *(a1 + 11);
            v11[5] = *(a1 + 9);
            v11[6] = v20;
            v13 = &v41;
            v14 = v39;
          }

          outlined init with copy of RadialGradient._Paint(v13, v14);
          v21 = *(a1 + 3);
          v22 = *(a1 + 5);
          v51 = *(a1 + 4);
          v52[0] = v22;
          *(v52 + 12) = *(a1 + 92);
          v23 = *(a1 + 1);
          v48[0] = *a1;
          v48[1] = v23;
          v24 = *(a1 + 3);
          v26 = *a1;
          v25 = *(a1 + 1);
          v49 = *(a1 + 2);
          v50 = v24;
          v27 = *(a1 + 5);
          v58 = v51;
          *v59 = v27;
          *&v59[12] = *(a1 + 92);
          v55 = v26;
          v56 = v25;
          DWORD2(v45) = 1065353216;
          *&v46 = 0;
          BYTE8(v46) = -1;
          v47 = MEMORY[0x1E69E7CC0];
          *&v41 = v11;
          BYTE5(v45) = 1;
          *v57 = v49;
          *&v57[16] = v21;

          outlined init with copy of _ShapeStyle_Shape(v48, v39);
          v28 = _ShapeStyle_Shape.opacity(at:)(v8);
          v53[4] = v58;
          v54[0] = *v59;
          *(v54 + 12) = *&v59[12];
          v53[0] = v55;
          v53[1] = v56;
          v53[2] = *v57;
          v53[3] = *&v57[16];
          outlined destroy of _ShapeStyle_Shape(v53);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v28);
          v58 = v44;
          *v59 = v45;
          *&v59[16] = v46;
          v60 = v47;
          v55 = v41;
          v56 = v42;
          *v57 = *v43;
          *&v57[16] = *&v43[16];
          v39[4] = v44;
          v39[5] = v45;
          v39[6] = v46;
          v40 = v47;
          v39[0] = v41;
          v39[1] = v42;
          v39[2] = *v43;
          v39[3] = *&v43[16];
          v38 = v9;
          if (*(a1 + 40) == 1)
          {
            v29 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            outlined copy of _ShapeStyle_Shape.Result(v29, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v55, v35);
            v29 = MEMORY[0x1E69E7CC0];
          }

          v37 = v29;
          _ShapeStyle_Pack.subscript.setter(v39, &v38, v8);

          v35[4] = v44;
          v35[5] = v45;
          v35[6] = v46;
          v36 = v47;
          v35[0] = v41;
          v35[1] = v42;
          v35[2] = *v43;
          v35[3] = *&v43[16];
          outlined destroy of _ShapeStyle_Pack.Style(v35);
          v33[0] = v61;
          v33[1] = v62;
          v34[0] = v63[0];
          *(v34 + 9) = *(v63 + 9);
          outlined destroy of LinearGradient._Paint(v33);
          v30 = v37;
          v31 = a1[4];
          v32 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v31, v32);
          a1[4] = v30;
          *(a1 + 40) = 1;
        }
      }

      else if (*(*v1 + 16))
      {
        v15 = *(*v1 + 32);
        v16 = a1[4];
        v17 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v16, v17);
        a1[4] = v15;
        *(a1 + 40) = 3;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  v2 = v1[1];
  v63 = *v1;
  v64 = v2;
  v65[0] = v1[2];
  *(v65 + 10) = *(v1 + 42);
  if (*(a1 + 24) <= 2u)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 24) == 1)
      {
        v4 = a1[1];
        if (v4 != a1[2])
        {
          v5 = *a1;
          v6 = a1[7];
          *&v51 = a1[6];
          *(&v51 + 1) = v6;

          MeshGradient.resolvePaint(in:)(&v51, &v58);

          if (a1[13])
          {
            v53 = v60;
            v54 = v61;
            *&v55 = v62;
            v51 = v58;
            v52 = v59;
            type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _AnyResolvedPaint);
            v7 = swift_allocObject();
            v8 = v61;
            *(v7 + 48) = v60;
            *(v7 + 64) = v8;
            *(v7 + 80) = v62;
            v9 = v59;
            *(v7 + 16) = v58;
            *(v7 + 32) = v9;
          }

          else
          {
            v53 = v60;
            v54 = v61;
            *&v55 = v62;
            v51 = v58;
            v52 = v59;
            type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<MeshGradient._Paint>>(0);
            v7 = swift_allocObject();
            v13 = v61;
            *(v7 + 48) = v60;
            *(v7 + 64) = v13;
            *(v7 + 80) = v62;
            v14 = v59;
            *(v7 + 16) = v58;
            *(v7 + 32) = v14;
            v15 = *(a1 + 9);
            *(v7 + 104) = *(a1 + 11);
            *(v7 + 88) = v15;
          }

          outlined init with copy of MeshGradient._Paint(&v51, &v36);
          v16 = *(a1 + 3);
          v17 = *(a1 + 5);
          v47 = *(a1 + 4);
          v48[0] = v17;
          *(v48 + 12) = *(a1 + 92);
          v18 = *(a1 + 1);
          v44[0] = *a1;
          v44[1] = v18;
          v19 = *(a1 + 3);
          v21 = *a1;
          v20 = *(a1 + 1);
          v45 = *(a1 + 2);
          v46 = v19;
          v22 = *(a1 + 5);
          v55 = v47;
          *v56 = v22;
          *&v56[12] = *(a1 + 92);
          v51 = v21;
          v52 = v20;
          DWORD2(v41) = 1065353216;
          *&v42 = 0;
          BYTE8(v42) = -1;
          v43 = MEMORY[0x1E69E7CC0];
          *&v36 = v7;
          BYTE5(v41) = 1;
          v53 = v45;
          v54 = v16;

          outlined init with copy of _ShapeStyle_Shape(v44, v34);
          v23 = _ShapeStyle_Shape.opacity(at:)(v4);
          v49[4] = v55;
          v50[0] = *v56;
          *(v50 + 12) = *&v56[12];
          v49[0] = v51;
          v49[1] = v52;
          v49[2] = v53;
          v49[3] = v54;
          outlined destroy of _ShapeStyle_Shape(v49);
          _ShapeStyle_Pack.Style.applyOpacity(_:)(v23);
          v55 = v40;
          *v56 = v41;
          *&v56[16] = v42;
          v57 = v43;
          v51 = v36;
          v52 = v37;
          v53 = v38;
          v54 = v39;
          v34[4] = v40;
          v34[5] = v41;
          v34[6] = v42;
          v35 = v43;
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v34[3] = v39;
          v33 = v5;
          if (*(a1 + 40) == 1)
          {
            v24 = a1[4];
            outlined init with copy of _ShapeStyle_Pack.Style(&v51, v30);
            outlined copy of _ShapeStyle_Shape.Result(v24, 1u);
            outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
            a1[4] = 0;
            *(a1 + 40) = 5;
          }

          else
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v51, v30);
            v24 = MEMORY[0x1E69E7CC0];
          }

          v32 = v24;
          _ShapeStyle_Pack.subscript.setter(v34, &v33, v4);

          v30[4] = v40;
          v30[5] = v41;
          v30[6] = v42;
          v31 = v43;
          v30[0] = v36;
          v30[1] = v37;
          v30[2] = v38;
          v30[3] = v39;
          outlined destroy of _ShapeStyle_Pack.Style(v30);
          v28[2] = v60;
          v28[3] = v61;
          v29 = v62;
          v28[0] = v58;
          v28[1] = v59;
          outlined destroy of MeshGradient._Paint(v28);
          v25 = v32;
          v26 = a1[4];
          v27 = *(a1 + 40);

          outlined consume of _ShapeStyle_Shape.Result(v26, v27);
          a1[4] = v25;
          *(a1 + 40) = 1;
        }
      }

      else
      {
        v10 = *(v1 + 6);
        v11 = a1[4];
        v12 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v11, v12);
        a1[4] = v10;
        *(a1 + 40) = 3;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}

{
  if (*(a1 + 24) <= 1u)
  {
    if (*(a1 + 24))
    {
      v2 = a1[1];
      if (v2 != a1[2])
      {
        v3 = *a1;
        v4 = a1[7];
        *&v48 = a1[6];
        *(&v48 + 1) = v4;

        ImagePaint.resolvePaint(in:)(&v48, &v57);

        if (a1[13])
        {
          *&v53[16] = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v50 = v59;
          v51 = v60;
          v52 = v61;
          *v53 = v62;
          v48 = v57;
          v49 = v58;
          type metadata accessor for _AnyResolvedPaint<LinearGradient.AbsolutePaint>(0, &lazy cache variable for type metadata for _AnyResolvedPaint<ImagePaint._Paint>, lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint, &type metadata for ImagePaint._Paint, type metadata accessor for _AnyResolvedPaint);
          v5 = swift_allocObject();
          v6 = v64;
          *(v5 + 112) = v63;
          *(v5 + 128) = v6;
          *(v5 + 144) = v65;
          *(v5 + 160) = v66;
          v7 = v60;
          *(v5 + 48) = v59;
          *(v5 + 64) = v7;
          v8 = v62;
          *(v5 + 80) = v61;
          *(v5 + 96) = v8;
          v9 = v58;
          *(v5 + 16) = v57;
          *(v5 + 32) = v9;
        }

        else
        {
          *&v53[16] = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v50 = v59;
          v51 = v60;
          v52 = v61;
          *v53 = v62;
          v48 = v57;
          v49 = v58;
          type metadata accessor for _AnyResolvedPaint<AnchoredResolvedPaint<ImagePaint._Paint>>(0);
          v5 = swift_allocObject();
          v10 = v64;
          *(v5 + 112) = v63;
          *(v5 + 128) = v10;
          *(v5 + 144) = v65;
          *(v5 + 160) = v66;
          v11 = v60;
          *(v5 + 48) = v59;
          *(v5 + 64) = v11;
          v12 = v62;
          *(v5 + 80) = v61;
          *(v5 + 96) = v12;
          v13 = v58;
          *(v5 + 16) = v57;
          *(v5 + 32) = v13;
          v14 = *(a1 + 9);
          *(v5 + 184) = *(a1 + 11);
          *(v5 + 168) = v14;
        }

        outlined init with copy of ImagePaint._Paint(&v48, v46);
        v15 = *(a1 + 3);
        v16 = *(a1 + 5);
        v42 = *(a1 + 4);
        v43[0] = v16;
        *(v43 + 12) = *(a1 + 92);
        v17 = *(a1 + 1);
        v39[0] = *a1;
        v39[1] = v17;
        v18 = *(a1 + 3);
        v20 = *a1;
        v19 = *(a1 + 1);
        v40 = *(a1 + 2);
        v41 = v18;
        v21 = *(a1 + 5);
        v52 = v42;
        *v53 = v21;
        *&v53[12] = *(a1 + 92);
        v48 = v20;
        v49 = v19;
        DWORD2(v36) = 1065353216;
        *&v37 = 0;
        BYTE8(v37) = -1;
        v38 = MEMORY[0x1E69E7CC0];
        *&v31 = v5;
        BYTE5(v36) = 1;
        v50 = v40;
        v51 = v15;

        outlined init with copy of _ShapeStyle_Shape(v39, v46);
        v22 = _ShapeStyle_Shape.opacity(at:)(v2);
        v44[4] = v52;
        v45[0] = *v53;
        *(v45 + 12) = *&v53[12];
        v44[0] = v48;
        v44[1] = v49;
        v44[2] = v50;
        v44[3] = v51;
        outlined destroy of _ShapeStyle_Shape(v44);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(v22);
        v46[4] = v35;
        v46[5] = v36;
        v46[6] = v37;
        v47 = v38;
        v46[0] = v31;
        v46[1] = v32;
        v46[2] = v33;
        v46[3] = v34;
        v29[4] = v35;
        v29[5] = v36;
        v29[6] = v37;
        v30 = v38;
        v29[0] = v31;
        v29[1] = v32;
        v29[2] = v33;
        v29[3] = v34;
        v28 = v3;
        if (*(a1 + 40) == 1)
        {
          v23 = a1[4];
          outlined init with copy of _ShapeStyle_Pack.Style(v46, &v48);
          outlined copy of _ShapeStyle_Shape.Result(v23, 1u);
          outlined consume of _ShapeStyle_Shape.Result(v23, 1u);
          a1[4] = 0;
          *(a1 + 40) = 5;
        }

        else
        {
          outlined init with copy of _ShapeStyle_Pack.Style(v46, &v48);
          v23 = MEMORY[0x1E69E7CC0];
        }

        v27 = v23;
        _ShapeStyle_Pack.subscript.setter(v29, &v28, v2);

        v25[4] = v35;
        v25[5] = v36;
        v25[6] = v37;
        v26 = v38;
        v25[0] = v31;
        v25[1] = v32;
        v25[2] = v33;
        v25[3] = v34;
        outlined destroy of _ShapeStyle_Pack.Style(v25);
        *&v53[16] = v63;
        v54 = v64;
        v55 = v65;
        v56 = v66;
        v50 = v59;
        v51 = v60;
        v52 = v61;
        *v53 = v62;
        v48 = v57;
        v49 = v58;
        outlined destroy of ImagePaint._Paint(&v48);
        v24 = v27;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v24;
        *(a1 + 40) = 1;
      }
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
    }
  }
}