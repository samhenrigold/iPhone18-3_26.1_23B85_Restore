uint64_t (*specialized ToolbarAppearanceModifier.PreferenceValue.value.getter(unint64_t a1))()
{
  v1 = a1;
  v18 = HIDWORD(a1);
  AGGraphClearUpdate();
  AGGraphGetValue();

  v17 = Transaction.animation.getter();

  AGGraphSetUpdate();
  v16 = *AGGraphGetValue();
  v2 = *(AGGraphGetValue() + 16);

  v15 = *(AGGraphGetValue() + 24);
  Value = AGGraphGetValue();
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = AGGraphGetValue();
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = *(AGGraphGetValue() + 57);
  v10 = *(AGGraphGetValue() + 58);
  v11 = *(AGGraphGetValue() + 8);

  v12 = *(AGGraphGetValue() + 59);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 20) = v18;
  *(v13 + 24) = v16;
  *(v13 + 32) = v2;
  *(v13 + 40) = v15;
  *(v13 + 48) = v4;
  *(v13 + 56) = v5;
  *(v13 + 64) = v7;
  *(v13 + 72) = v8;
  *(v13 + 73) = v9;
  *(v13 + 74) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = v17;
  *(v13 + 96) = v12;
  return partial apply for specialized closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
}

uint64_t destroy for ListSectionInfo(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unsigned __int16 *assignWithTake for SelectionManagerBox(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_25:
  if (v11 == 2)
  {
LABEL_28:
    (*(v6 + 8))(a1, v5);
    goto LABEL_30;
  }

  if (v11 == 1)
  {
    if ((*(v6 + 48))(a1, 1, v5))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  v16 = *(a2 + v10);
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a2;
      }

      else if (v18 == 3)
      {
        v19 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v19 = *a2;
      }

LABEL_42:
      v20 = (v19 | (v17 << (8 * v10))) + 3;
      v16 = v19 + 3;
      if (v10 < 4)
      {
        v16 = v20;
      }

      goto LABEL_44;
    }

    if (v18)
    {
      v19 = *a2;
      goto LABEL_42;
    }
  }

LABEL_44:
  if (v16 == 2)
  {
    (*(v6 + 32))(a1, a2, v5);
    v21 = 2;
  }

  else if (v16 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
      v21 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v21 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v21 = 0;
    *a1 = *a2;
  }

  *(a1 + v10) = v21;
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UpdateCollectionViewListCoordinator.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0);
  Value = AGGraphGetValue();

  return outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(Value, a1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_appIntentsDataSourcePayloadProvider>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x178);
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding);
  return swift_endAccess();
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<ListRowSpacing>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey>, &unk_1EFFDCD18, &protocol witness table for ListSectionSpacingEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListSectionSpacingEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t UICollectionViewListCoordinatorBase.selectionStorage.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x130));
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double UpdateCollectionViewListCoordinator.subviewSizingOptions.getter@<D0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  v7 = Value[4];
  v8 = Value[5];
  v9 = Value[6];
  *a1 = *Value;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;

  return outlined copy of ResolvedSubviewsSizingOptions(v4, v3, v5, v6, v7, v8, v9);
}

double outlined copy of ResolvedSubviewsSizingOptions?(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 4294967293)
  {
    return outlined copy of ResolvedSubviewsSizingOptions(result, a2, a3, a4, a5, a6, a7);
  }

  return v7;
}

void SubviewSizingHandlingForUniform.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = a2;
  v4 = HIDWORD(a1);
  Value = AGGraphGetValue();
  v7 = *(Value + 2);
  v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
  if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL && ((v9 = v7 & 0xC000000000000000, v8 != 0x1FFFFFFFELL) ? (v10 = v9 == 0x4000000000000000) : (v10 = 0), v10))
  {
    v19 = *Value;
    v20 = *MEMORY[0x1E698D3F8];
    v21 = 0;
    if (*MEMORY[0x1E698D3F8] != v3)
    {
      AGGraphGetValue();
      ScrollGeometry.contentSize.getter();
      v21 = v22;
    }

    if (v20 == v4)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v24 = *(AGGraphGetValue() + 8);
    }

    *a3 = v19;
    v25 = 0x4000000000000000;
    if (v20 == v3)
    {
      v25 = 0x4000000000000001;
    }

    *(a3 + 1) = v21;
    *(a3 + 2) = v25;
    *(a3 + 3) = v23;
    a3[5] = 0.0;
    a3[6] = 0.0;
    *(a3 + 4) = v24;
  }

  else
  {
    v11 = AGGraphGetValue();
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = *(v11 + 48);
    *a3 = *v11;
    *(a3 + 1) = v12;
    *(a3 + 2) = v14;
    *(a3 + 3) = v15;
    *(a3 + 4) = v16;
    *(a3 + 5) = v17;
    *(a3 + 6) = v18;

    outlined copy of ResolvedSubviewsSizingOptions(*&v13, v12, v14, v15, v16, v17, v18);
  }
}

void type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ResolvedSubviewsSizingOptionsEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance ResolvedSubviewsSizingOptionsEnvironmentKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFCLL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void *initializeWithCopy for ResolvedSubviewsSizingOptions(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 >> 1) + 1 > 0x80000001)
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 1) = v4;
    *(result + 2) = *(a2 + 32);
    result[6] = *(a2 + 48);
  }

  else
  {
    *result = *a2;
    if (v2 >> 1 == 0xFFFFFFFF)
    {
      v3 = *(a2 + 24);
      *(result + 1) = *(a2 + 8);
      *(result + 3) = v3;
      *(result + 5) = *(a2 + 40);
    }

    else
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 24);
      v7 = *(a2 + 32);
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = result;
      outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(v5, v2, v6, v7, v8);
      result = v10;
      v10[1] = v5;
      v10[2] = v2;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = v9;
    }
  }

  return result;
}

double destroy for ResolvedSubviewsSizingOptions(uint64_t *result)
{
  v1 = result[2];
  if (v1 >> 1 != 0xFFFFFFFF && (v1 >> 1) + 0x7FFFFFFF >= 0x7FFFFFFE)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(result[1], v1, result[3], result[4], result[5]);
  }

  return v3;
}

double outlined copy of ResolvedSubviewsSizingOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 4294967294)
  {
    return outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(a2, a3, a4, a5, a6, a7);
  }

  return result;
}

double outlined consume of ResolvedSubviewsSizingOptions(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 4294967294)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t outlined init with copy of DialogSuppressionConfiguration?(uint64_t a1, uint64_t a2)
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, &lazy cache variable for type metadata for DialogSuppressionConfiguration?, &type metadata for DialogSuppressionConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined consume of ResolvedSubviewsSizingOptions?(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >> 1 != 4294967293)
  {
    return outlined consume of ResolvedSubviewsSizingOptions(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

double UICollectionViewListCoordinatorBase.subviewsSizingOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 2) = *(a1 + 32);
  v3[6] = v2;
  outlined copy of ResolvedSubviewsSizingOptions?(v4, v5, v6, v7, v8, v9, v10);
  outlined consume of ResolvedSubviewsSizingOptions?(v4, v5, v6, v7, v8, v9, v10);
  v13[0] = v4;
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(v13);

  return outlined consume of ResolvedSubviewsSizingOptions?(v4, v5, v6, v7, v8, v9, v10);
}

double $defer #1 <A, B>() in MakeConfirmationDialog.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;

  *(a1 + 72) = a4;
  *(a1 + 80) = a5;

  *(a1 + 88) = a6;
  *(a1 + 96) = a7;
  *(a1 + 104) = a8 & 1;
  *(a1 + 105) = a9;
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  v22 = *(a10 + 16);
  *(a1 + 112) = *a10;
  *(a1 + 128) = v22;
  *(a1 + 144) = *(a10 + 32);
  *(a1 + 160) = *(a10 + 48);
  outlined init with copy of DialogSuppressionConfiguration?(a10, v24);
  return outlined consume of DialogSuppressionConfiguration?(v16, v17, v18, v19, v20, v21);
}

void UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v9[4];
  v15 = v9[5];
  v16 = v9[6];
  if (v5 >> 1 == 4294967293)
  {
    v21 = v9[6];
    v24 = v9[3];
    v25 = v9[1];
    v22 = v9[5];
    v23 = v9[4];
    outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13, v12, v14, v15, v16);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
    {

      outlined consume of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
      return;
    }
  }

  else
  {
    v33 = *a1;
    v34 = v3;
    v35 = v5;
    v36 = v4;
    v37 = v7;
    v38 = v6;
    v39 = v8;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFALL)
    {
      v26 = v11;
      v27 = v10;
      v28 = v13;
      v29 = v12;
      v30 = v14;
      v31 = v15;
      v32 = v16;
      outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13, v12, v14, v15, v16);
      outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
      outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
      v17 = v2;
      v18 = v4;
      v19 = v6;
      v20 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v33, &v26);
      outlined consume of ResolvedSubviewsSizingOptions(v26, v27, v28, v29, v30, v31, v32);
      outlined consume of ResolvedSubviewsSizingOptions(v33, v34, v35, v36, v37, v38, v39);
      outlined consume of ResolvedSubviewsSizingOptions?(v17, v3, v5, v18, v7, v19, v8);
      if (v20)
      {
        return;
      }

      goto LABEL_9;
    }

    v24 = v12;
    v25 = v10;
    v22 = v15;
    v23 = v14;
    v21 = v16;
    outlined copy of ResolvedSubviewsSizingOptions?(v11, v10, v13, v12, v14, v15, v16);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
    outlined copy of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
    outlined consume of ResolvedSubviewsSizingOptions(v2, v3, v5, v4, v7, v6, v8);
  }

  outlined consume of ResolvedSubviewsSizingOptions?(v2, v3, v5, v4, v7, v6, v8);
  outlined consume of ResolvedSubviewsSizingOptions?(v11, v25, v13, v24, v23, v22, v21);
LABEL_9:

  UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100);
  v3 = *(v2 + 2);
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
LABEL_8:
    v12 = v0 + *((*v1 & *v0) + 0x108);
    v13 = *v12;
    v14 = v12[8];
    *v12 = 0;
    v12[8] = 1;

    UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v13, v14);
    return;
  }

  v6 = *v2;
  v5 = *(v2 + 1);
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  if (v4 == 0x1FFFFFFFCLL || v4 == 0x1FFFFFFFELL)
  {
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v3, v8, v7, v10, v9);
    goto LABEL_8;
  }

  if (v3 >> 62)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_8;
    }

    v15 = *(v2 + 2);
    outlined copy of ResolvedSubviewsSizingOptions?(v6, v5, v3, v8, v7, v10, v9);
    outlined copy of ResolvedSubviewsSizingOptions(v6, v5, v15, v8, v7, v10, v9);
    v16 = Axis.Set.contains(_:)();
    if (v16)
    {
      if (!v8)
      {
LABEL_17:
        v3 = v15;
        goto LABEL_7;
      }

      if (!(v15 & 1 | (*&v5 <= 0.0)))
      {
        MEMORY[0x1EEE9AC00](v16);
        static Update.ensure<A>(_:)();
        UICollectionViewListCoordinatorBase.subviewUniformHeight.setter(v24, 0);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v15, v8, v7, v10, v9);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v15, v8, v7, v10, v9);
        return;
      }
    }

    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v15, v8, v7, v10, v9);
    goto LABEL_17;
  }

  v17 = *(v2 + 2);
  v18 = Axis.Set.contains(_:)();
  if (v18)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  v20 = v7 | ~v18;
  v21 = v0 + *((*v1 & *v0) + 0x108);
  v22 = *v21;
  v23 = v21[8];
  *v21 = v19;
  v21[8] = v20 & 1;
  UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v22, v23);

  outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v17, v8, v7, v10, v9);
}

uint64_t outlined destroy of DialogSuppressionConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(uint64_t a1, char a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v32;
    v12 = (v2 + *((*v8 & *v2) + 0x108));
    v13 = *(v12 + 8);
    if (a2)
    {
      if (v12[1])
      {
LABEL_5:

        MEMORY[0x1EEE66BB8](v10, v11);
        return;
      }
    }

    else
    {
      if (*v12 != *&a1)
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v33 = MEMORY[0x1E69E7CC0];
    v15 = v10;
    v16 = v32;
    v17 = [(UIView *)v15 visibleCells];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x1E69DC7F8);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1EEE9AC00](v19);
    *(&v31 - 4) = v15;
    *(&v31 - 3) = v2;
    *(&v31 - 2) = &v33;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.subviewUniformHeight.didset, (&v31 - 6), v18);

    v20 = [objc_allocWithZone(MEMORY[0x1E69DC860]) init];
    type metadata accessor for IndexPath();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 invalidateItemsAtIndexPaths_];

    v22 = [(UIView *)v15 collectionViewLayout];
    [v22 invalidateLayoutWithContext_];

    UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(v15);
    static Log.listMisc.getter();
    v23 = type metadata accessor for Logger();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {

      _s10Foundation9IndexPathVSgWOhTm_1(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    }

    else
    {
      v25 = v2;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v28;
        *v28 = 134217984;
        v30 = *v12;
        if (*(v12 + 8))
        {
          v30 = -1.0;
        }

        *(v28 + 4) = v30;
        _os_log_impl(&dword_18BD4A000, v26, v27, "subviewUniformHeight = %f", v28, 0xCu);
        MEMORY[0x18D0110E0](v29, -1, -1);
      }

      (*(v24 + 8))(v7, v23);
    }
  }

  else
  {
    v14 = v32;
  }
}

uint64_t initializeWithCopy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  v4 = v3;
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t partial apply for closure #2 in MakeConfirmationDialog.updateValue()(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v15[0] = *(v1 + 16);
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v6 = *(type metadata accessor for ConfirmationDialogModifierCore(0, v15) - 8);
  v7 = (*(v6 + 80) + 52) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 55) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v8);
  v13 = (v11 + 11) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in MakeConfirmationDialog.updateValue()(a1, *(v1 + 48), v1 + v7, v12, *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v10 + 16), *(v1 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v11), *(v1 + v13), *(v1 + v13 + 16), *(v1 + v13 + 17), (v1 + ((v13 + 25) & 0xFFFFFFFFFFFFFFF8)));
}

char *ListRepresentable.makeViewProvider(context:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v50 = a1[1];
  v6 = a1[2];
  v48 = a1[3];
  v7 = *(a1 + 32);
  v8 = *v2;
  v9 = *(*v2 + *((*MEMORY[0x1E69E7D40] & **v2) + 0x90));
  *&v57 = v5;
  *(&v57 + 1) = v50;
  v51 = v5;
  v58 = v6;
  v59 = v48;
  v49 = v6;
  v60 = v7;
  (*(*(a2 - 1) + 16))(&v53, v2, a2);
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a2);
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  v52 = v53;
  specialized ListRepresentable.updateHelper(_:environment:)(v9, &v52);

  *&v53 = v5;
  *(&v53 + 1) = v50;
  v54 = v6;
  v55 = v48;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  v52 = v57;
  v13 = UICollectionViewListCoordinator.createLayout(_:)(&v52, v10, v11, v12);

  v47 = v13;
  v14 = UICollectionViewListCoordinator.createCollectionView(_:)(v13);
  v15 = *&v14[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  *&v14[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper] = v9;
  v16 = v9;

  swift_unknownObjectWeakAssign();
  v17 = *(v3 + 28);
  *&v16[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = v17;
  v18 = v14;
  specialized UICollectionViewListCoordinatorBase.collectionView.setter(v14);
  UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)();
  *&v53 = v5;
  *(&v53 + 1) = v50;
  v54 = v6;
  v55 = v48;
  v19 = v7;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v57 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v20 = BYTE9(v52);
  if (v52 <= 1)
  {
    v20 = 0;
  }

  v18[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] = v20;
  [v18 setDelegate_];
  [v18 setDataSource_];
  v21 = a2[2];
  v22 = a2[3];
  v23 = a2[4];
  v24 = a2[5];
  *&v53 = v21;
  *(&v53 + 1) = v22;
  v54 = v23;
  v55 = v24;
  v55 = type metadata accessor for UICollectionViewListCoordinator(0, &v53);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UICollectionViewListCoordinatorBase<A, B>, v55);
  *&v53 = v8;
  UICollectionView._appIntentsDataSourcePayloadProvider.setter();
  *&v18[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState] = v17;
  [v18 setAllowsSelectionDuringEditing_];
  [v18 setAllowsFocus_];
  v25 = [v18 setSelectionFollowsFocus_];
  v29 = UICollectionViewListCoordinatorBase.dragAndDropController.getter(v25, v26, v27, v28);
  [v18 setDragDelegate_];

  [v18 setDropDelegate_];
  *&v53 = v5;
  *(&v53 + 1) = v50;
  v54 = v49;
  v55 = v48;
  LOBYTE(WitnessTable) = v7;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v52 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v30 = v57;
  v31 = v58;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v30;
  *(v33 + 40) = v31;

  outlined copy of AppIntentExecutor?(v30, *(&v30 + 1));
  static Update.enqueueAction(reason:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v30, *(&v30 + 1));

  Attribute = AGWeakAttributeGetAttribute();
  v35 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](Attribute);
    MEMORY[0x1EEE9AC00](v36);
    AGGraphMutateAttribute();
  }

  v37 = AGWeakAttributeGetAttribute();
  if (v37 != v35)
  {
    MEMORY[0x1EEE9AC00](v37);
    MEMORY[0x1EEE9AC00](v38);
    AGGraphMutateAttribute();
  }

  *&v53 = v51;
  *(&v53 + 1) = v50;
  v54 = v49;
  v55 = v48;
  LOBYTE(WitnessTable) = v19;
  PlatformViewRepresentableContext.environment.getter();
  if (*(&v57 + 1))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v39 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
LABEL_15:
      v40 = MEMORY[0x18D00C850](v52, v39);

      goto LABEL_18;
    }
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>, &type metadata for UserInteractionActivityKey, &protocol witness table for UserInteractionActivityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UserInteractionActivityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v39 = *(&v52 + 1);
    if (*(&v52 + 1))
    {
      goto LABEL_15;
    }
  }

  v40 = 0;
LABEL_18:

  [v18 setInteractionActivityTrackingBaseName_];

  v41 = *(v3 + 8);
  v42 = AGWeakAttributeGetAttribute();
  if (v41 != 1)
  {
    if (v42 != v35)
    {
      MEMORY[0x1EEE9AC00](v42);
      MEMORY[0x1EEE9AC00](v45);
      AGGraphMutateAttribute();

      return v18;
    }

    goto LABEL_22;
  }

  if (v42 == v35)
  {
LABEL_22:

    return v18;
  }

  MEMORY[0x1EEE9AC00](v42);
  updated = type metadata accessor for UpdateCollectionViewListCoordinator(0, v22, v24, v43);
  MEMORY[0x1EEE9AC00](updated);
  AGGraphMutateAttribute();

  return v18;
}

uint64_t sub_18BF3F6B4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF3F6EC()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t closure #2 in MakeConfirmationDialog.updateValue()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, __int128 a12, char a13, char a14, __int128 *a15)
{
  v19 = *a1;
  v29 = a2;
  if (*(*a1 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v21 & 1) != 0))
  {
    outlined init with copy of ConfirmationDialog(*(v19 + 56) + 184 * v20, v32);
    outlined destroy of DialogSuppressionConfiguration?(v32, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
    MEMORY[0x18D009810](0xD000000000000084, 0x800000018CD44640);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    memset(v32, 0, sizeof(v32));
    outlined destroy of DialogSuppressionConfiguration?(v32, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
  }

  v23 = *(a3 + 8);
  v22 = *(a3 + 16);
  v24 = *(a3 + 24);
  LOBYTE(v32[0]) = *a3;
  *(&v32[0] + 1) = v23;
  *&v32[1] = v22;
  BYTE8(v32[1]) = v24;
  *(&v32[1] + 12) = a4;
  *(&v32[2] + 4) = a5;
  *&v33 = a6;
  *(&v33 + 1) = a7;
  LOBYTE(v34[0]) = a8;
  *(&v34[1] + 1) = a9;
  swift_unknownObjectWeakInit();
  HIBYTE(v40) = 1;
  BYTE8(v35) = a10;
  *&v36 = a11;
  *(v34 + 4) = a12;
  BYTE4(v34[1]) = a13 & 1;
  BYTE8(v36) = a14;
  v25 = a15[1];
  v37 = *a15;
  v38 = v25;
  v39 = a15[2];
  LOBYTE(v40) = *(a15 + 48);
  outlined init with copy of ConfirmationDialog(v32, v31);

  outlined init with copy of DialogSuppressionConfiguration?(a15, v30);
  specialized Dictionary.subscript.setter(v31, v29);
  return outlined destroy of ConfirmationDialog(v32);
}

char *protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance ListRepresentable<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  result = ListRepresentable.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

void specialized ListRepresentable.updateHelper(_:environment:)(uint64_t a1, void *a2)
{
  v3 = a2[1];
  *&v20[0] = *a2;
  *(&v20[0] + 1) = v3;

  ScrollEnvironmentProperties.init(environment:)(v20, v22);
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(a1 + v4, v20);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(v22, a1 + v4);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(v20);
  outlined destroy of ScrollEnvironmentProperties(v20);
  outlined destroy of ScrollEnvironmentProperties(v22);
  EnvironmentValues.contentMarginProxy.getter(v22);
  v5 = (a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v6 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208);
  v20[12] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192);
  v20[13] = v6;
  v21[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224);
  *(v21 + 9) = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233);
  v7 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144);
  v20[8] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128);
  v20[9] = v7;
  v8 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176);
  v20[10] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160);
  v20[11] = v8;
  v9 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80);
  v20[4] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64);
  v20[5] = v9;
  v10 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112);
  v20[6] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96);
  v20[7] = v10;
  v11 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16);
  v20[0] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins);
  v20[1] = v11;
  v12 = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48);
  v20[2] = *(a1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32);
  v20[3] = v12;
  v13 = v22[13];
  v5[12] = v22[12];
  v5[13] = v13;
  v5[14] = v23[0];
  *(v5 + 233) = *(v23 + 9);
  v14 = v22[9];
  v5[8] = v22[8];
  v5[9] = v14;
  v15 = v22[11];
  v5[10] = v22[10];
  v5[11] = v15;
  v16 = v22[5];
  v5[4] = v22[4];
  v5[5] = v16;
  v17 = v22[7];
  v5[6] = v22[6];
  v5[7] = v17;
  v18 = v22[1];
  *v5 = v22[0];
  v5[1] = v18;
  v19 = v22[3];
  v5[2] = v22[2];
  v5[3] = v19;
  ScrollViewHelper.didChangeMargins(from:)();
}

void ScrollEnvironmentProperties.init(environment:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = 257;
  *(a2 + 21) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 67) = 0u;
  *(a2 + 44) = 4;
  v5 = MEMORY[0x1E69E7CC0];
  *(a2 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a2 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v5);
  a2[112] = 0;
  a2[120] = 0;
  *(a2 + 16) = 0;
  *(a2 + 68) = 0;
  a2[144] = 0;
  *(a2 + 19) = 0;
  *(a2 + 158) = 0;
  a2[166] = 1;
  *(a2 + 167) = 0u;
  *(a2 + 183) = 0u;
  a2[199] = 0;
  static EdgeInsets.zero.getter();
  *(a2 + 25) = v6;
  *(a2 + 26) = v7;
  *(a2 + 27) = v8;
  *(a2 + 28) = v9;
  static EdgeInsets.zero.getter();
  *(a2 + 29) = v10;
  *(a2 + 30) = v11;
  *(a2 + 31) = v12;
  *(a2 + 32) = v13;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v14 = __src[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(__src[0] + 16, __src);
  swift_getKeyPath();
  *&v20 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v14 + 280, &v20);
  if (v21)
  {
    outlined init with take of ScrollEnvironmentTransform(&v20, v17);
    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v16 + 8))(__src, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  outlined destroy of ScrollEnvironmentProperties(a2);
  memcpy(a2, __src, 0x108uLL);
  __src[0] = v4;
  __src[1] = v3;
  EnvironmentValues.layoutDirection.getter();

  a2[81] = v20;
  if ((*a2 & 1) == 0)
  {
    a2[120] = 3;
    a2[144] = 3;
  }
}

uint64_t initializeWithCopy for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = v6;
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakCopyInit();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 168);

  if (v7)
  {
    if (*(a2 + 152))
    {
      v8 = *(a2 + 128);
      v9 = *(a2 + 136);
      v10 = *(a2 + 144);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 128) = v8;
      *(a1 + 136) = v9;
      *(a1 + 144) = v10;
      *(a1 + 152) = *(a2 + 152);
      v7 = *(a2 + 168);
    }

    else
    {
      v12 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v12;
    }

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v7;
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v11 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v11;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
  }

  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t initializeWithTake for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v4 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v4;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = outlined init with take of ConfirmationDialog(a3, a4[7] + 184 * a1);
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

double destroy for ConfirmationDialog(uint64_t a1)
{

  MEMORY[0x18D011290](a1 + 96);

  if (*(a1 + 168))
  {
    if (*(a1 + 152))
    {
      outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));
    }
  }

  return result;
}

uint64_t *initializeWithCopy for SharingPickerSource(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[16];
  outlined copy of SharingPickerSource(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  a1[11] = v15;
  a1[12] = v16;
  a1[13] = v17;
  a1[14] = v18;
  a1[15] = v19;
  a1[16] = v20;
  return a1;
}

uint64_t SharingPickerSource.isPresented.getter()
{
  v1 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v1;
  v17 = *(v0 + 128);
  v2 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v2;
  v3 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v3;
  v4 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v4;
  if (_s7SwiftUI19SharingPickerSourceOWOg(v16) == 1)
  {
    v5 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v16);
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    *&v18 = *v5;
    *(&v18 + 1) = v6;
    LOBYTE(v19) = v7 & 1;
    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v14);
    return LOBYTE(v14[0]);
  }

  else
  {
    v9 = destructiveProjectEnumData for BridgedPresentation.ContentHost(v16);
    v22 = v9[4];
    v23 = v9[5];
    v24 = v9[6];
    v25 = v9[7];
    v18 = *v9;
    v19 = v9[1];
    v20 = v9[2];
    v21 = v9[3];
    v14[4] = v22;
    v14[5] = v23;
    v14[6] = v24;
    v14[7] = v25;
    v14[0] = v18;
    v14[1] = v19;
    v14[2] = v20;
    v14[3] = v21;
    type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](v10);
    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    result = *(&v11 + 1) != 1;
    if (*(&v11 + 1) != 1)
    {
      outlined destroy of SharingPickerHostModifier.Model?(v15, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
      return 1;
    }
  }

  return result;
}

__n128 closure #1 in SharingActivityPickerModifier.Child.value.getter(char **a1, uint64_t a2, char a3, __int128 *a4, unint64_t a5)
{
  v5 = a4[7];
  v36 = a4[6];
  v37 = v5;
  v38 = *(a4 + 16);
  v6 = a4[3];
  v32 = a4[2];
  v33 = v6;
  v7 = a4[5];
  v34 = a4[4];
  v35 = v7;
  result = a4[1];
  v30 = *a4;
  v31 = result;
  if (a3)
  {
    v11 = HIDWORD(a5);
    v12 = *a1;
    outlined init with copy of SharingPickerSource(a4, &v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
    }

    v23 = v32;
    v24 = v33;
    v29 = v38;
    v27 = v36;
    v28 = v37;
    v25 = v34;
    v26 = v35;
    v21 = v30;
    v22 = v31;
    *(v12 + 2) = v14 + 1;
    v15 = &v12[152 * v14];
    *(v15 + 2) = v21;
    v16 = v22;
    v17 = v23;
    v18 = v25;
    *(v15 + 5) = v24;
    *(v15 + 6) = v18;
    *(v15 + 3) = v16;
    *(v15 + 4) = v17;
    result = v26;
    v19 = v28;
    v20 = v29;
    *(v15 + 8) = v27;
    *(v15 + 9) = v19;
    *(v15 + 7) = result;
    *(v15 + 20) = v20;
    *(v15 + 21) = a2;
    *(v15 + 44) = v11;
    *a1 = v12;
  }

  return result;
}

id UICollectionViewListCoordinator.createLayout(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x328), *(*((*MEMORY[0x1E69E7D40] & *v4) + 0x338) + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v12;
  v14[4] = v13;
  v15 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v15], v8);

  v4;

  v16 = ShadowListDataSource.hasGlobalHeader.getter(v8);
  (*(v9 + 8))(v11, v8);
  v17 = UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v16 & 1);
  v18 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = partial apply for closure #1 in UICollectionViewListCoordinator.createLayout(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithSectionProvider:v19 configuration:v17];

  _Block_release(v19);

  return v20;
}

uint64_t sub_18BF40E4C()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t Button<>.init<A>(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a6@<X8>)
{
  *a6 = 4;
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_7(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  v12 = v11;
  v13 = &a6[*(v11 + 36)];
  *v13 = a2;
  v13[1] = a3;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #1 in Button<>.init<A>(_:action:)(a1, &a6[*(v12 + 40)]);
  v14 = *(*(a4 - 8) + 8);

  return v14(a1, a4);
}

uint64_t closure #1 in Button<>.init<A>(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
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

uint64_t ShadowListDataSource.hasGlobalHeader.getter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  LOBYTE(v1) = (*(*(v1 + 24) + 72))(v2);
  (*(v3 + 8))(v6, v2);
  return v1 & 1;
}

uint64_t outlined init with copy of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL CollectionViewListDataSource.hasGlobalHeader.getter(uint64_t a1)
{
  outlined init with copy of TableHeaderView?(v1 + *(a1 + 40), v4);
  v2 = v5 != 1;
  outlined destroy of TableHeaderView?(v4);
  return v2;
}

uint64_t outlined destroy of TableHeaderView?(uint64_t a1)
{
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableHeaderView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 67))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t destroy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

id UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(char a1)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v13 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 fractionalWidthDimension_];
    v5 = [v3 estimatedDimension_];
    v6 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v5];

    v7 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
    v8 = MEMORY[0x18D00C850](v7);

    v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v8 alignment:1];

    [v9 setZIndex_];
    [v9 setPinToVisibleBounds_];
    [v9 setExtendsBoundary_];
    v10 = v9;
    MEMORY[0x18D00CC30]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x1E6995548);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBoundarySupplementaryItems_];

  return v2;
}

void *UICollectionViewListCoordinator.createCollectionView(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = [objc_allocWithZone(type metadata accessor for UpdateCoalescingCollectionView(0)) initWithFrame:a1 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v5 = v4;
  v6 = v1 + *((*v3 & *v1) + 0xF0);
  if (v6[9] == 1 && __PAIR128__(v6[8], *v6) >= 2)
  {
    [v4 _setShouldDeriveVisibleBoundsFromContainingScrollView_];
  }

  [v5 setAlwaysBounceVertical_];
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = *MEMORY[0x1E69DDC08];
  v9 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v11 = v10;
  v12 = v8;
  v13 = MEMORY[0x18D00C850](v9, v11);

  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

  v14 = *MEMORY[0x1E69DDC00];
  v15 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v17 = v16;
  v18 = v14;
  v19 = MEMORY[0x18D00C850](v15, v17);

  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

  type metadata accessor for TableGlobalHeader();
  v20 = swift_getObjCClassFromMetadata();
  v21 = static UICollectionViewListCoordinatorBase.globalHeaderKind.getter();
  v22 = MEMORY[0x18D00C850](v21);

  v24 = static UICollectionViewListCoordinatorBase.globalHeaderReuseIdentifier.getter(v23);
  v25 = MEMORY[0x18D00C850](v24);

  [v5 registerClass:v20 forSupplementaryViewOfKind:v22 withReuseIdentifier:v25];

  return v5;
}

id UpdateCoalescingCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState];
  type metadata accessor for FalseSafeAreaTransitionState();
  v12 = swift_allocObject();
  *v11 = v12;
  v11[1] = &protocol witness table for FalseSafeAreaTransitionState;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper] = 0;
  *(v12 + 16) = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] = 0;
  v13 = &v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 0;
  v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget] = 0;
  v14 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState] = 0;
  *&v5[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer + 8] = 0;
  swift_unknownObjectWeakInit();
  v18.receiver = v5;
  v18.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);
  [v16 _setShouldSkipForcedLayoutBeforeBatchUpdates_];

  return v16;
}

void one-time initialization function for cancelAction()
{
  static KeyboardShortcut.cancelAction = 27;
  *algn_1EAA38FF8 = 0xE100000000000000;
  qword_1EAA39000 = 0;
  byte_1EAA39008 = 0;
}

void type metadata completion function for ListCollectionViewCellBase(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration?(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UIListContentConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void specialized UICollectionViewListCoordinatorBase.collectionView.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
}

double UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *((v3 & v2) + 0x60);
  *(v7 + 24) = *(v4 + 104);
  *(v7 + 40) = *((v3 & v2) + 0x78);
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  v8 = (v0 + *((*v1 & *v0) + 0x98));
  v9 = *v8;
  v10 = v8[1];
  *v8 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:);
  v8[1] = v7;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9, v10);

  return result;
}

uint64_t sub_18BF41FA0()
{

  return swift_deallocObject();
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.dragAndDropController.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v9 = type metadata accessor for ShadowListDataSource(0, v7, *(v8 + 8), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  type metadata accessor for CollectionViewListDragAndDropController(0, v7, v8, v13);
  v14 = *((v6 & v5) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a1[v14], v9);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = specialized CollectionViewListDragAndDropController.__allocating_init(dataSource:dispatchUpdate:)(v12, partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter, v15);
  (*(v10 + 8))(v12, v9);
  return v16;
}

uint64_t sub_18BF421A0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id UICollectionViewListCoordinatorBase.dragAndDropController.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x170);
  v6 = *&v4[v5];
  if (v6)
  {
    v7 = *&v4[v5];
  }

  else
  {
    v8 = closure #1 in UICollectionViewListCoordinatorBase.dragAndDropController.getter(v4, a2, a3, a4);
    v9 = *&v4[v5];
    *&v4[v5] = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

uint64_t View.alert<A, B, C>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a14)
{
  v32 = a5;
  v28 = a6;
  v29 = a2;
  v31 = a4;
  v30 = a3;
  v27 = a10;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.alert<A, B>(_:isPresented:presenting:actions:)(v20, v21, v23 & 1, v25, v29, v30, v31, v32, x8_0, v28, a7, a8, v27, *(&v27 + 1), a11, a14);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t View.alert<A, B>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v32 = a16;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a10;
  v38 = a11;
  v23 = type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v23, &a16);
  return View.alert<A>(_:isPresented:actions:)(a1, a2, a3 & 1, a4, a5, a6, a7, partial apply for closure #1 in View.alert<A, B>(_:isPresented:presenting:actions:), a9, v27, a12, v23, a15, WitnessTable);
}

uint64_t type metadata completion function for ListDragAndDropControllerBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowListUpdateRecorder(319, *(a1 + 80), *(*(a1 + 88) + 8), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in View.alert<A, B>(_:isPresented:presenting:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44[1] = a6;
  v45 = a5;
  v48 = a4;
  v54 = a8;
  v53 = a11;
  v14 = *(a7 - 8);
  v51 = a2;
  v52 = v14;
  MEMORY[0x1EEE9AC00](a1);
  v46 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44[0] = v44 - v17;
  v18 = type metadata accessor for Optional();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v44 - v19;
  v49 = a9;
  v50 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v44 - v29;
  v57 = a1;
  v58 = v51;
  v59 = a3;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v56);
  if (v56 == 1)
  {
    v31 = v47;
    (*(v47 + 16))(v20, v48, v18);
    if ((*(v50 + 48))(v20, 1, v49) != 1)
    {
      v35 = v50;
      v36 = v20;
      v37 = v49;
      (*(v50 + 32))(v23, v36, v49);
      v38 = v46;
      v45(v23);
      (*(v35 + 8))(v23, v37);
      v51 = v25;
      v39 = v44[0];
      v33 = v53;
      static ViewBuilder.buildExpression<A>(_:)();
      v34 = v52;
      v40 = *(v52 + 8);
      v40(v38, a7);
      static ViewBuilder.buildExpression<A>(_:)();
      v41 = v39;
      v25 = v51;
      v40(v41, a7);
      (*(v34 + 32))(v27, v38, a7);
      v32 = 0;
      goto LABEL_6;
    }

    (*(v31 + 8))(v20, v18);
  }

  v32 = 1;
  v34 = v52;
  v33 = v53;
LABEL_6:
  (*(v34 + 56))(v27, v32, 1, a7);
  static ToolbarContentBuilder.buildIf<A>(_:)(v27, v30);
  v42 = *(v25 + 8);
  v42(v27, v24);
  v55 = v33;
  swift_getWitnessTable(MEMORY[0x1E6982090], v24, &v55);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v30, v24);
}

id specialized ListDragAndDropControllerBase.init(dataSource:dispatchUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70)) = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x78));
  *v10 = xmmword_18CD633F0;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  *(v10 + 57) = 0u;
  v11 = MEMORY[0x1E69E7CC0];
  *(v3 + *((*v8 & *v3) + 0x80)) = MEMORY[0x1E69E7CC0];
  *(v3 + *((*v8 & *v3) + 0x88)) = v11;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x98)) = 0;
  v12 = *((*v8 & *v3) + 0x60);
  v13 = *((v9 & v7) + 0x50);
  v14 = *((v9 & v7) + 0x58);
  v16 = type metadata accessor for ShadowListDataSource(0, v13, v14, v15);
  (*(*(v16 - 8) + 16))(v3 + v12, a1, v16);
  v17 = (v3 + *((*v8 & *v3) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for ListDragAndDropControllerBase(0, v13, v14, v18);
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t partial apply for closure #1 in ListRepresentable.makeViewProvider(context:)(uint64_t a1)
{
  return swift_unknownObjectWeakAssign();
}

{
  return swift_unknownObjectWeakAssign();
}

uint64_t protocol witness for static CoreViewRepresentable.platformView(for:) in conformance ListRepresentable<A, B>()
{
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  return swift_unknownObjectRetain();
}

{
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  return swift_unknownObjectRetain();
}

Class @objc UICollectionViewListCoordinatorBase.indexTitles(for:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v9 = specialized UICollectionViewListCoordinatorBase.indexTitles(for:)(v5, v6, v7, v8);

  if (v9)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

uint64_t specialized UICollectionViewListCoordinatorBase.indexTitles(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x60), *(v7 + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = *((v6 & v5) + 0x88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v12], v8);
  v13 = ShadowListDataSource<>.sectionIndexLabels.getter(v8, v7);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t ShadowListDataSource<>.sectionIndexLabels.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v7, v6);
  v8 = (*(a2 + 32))(v3, a2);
  (*(v4 + 8))(v6, v3);
  return v8;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void CollectionViewListDataSource.sectionIndexLabels.getter(uint64_t a1)
{
  if (*(v1 + *(a1 + 44) + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>, &type metadata for EnvironmentValues.__Key_listSectionIndexVisibility, &protocol witness table for EnvironmentValues.__Key_listSectionIndexVisibility);
    v3 = PropertyList.subscript.getter();
  }

  if (v7 <= 1u)
  {
    MEMORY[0x1EEE9AC00](v3);
    v5[1] = *(a1 + 16);
    v6 = v1;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI17SectionIndexLabelOG_SSs5NeverOTg5(partial apply for closure #1 in CollectionViewListDataSource.sectionIndexLabels.getter, v5, v4);
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI17SectionIndexLabelOG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = v20;
    for (i = (a3 + 32); ; i += 2)
    {
      v9 = i[1];
      v17 = *i;
      v18 = v9;
      v10 = outlined copy of SectionIndexLabel(v17, *(&v17 + 1), v9);
      (a1)(v19, &v17, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of SectionIndexLabel(v17, *(&v17 + 1), v18);
      v12 = v19[0];
      v11 = v19[1];
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      if (!--v5)
      {
        return;
      }
    }

    outlined consume of SectionIndexLabel(v17, *(&v17 + 1), v18);

    __break(1u);
  }
}

id closure #1 in ListRepresentable.updateViewProvider(_:context:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v20 = *(a1 + 32);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v7 = type metadata accessor for ListRepresentable(255, &v12);
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, v7);
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  v12 = v16;
  v13 = v17;
  if (EnvironmentValues.scrollContentBackgroundColor.getter())
  {

    v8 = a1[1];
    v18 = *a1;
    v19 = v8;
    v20 = *(a1 + 32);
    PlatformViewRepresentableContext.environment.getter();
    v16 = v12;
    v17 = v13;
    dispatch thunk of AnyColorBox.resolve(in:)();

    v9 = Color.Resolved.cgColor.getter();
    v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {

    return 0;
  }

  return v10;
}

double ListRepresentable.updateViewProvider(_:context:)(char *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 16);
  v32 = *a2;
  v33 = v6;
  v34 = *(a2 + 32);
  v7 = *v3;
  v8 = OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor;
  v9 = *(*v3 + OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor);
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = v9;
  v15 = closure #1 in ListRepresentable.updateViewProvider(_:context:)(&v32, v10, v11, v12, v13);
  v16 = *(v7 + v8);
  *(v7 + v8) = v15;

  v17 = *(v7 + v8);
  if (v9)
  {
    if (v17)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
      v18 = v14;
      v19 = v17;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v17)
  {
    goto LABEL_7;
  }

  v21 = [a1 collectionViewLayout];
  [v21 invalidateLayout];

  [a1 setBackgroundColor_];
LABEL_7:
  v29 = v32;
  v30 = v33;
  v31 = v34;
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a3);
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>, &type metadata for SafeAreaTransitionStateKey, &protocol witness table for SafeAreaTransitionStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();
  if (*(&v28 + 1))
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = *(&v27 + 1);

  outlined destroy of weak FallbackResponderProvider?(&v27);
  if (Strong)
  {
    v24 = &a1[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState];
    *v24 = Strong;
    *(v24 + 1) = v23;
    swift_unknownObjectRelease();
  }

  v25 = *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x90));
  v29 = v32;
  v30 = v33;
  v31 = v34;
  PlatformViewRepresentableContext.environment.getter();
  v27 = v28;
  specialized ListRepresentable.updateHelper(_:environment:)(v25, &v27);

  return result;
}

uint64_t EnvironmentValues.scrollContentBackgroundColor.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  if (v4 == 2)
  {
    static Color.clear.getter();
    AnyShapeStyle.init<A>(_:)();
  }

  else if (!v3)
  {
    return 0;
  }

  v1 = ShapeStyle.fallbackColor(in:level:)();

  return v1;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t initializeWithTake for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance <> Section<A, B, C>(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 24);
  v10 = vextq_s8(*(a4 - 16), *(a4 - 16), 8uLL);
  v11 = v7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a3, &v10);
  return static PubliclyPrimitiveView._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for <> Section<A, B, C>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a3 + 2);
  v6 = *a3;
  v7 = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a2, &v6);
  *(a1 + 8) = result;
  return result;
}

{
  v4 = *(a3 + 2);
  v6 = *a3;
  v7 = v4;
  result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a2, &v6);
  *(a1 + 8) = result;
  return result;
}

uint64_t base witness table accessor for View in <> Section<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 24);
  v5 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  v6 = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, a1, &v5);
}

uint64_t static PubliclyPrimitiveView.defaultMakeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  Body = type metadata accessor for MakeBody(0, a3, a4, v6);
  swift_getWitnessTable(protocol conformance descriptor for MakeBody<A>, Body);
  _GraphValue.init<A>(_:)();
  swift_getAssociatedConformanceWitness();
  return static View.makeDebuggableViewList(view:inputs:)();
}

BOOL specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v57 = a2[6];
  v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    if (v15 == 0x1FFFFFFFCLL)
    {
      v16 = *a2;
      v17 = a2[1];
      outlined consume of ResolvedSubviewsSizingOptions(v2, v3, v5, v4, a1[4], v6, v8);
      outlined consume of ResolvedSubviewsSizingOptions(v16, v17, v12, v11, v14, v13, v57);
      return 1;
    }

    goto LABEL_5;
  }

  if (v15 == 0x1FFFFFFFCLL)
  {
LABEL_5:
    v19 = *a2;
    v52 = a2[4];
    v53 = a2[3];
    v20 = a1[4];
    v21 = a1[5];
    v22 = a1[6];
    v55 = a2[1];
    v23 = *a1;
    outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12, v53, v52, v13, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v23, v3, v5, v4, v20, v21, v22);
    outlined consume of ResolvedSubviewsSizingOptions(v23, v3, v5, v4, v20, v21, v22);
    v24 = v19;
    v26 = v53;
    v25 = v55;
    v27 = v12;
    v28 = v52;
    v29 = v13;
    v30 = v57;
LABEL_6:
    outlined consume of ResolvedSubviewsSizingOptions(v24, v25, v27, v26, v28, v29, v30);
    return 0;
  }

  v56 = a2[1];
  v50 = *a2;
  if (*a1 != v10)
  {
    v54 = a2[3];
    v34 = a2[4];
    v35 = a1[5];
    v36 = a1[6];
    v37 = *a1;
    outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12, v54, v34, v13, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v37, v3, v5, v4, v7, v35, v36);
    outlined consume of ResolvedSubviewsSizingOptions(v37, v3, v5, v4, v7, v35, v36);
    v24 = v50;
    v26 = v54;
    v25 = v56;
    v27 = v12;
    v28 = v34;
    v29 = v13;
    v30 = v57;
    goto LABEL_6;
  }

  v48 = *a1;
  v49 = a2[5];
  v46 = a1[6];
  v47 = a1[5];
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    v31 = a2[1];
    outlined copy of ResolvedSubviewsSizingOptions(v2, v3, v5, v4, v7, v6, v8);
    outlined copy of ResolvedSubviewsSizingOptions(v50, v31, v12, v11, v14, v13, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v50, v31, v12, v11, v14, v13, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
    outlined consume of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
    outlined consume of ResolvedSubviewsSizingOptions(v50, v56, v12, v11, v14, v13, v57);
    v32 = v15 == 0x1FFFFFFFELL;
    v33 = v47;
    if (!v32)
    {
      goto LABEL_16;
    }

    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5, v4, v7, v47);
    return 1;
  }

  else
  {
    v64 = a1[1];
    v65 = v5;
    v66 = v4;
    v67 = v7;
    v68 = v6;
    v69 = v8;
    if (v15 == 0x1FFFFFFFELL)
    {
      v38 = v10;
      v39 = v9;
      outlined copy of ResolvedSubviewsSizingOptions(v2, v3, v5, v4, v7, v6, v8);
      outlined copy of ResolvedSubviewsSizingOptions(v38, v39, v12, v11, v14, v13, v57);
      outlined copy of ResolvedSubviewsSizingOptions(v38, v39, v12, v11, v14, v13, v57);
      outlined copy of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
      v33 = v47;
      outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5, v4, v7, v47, v46);
      outlined consume of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
      outlined consume of ResolvedSubviewsSizingOptions(v50, v56, v12, v11, v14, v13, v57);
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v3, v5, v4, v7, v47);
LABEL_16:
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5, v4, v7, v33);
      outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v56, v12, v11, v14, v13);
      return 0;
    }

    v58 = v9;
    v59 = v12;
    v40 = v11;
    v60 = v11;
    v61 = v14;
    v62 = v13;
    v63 = v57;
    v41 = v11;
    v42 = v6;
    v43 = v13;
    v44 = v8;
    v45 = v2;
    outlined copy of ResolvedSubviewsSizingOptions(v10, v9, v12, v41, v14, v43, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v45, v3, v5, v4, v7, v42, v44);
    outlined copy of ResolvedSubviewsSizingOptions(v45, v3, v5, v4, v7, v42, v44);
    outlined copy of ResolvedSubviewsSizingOptions(v50, v56, v12, v40, v14, v49, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v50, v56, v12, v40, v14, v49, v57);
    outlined copy of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
    outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5, v4, v7, v47, v46);
    v51 = specialized static ResolvedSubviewsSizingOptions.UniformSizeSource.== infix(_:_:)(&v64, &v58);
    outlined consume of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
    outlined consume of ResolvedSubviewsSizingOptions(v50, v56, v12, v40, v14, v49, v57);
    outlined consume of ResolvedSubviewsSizingOptions(v50, v56, v12, v40, v14, v49, v57);
    outlined consume of ResolvedSubviewsSizingOptions(v48, v3, v5, v4, v7, v47, v46);
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v58, v59, v60, v61, v62);
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(v64, v65, v66, v67, v68);
    outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(v3, v5, v4, v7, v47);
    return v51;
  }
}

uint64_t closure #1 in UpdateCollectionViewListCoordinator.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  updated = type metadata accessor for UpdateCollectionViewListCoordinator(0, a2, a3, a4);
  v8 = *(updated - 8);
  v9 = MEMORY[0x1EEE9AC00](updated);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, updated, v9);
  v12 = *AGGraphGetValue();
  v13 = *(v8 + 8);

  result = v13(v11, updated);
  *a5 = v12;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Header(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  *(a1 + 8) = result;
  return result;
}

void UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v129 = a4;
  v130 = a3;
  v136 = a2;
  v134 = a1;
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v115 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v97[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v127 = *(v10 - 8);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v97[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v97[-v13];
  v14 = *((v6 & v5) + 0x338);
  v15 = *(v14 + 8);
  v16 = *(v15 + 8);
  v17 = *((v6 & v5) + 0x328);
  swift_getAssociatedTypeWitness();
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = &v97[-v19];
  v20 = swift_checkMetadataState();
  v107 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v97[-v21];
  v109 = v16;
  v23 = type metadata accessor for ShadowSectionCollection(255, v17, v16, v22);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowSectionCollection<A>, v23);
  v123 = type metadata accessor for DefaultIndices();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v97[-v24];
  v120 = v23;
  v117 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v97[-v26];
  v111 = v18;
  v108 = v20;
  v133 = swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for Optional();
  v135 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v104 = &v97[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v97[-v30];
  v32 = type metadata accessor for ShadowListDataSource(0, v17, v15, v31);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v97[-v35];
  if ((v4[*((v6 & v5) + 0xC8)] & 1) == 0)
  {
    v37 = v4;
    v38 = (*(v15 + 72))(v17, v15, v34);
    v105 = v27;
    v39 = v38;
    v40 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    swift_beginAccess();
    v114 = v17;
    v99 = v14;
    v41 = *(v33 + 16);
    v41(v36, &v4[v40], v32);
    v42 = ShadowListDataSource.hasGlobalHeader.getter(v32);
    v43 = *(v33 + 8);
    v43(v36, v32);
    v98 = v39;
    v124 = v39 ^ v42;
    v44 = v105;
    v41(v36, &v37[v40], v32);
    v45 = v99;
    v46 = v116;
    ShadowListDataSource.sectionIDs.getter(v32, v47, v116);
    v43(v36, v32);
    v48 = v121;
    v49 = v120;
    Collection<>.indices.getter();
    v50 = (*(v117 + 8))(v46, v49);
    v51 = MEMORY[0x1EEE9AC00](v50);
    *&v97[-16] = v37;
    v52 = v123;
    swift_getWitnessTable(MEMORY[0x1E69E5EB8], v123, v51);
    v53 = v118;
    Sequence.first(where:)();
    v122[1](v48, v52);
    v54 = *(*(v133 - 8) + 48);
    v55 = *(v133 - 8) + 48;
    LODWORD(v49) = (v54)(v53, 1);
    v56 = v135 + 8;
    v57 = *(v135 + 8);
    v58 = v57(v53, v44);
    if (v49 == 1)
    {
      v62 = *(v109 + 56);
      v63 = v106;
      v122 = v54;
      v64 = v114;
      v65 = v136;
      v135 = v56;
      v62(v114);
      v123 = v37;
      v66 = v110;
      v67 = v108;
      v121 = v55;
      dispatch thunk of Collection.indices.getter();
      v68 = (*(v107 + 8))(v63, v67);
      v120 = v97;
      MEMORY[0x1EEE9AC00](v68);
      v69 = v115;
      v70 = *(v115 + 816);
      *&v97[-48] = v64;
      *&v97[-40] = v70;
      v71 = *(v69 + 832);
      *&v97[-32] = v45;
      *&v97[-24] = v71;
      *&v97[-16] = v65;
      v72 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v73 = v104;
      Sequence.first(where:)();
      (*(v112 + 8))(v66, v72);
      LODWORD(v63) = (v122)(v73, 1, v133) != 1;
      v58 = v57(v73, v105);
      v124 |= v63;
    }

    v74 = v125;
    UICollectionViewListCoordinator.listAppearance.getter(v58, v59, v60, v61);
    v75 = v126;
    v76 = v136;
    (*(v45 + 16))(v114, v45);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260], MEMORY[0x1E69DC268]);
    v77 = v128;
    v78 = dispatch thunk of static Equatable.== infix(_:_:)();
    v79 = *(v127 + 8);
    v79(v75, v77);
    v79(v74, v77);
    UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v134, v76, v130, v129 & 1);
    v81 = v131;
    v80 = v132;
    v82 = v124;
    if (v78 & 1) == 0 || (v124)
    {
      v83 = [v134 collectionViewLayout];
      [v83 invalidateLayout];

      if (v82)
      {
        v84 = v134;
        v85 = [v134 collectionViewLayout];
        objc_opt_self();
        v86 = swift_dynamicCastObjCClassUnconditional();
        v87 = v98 & 1;
        v88 = UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v98 & 1);
        [v86 setConfiguration_];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v89 = static OS_dispatch_queue.main.getter();
        v90 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v91 = swift_allocObject();
        *(v91 + 16) = v114;
        v92 = v115;
        *(v91 + 24) = *(v115 + 816);
        *(v91 + 32) = v45;
        *(v91 + 40) = *(v92 + 832);
        *(v91 + 48) = v90;
        *(v91 + 56) = v84;
        *(v91 + 64) = v87;
        aBlock[4] = partial apply for closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:);
        aBlock[5] = v91;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_43;
        v93 = _Block_copy(aBlock);
        v94 = v84;

        v95 = v100;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v96 = v102;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA20](0, v95, v96, v93);
        _Block_release(v93);

        (*(v81 + 8))(v96, v80);
        (*(v101 + 8))(v95, v103);
      }
    }
  }
}

uint64_t sub_18BF45638()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF45670()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header);
  }

  return result;
}

uint64_t type metadata completion function for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowListUpdateRecorder(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ShadowListDataSource.sectionIDs.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder(0, *(a1 + 16), *(*(a1 + 24) + 8), a4);

  return ShadowListUpdateRecorder.sectionIDs.getter(updated, x8_0);
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.Footer(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  *(a1 + 8) = result;
  return result;
}

uint64_t ShadowListUpdateRecorder.sectionIDs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return ShadowSectionCollection.init(_:)(v6, *(a1 + 16), *(a1 + 24), a2);
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer);
  }

  return result;
}

uint64_t ShadowSectionCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v35 = a4;
  swift_getAssociatedTypeWitness();
  v36 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedTypeWitness;
  v46 = MEMORY[0x1E69E6530];
  v47 = AssociatedConformanceWitness;
  v48 = MEMORY[0x1E69E6548];
  v8 = type metadata accessor for ListUpdate(0, &v45);
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  updated = type metadata accessor for ShadowListUpdateRecorder(0, a2, a3, v18);
  v30 = *(updated - 8);
  (*(v30 + 16))(v35, v34, updated);
  v20 = *(a3 + 56);
  v32 = a2;
  v33 = a3;
  v20(a2);
  v36 = dispatch thunk of Collection.count.getter();
  (*(v15 + 8))(v17, v14);
  v31 = updated;
  ShadowListUpdateRecorder.updates.getter(updated);
  v37 = v39;
  v38 = v40;
  v41 = v39;
  v42 = v40;
  v21 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v21);
  v45 = v21;
  v46 = v21;
  v47 = WitnessTable;
  v48 = WitnessTable;
  type metadata accessor for ConcatenatedCollection();
  ConcatenatedCollection.startIndex.getter();

  ConcatenatedCollection.endIndex.getter();
  if (static ConcatenatedCollectionIndex.== infix(_:_:)())
  {
LABEL_2:
    (*(v30 + 8))(v34, v31);

    result = type metadata accessor for ShadowSectionCollection(0, v32, v33, v23);
    *(v35 + *(result + 36)) = v36;
    return result;
  }

  v25 = (v29 + 32);
  v26 = (v29 + 8);
  while (1)
  {
    ConcatenatedCollection.subscript.getter();
    v45 = v43;
    LOBYTE(v46) = v44;
    ConcatenatedCollection.index(after:)();
    (*v25)(v10, v13, v8);
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v27 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (result == 1)
    {
      break;
    }

LABEL_6:
    (*v26)(v10, v8);
    ConcatenatedCollection.endIndex.getter();
    if (static ConcatenatedCollectionIndex.== infix(_:_:)())
    {
      goto LABEL_2;
    }
  }

  v27 = v36 + 1;
  if (!__OFADD__(v36, 1))
  {
LABEL_12:
    v36 = v27;
    goto LABEL_6;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void protocol witness for ListDiffable.sectionIDs.getter in conformance CollectionViewListDataSource<A>(uint64_t *a1@<X8>)
{
  CollectionViewListDataSource.sectionIDs.getter();
  *a1 = v2;
  a1[1] = specialized implicit closure #1 in ListSectionInfo.sectionIDs.getter;
  a1[2] = 0;
}

uint64_t ShadowListUpdateRecorder.updates.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v7[4] = *(v1 + *(a1 + 36));
  v7[5] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[0] = AssociatedTypeWitness;
  v7[1] = MEMORY[0x1E69E6530];
  v7[2] = AssociatedConformanceWitness;
  v7[3] = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(255, v7);
  v5 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
  return concatenate<A, B>(_:_:)();
}

unint64_t instantiation function for generic protocol witness table for SectionStyleConfiguration.RawContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent()
{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent;
  if (!lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent);
  }

  return result;
}

uint64_t initializeWithCopy for ShadowSectionCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *((a1 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t ShadowSectionCollection.startIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 56))(v2, v1, v5);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_18BF4632C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v17 = &type metadata for SectionStyleConfiguration.Header;
  v18 = v1;
  v19 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  v20 = v4;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v7 = type metadata accessor for ModifiedContent();
  v8 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  v17 = &type metadata for SectionStyleConfiguration.Footer;
  v18 = v3;
  v19 = v8;
  v20 = v6;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v9 = type metadata accessor for ModifiedContent();
  v10 = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  v17 = &type metadata for SectionStyleConfiguration.RawContent;
  v18 = v2;
  v19 = v10;
  v20 = v5;
  type metadata accessor for StaticSourceWriter(255, &v17);
  v11 = type metadata accessor for ModifiedContent();
  v16[0] = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();
  v16[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v12 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v16);
  v15[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v14[0] = swift_getWitnessTable(v12, v9, v15);
  v14[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v12, v11, v14);
}

uint64_t ShadowSectionCollection.endIndex.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 56))(v2, v1, v5);
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t associated type witness table accessor for Collection.Index : Comparable in ShadowSectionCollection<A>(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ShadowSectionCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, AssociatedTypeWitness, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t ShadowSectionCollection.index(after:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 56))(v3, v2, v6);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.index(after:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedSectionStyle, &type metadata for ResolvedSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle;
  if (!lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle)
  {
    result = swift_getWitnessTable("ſ\vb\b)\t", &type metadata for ResolvedSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSectionStyle and conformance ResolvedSectionStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedSectionStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

BOOL closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x328);
  v8 = *(*((*MEMORY[0x1E69E7D40] & *a2) + 0x338) + 8);
  v9 = type metadata accessor for ShadowListDataSource(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v14 = type metadata accessor for ShadowRowCollection(0, v7, *(v8 + 8), v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18 = *((v6 & v5) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v18], v9);
  ShadowListDataSource.rowIDs(forSectionAt:)(v21, v9, v19, v17);
  (*(v10 + 8))(v12, v9);
  swift_getWitnessTable(protocol conformance descriptor for ShadowRowCollection<A>, v14);
  LOBYTE(v6) = Collection.isEmpty.getter();
  (*(v15 + 8))(v17, v14);
  return (v6 & 1) == 0;
}

uint64_t type metadata completion function for ShadowRowCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowListUpdateRecorder(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      result = swift_getAssociatedTypeWitness();
      if (v7 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t ShadowListDataSource.rowIDs(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  updated = type metadata accessor for ShadowListUpdateRecorder(0, *(a2 + 16), *(*(a2 + 24) + 8), a4);

  return ShadowListUpdateRecorder.rowIDs(forSectionAt:)(a1, updated, x8_0);
}

uint64_t ShadowListUpdateRecorder.rowIDs(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = &v18 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a2, v13);
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, v11);
  return ShadowRowCollection.init(_:section:)(v15, v11, v8, v7, a3);
}

uint64_t ShadowListUpdateRecorder.initialIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  ShadowListUpdateRecorder.updates.getter(a2);
  v28 = v29;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v25 = AssociatedTypeWitness;
  *(&v25 + 1) = MEMORY[0x1E69E6530];
  v26 = AssociatedConformanceWitness;
  v27 = MEMORY[0x1E69E6548];
  v22 = type metadata accessor for ListUpdate(255, &v25);
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v8);
  *&v25 = v8;
  *(&v25 + 1) = v8;
  v26 = WitnessTable;
  v27 = WitnessTable;
  v10 = type metadata accessor for ConcatenatedCollection();
  v11 = swift_getWitnessTable(MEMORY[0x1E697FE00], v10);
  v12 = Collection.isEmpty.getter();

  if (v12)
  {
    return (*(*(AssociatedTypeWitness - 8) + 16))(v23, v24, AssociatedTypeWitness);
  }

  updated = ShadowListUpdateRecorder.updates.getter(a2);
  v29 = v25;
  MEMORY[0x1EEE9AC00](updated);
  v21[5] = v4;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v21[2] = v5;
  v21[3] = v4;
  v21[4] = v16;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #2 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), v21, v10, v22, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v17);

  *&v29 = v18;
  v19 = swift_getWitnessTable(MEMORY[0x1E69E6310], v8);
  MEMORY[0x18D00C6D0](&v25, v8, v19);
  *&v29 = v25;
  v20 = type metadata accessor for ReversedCollection();
  swift_getWitnessTable(MEMORY[0x1E69E6EC0], v20);
  ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v29, v24, a2, v20, v23);
}

__n128 sub_18BF47558(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ShadowRowCollection.init(_:section:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1E69E6530];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = AssociatedTypeWitness;
  v89 = v10;
  v75 = AssociatedConformanceWitness;
  v90 = AssociatedConformanceWitness;
  v91 = MEMORY[0x1E69E6548];
  v15 = type metadata accessor for ListUpdate(0, &v88);
  v62 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v79 = &v55 - v25;
  updated = type metadata accessor for ShadowListUpdateRecorder(0, a3, a4, v26);
  v66 = *(updated - 8);
  (*(v66 + 16))(a5, v70, updated);
  v29 = type metadata accessor for ShadowRowCollection(0, a3, a4, v28);
  v30 = *(v29 + 40);
  v69 = *(AssociatedTypeWitness - 8);
  v31 = *(v69 + 16);
  v76 = AssociatedTypeWitness;
  v31(a5 + v30, a2, AssociatedTypeWitness);
  v32 = *(a4 + 80);
  v65 = v29;
  v77 = a2;
  v32(a2, a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v68 = a5;
  v33 = dispatch thunk of Collection.count.getter();
  v67 = updated;
  ShadowListUpdateRecorder.updates.getter(updated);
  v80 = v82;
  v81 = v83;
  v84 = v82;
  v85 = v83;
  v34 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v34);
  v88 = v34;
  v89 = v34;
  v90 = WitnessTable;
  v91 = WitnessTable;
  type metadata accessor for ConcatenatedCollection();
  ConcatenatedCollection.startIndex.getter();

  ConcatenatedCollection.endIndex.getter();
  v78 = v34;
  if (static ConcatenatedCollectionIndex.== infix(_:_:)())
  {
    v36 = v69;
    goto LABEL_30;
  }

  v37 = (v62 + 4);
  v74 = (v62 + 2);
  v73 = (v69 + 8);
  v38 = (v62 + 1);
  v62 = (v64 + 32);
  v58 = (v64 + 8);
  while (2)
  {
    v64 = v33;
    while (1)
    {
      v43 = v79;
      ConcatenatedCollection.subscript.getter();
      v88 = v86;
      LOBYTE(v89) = v87;
      ConcatenatedCollection.index(after:)();
      (*v37)(v23, v43, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
        break;
      }

      v45 = v71;
      (*v74)(v71, v23, v15);
      v46 = v76;
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (*v73)(v45, v46);
      if (v47)
      {
        v33 = v64 - 1;
        v36 = v69;
        if (!__OFSUB__(v64, 1))
        {
          goto LABEL_27;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

LABEL_6:
      (*v38)(v23, v15);
      ConcatenatedCollection.endIndex.getter();
      if (static ConcatenatedCollectionIndex.== infix(_:_:)())
      {
        v36 = v69;
        v33 = v64;
        goto LABEL_30;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      v39 = v72;
      (*v74)(v72, v23, v15);
      v40 = v76;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      result = (*v73)(v39, v40);
      if (v41)
      {
        v33 = v64 + 1;
        v36 = v69;
        if (!__OFADD__(v64, 1))
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_31;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_6;
    }

    v48 = v59;
    (*v74)(v59, v23, v15);
    v49 = TupleTypeMetadata2;
    v56 = *(swift_getTupleTypeMetadata2() + 48);
    v57 = *v62;
    v57(v63, v48, v49);
    v57(v61, &v48[v56], v49);
    v50 = *(v75 + 8);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = v69;
    if ((v51 & 1) != 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v57 = *v58;
      v54 = TupleTypeMetadata2;
      (v57)(v61, TupleTypeMetadata2);
      result = (v57)(v63, v54);
      v33 = v64 - 1;
      if (__OFSUB__(v64, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v57 = v50;
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v64;
      if ((v52 & 1) == 0)
      {
        LODWORD(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
        v57 = *v58;
        (v57)(v61, TupleTypeMetadata2);
        result = (v57)(v63, TupleTypeMetadata2);
        if ((v56 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (!__OFADD__(v33++, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

      v57 = *v58;
      (v57)(v61, TupleTypeMetadata2);
      (v57)(v63, TupleTypeMetadata2);
    }

LABEL_27:
    (*v38)(v23, v15);
    ConcatenatedCollection.endIndex.getter();
    if ((static ConcatenatedCollectionIndex.== infix(_:_:)() & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_30:
  (*(v36 + 8))(v77, v76);
  (*(v66 + 8))(v70, v67);

  *(v68 + *(v65 + 44)) = v33;
  return result;
}

void type metadata accessor for SectionStyleModifier<DefaultSectionStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle();
    v4 = type metadata accessor for SectionStyleModifier(a1, &type metadata for DefaultSectionStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>);
    }
  }
}

void CollectionViewListDataSource.rowIDs(forSectionAt:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 64);
    if (*(v3 + 16) > a1)
    {
      *a2 = *(v3 + 152 * a1 + 136);

      return;
    }
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle()
{
  result = lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle;
  if (!lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultSectionStyle, &type metadata for DefaultSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultSectionStyle and conformance DefaultSectionStyle);
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance ShadowRowCollection<A>@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = ShadowRowCollection.startIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t ShadowRowCollection.startIndex.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.startIndex.getter();
  return v2;
}

uint64_t Menu.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label();
  v52 = *(a1 + 16);
  v46 = *(a1 + 32);
  *&v72 = &type metadata for MenuStyleConfiguration.Label;
  *(&v72 + 1) = v52;
  *&v73 = v58;
  *(&v73 + 1) = v46;
  type metadata accessor for StaticSourceWriter(255, &v72);
  v4 = type metadata accessor for ModifiedContent();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  *&v47 = *(a1 + 24);
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v53 = v6;
  v7 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  v54 = v7;
  v8 = *(a1 + 40);
  v9 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v76[0] = v8;
  v76[1] = v9;
  v49 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v76);
  *&v72 = &type metadata for MenuStyleConfiguration.Content;
  *(&v72 + 1) = v6;
  *&v73 = v7;
  *(&v73 + 1) = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v72);
  v11 = type metadata accessor for ModifiedContent();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - v12;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v45 - v18;
  v19 = v2;
  v20 = (v2 + *(a1 + 56));
  v21 = *v20;
  v22 = v20[1];
  v23 = (v19 + *(a1 + 60));
  v25 = *v23;
  v24 = v23[1];
  outlined copy of AppIntentExecutor?(v21, v22);
  outlined copy of AppIntentExecutor?(v25, v24);
  *&v26 = v21;
  *(&v26 + 1) = v22;
  *&v27 = v25;
  *(&v27 + 1) = v24;
  v72 = v26;
  v73 = v27;
  v28 = v52;
  *&v26 = v52;
  *(&v26 + 1) = v47;
  v47 = v26;
  *&v27 = v46;
  *(&v27 + 1) = v8;
  v45 = v27;
  v67 = v26;
  v68 = v27;
  v69 = v19;
  v29 = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();
  v30 = v51;
  View.viewAlias<A, B>(_:_:)(&type metadata for MenuStyleConfiguration.Label, partial apply for closure #1 in Menu.body.getter, v66, &type metadata for ResolvedMenuStyle, &type metadata for MenuStyleConfiguration.Label, v28, v29);
  v31 = v73;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v72, *(&v72 + 1));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31, *(&v31 + 1));
  v64 = v45;
  v63 = v47;
  v65 = v19;
  v75[0] = v29;
  v75[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v32 = v49;
  v33 = swift_getWitnessTable(v49, v4, v75);
  v34 = v48;
  View.viewAlias<A, B>(_:_:)(&type metadata for MenuStyleConfiguration.Content, partial apply for closure #2 in Menu.body.getter, v62, v4, &type metadata for MenuStyleConfiguration.Content, v53, v33);
  (*(v60 + 8))(v30, v4);
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  *&v72 = 0;
  *(&v72 + 1) = KeyPath;
  LOBYTE(v73) = 0;
  *(&v73 + 1) = v36;
  v74 = 0;
  v71[0] = v33;
  v71[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v37 = swift_getWitnessTable(v32, v11, v71);
  lazy protocol witness table accessor for type PlatformItemListMenuStyle and conformance PlatformItemListMenuStyle();
  v38 = v50;
  View.menuStyle<A, B>(_:in:)(&v72, v39, v11, &type metadata for PlatformItemListMenuStyle, MEMORY[0x1E697EA18], v37, MEMORY[0x1E697EA10], v50);

  (*(v59 + 8))(v34, v11);
  v40 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, MenuStyleModifier<PlatformItemListMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v70[0] = v37;
  v70[1] = v40;
  swift_getWitnessTable(v32, v13, v70);
  v41 = v55;
  ModifiedContent<>.accessibility()(v13, v55);
  v42 = *(v56 + 8);
  v42(v38, v13);
  v43 = v57;
  static ViewBuilder.buildExpression<A>(_:)();
  v42(v41, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v43, v13);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ShadowRowCollection<A>@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = ShadowRowCollection.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t ShadowRowCollection.endIndex.getter(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v16 - v8;
  v10 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Collection.endIndex.getter();
  v11 = v16[1];
  updated = type metadata accessor for ShadowListUpdateRecorder(0, v5, v4, v12);
  v14 = ShadowListUpdateRecorder.finalIndex(_:)(v9, v2 + v10, v11, updated);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v14;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SectionStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ShadowListUpdateRecorder.finalIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a3;
  v27 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  (*(v14 + 16))(&v24 - v12, v24, AssociatedTypeWitness, v11);
  *&v13[*(TupleTypeMetadata2 + 48)] = v25;
  v24 = a4;
  v25 = v4;
  ShadowListUpdateRecorder.updates.getter(a4);
  v31 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v28 = AssociatedTypeWitness;
  *(&v28 + 1) = MEMORY[0x1E69E6530];
  v29 = AssociatedConformanceWitness;
  v30 = MEMORY[0x1E69E6548];
  type metadata accessor for ListUpdate(255, &v28);
  v16 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v16);
  *&v28 = v16;
  *(&v28 + 1) = v16;
  v29 = WitnessTable;
  v30 = WitnessTable;
  v18 = type metadata accessor for ConcatenatedCollection();
  v19 = swift_getWitnessTable(MEMORY[0x1E697FE00], v18);
  LOBYTE(v16) = Collection.isEmpty.getter();

  if (v16)
  {
    (*(v26 + 32))(v9, v13, TupleTypeMetadata2);
    v20 = *(v9 + *(TupleTypeMetadata2 + 48));
    (*(v14 + 32))(v27, v9, AssociatedTypeWitness);
  }

  else
  {
    v21 = v24;
    ShadowListUpdateRecorder.updates.getter(v24);
    v32 = v28;
    v22 = v26;
    (*(v26 + 16))(v9, v13, TupleTypeMetadata2);
    v20 = ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(v27, &v32, v9, *(v9 + *(TupleTypeMetadata2 + 48)), v21, v18, v19);

    (*(v22 + 8))(v13, TupleTypeMetadata2);
    (*(v14 + 8))(v9, AssociatedTypeWitness);
  }

  return v20;
}

uint64_t closure #1 in Menu.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t destroy for ShadowRowCollection(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + 7;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v9 = v8 + *(v7 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = (v9 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13, v10);
}

uint64_t closure #2 in Menu.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  type metadata accessor for StyleContextWriter<MenuStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  type metadata accessor for Menu(0, v22);
  View.styleContext<A>(_:)();
  v17 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v21[0] = a4;
  v21[1] = v17;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v18 = *(v11 + 8);
  v18(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v16, v10);
}

uint64_t UICollectionViewListCoordinator.listAppearance.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x338);
  v8 = type metadata accessor for ShadowListDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x328), *(v7 + 8), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *((v6 & v5) + 0x88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v4[v12], v8);
  ShadowListDataSource<>.style.getter(v8, v7);
  return (*(v9 + 8))(v11, v8);
}

uint64_t ShadowListDataSource<>.style.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppIntentExecutingLocation.get()(v7, v6);
  (*(a2 + 16))(v3, a2);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18BF49654(void *a1)
{
  swift_getAssociatedTypeWitness();
  v1 = MEMORY[0x1E697F410];
  v2 = MEMORY[0x1E697F408];
  type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, MEMORY[0x1E697F410], MEMORY[0x1E697F408], MEMORY[0x1E697FDB8]);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = swift_getAssociatedConformanceWitness();
  v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsExpandedTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, v1, v2);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t protocol witness for CollectionViewListDataSourceBase.style.getter in conformance CollectionViewListDataSource<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t View.menuStyle<A, B>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v38 = a6;
  v34 = a2;
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v10 = *(a5 - 8);
  v32 = a1;
  v33 = v10;
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MenuStyleModifier(0, v17, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  type metadata accessor for StyleContextAcceptsPredicate();
  v23 = type metadata accessor for StaticIf();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v31 - v26;
  (*(v13 + 16))(v16, v32, a4, v25);
  (*(v13 + 32))(v22, v16, a4);
  v28 = v33;
  v29 = v31;
  (*(v33 + 16))(v31, v34, a5);
  v40 = a5;
  v41 = v29;
  v39 = v35;
  ViewModifier.requiring<A>(_:)();
  (*(v20 + 8))(v22, v19);
  (*(v28 + 8))(v29, a5);
  MEMORY[0x18D00A570](v27, v37, v23, v38);
  return (*(v24 + 8))(v27, v23);
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v85 = a4;
  v96 = a3;
  v98 = a2;
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & v7) + 0x60);
  v11 = type metadata accessor for Optional();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v80[-v12];
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v80[-v14];
  v15 = *(*((v9 & v7) + 0x70) + 8);
  v17 = type metadata accessor for ShadowListDataSource(0, v10, v15, v16);
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v80[-v18];
  v86 = v15;
  v20 = type metadata accessor for ListCoreBatchUpdates(0, v10, *(v15 + 8), v19);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v80[-v22];
  v99[48] = 17;
  LOBYTE(v15) = UICollectionViewListCoordinatorBase.hasMultipleSelection.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v15 & 1;
  v90 = a1;
  static Update.enqueueAction(reason:_:)();

  v25 = *((*v8 & *v5) + 0xA0);
  swift_beginAccess();
  v26 = *&v5[v25];
  *&v5[v25] = v96;
  outlined consume of ListItemTint?(v26);
  v27 = *((*v8 & *v5) + 0xB8);
  swift_beginAccess();
  v89 = *(v21 + 16);
  v89(v23, &v5[v27], v20);

  LOBYTE(v25) = ListCoreBatchUpdates.isEmpty.getter(v20);
  v28 = *(v21 + 8);
  v87 = v23;
  v96 = v21 + 8;
  v88 = v28;
  v28(v23, v20);
  if (v25)
  {
    v29 = v20;
    v82 = v10;
    v30 = v97;
    v83 = v17;
    UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v99);
    if (v99[0] == 1)
    {
      v31 = 0;
    }

    else
    {
      UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v99);
      v41 = v99[0];
      v31 = (v41 != 0) ^ [v90 isEditing];
    }

    v42 = v98;
    v43 = v30;
    v44 = v27;
    v45 = *MEMORY[0x1E69E7D40] & *v5;
    v46 = *(v45 + 0xC0);
    if (v5[v46] == 1)
    {
      v5[v46] = 0;
      UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v99);
      if (v99[0])
      {
        [v90 setEditing_];
      }
    }

    else
    {
      v81 = v31;
      if (v85)
      {
        v47 = *(v45 + 136);
        swift_beginAccess();
        v48 = v94;
        v49 = v83;
        (*(v30 + 2))(v94, &v5[v47], v83);
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v49);
        ListCoreBatchUpdates.formUpdates<A>(from:to:)(v48, v42, v29, v49, WitnessTable);
        swift_endAccess();
        v51 = v49;
        v43 = v30;
        (*(v30 + 1))(v48, v51);
      }

      v52 = v87;
      v89(v87, &v5[v27], v29);
      v53 = ListCoreBatchUpdates.isEmpty.getter(v29);
      v88(v52, v29);
      v54 = v95;
      v55 = *(v95 + 16);
      if (v53)
      {
        v97 = v29;
        v56 = v84;
        v57 = v82;
        v55(v84, v98, v82);
        v58 = v94;
        ShadowListDataSource.init(_:)(v56, v57, v86, v94);
        specialized UICollectionViewListCoordinatorBase.dataSource.setter(v58);
        v59 = (*(v43 + 1))(v58, v83);
        v63 = UICollectionViewListCoordinatorBase.dragAndDropController.getter(v59, v60, v61, v62);
        v55(v56, v98, v57);
        v64 = v56;
        v29 = v97;
        ShadowListDataSource.init(_:)(v64, v57, v86, v58);
        v65 = MEMORY[0x1E69E7D40];
        v66 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x60);
        swift_beginAccess();
        (*(v43 + 5))(&v63[v66], v58, v83);
        swift_endAccess();
      }

      else
      {
        v67 = v91;
        v68 = v82;
        v55(v91, v98, v82);
        (*(v54 + 56))(v67, 0, 1, v68);
        v65 = MEMORY[0x1E69E7D40];
        v69 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);
        swift_beginAccess();
        (*(v92 + 40))(&v5[v69], v67, v93);
        swift_endAccess();
      }

      v70 = v87;
      v89(v87, &v5[v44], v29);
      v71 = ListCoreBatchUpdates.isEmpty.getter(v29);
      v88(v70, v29);
      v72 = *v5;
      v73 = *v65;
      if ((v71 & 1) == 0 || (v5[*((v73 & v72) + 0xD8)] & 1) == 0)
      {
        v5[*((v73 & v72) + 0xD8)] = 1;
        v74 = UICollectionViewListCoordinatorBase.isAnimated.getter();
        v99[0] = 17;
        v75 = swift_allocObject();
        *(v75 + 16) = v74 & 1;
        v76 = v90;
        *(v75 + 24) = v5;
        *(v75 + 32) = v76;
        *(v75 + 40) = v81;
        v77 = v76;
        v78 = v5;
        static Update.enqueueAction(reason:_:)();
      }
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7D40];
    v33 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
    swift_beginAccess();
    v34 = v97;
    v35 = v94;
    (*(v97 + 2))(v94, &v5[v33], v17);
    swift_beginAccess();
    v36 = swift_getWitnessTable(protocol conformance descriptor for ShadowListDataSource<A>, v17);
    v37 = v98;
    ListCoreBatchUpdates.formUpdates<A>(from:to:)(v35, v98, v20, v17, v36);
    swift_endAccess();
    (*(v34 + 1))(v35, v17);
    v38 = v95;
    v39 = v91;
    (*(v95 + 16))(v91, v37, v10);
    (*(v38 + 56))(v39, 0, 1, v10);
    v40 = *((*v32 & *v5) + 0xD0);
    swift_beginAccess();
    (*(v92 + 40))(&v5[v40], v39, v93);
    swift_endAccess();
  }

  return $defer #1 <A, B>() in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v5);
}

uint64_t sub_18BF4A5BC()
{

  return swift_deallocObject();
}

uint64_t sub_18BF4A5F4()
{

  return swift_deallocObject();
}

uint64_t initializeWithCopy for PlatformItemListMenuStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of Environment<Color?>.Content(v6);
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  return a1;
}

uint64_t UICollectionViewListCoordinatorBase.hasMultipleSelection.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x68);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  UICollectionViewListCoordinatorBase.currentSelection.getter(&v10 - v5);
  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(*(v1 + 120) + 72))(v2);
    v4 = v7;
    v3 = v2;
  }

  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t destroy for SystemHoverEffectViewModifier(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*(a1 + 8), *(a1 + 16));
  v2 = *(a1 + 24);

  return outlined consume of Environment<Color?>.Content(v2);
}

uint64_t UICollectionViewListCoordinatorBase.currentSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if (static CoreTesting.isRunning.getter())
  {
    v13 = *((*v3 & *v1) + 0x110);
    swift_beginAccess();
    if ((*(v10 + 48))(&v1[v13], 1, v9))
    {
      return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
    }

    else
    {
      (*(v10 + 16))(v12, &v1[v13], v9);
      MEMORY[0x18D00ACC0](v9);
      (*(v10 + 8))(v12, v9);
      return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v15 = *((*v3 & *v1) + 0x118);
    swift_beginAccess();
    v22 = v6;
    v23 = v5;
    (*(v6 + 16))(v8, &v1[v15], v5);
    v16 = *(v4 - 8);
    v17 = *(v16 + 48);
    if (v17(v8, 1, v4) == 1)
    {
      v20 = v17;
      v21 = a1;
      v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
      swift_beginAccess();
      v19 = 1;
      if (!(*(v10 + 48))(&v1[v18], 1, v9))
      {
        (*(v10 + 16))(v12, &v1[v18], v9);
        MEMORY[0x18D00ACC0](v9);
        (*(v10 + 8))(v12, v9);
        v19 = 0;
      }

      (*(v16 + 56))(v21, v19, 1, v4);
      result = v20(v8, 1, v4);
      if (result != 1)
      {
        return (*(v22 + 8))(v8, v23);
      }
    }

    else
    {
      (*(v16 + 32))(a1, v8, v4);
      return (*(v16 + 56))(a1, 0, 1, v4);
    }
  }

  return result;
}

__n128 ResolvedMenuStyle.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v3, v4);
  outlined copy of AppIntentExecutor?(v6, v5);
  specialized AccessibilityMenuModifier.body(content:)(v3, v4, v6, v5, v3, v4, v14);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v5);
  v7 = v15;
  v8 = v16;
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v18);
  v17[4] = v18[4];
  v17[5] = v18[5];
  v17[6] = v18[6];
  v17[7] = v18[7];
  v17[0] = v18[0];
  v17[1] = v18[1];
  v17[2] = v18[2];
  v17[3] = v18[3];
  specialized SharingPickerHostModifier.init(model:)(v17, v19);
  v9 = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v10 = v19[7];
  *(a1 + 144) = v19[6];
  *(a1 + 160) = v10;
  *(a1 + 176) = v20;
  v11 = v19[3];
  *(a1 + 80) = v19[2];
  *(a1 + 96) = v11;
  v12 = v19[5];
  *(a1 + 112) = v19[4];
  *(a1 + 128) = v12;
  result = v19[1];
  *(a1 + 48) = v19[0];
  *(a1 + 64) = result;
  return result;
}

uint64_t initializeWithCopy for ListCoreBatchUpdates(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + a3[9], a2 + a3[9], v6);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[14];

  v7(a1 + v10, a2 + v10, v6);
  v11 = a3[15];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = v13[3];
  v12[2] = v13[2];
  v12[3] = v15;
  v12[4] = v13[4];

  return a1;
}

uint64_t ListCoreBatchUpdates.isEmpty.getter(int *a1)
{
  if ((IndexSet.isEmpty.getter() & 1) == 0 || (IndexSet.isEmpty.getter() & 1) == 0 || *(*(v1 + a1[10]) + 16) || *(*(v1 + a1[11]) + 16) || *(*(v1 + a1[12]) + 16) || *(*(v1 + a1[13]) + 16))
  {
    return 0;
  }

  else
  {
    return IndexSet.isEmpty.getter() & 1;
  }
}

uint64_t destroy for ListCoreBatchUpdates(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + a2[9], v4);

  v5(a1 + a2[14], v4);
}

void specialized AccessibilityMenuModifier.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for MenuStyleModifier<DefaultMenuStyle>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v14 = swift_allocObject();
  *(v14 + 16) = 8;
  outlined copy of AppIntentExecutor?(a1, a2);
  outlined copy of AppIntentExecutor?(a3, a4);
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v23);
  type metadata accessor for MutableBox<AccessibilityAttachment>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v15 = swift_allocObject();
  memcpy((v15 + 16), __src, 0x128uLL);
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  *&__src[1] = a3;
  *(&__src[1] + 1) = a4;
  *&__src[2] = v15;
  *(&__src[2] + 1) = v14;
  outlined copy of AppIntentExecutor?(a1, a2);
  outlined copy of AppIntentExecutor?(a3, a4);
  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v15 + 16, 0, v21);
  outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src, v23);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1, a2);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);

  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v15 + 16, 0x4000000040uLL);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1, a2);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3, a4);
  AccessibilityTraitSet.init(traits:)();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v15 + 16, v20, v20);
  if (a5)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a6;
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
    *(v17 + 24) = v16;
    outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src, v23);
    outlined copy of AppIntentExecutor?(a5, a6);

    specialized ModifiedContent<>.accessibilityAction(_:_:)(0, 0, 0, 0, _sytIegr_Ieg_TRTA_0, v17, v23);

    outlined destroy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src);
    outlined destroy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(__src);

    v18 = v23[0];
    v19 = v23[1];
    v15 = v24;
    v14 = v25;
  }

  else
  {
    v18 = __src[0];
    v19 = __src[1];
  }

  *a7 = v18;
  *(a7 + 16) = v19;
  *(a7 + 32) = v15;
  *(a7 + 40) = v14;
}

uint64_t sub_18BF4B3EC()
{

  return swift_deallocObject();
}

void UICollectionViewListCoordinatorBase.resolvedEditMode.getter(_BYTE *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[16];
    v8 = v5;
    v9 = v4;
    v10 = v6;
    _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v7);
    LOBYTE(v4) = v7;
  }

  *a1 = v4;
}

void type metadata accessor for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<SidebarSectionStyle>, lazy protocol witness table accessor for type SidebarSectionStyle and conformance SidebarSectionStyle, &type metadata for SidebarSectionStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for PlatformItemList?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16PlatformItemListVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for SectionStyleModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t $defer #1 <A, B>() in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = 1;
  return outlined consume of ListItemTint?(v3);
}

unint64_t lazy protocol witness table accessor for type SidebarSectionStyle and conformance SidebarSectionStyle()
{
  result = lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle;
  if (!lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarSectionStyle, &type metadata for SidebarSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionStyle and conformance SidebarSectionStyle);
  }

  return result;
}

double specialized SharingPickerHostModifier.init(model:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v14);
  v19 = v14[4];
  v20 = v14[5];
  v21 = v14[6];
  v22 = v14[7];
  v15 = v14[0];
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  outlined destroy of SharingPickerHostModifier.Model?(v13, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v8 = v20;
  *(a2 + 64) = v19;
  *(a2 + 80) = v8;
  v9 = v22;
  *(a2 + 96) = v21;
  *(a2 + 112) = v9;
  v10 = v16;
  *a2 = v15;
  *(a2 + 16) = v10;
  result = *&v17;
  v12 = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v12;
  *(a2 + 128) = 0;
  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuSectionStyle>, lazy protocol witness table accessor for type MenuSectionStyle and conformance MenuSectionStyle, &type metadata for MenuSectionStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>);
    }
  }
}

uint64_t assignWithCopy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<InlineActionsSectionStyle>, lazy protocol witness table accessor for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle, &type metadata for InlineActionsSectionStyle);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    }
  }
}

uint64_t specialized ListRepresentable.sizeThatFits(_:provider:context:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a6 + 32);
  v16 = *(a6 + 16);
  v29[0] = *a6;
  v29[1] = v16;
  v30 = v15;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v17 = type metadata accessor for ListRepresentable(255, &v25);
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, v17);
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  if (v26)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  if (v24 == 1 && !(v22 | v23))
  {
    return 0;
  }

  if (a4)
  {
    v18 = 10.0;
    if (a2)
    {
      v19 = 10.0;
    }

    else
    {
      v19 = *&a1;
    }

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    v18 = *&a3;
    v19 = 10.0;
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  if (v22 > 1)
  {
    [a5 contentSize];
    if ((a2 & 1) == 0)
    {
      v20 = v19;
    }

    return *&v20;
  }

LABEL_15:
  AGGraphClearUpdate();
  closure #1 in UpdateCoalescingCollectionView.idealSize(in:)(a5, v29, v19, v18);
  AGGraphSetUpdate();
  v20 = *v29;
  if ((a2 & 1) == 0)
  {
    v20 = v19;
  }

  if ((a4 & 1) != 0 && v24 && !(v22 | v23))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return 0;
  }

  return *&v20;
}

unint64_t lazy protocol witness table accessor for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle()
{
  result = lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle;
  if (!lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InlineActionsSectionStyle, &type metadata for InlineActionsSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InlineActionsSectionStyle and conformance InlineActionsSectionStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle()
{
  result = lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle;
  if (!lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlainSectionStyle, &type metadata for PlainSectionStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlainSectionStyle and conformance PlainSectionStyle);
  }

  return result;
}

Swift::Void __swiftcall UpdateBridgedState.updateValue()()
{
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_4;
  }

  v0 = type metadata accessor for BridgedListState(0);
  Value = AGGraphGetValue();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    __break(1u);
    return;
  }

  if (*(Value + *(v0 + 28)) != *OutputValue)
  {
LABEL_4:
    AGGraphClearUpdate();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      *(Strong + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState) = AGCreateWeakAttribute();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();
    }

    AGGraphSetUpdate();
    type metadata accessor for BridgedListState(0);
    AGGraphGetValue();
    AGGraphSetOutputValue();
  }
}

uint64_t sub_18BF4BFCC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t NavigableListModifier.BoundListSelectionDetector.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  v81 = *(a1 + 16);
  v77 = v6;
  v7 = type metadata accessor for SelectionManagerBox(255, v81, v6, a4);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v78 = &v66 - v9;
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v66 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v66 - v15;
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v66 - v19;
  v86 = v7;
  v20 = type metadata accessor for Binding();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v66 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  NavigableListModifier.BoundListSelectionDetector.selection.getter(a1, v29, v24);
  if ((*(v25 + 48))(v24, 1, v20) == 1)
  {
    return (*(v22 + 8))(v24, v21);
  }

  (*(v25 + 32))(v28, v24, v20);
  NavigableListModifier.BoundListSelectionDetector.listKey.getter(v90);
  if ((v92 - 1) < 2)
  {
    return (*(v25 + 8))(v28, v20);
  }

  v93[0] = v90[0];
  v93[1] = v90[1];
  v94 = v91;
  v95 = v92;
  if (*(v4 + 56) != *AGGraphGetValue() >> 1)
  {
    *(v4 + 56) = *AGGraphGetValue() >> 1;
    *(v4 + 44) = 0xFFFFFFFFLL;
    *(v4 + 52) = 0;
  }

  v31 = NavigableListModifier.BoundListSelectionDetector.navigationAuthority.getter(&v87);
  v32 = v86;
  if (v88 == 1)
  {
    (*(v25 + 8))(v28, v20, v31);
    return outlined destroy of NavigationAuthority?(&v87);
  }

  if (v88 == 2)
  {
    (*(v25 + 8))(v28, v20, v31);
    return outlined destroy of NavigationAuthority??(&v87);
  }

  outlined init with take of NavigationAuthority(&v87, v89);
  v33 = *(v4 + 12);
  v34 = *MEMORY[0x1E698D3F8];
  v71 = v25;
  if (v33 == v34)
  {
    v70 = 0;
  }

  else
  {
    v70 = *AGGraphGetValue();
  }

  v69 = *(v4 + *(a1 + 76));
  v35 = v85;
  v72 = v28;
  MEMORY[0x18D00ACC0](v20);
  v36 = *(a1 + 72);
  v37 = v82;
  v38 = *(v83 + 16);
  v66 = v4;
  v67 = v38;
  v38(v82, (v4 + v36), v8);
  v39 = v84;
  v40 = v80;
  (*(v84 + 16))(v80, v35, v32);
  (*(v39 + 56))(v40, 0, 1, v32);
  v41 = *(TupleTypeMetadata2 + 48);
  v42 = v32;
  v43 = v78;
  v44 = v37;
  v45 = v67;
  v67(v78, v44, v8);
  v73 = v41;
  v45(&v43[v41], v40, v8);
  v68 = *(v39 + 48);
  if (v68(v43, 1, v42) == 1)
  {
    v46 = *(v83 + 8);
    v46(v40, v8);
    v46(v82, v8);
    v47 = v68(&v43[v73], 1, v86);
    v48 = v66;
    if (v47 == 1)
    {
      v46(v43, v8);
      v49 = 1;
      goto LABEL_29;
    }

LABEL_19:
    (*(v76 + 8))(v43, TupleTypeMetadata2);
    v49 = 0;
    v54 = v70;
    v55 = v70 ^ v69;
LABEL_20:
    v56 = v77;
    goto LABEL_21;
  }

  v50 = v75;
  v45(v75, v43, v8);
  v51 = v86;
  v52 = (v39 + 8);
  if (v68(&v43[v73], 1, v86) == 1)
  {
    v53 = *(v83 + 8);
    v53(v80, v8);
    v53(v82, v8);
    (*v52)(v50, v51);
    v48 = v66;
    goto LABEL_19;
  }

  v60 = v74;
  (*(v39 + 32))(v74, &v43[v73], v51);
  v49 = static SelectionManagerBox.== infix(_:_:)(v50, v60, v81, v77);
  v61 = *(v39 + 8);
  v61(v60, v51);
  v62 = *(v83 + 8);
  v62(v80, v8);
  v62(v82, v8);
  v61(v50, v51);
  v62(v78, v8);
  v48 = v66;
LABEL_29:
  v54 = v70;
  v55 = v70 ^ v69;
  if ((v49 & 1) == 0)
  {
    goto LABEL_20;
  }

  v56 = v77;
  if (v55)
  {
LABEL_21:
    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      if (((v49 | v54) & 1) == 0)
      {
        AGGraphClearUpdate();
        v57 = v81;
        closure #1 in NavigableListModifier.BoundListSelectionDetector.updateValue()(v48, v81, v56, v58, &v87);
        AGGraphSetUpdate();
        Value = AGGraphGetValue();
        static NavigationRequest.boundSelectionChange<A>(list:newValue:selectionPopsSubsequentColumn:transaction:)(v93, *Value, v57, &v87);
        if ((*(v48 + 36) & 1) == 0)
        {
          NavigationAuthority.enqueueRequest(_:)(&v87);
        }

        outlined destroy of NavigationRequest(&v87);
      }

      if (v55)
      {
        static NavigationRequest.editingChanged<A>(forSelectionType:list:newValue:)(v93, v54, v81, &v87);
        NavigationAuthority.enqueueRequest(_:)(&v87);
        outlined destroy of NavigationRequest(&v87);
      }
    }
  }

  v63 = v85;
  v64 = v81;
  $defer #2 <A>() in NavigableListModifier.BoundListSelectionDetector.updateValue()(v48, v85, v81, v56);
  (*(v84 + 8))(v63, v86);
  outlined destroy of NavigationAuthority(v89);
  (*(v71 + 8))(v72, v20);
  result = type metadata accessor for NavigableListModifier.BoundListSelectionDetector(0, v64, v56, v65);
  *(v48 + *(result + 76)) = v54;
  return result;
}

uint64_t NavigableListModifier.BoundListSelectionDetector.selection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v4[0] = &protocol witness table for SectionStyleConfiguration.RawContent;
    v4[1] = MEMORY[0x1E6981E60];
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

__int128 *NavigableListModifier.BoundListSelectionDetector.listKey.getter@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
  }

  else
  {
    v5 = xmmword_18CD874C0;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>, &type metadata for SidebarListStyleContext);
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a3;
  type metadata accessor for SelectionManagerBox(255, a3, a4, a4);
  v9 = type metadata accessor for Binding();
  v37 = type metadata accessor for Optional();
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v30 = a1;
  v31 = a4;
  v16 = NavigableListModifier.ListKey.inheritedStackKey.getter(a1);
  if (v17 == 7)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  v20 = 6;
  if (v17 != 7)
  {
    v20 = v17;
  }

  v35 = v20;
  v36 = v19;
  if (v17 == 7)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v34 = v21;
  v33 = *AGGraphGetValue();
  NavigableListModifier.ListKey.selection.getter(v6, a4, v15);
  v22 = *(*(v9 - 8) + 48);
  v32 = v22(v15, 1, v9) != 1;
  v23 = *(v10 + 8);
  v24 = v15;
  v25 = v37;
  v23(v24, v37);
  NavigableListModifier.ListKey.selection.getter(v6, v31, v12);
  if (v22(v12, 1, v9) == 1)
  {
    v6 = 0;
  }

  result = (v23)(v12, v25);
  v27 = v35;
  v28 = v36;
  *a5 = v33;
  a5[1] = v28;
  a5[2] = v27;
  v29 = v32;
  a5[3] = v34;
  a5[4] = v29;
  a5[5] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E697EA18]);
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

double protocol witness for Rule.value.getter in conformance NavigableListModifier<A>.ListKey@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  NavigableListModifier.ListKey.value.getter(*v2, *(a1 + 16), *(a1 + 24), v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.inheritedStackKey.getter(uint64_t a1)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t NavigableListModifier.ListKey.selection.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for SelectionManagerBox(255, a2, a3, a3);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

double NavigableListModifier.BoundListSelectionDetector.navigationAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t NavigableListModifier.EnsureNavigationAuthority.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v23 = *(a1 + 16);
  type metadata accessor for SelectionManagerBox(255, v23, v6, a4);
  v7 = type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  NavigableListModifier.EnsureNavigationAuthority.selection.getter(a1, v16, v11);
  if ((*(v12 + 48))(v11, 1, v7) != 1)
  {
    (*(v12 + 32))(v15, v11, v7);
    NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter(v24);
    if (*&v24[8] == 1)
    {
      outlined destroy of NavigationAuthority?(v24);
    }

    else
    {
      if (*&v24[8] != 2)
      {
LABEL_12:
        outlined init with take of NavigationAuthority(v24, v26);
        if (*(v4 + 48))
        {
LABEL_17:
          outlined init with copy of NavigationAuthority(v26, v24);
          type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
          AGGraphSetOutputValue();
          outlined destroy of NavigationAuthority?(v24);
          outlined destroy of NavigationAuthority(v26);
          return (*(v12 + 8))(v15, v7);
        }

        *(v4 + 48) = 1;
        outlined init with copy of NavigationAuthority(v26, v25);
        type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6720]);
        result = AGGraphGetValue();
        v19 = *(result + 40);
        if (v19 != 1)
        {
          v20 = *(result + 32);
          v21 = *(result + 16);
          v27[0] = *result;
          v27[1] = v21;
          v28 = v20;
          v29 = v19;
          static NavigationRequest.setSelection<A>(_:list:)(v15, v27, v23, v6, v24);
          if ((*(v4 + 20) & 1) == 0)
          {
            NavigationAuthority.enqueueRequest(_:)(v24);
          }

          outlined destroy of NavigationRequest(v24);
          outlined destroy of NavigationAuthority(v25);
          goto LABEL_17;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      outlined destroy of NavigationAuthority??(v24);
    }

    outlined init with copy of NavigationAuthority?(v4 + 24, v24);
    if (*&v24[8] == 1)
    {
      outlined destroy of NavigationAuthority?(v24);
      type metadata accessor for NavigationStateHost();
      AGGraphGetValue();

      EnvironmentValues.init()();
      v18 = v27[0];
      swift_weakInit();
      swift_weakAssign();

      *&v24[8] = v18;
      outlined assign with take of NavigationAuthority?(v24, v4 + 24);
      result = outlined init with copy of NavigationAuthority?(v4 + 24, v24);
      if (*&v24[8] == 1)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_12;
  }

  (*(v9 + 8))(v11, v8);
  NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter(v27);
  if (*(&v27[0] + 1) == 2)
  {
    *v24 = xmmword_18CD633F0;
    *&v24[16] = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v27, v24);
  }

  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  AGGraphSetOutputValue();
  return outlined destroy of NavigationAuthority?(v24);
}

uint64_t NavigableListModifier.EnsureNavigationAuthority.selection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for SelectionManagerBox(255, *(a1 + 16), *(a1 + 24), a2);
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

double NavigableListModifier.EnsureNavigationAuthority.inheritedAuthority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

__n128 static NavigationRequest.setSelection<A>(_:list:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  type metadata accessor for SelectionManagerBox(255, a3, a4, v12);
  type metadata accessor for Binding();
  v14 = type metadata accessor for ToAnyListSelection(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for ToAnyListSelection<A>, v14);
  v16 = *(a2 + 16);
  v17 = *a2;
  Binding.projecting<A>(_:)();
  *(a5 + 56) = *(a1 + 8);
  *(a5 + 64) = a3;
  *(a5 + 96) = 2;
  result = v17;
  *(a5 + 120) = v16;
  *(a5 + 104) = v17;
  *(a5 + 136) = v10 & 1 | 0x4000000000000000;
  *(a5 + 144) = v11;
  *(a5 + 152) = 0;
  *(a5 + 160) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarSection and conformance SidebarSection()
{
  result = lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection;
  if (!lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarSection, &type metadata for SidebarSection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSection and conformance SidebarSection);
  }

  return result;
}

BOOL NavigableListModifier.IsEditing.value.getter()
{
  NavigableListModifier.IsEditing.editMode.getter(&v8);
  v1 = v8;
  v0 = v9;
  v2 = v10;
  if (v9)
  {

    outlined consume of Binding<NavigationSplitViewColumn>?(v1, v0);
    v5 = v1;
    v6 = v0;
    v7 = v2;
    type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v4);
    outlined consume of Binding<NavigationSplitViewColumn>?(v1, v0);
    return v4 != 0;
  }

  else
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(v8, 0);
    return 0;
  }
}

uint64_t NavigableListModifier.IsEditing.editMode.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Binding<EditMode>?(0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = *(Value + 8);
  *a2 = *Value;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(Value + 16);

  return outlined copy of Binding<Int>?(v5, v4);
}

BOOL protocol witness for Rule.value.getter in conformance NavigableListModifier<A>.IsEditing@<W0>(_BYTE *a1@<X8>)
{
  result = NavigableListModifier.IsEditing.value.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in NavigableListModifier.BoundListSelectionDetector.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = *AGGraphGetValue();
  v13 = *(v8 + 8);

  result = v13(v11, v7);
  *a5 = v12;
  return result;
}

__n128 static NavigationRequest.boundSelectionChange<A>(list:newValue:selectionPopsSubsequentColumn:transaction:)@<Q0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *a5 = a4;
  *(a5 + 8) = a2;
  *(a5 + 96) = 7;
  v9 = v7 & 1 | 0x4000000000000000;
  v10 = Transaction.disablesAnimations.getter();
  result = *a1;
  *(a5 + 120) = *(a1 + 16);
  *(a5 + 104) = result;
  *(a5 + 136) = v9;
  *(a5 + 144) = v8;
  *(a5 + 152) = v10 & 1;
  *(a5 + 160) = 0;
  return result;
}

uint64_t $defer #2 <A>() in NavigableListModifier.BoundListSelectionDetector.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for NavigableListModifier.BoundListSelectionDetector(0, a3, a4, a4) + 72);
  v10 = type metadata accessor for SelectionManagerBox(255, a3, a4, v9);
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(a1 + v8, v11);
  v14 = *(v10 - 8);
  (*(v14 + 16))(a1 + v8, a2, v10);
  v12 = *(v14 + 56);

  return v12(a1 + v8, 0, 1, v10);
}

uint64_t partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

{
  return partial apply for specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:));
}

uint64_t specialized closure #3 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, char a6)
{
  outlined init with copy of NavigationState.StackContent?(a1, v13, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v13[448] == 255)
  {
    return outlined destroy of PPTTestCase?(v13, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, v13, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1);
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1, &unk_1F00023E8, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:), partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), &unk_1F0002618, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, &unk_1F0002320, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_80_0, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_75_1, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_70_1, &unk_1F0002488, qword_1F00024B0, partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:sessionWillBegin:), partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

{
  outlined init with copy of NavigationState.StackContent?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (__src[448] == 255)
  {
    return outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(__dst, a3, a4, a5, a6 & 1, &unk_1F0002A78, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:), partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:), partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), &unk_1F0002B68, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, &unk_1F00029D8, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_249, closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply, &block_descriptor_244, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:), &block_descriptor_239, &unk_1F0002B18, qword_1F0002B40, closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred<A>(at:)partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:));
  }

  return outlined destroy of NavigationState.StackContent(__dst);
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>);
    }
  }
}

uint64_t specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t *a1, uint64_t *a2, void *a3, void *a4, int a5)
{
  v6 = v5;
  LODWORD(v264) = a5;
  v265 = a4;
  v267 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v256 - v13;
  v266 = a1;
  outlined init with copy of NavigationState.Base(a1, v271);
  v15 = MEMORY[0x1E69E7D40];
  v16 = (v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x70));
  swift_beginAccess();
  v17 = v16[2];
  if (!v17)
  {
    goto LABEL_248;
  }

  v20 = v16;
  v18 = *v16;
  v19 = v20[1];
  outlined init with copy of NavigationState.Base(v271, v273);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v17;
  *(&v273[28] + 1) = implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply;
  *&v273[29] = v21;
  *(&v273[29] + 1) = v17;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v273, v275, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  outlined copy of NavigationStrategy_Phone?(v18, v19, v17);
  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  v23 = v22;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v273, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(v271);
  v24 = *v15 & *v6;
  v25 = *(v24 + 0x78);
  if (*(v6 + v25) != 2)
  {
    v33 = a2;
    static Log.navigation.getter();
    v34 = type metadata accessor for Logger();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v14, 1, v34) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v262 = v23;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_18BD4A000, v60, v61, "Updating stack views in place after end-user triggered transition or isTransitioningViewControllers", v62, 2u);
        MEMORY[0x18D0110E0](v62, -1, -1);
      }

      (*(v35 + 8))(v14, v34);
      v23 = v262;
    }

    v40 = v33;
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v267, v275, v265, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
    v11 = v6;
    v15 = *(v6 + v25);
    if (*(v6 + v25) != 2)
    {
      *(v6 + v25) = 2;
      v63 = NavigationState.Base.count.getter();
      v64 = NavigationState.Base.count.getter();
      v65 = __OFSUB__(v63, v64);
      v66 = v63 - v64;
      if (v65)
      {
        goto LABEL_225;
      }

      v6 = (v15 & 0x100);
      if ((v15 & 0x100) != 0)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v68 = Strong;
          swift_beginAccess();
          v69 = v68[8];
          v271[6] = v68[7];
          v271[7] = v69;
          v271[8] = v68[9];
          *(&v271[8] + 10) = *(v68 + 154);
          v70 = v68[4];
          v271[2] = v68[3];
          v271[3] = v70;
          v71 = v68[6];
          v271[4] = v68[5];
          v271[5] = v71;
          v72 = v68[2];
          v271[0] = v68[1];
          v271[1] = v72;
          outlined init with copy of NavigationState.StackContent?(v271, v268, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

          v273[6] = v271[6];
          v273[7] = v271[7];
          v273[8] = v271[8];
          *(&v273[8] + 10) = *(&v271[8] + 10);
          v273[2] = v271[2];
          v273[3] = v271[3];
          v273[4] = v271[4];
          v273[5] = v271[5];
          v273[0] = v271[0];
          v273[1] = v271[1];
          if (getEnumTag for AccessibilityActionCategory.Category(v273) != 1)
          {
            v268[6] = v273[6];
            v268[7] = v273[7];
            v269[0] = v273[8];
            *(v269 + 10) = *(&v273[8] + 10);
            v268[2] = v273[2];
            v268[3] = v273[3];
            v268[4] = v273[4];
            v268[5] = v273[5];
            v268[0] = v273[0];
            v268[1] = v273[1];
            v73 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x60);
            v74 = NavigationState.pendingPopCount(in:)(*v73, v73[8], *(v73 + 2));
            outlined destroy of PPTTestCase?(v271, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            v65 = __OFADD__(v66, v74);
            v66 += v74;
            if (v65)
            {
              goto LABEL_239;
            }
          }
        }
      }

      if (v66 >= 1)
      {
        v262 = v23;
        v75 = -v66;
        v76 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
        if ((v15 & 1) == 0)
        {
          outlined init with copy of NavigationAuthority(v76, v273);
          NavigationAuthority.controllerCache.getter();
          v86 = v135;
          outlined destroy of NavigationAuthority(v273);
          specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v40, v11, v271);
          v136 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
          specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, v75, v136, v137 & 1, v138, v139);
          if (v143 != -1)
          {
            v87 = v140;
            v25 = v141;
            goto LABEL_97;
          }

          goto LABEL_96;
        }

        outlined init with copy of NavigationAuthority(v76, v273);
        NavigationAuthority.controllerCache.getter();
        v25 = v77;
        outlined destroy of NavigationAuthority(v273);
        specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v40, v11, v271);
        v78 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
        specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v66, v78, v79 & 1, v80, v81);
        if (v85 != -1)
        {
          v86 = v82;
          v87 = v83;
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

LABEL_204:
    if (v23)
    {
      v236 = v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
      goto LABEL_222;
    }

    return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v275, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  v270 = 1;
  v26 = *(v24 + 128);
  *(v6 + v26) = 1;
  if ((*(v6 + *((*v15 & *v6) + 0x98)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = [v267 view];
  if (!v27)
  {
    goto LABEL_252;
  }

  v28 = v27;
  v29 = [v27 window];

  if (v29 && (v30 = [v29 windowScene], v29, v30))
  {
    if ([objc_opt_self() areAnimationsEnabled])
    {
      if ([v30 activationState])
      {
        v31 = [v30 activationState];

        v32 = v31 == 1;
      }

      else
      {

        v32 = 1;
      }

      v261 = v32;
    }

    else
    {

      v261 = 0;
    }
  }

  else
  {
LABEL_12:
    v261 = 0;
  }

  v260 = v26;
  v263 = a2;
  outlined init with copy of NavigationState.StackContent(a2, v273);
  v36 = NavigationState.StackContent.change(from:)(v273);
  v38 = v37;
  outlined destroy of PPTTestCase?(v273, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v258 = 0;
  static Log.navigation.getter();
  v39 = type metadata accessor for Logger();
  v34 = *(v39 - 8);
  if ((*(v34 + 48))(v11, 1, v39) != 1)
  {
    v262 = v36;
    v259 = v6;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      *&v271[0] = v256;
      *v90 = 136315138;
      *&v273[0] = v262;
      BYTE8(v273[0]) = v38 & 1;
      v91 = String.init<A>(describing:)();
      v257 = v38;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v271);
      LOBYTE(v38) = v257;

      *(v90 + 4) = v93;
      v15 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_18BD4A000, v88, v89, "Updating stack content for change: %s", v90, 0xCu);
      v94 = v256;
      __swift_destroy_boxed_opaque_existential_1(v256);
      MEMORY[0x18D0110E0](v94, -1, -1);
      MEMORY[0x18D0110E0](v90, -1, -1);
    }

    v6 = v259;
    v95 = *(v34 + 8);
    v34 += 8;
    v95(v11, v39);
    v36 = v262;
    v40 = v263;
    if ((v38 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        goto LABEL_61;
      }

      v144 = *((*v15 & *v6) + 0x68);
      outlined init with copy of NavigationAuthority(v6 + v144, v273);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v273);
      v145 = *(v6 + *((*v15 & *v6) + 0x60) + 8);
      if (v145 >= 3)
      {
        LOBYTE(v145) = 3;
      }

      LOBYTE(v273[0]) = v145;
      NavigationHostingControllerCache_UIKit.ejectAll(in:)(v273);

      v146 = v267;

      *&v271[0] = 0;
      BYTE8(v271[0]) = 1;
      outlined init with copy of NavigationAuthority(v6 + v144, v273);
      NavigationAuthority.controllerCache.getter();
      v148 = v147;
      v149 = outlined destroy of NavigationAuthority(v273);
      MEMORY[0x1EEE9AC00](v149);
      *(&v256 - 6) = v275;
      *(&v256 - 5) = v265;
      *(&v256 - 4) = v6;
      *(&v256 - 3) = v146;
      v254 = v271;
      v150 = v6;
      v151 = v146;
      v152 = v150;
      v15 = MEMORY[0x1E69E7D40];
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v146, 0, partial apply for specialized closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:), (&v256 - 8), v148, v152, v264 & 1, v151, 0);

      goto LABEL_218;
    }

    v96 = v265;
    if (v36)
    {
      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v267, v275, v265, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
      goto LABEL_218;
    }

    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v275, v271, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    specialized Collection.dropLast(_:)(1, v273);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v267, v273, v96, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
    outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v273, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    if ((v99 & 1) == 0 || v98 != 2 || v97)
    {
      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v101, v100 & 1, v102, v103);
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v271);
      NavigationAuthority.controllerCache.getter();
      v104 = outlined destroy of NavigationAuthority(v271);
      MEMORY[0x1EEE9AC00](v104);
      *(&v256 - 4) = v273;
      *(&v256 - 3) = v96;
      v255 = v267;
      MEMORY[0x1EEE9AC00](v267);
      *(&v256 - 8) = v105;
      *(&v256 - 7) = v6;
      *(&v256 - 6) = v273;
      *(&v256 - 40) = v261;
      *(&v256 - 4) = v266;
      *(&v256 - 3) = v40;
      v254 = &v270;
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v105, 0, partial apply for specialized closure #2 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), v106, partial apply for specialized closure #3 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:), (&v256 - 10));

      v15 = MEMORY[0x1E69E7D40];
      outlined destroy of NavigationState.StackContent.PositionedView(v273);
      goto LABEL_218;
    }

    goto LABEL_255;
  }

  outlined destroy of UINavigationPresentationAdaptor?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v40 = v263;
  if (v38)
  {
    goto LABEL_45;
  }

LABEL_15:
  v34 = &selRef_titleTextAttributes;
  v25 = v36;
  if (v36 == 1)
  {
    v41 = [v267 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = v42 >> 62 ? __CocoaSet.count.getter() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v43 >= 2)
    {
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v273);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v273);
      specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v40, v6, v273);
      specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      if ((v46 & 1) != 0 && v45 == 2 && !v44)
      {
        goto LABEL_254;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      v47 = *&v273[30];
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v49, v48 & 1, v50, v51);
      v47(v268, v271);
      outlined destroy of NavigationState.StackContent.PositionedView(v271);
      v52 = v268[0];
      v53 = *(&v268[0] + 1);
      outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v273, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
      LOBYTE(v271[0]) = v52;
      *(&v271[0] + 1) = v53;
      v54 = v271;
      NavigationHostingControllerCache_UIKit.eject(at:)(*&v54);

      v55 = [v267 &selRef_documentBrowser_didImportDocumentAtURL_toDestinationURL_];
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = (v56 >> 62);
      if (!(v56 >> 62))
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(0, v57))
        {
LABEL_24:
          if (v57)
          {
            v58 = v57 - 1;
            if (__OFSUB__(v57, 1))
            {
              goto LABEL_240;
            }

            if (v58 < 0)
            {
              goto LABEL_241;
            }

            if (!v15)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_108:
            v58 = 0;
            if (!v15)
            {
LABEL_28:
              v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_111;
            }
          }

          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            v59 = __CocoaSet.count.getter();
LABEL_111:
            if (v59 >= v58)
            {
              if ((v56 & 0xC000000000000001) != 0)
              {

                if (v58)
                {
                  v163 = 0;
                  do
                  {
                    v164 = v163 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v163);
                    v163 = v164;
                  }

                  while (v58 != v164);
                }
              }

              else
              {
              }

              v165 = v23;

              if (v15)
              {
                _CocoaArrayWrapper.subscript.getter();
                v167 = v168;
                v166 = v169;
                v171 = v170;

                v58 = v171 >> 1;
              }

              else
              {
                v166 = 0;
                v167 = (v56 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v172 = v265;
              v15 = MEMORY[0x1E69E7D40];
              if (v166 == v58)
              {
                swift_unknownObjectRelease();
                v173 = 0;
              }

              else
              {
                if (v58 - 1 < v166)
                {
                  goto LABEL_243;
                }

                v173 = *(v167 + 8 * (v58 - 1));
                swift_unknownObjectRelease();
              }

              v174 = v263;
              *(v6 + *((*v15 & *v6) + 0x88)) = v173;
              v23 = v165;
              if (v261)
              {
                outlined init with copy of NavigationState.StackContent(v174, v273);
                v175 = NavigationState.StackContent.shouldAnimate(from:)(v273);
                outlined destroy of PPTTestCase?(v273, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
              }

              else
              {
                v175 = 0;
              }

              v176 = v267;

              specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v176, v275, v172, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
              v177 = [v176 transitionCoordinator];
              if (v177)
              {
                if (v175)
                {
                  v270 = 1;
                  v178 = v177;
                  v179 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  *&v273[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
                  *(&v273[2] + 1) = v179;
                  *&v273[0] = MEMORY[0x1E69E9820];
                  *(&v273[0] + 1) = 1107296256;
                  v180 = &block_descriptor_189;
                  goto LABEL_215;
                }

                goto LABEL_216;
              }

              goto LABEL_217;
            }

LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
            goto LABEL_238;
          }

LABEL_235:
          __break(1u);
          goto LABEL_236;
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }

LABEL_232:
      v57 = __CocoaSet.count.getter();
      if (!__OFSUB__(0, v57))
      {
        goto LABEL_24;
      }

      goto LABEL_234;
    }
  }

  v107 = [v267 viewControllers];
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v108 >> 62)
  {
    goto LABEL_227;
  }

  for (i = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i >= 2)
    {
      v110 = [v267 *(v34 + 3144)];
      v111 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = v111 >> 62 ? __CocoaSet.count.getter() : *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v25 < v112)
      {
        break;
      }
    }

LABEL_61:
    v124 = NavigationState.Base.count.getter();
    v125 = NavigationState.Base.count.getter();
    v25 = v124 - v125;
    if (__OFSUB__(v124, v125))
    {
      goto LABEL_226;
    }

    if (v25 >= 1)
    {
      v262 = v23;
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v273);
      NavigationAuthority.controllerCache.getter();
      v11 = v126;
      outlined destroy of NavigationAuthority(v273);
      specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v40, v6, v271);
      v127 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v25, v127, v128 & 1, v129, v130);
      if (v134 == 0xFF)
      {
        v87 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      }

      else
      {
        v87 = v131;
      }

      v123 = v132;
      v23 = v133;
      v86 = v134;
      v153 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
      if ((v156 & 1) == 0)
      {
        goto LABEL_76;
      }

      if (v123)
      {
        goto LABEL_164;
      }

      __break(1u);
LABEL_76:
      if (v123)
      {
        goto LABEL_164;
      }

      if (v87 < v153)
      {
        goto LABEL_242;
      }

      if (v153 < v87)
      {
        goto LABEL_164;
      }

      if (v86)
      {
        if (v86 == 1)
        {
          if (v155 != 1 || v23 >= v154)
          {
            goto LABEL_164;
          }

          __break(1u);
LABEL_84:
          v86 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
          v87 = v157;
LABEL_85:
          v23 = v84;
          v123 = v85;
          v15 = MEMORY[0x1E69E7D40];
          v158 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
          if (v159)
          {
            if (v87)
            {
              goto LABEL_195;
            }

            __break(1u);
          }

          if (v87)
          {
            goto LABEL_195;
          }

          if (v86 < v158)
          {
            goto LABEL_244;
          }

          if (v158 < v86)
          {
            goto LABEL_195;
          }

          if (v123)
          {
            if (v123 == 1)
            {
              if (v155 != 1 || v23 >= v154)
              {
                goto LABEL_195;
              }

              __break(1u);
LABEL_96:
              v87 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
              v25 = v160;
LABEL_97:
              v23 = v142;
              v123 = v143;
              v56 = v271;
              v161 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
              if (v162)
              {
                if (v25)
                {
                  goto LABEL_202;
                }

                __break(1u);
              }

              if (v25)
              {
                goto LABEL_202;
              }

              if (v87 < v161)
              {
                goto LABEL_245;
              }

              if (v161 < v87)
              {
                goto LABEL_202;
              }

              if (v123)
              {
                if (v123 == 1)
                {
                  if (v155 == 1 && v23 < v154)
                  {
                    __break(1u);
                    goto LABEL_108;
                  }

LABEL_202:
                  memcpy(&v273[4], v271, 0x1E0uLL);
                  *&v273[0] = v87;
                  BYTE8(v273[0]) = v25 & 1;
                  *&v273[1] = v23;
                  BYTE8(v273[1]) = v123;
                  *&v273[2] = 0;
                  BYTE8(v273[2]) = 1;
                  *&v273[3] = 0;
                  BYTE8(v273[3]) = 2;
                  v274 = v272;
                  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v273);

                  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v273, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                  goto LABEL_203;
                }

LABEL_160:
                if (v155 == 2 && !v154)
                {
                  goto LABEL_202;
                }

                __break(1u);
LABEL_163:
                if (v23 < v154)
                {
                  goto LABEL_247;
                }

LABEL_164:
                memcpy(&v273[4], v271, 0x1E0uLL);
                *&v273[0] = v87;
                BYTE8(v273[0]) = v123 & 1;
                *&v273[1] = v23;
                BYTE8(v273[1]) = v86;
                *&v273[2] = 0;
                BYTE8(v273[2]) = 1;
                *&v273[3] = 0;
                BYTE8(v273[3]) = 2;
                v274 = v272;
                specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v273);

                outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v273, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                v186 = [v267 viewControllers];
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
                v187 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v11 = v25;
                v56 = specialized BidirectionalCollection.dropLast(_:)(v25, v187);
                v189 = v188;
                v191 = v190;
                v193 = v192;

                v194 = v193 >> 1;
                if (v191 == v193 >> 1)
                {
                  swift_unknownObjectRelease();
                  v15 = MEMORY[0x1E69E7D40];
                  v23 = v262;
                  v40 = v263;
                }

                else
                {
                  v15 = MEMORY[0x1E69E7D40];
                  v23 = v262;
                  v40 = v263;
                  if (v194 <= v191)
                  {
                    __break(1u);
                    goto LABEL_232;
                  }

                  v195 = *(v189 + 8 * v194 - 8);
                  swift_unknownObjectRelease();
                  *(v6 + *((*v15 & *v6) + 0x88)) = v195;
                }

                v25 = v11;
                goto LABEL_169;
              }

LABEL_154:
              if (!v155)
              {
                if (v23 < v154)
                {
                  goto LABEL_250;
                }

                goto LABEL_202;
              }

              if (v155 == 2)
              {
                goto LABEL_202;
              }

              __break(1u);
            }

            if (v155 == 2 && !v154)
            {
              goto LABEL_195;
            }

            __break(1u);
            goto LABEL_160;
          }

LABEL_151:
          if (!v155)
          {
            goto LABEL_194;
          }

          if (v155 == 2)
          {
            goto LABEL_195;
          }

          __break(1u);
          goto LABEL_154;
        }

LABEL_148:
        if (v155 == 2 && !v154)
        {
          goto LABEL_164;
        }

        __break(1u);
        goto LABEL_151;
      }

LABEL_145:
      if (!v155)
      {
        goto LABEL_163;
      }

      if (v155 == 2)
      {
        goto LABEL_164;
      }

      __break(1u);
      goto LABEL_148;
    }

LABEL_169:
    if (v261)
    {
      outlined init with copy of NavigationState.StackContent(v40, v273);
      v34 = NavigationState.StackContent.shouldAnimate(from:)(v273);
      outlined destroy of PPTTestCase?(v273, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    }

    else
    {
      v34 = 0;
    }

    v196 = [v267 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
    v197 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v259 = v25;
    LODWORD(v266) = v34;
    if ((v34 & 1) == 0)
    {
      v203 = v23;

      v204 = 0;
LABEL_179:
      *&v271[0] = 0;
      BYTE8(v271[0]) = 1;
      outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v273);
      NavigationAuthority.controllerCache.getter();
      v206 = v205;
      v207 = outlined destroy of NavigationAuthority(v273);
      MEMORY[0x1EEE9AC00](v207);
      *(&v256 - 6) = v275;
      *(&v256 - 5) = v265;
      *(&v256 - 4) = v6;
      v208 = v267;
      *(&v256 - 3) = v267;
      v254 = v271;
      v209 = v6;
      v210 = v208;
      v15 = MEMORY[0x1E69E7D40];
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v208, 0, closure #1 in NavigationStackCoordinator.setViewControllers<A, B>(of:to:animated:transaction:transparentBackground:)specialized partial apply, (&v256 - 8), v206, v209, v264 & 1, v210, v204);

      v211 = [(UINavigationController *)v210 transitionCoordinator];
      v23 = v203;
      if (v211)
      {
        if (v259 >= 1 && (v266 & 1) != 0)
        {
          v270 = 1;
          v212 = v211;
          v213 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v273[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
          *(&v273[2] + 1) = v213;
          v15 = MEMORY[0x1E69E7D40];
          *&v273[0] = MEMORY[0x1E69E9820];
          *(&v273[0] + 1) = 1107296256;
          *&v273[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v273[1] + 1) = &block_descriptor_179;
          v214 = _Block_copy(v273);

          [v212 animateAlongsideTransition:0 completion:v214];
          _Block_release(v214);
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_218;
    }

    if (v197 >> 62)
    {
      v198 = __CocoaSet.count.getter();
    }

    else
    {
      v198 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v198 != 1 || (v199 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(), (v202 & 1) != 0))
    {
      v203 = v23;
      v204 = 1;
      goto LABEL_179;
    }

    v215 = 0;
    v216 = 0;
    while (1)
    {
      v15 = (v215 + 1);
      if (__OFADD__(v215, 1))
      {
        break;
      }

      specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v199, v216 & 1, v200, v201);
      ++v215;
      if ((v216 & 1) != 0 && v201 >= 2u)
      {
        v203 = v23;
        v204 = v15 != 1;
        v15 = MEMORY[0x1E69E7D40];
        goto LABEL_179;
      }
    }

    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    ;
  }

  outlined init with copy of NavigationAuthority(v6 + *((*v15 & *v6) + 0x68), v273);
  NavigationAuthority.controllerCache.getter();
  v114 = v113;
  outlined destroy of NavigationAuthority(v273);
  specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v40, v6, v271);
  if (v25 < 0)
  {
    goto LABEL_237;
  }

  v264 = v114;
  v115 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v25, v115, v116 & 1, v117, v118);
  if (v122 == 0xFF)
  {
    v87 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
    v123 = v181;
    v15 = v182;
    v86 = v183;
  }

  else
  {
    v87 = v119;
    v123 = v120;
    v86 = v122;
    v15 = v121;
  }

  v184 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter();
  if (v185)
  {
    if (v123)
    {
      goto LABEL_207;
    }

    __break(1u);
  }

  if (v123)
  {
    goto LABEL_207;
  }

  if (v87 < v184)
  {
    goto LABEL_246;
  }

  if (v184 < v87)
  {
    goto LABEL_207;
  }

  if (v86)
  {
    if (v86 != 1)
    {
      goto LABEL_191;
    }

    if (v155 != 1 || v15 >= v154)
    {
      goto LABEL_207;
    }

    __break(1u);
    goto LABEL_145;
  }

  if (!v155)
  {
    if (v15 >= v154)
    {
      goto LABEL_207;
    }

    goto LABEL_251;
  }

  if (v155 != 2)
  {
    __break(1u);
LABEL_191:
    if (v155 != 2 || v154)
    {
      __break(1u);
LABEL_194:
      if (v23 < v154)
      {
        goto LABEL_249;
      }

LABEL_195:
      memcpy(&v273[4], v271, 0x1E0uLL);
      *&v273[0] = v86;
      BYTE8(v273[0]) = v87 & 1;
      *&v273[1] = v23;
      BYTE8(v273[1]) = v123;
      *&v273[2] = 0;
      BYTE8(v273[2]) = 1;
      *&v273[3] = 0;
      BYTE8(v273[3]) = 2;
      v274 = v272;

      v217 = specialized Sequence.compactMap<A>(_:)(v273, v25);
      outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v273, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);

      v218 = swift_allocObject();
      *(v218 + 16) = v217;
      v219 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v220 = *((*v15 & *v11) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v11 + v220, v271, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v271[28]) == 255)
      {
        outlined destroy of PPTTestCase?(v271, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v221 = v11 + *((*v15 & *v11) + 0x60);
        v222 = *v221;
        v223 = v221[8];
        v224 = *(v221 + 2);
        if (v223 == 4)
        {
          LOBYTE(v223) = 0;
        }

        *&v273[0] = v222;
        BYTE8(v273[0]) = v223;
        *&v273[1] = v224;
        LOBYTE(v273[28]) = 0;
      }

      else
      {
        memcpy(v273, v271, 0x1C1uLL);
      }

      v225 = v15;
      NavigationState.StackContent.topKey.getter();
      v227 = v226;
      v229 = v228;
      v231 = v230;
      outlined destroy of NavigationState.StackContent(v273);
      v232 = swift_allocObject();
      *(v232 + 16) = closure #1 in NavigationHostingControllerCache_UIKit.ejectDeferred<A>(at:)partial apply;
      *(v232 + 24) = v218;
      *(v232 + 32) = BYTE1(v6);
      *(v232 + 40) = v219;
      *(v232 + 48) = v227;
      *(v232 + 56) = v229;
      *(v232 + 64) = v231;
      v233 = (v11 + *((*v225 & *v11) + 0xA0));
      v234 = *v233;
      v235 = v233[1];
      *v233 = partial apply for specialized closure #1 in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:);
      v233[1] = v232;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v234, v235);

LABEL_203:
      v23 = v262;
      goto LABEL_204;
    }
  }

LABEL_207:
  memcpy(&v273[4], v271, 0x1E0uLL);
  *&v273[0] = v87;
  BYTE8(v273[0]) = v123 & 1;
  *&v273[1] = v15;
  BYTE8(v273[1]) = v86;
  *&v273[2] = 0;
  BYTE8(v273[2]) = 1;
  *&v273[3] = 0;
  BYTE8(v273[3]) = 2;
  v274 = v272;
  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v273);

  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v273, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
  v237 = [v267 viewControllers];
  v238 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized BidirectionalCollection.dropLast(_:)(v25, v238);
  v240 = v239;
  v242 = v241;
  v244 = v243;

  v245 = v244 >> 1;
  if (v242 != v244 >> 1)
  {
    v15 = MEMORY[0x1E69E7D40];
    v246 = v265;
    if (v245 > v242)
    {
      v173 = *(v240 + 8 * v245 - 8);
      swift_unknownObjectRelease();
      *(v6 + *((*v15 & *v6) + 0x88)) = v173;
      if (v261)
      {
        outlined init with copy of NavigationState.StackContent(v263, v273);
        v247 = NavigationState.StackContent.shouldAnimate(from:)(v273);
        outlined destroy of PPTTestCase?(v273, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }

      else
      {
        v247 = 0;
      }

      v248 = v267;

      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v248, v275, v246, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
      v249 = [v248 transitionCoordinator];
      if (v249)
      {
        if (v247)
        {
          v270 = 1;
          v178 = v249;
          v250 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v273[2] = closure #1 in NavigationStackCoordinator.deferProgrammaticUpdateResetIfNeeded(shouldReset:navController:didReset:)specialized partial apply;
          *(&v273[2] + 1) = v250;
          *&v273[0] = MEMORY[0x1E69E9820];
          *(&v273[0] + 1) = 1107296256;
          v180 = &block_descriptor_184;
LABEL_215:
          *&v273[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v273[1] + 1) = v180;
          v251 = _Block_copy(v273);

          [v178 animateAlongsideTransition:0 completion:v251];

          v252 = v251;
          v15 = MEMORY[0x1E69E7D40];
          _Block_release(v252);
          swift_unknownObjectRelease();
LABEL_218:
          if (v270 == 1)
          {
            *(v6 + v260) = 0;
            *(v6 + *((*v15 & *v6) + 0x88)) = 0;
          }

          if (v23)
          {
            v236 = v6 + *((*v15 & *v6) + 0x68);
LABEL_222:
            outlined init with copy of NavigationAuthority(v236, v273);
            NavigationAuthority.controllerCache.getter();
            outlined destroy of NavigationAuthority(v273);
            specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v23);
          }

          return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v275, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
        }

LABEL_216:
        swift_unknownObjectRelease();
      }

LABEL_217:

      goto LABEL_218;
    }

LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
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
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_254:
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v273, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
  __break(1u);
LABEL_255:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double outlined copy of NavigationStrategy_Phone?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0E5StateV12StackContentV14PositionedViewVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationState.StackContent.PositionedView>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn, &type metadata for NavigationSplitColumn, &type metadata for NavigationState.StackContent.PositionedView);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 104)
    {
      outlined init with copy of (String, TabEntry)(i, v16, &lazy cache variable for type metadata for (NavigationSplitColumn, NavigationState.StackContent.PositionedView), &type metadata for NavigationSplitColumn, &type metadata for NavigationState.StackContent.PositionedView, type metadata accessor for (Badge, Spacer));
      v5 = v16[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 96 * result);
      v9 = v18;
      *v8 = v17;
      v8[1] = v9;
      v10 = v19;
      v11 = v20;
      v12 = v21[0];
      *(v8 + 73) = *(v21 + 9);
      v8[3] = v11;
      v8[4] = v12;
      v8[2] = v10;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>);
    }
  }
}

void specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16) == 1)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 25);
  v6 = *(a1 + 65);
  v7 = *(a2 + 24);
  if (v6 == 3)
  {
    goto LABEL_9;
  }

  if (*(a2 + 24))
  {
    if (v7 == 2)
    {
      if (v6 != 2)
      {
LABEL_14:
        v8 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      if (v7 != 1)
      {
LABEL_9:
        v8 = 0;
        goto LABEL_26;
      }

      if ((v6 - 1) >= 2)
      {
        goto LABEL_14;
      }
    }
  }

  v8 = 1;
LABEL_26:
  if (v5 == 3 || v7 > 2)
  {
    goto LABEL_31;
  }

  if (!*(a1 + 25))
  {
    if (v7 - 1 >= 2)
    {
      goto LABEL_40;
    }

LABEL_31:
    v16 = 0;
    if (v8 == 2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v5 == 1 && v7 == 2)
  {
    goto LABEL_31;
  }

LABEL_40:
  v16 = 1;
  if (v8 == 2)
  {
    return;
  }

LABEL_32:
  if (v8 == 1 || (v16 & 1) != 0)
  {
    return;
  }

LABEL_2:
  v4 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (*(a2 + 352))
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      return;
    }

    goto LABEL_5;
  }

  v9 = a4;
  outlined init with copy of NavigationColumnState.ColumnContent(a2 + 120, v17);
  if (v21)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v17);
  }

  else
  {

    v11 = v20;
    outlined destroy of NavigationState?(v17, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    v12 = *(v11 + 16);

    if (v12)
    {
      goto LABEL_22;
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(a2 + 120, v17);
  if (v21)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v17);
  }

  else
  {
    v13 = v19;

    v14 = outlined destroy of NavigationState?(v17, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    (*(*v13 + 80))(v14);
  }

LABEL_22:
  a4 = v9;
  if ((v4 & 0x8000000000000000) != 0)
  {
    return;
  }

LABEL_5:
  if (v4 >= *(a4 + 16))
  {
LABEL_43:
    __break(1u);
    return;
  }

  outlined init with copy of NavigationColumnState(a4 + 360 * v4 + 32, v17);
  if (v18)
  {
    NavigationListState.hasNonEmptySelection.getter();
  }

  outlined destroy of NavigationColumnState(v17);
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>)
  {
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t outlined init with copy of State<EventModifiers>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for State<EventModifiers>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent.PositionedView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

void type metadata accessor for State<EventModifiers>()
{
  if (!lazy cache variable for type metadata for State<EventModifiers>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<EventModifiers>);
    }
  }
}

Swift::Void __swiftcall UIKitHostedFocusItemLifecycle.updateValue()()
{
  v1 = v0;
  outlined init with copy of UIKitHostedFocusItemLifecycle(v0, v32);
  v2 = *MEMORY[0x1E698D3F8];
  if (v32[5] == *MEMORY[0x1E698D3F8])
  {
    outlined destroy of UIKitHostedFocusItemLifecycle(v32);
    return;
  }

  v3 = *AGGraphGetValue();
  outlined destroy of UIKitHostedFocusItemLifecycle(v32);
  if (v3)
  {
    AGGraphClearUpdate();
    outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
    if (v32[4] == v2)
    {
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      Strong = 0;
    }

    else
    {
      _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(0, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
      Value = AGGraphGetValue();
      outlined init with copy of WeakBox<UIView>(Value, v31);
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      Strong = swift_unknownObjectWeakLoadStrong();
      _s7SwiftUI7WeakBoxVySo11UIFocusItem_pGWOhTm_0(v31, &lazy cache variable for type metadata for WeakBox<UIView>, &lazy cache variable for type metadata for UIView, 0x1E69DD250, type metadata accessor for NSObject);
    }

    AGGraphSetUpdate();
    swift_unknownObjectWeakAssign();

    v6 = *(v1 + 40);
    outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
    v7 = *AGGraphGetValue();
    outlined destroy of UIKitHostedFocusItemLifecycle(v32);
    if (v6 != v7 >> 1)
    {
      outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
      v8 = *AGGraphGetValue();
      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      *(v1 + 40) = v8 >> 1;
      UIKitHostedFocusItemLifecycle.remove()();
      swift_unknownObjectRelease();
      *(v1 + 64) = 0;
      *(v1 + 72) = 0;
      *(v1 + 44) = 2;
    }

    v10 = (v1 + 80);
    v9 = *(v1 + 80);
    if (v9)
    {
      v11 = *(v1 + 88);
    }

    else
    {
      v12 = AGGraphClearUpdate();
      outlined init with copy of UIKitHostedFocusItemLifecycle(v1, v32);
      _s2os6LoggerVSgMaTm_3(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
      v13 = *AGGraphGetValue();

      outlined destroy of UIKitHostedFocusItemLifecycle(v32);
      AGGraphSetUpdate();
      if ((v13 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v9 = *(v13 + 32);
      }

      v14 = swift_conformsToProtocol2();
      if (!v14)
      {

        *v10 = 0;
        *(v1 + 88) = 0;
        goto LABEL_29;
      }

      v11 = v14;
      *(v1 + 80) = v9;
      *(v1 + 88) = v14;
    }

    v15 = (*(v11 + 16))(*v9);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      v19 = [v15 canBecomeFocused];
      v20 = *(v1 + 64);
      if (*(v1 + 64))
      {
        v21 = *(v1 + 44);
        if (v21 == 2 || ((v19 ^ v21) & 1) != 0)
        {
          *(v1 + 44) = v19;
          v30 = v20;
          v12 = swift_allocObject();
          *(v12 + 16) = v30;
          v10 = *(v1 + 96);
          swift_unknownObjectRetain_n();

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v23 = *(v10 + 2);
            v22 = *(v10 + 3);
            if (v23 >= v22 >> 1)
            {
              v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v10);
            }

            swift_unknownObjectRelease();

            *(v10 + 2) = v23 + 1;
            v24 = &v10[24 * v23];
            v24[32] = 0;
            *(v24 + 5) = partial apply for closure #1 in UIKitHostedFocusItemLifecycle.invalidateFocusIfNeeded();
            *(v24 + 6) = v12;
            *(v1 + 96) = v10;
            goto LABEL_25;
          }

LABEL_34:
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          goto LABEL_21;
        }
      }

      else
      {
        *(v1 + 64) = v17;
        *(v1 + 72) = v18;
        *(v1 + 44) = v19;
        swift_unknownObjectRetain();
        UIKitHostedFocusItemLifecycle.insert()();
      }

LABEL_25:
      if (*(v1 + 64))
      {
        v25 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        UIKitHostedFocusItemLifecycle.frame.getter();
        v27 = AGCreateWeakAttribute();
        (*(v25 + 40))(v27, ObjectType, v25);
      }

      swift_unknownObjectRelease();
      v28 = *(v1 + 96);
      *(v1 + 96) = MEMORY[0x1E69E7CC0];
      LOBYTE(v32[0]) = 17;
      *(swift_allocObject() + 16) = v28;
      goto LABEL_30;
    }

LABEL_29:
    v29 = *(v1 + 96);
    *(v1 + 96) = MEMORY[0x1E69E7CC0];
    LOBYTE(v32[0]) = 17;
    *(swift_allocObject() + 16) = v29;
LABEL_30:
    static Update.enqueueAction(reason:_:)();
  }
}

uint64_t sub_18BF50CF0()
{

  return swift_deallocObject();
}

uint64_t sub_18BF50D28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>)
  {
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    }
  }
}

uint64_t initializeWithCopy for NavigationState.StackContent.PositionedView(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  v4 = *(a2 + 88);

  if (v4 == 1)
  {
    v6 = a2[6];
    if (v6)
    {
      v7 = a2[7];
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      (**(v6 - 8))(a1 + 24, a2 + 3);
    }

    else
    {
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = a2[7];
    }

    v8 = a2[9];
    if (v8 == 1)
    {
      *(a1 + 64) = *(a2 + 4);
    }

    else
    {
      *(a1 + 64) = a2[8];
      *(a1 + 72) = v8;
    }

    *(a1 + 80) = a2[10];
    *(a1 + 88) = 1;
  }

  else if (v4)
  {
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 3);
  }

  else
  {
    v5 = *(a2 + 3);
    *(a1 + 48) = v5;
    (**(v5 - 8))(a1 + 24, a2 + 3);
    *(a1 + 88) = 0;
  }

  return a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
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
    v20 = v19[7] + 96 * v9;

    return outlined assign with take of NavigationState.StackContent.PositionedView(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of ToolbarPlacement.Role(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7] + 80 * v10;

  return outlined assign with take of ToolbarAppearanceConfiguration(a1, v17);
}

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
    v20 = v19[7] + 80 * v9;

    return outlined assign with take of ScrollViewCommitInfo(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, v6, a1, v19);
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
    v20 = v19[7] + 96 * v9;

    return outlined assign with take of NavigationDestinationPresentation(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent.PositionedView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4();
    v10 = type metadata accessor for Button(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>)
  {
    type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(a4, a5, MEMORY[0x1E6981F48]);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = (a4[7] + 96 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  *(v4 + 73) = *(a3 + 73);
  v6 = a3[4];
  v4[3] = a3[3];
  v4[4] = v6;
  v4[2] = a3[2];
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

void type metadata accessor for (ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>, &type metadata for RotatingDisclosureIndicator, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t NavigationState.StackContent.change(from:)(uint64_t a1)
{
  outlined init with copy of NavigationState.Base?(a1, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (LOBYTE(__src[112]) == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
  }

  else
  {
    memcpy(__dst, __src, 0x1C1uLL);
    outlined init with copy of NavigationState.Base(__dst, __src);
    if (LOBYTE(__src[112]))
    {
      outlined destroy of NavigationState.Base(__src);
      NavigationState.StackContent.pathSeed.getter(__src);
      v4 = __src[0];
      NavigationState.StackContent.pathSeed.getter(v44);
      outlined destroy of NavigationState.StackContent(__dst);
      if (v4 == -1 || *v44 == -1 || v4 != *v44)
      {
        return 2;
      }
    }

    else
    {
      outlined destroy of NavigationState.StackContent(__dst);
    }
  }

  outlined init with copy of NavigationState.Base(v1, __src);
  outlined init with copy of NavigationState.Base?(a1, __dst, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (LOBYTE(__dst[56]) == 255)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(__dst, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent, MEMORY[0x1E69E6720]);
    memset(v44, 0, 448);
    v44[448] = -1;
  }

  else
  {
    outlined init with copy of NavigationState.Base(__dst, v44);
    outlined destroy of NavigationState.StackContent(__dst);
  }

  memcpy(__dst, __src, 0x1C1uLL);
  memcpy(v43, v44, 0x1C1uLL);
  if (LOBYTE(__dst[56]))
  {
    if (LOBYTE(__dst[56]) == 1)
    {
      outlined init with copy of NavigationState.Base(__dst, v32);
      outlined consume of ResolvedNavigationDestinations?(v33, v34, v35, v36, v37, v38, v39, v40);
      if (v43[448] != 255)
      {
        outlined init with copy of NavigationState.Base?(v43, v30, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base);
        if (v31)
        {
          if (v31 == 1)
          {
            outlined consume of ResolvedNavigationDestinations?(v30[45], v30[46], v30[47], v30[48], v30[49], v30[50], v30[51], v30[52]);
            memcpy(v27, v32, 0x163uLL);
            memcpy(v26, v30, 0x163uLL);
            outlined init with copy of NavigationColumnState(v26, v24);
            NavigationColumnState.change(from:)(v24);
            if (!v2)
            {
              v19 = MEMORY[0x1E69E6720];
              v20 = v5;
              outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
              outlined destroy of NavigationColumnState(v26);
              outlined destroy of NavigationColumnState(v27);
              outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, v19);
              outlined destroy of NavigationState.Base(__dst);
              return v20;
            }

            outlined destroy of Binding<NavigationSplitViewColumn>(v24, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
            outlined destroy of NavigationColumnState(v26);
            outlined destroy of NavigationColumnState(v27);
            goto LABEL_43;
          }

          outlined destroy of NavigationState.Base(v30);
          v14 = v32;
          goto LABEL_39;
        }

        outlined init with copy of NavigationColumnState(v32, v27);
        if (NavigationState.Base.count.getter() == 1)
        {
          v12 = NavigationColumnState.isRootReplaced.getter();
          outlined destroy of NavigationColumnState(v27);
          if (v12)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          outlined destroy of NavigationColumnState(v32);
          outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
          outlined destroy of NavigationState.Base(__dst);
          return v13;
        }

        outlined destroy of NavigationColumnState(v27);
      }

      outlined destroy of NavigationColumnState(v32);
LABEL_54:
      outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return 2;
    }

    outlined init with copy of NavigationState.Base(__dst, v32);
    v10 = v32[0];
    v27[2] = *&v32[5];
    v27[3] = *&v32[7];
    LOWORD(v27[4]) = v32[9];
    v27[0] = *&v32[1];
    v27[1] = *&v32[3];
    if (v43[448] == 255)
    {
      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);

      goto LABEL_54;
    }

    outlined init with copy of NavigationState.Base?(v43, v30, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base);
    if (!v31)
    {

      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      NavigationState.Base.count.getter();
      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v26[2] = *&v30[5];
      v26[3] = *&v30[7];
      LOWORD(v26[4]) = v30[9];
      v26[0] = *&v30[1];
      v26[1] = *&v30[3];
      v24[2] = *&v30[5];
      v24[3] = *&v30[7];
      v25 = v30[9];
      v24[0] = *&v30[1];
      v24[1] = *&v30[3];
      v28[2] = v27[2];
      v28[3] = v27[3];
      v29 = v27[4];
      v28[1] = v27[1];
      v28[0] = v27[0];
      specialized static NavigationColumnState.change(from:to:previousSplitViewState:splitViewState:)(v30[0], v10, v24, v28);
      if (!v2)
      {
        v21 = v15;

        v22 = MEMORY[0x1E69E6720];
        outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v22);
        outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, v22);
        outlined destroy of NavigationState.Base(__dst);
        return v21;
      }

      v16 = MEMORY[0x1E69E6720];
      outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      outlined destroy of Binding<NavigationSplitViewColumn>(v26, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v16);
LABEL_43:
      outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      return outlined destroy of NavigationState.Base(__dst);
    }

    outlined destroy of Binding<NavigationSplitViewColumn>(v27, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
    v11 = v30;
LABEL_58:
    outlined destroy of NavigationState.Base(v11);
    goto LABEL_59;
  }

  if (v43[448] == 255 || (outlined init with copy of NavigationState.Base?(v43, v32, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base), !v41))
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
    outlined destroy of NavigationState.Base(__dst);
    return 1;
  }

  result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v31 == 255)
  {
    goto LABEL_66;
  }

  v7 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(v30);
  if (v7 >= 2)
  {
    result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    if (v31 == 255)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v8 = NavigationState.Base.count.getter();
    result = outlined destroy of NavigationState.StackContent(v30);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      outlined destroy of NavigationState.Base(v32);
      outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return v9;
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v41)
  {
    v11 = v32;
    goto LABEL_58;
  }

  if (v41 == 1)
  {
    outlined consume of ResolvedNavigationDestinations?(v33, v34, v35, v36, v37, v38, v39, v40);
    memcpy(v27, v32, 0x163uLL);
    result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    if (v31 != 255)
    {
      v17 = NavigationState.Base.count.getter();
      outlined destroy of NavigationState.StackContent(v30);
      if (v17 != 1)
      {
        v14 = v27;
LABEL_39:
        outlined destroy of NavigationColumnState(v14);
LABEL_59:
        outlined destroy of (NavigationState.Base, NavigationState.Base?)(__dst, type metadata accessor for (NavigationState.Base, NavigationState.Base?));
        return 2;
      }

      v18 = NavigationColumnState.isRootReplaced.getter();
      outlined destroy of NavigationColumnState(v27);
      if (v18)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationState.Base(__dst);
      return v9;
    }

    goto LABEL_68;
  }

  outlined destroy of NavigationState.Base(v32);
  result = outlined init with copy of NavigationState.Base?(a1, v30, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (v31 == 255)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v23 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(v30);
  if (v23 != 1)
  {
    goto LABEL_59;
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v43, &lazy cache variable for type metadata for NavigationState.Base?, &type metadata for NavigationState.Base, MEMORY[0x1E69E6720]);
  outlined destroy of NavigationState.Base(__dst);
  return 1;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for NavigationState.Base(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 449))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 448);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for _ContentShapeKindModifier<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for NavigationState.Base(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 448) = 0;
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
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 449) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 449) = 0;
    }

    if (a2)
    {
      *(result + 448) = -a2;
    }
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, void *(*a2)(void **__return_ptr, void **, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = result;
  v6 = result;
  if (a4 == a5)
  {
    return v6;
  }

  v8 = a4;
  if (a5 >= a4)
  {
    while (a5 != v8)
    {
      v11 = v8;
      result = (a2)(&v10, &v12, &v11, a3);
      if (!v5)
      {
        ++v8;
        v6 = v10;
        v12 = v10;
        if (a5 != v8)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(__int128 *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v35 = a1[4];
  v8 = a1[1];
  v31 = *a1;
  v32 = v8;
  type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(0, a2, a3, a4, type metadata accessor for SourceInput);
  v9 = outlined init with copy of _ViewListCountInputs(a1, &v26);
  a5(v9);
  PropertyList.subscript.getter();
  if (*&v25[0])
  {
    v10 = *(*&v25[0] + 48);
    v11 = *(*&v25[0] + 16);
    v12 = *(*&v25[0] + 24);
    v13 = *(*&v25[0] + 32);
    v14 = *(*&v25[0] + 40);
    v15 = *(*&v25[0] + 44);

    *&v25[0] = v10;
    *&v26 = v10;
    PropertyList.subscript.setter();
    if (v11)
    {
      _ViewListCountInputs.resetCurrentStyleableView()();
      v24[2] = v33;
      v24[3] = v34;
      v24[4] = v35;
      v24[0] = v31;
      v24[1] = v32;
      v21 = v33;
      v22 = v34;
      v23 = v35;
      v19 = v31;
      v20 = v32;
      v16 = *(v12 + 24);
      outlined init with copy of _ViewListCountInputs(v24, &v26);
      LOBYTE(v26) = v15;
      v17 = v16(v11, v12, v13, v14 | (v15 << 32), &v19, v11, v12);
      v25[2] = v21;
      v25[3] = v22;
      v25[4] = v23;
      v25[0] = v19;
      v25[1] = v20;
      outlined destroy of _ViewListCountInputs(v25);
      v28 = v33;
      v29 = v34;
      v30 = v35;
      v26 = v31;
      v27 = v32;
      outlined destroy of _ViewListCountInputs(&v26);
      return v17;
    }
  }

  else
  {
    *&v26 = 0;
    PropertyList.subscript.setter();
  }

  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  outlined destroy of _ViewListCountInputs(&v26);
  return 0;
}

uint64_t static SourceFormula.viewListCount(source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = a5[3];
  v10[2] = a5[2];
  v10[3] = v7;
  v10[4] = a5[4];
  v8 = a5[1];
  v10[0] = *a5;
  v10[1] = v8;
  if ((a4 & 0x100000000) != 0)
  {
    return (*(a7 + 40))(v10);
  }

  else
  {
    return static Optional<A>._viewListCount(inputs:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA8StaticIfVyAA23GestureContainerFeatureVAaBPAAE020globallySimultaneousF0_4name9isEnabledQrqd___SSSgSbtAA0F0Rd__lFQOyAA15ModifiedContentVyxAA03AddF8ModifierVyAaLPAAE14truePreferenceyQrqd__mAA0S3KeyRd__Sb5ValueRtd__lFQOyAA0qF0VyAA09CallbacksF0VyAA09PressablefV033_C70334A42970E36EF599A57E69899EA7LLVySbGGAA09LongPressF0VG_AA013IsCancellablefT0VQo_AA07DefaultF8CombinerVGG_AA015PrimitiveButtonF0VQo_A12_GAaBHPAfA0C14InputPredicateHPyHC_qd0__AaBHD3_A15_HOA12_AaBHPxAaBHD1__A11_AA0cQ0HPyHCHCHCTm(uint64_t a1, double (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(a1 + 8);
  a2(255);
  v7 = type metadata accessor for ModifiedContent();
  v13[0] = v6;
  v13[1] = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(a3, a4, MEMORY[0x1E697F398]);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v13);
  swift_getOpaqueTypeMetadata2();
  v9 = type metadata accessor for StaticIf();
  v12[3] = v7;
  v12[4] = &type metadata for PrimitiveButtonGesture;
  v12[5] = WitnessTable;
  v12[6] = &protocol witness table for PrimitiveButtonGesture;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12[0] = MEMORY[0x1E69801D0];
  v12[1] = OpaqueTypeConformance2;
  v12[2] = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v12);
}

void type metadata accessor for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>, &lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(255);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>)
  {
    type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(255, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>, &lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>);
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, DelayedLongPressGesture>, MEMORY[0x1E697E860]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<<<opaque return type of Gesture.truePreference<A>(_:)>>.0, DefaultGestureCombiner>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for (_UIImageNamedColorStyle, UIColor)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_UIImageNamedColorStyle, UIColor))
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_UIImageNamedColorStyle, UIColor));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>)
  {
    type metadata accessor for (_UIImageNamedColorStyle, UIColor)(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
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

void type metadata accessor for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>)
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle, protocol conformance descriptor for _UIImageNamedColorStyle);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<_UIImageNamedColorStyle, UIColor>);
    }
  }
}

uint64_t outlined destroy of (_UIImageNamedColorStyle, UIColor)(uint64_t a1)
{
  type metadata accessor for (_UIImageNamedColorStyle, UIColor)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle()
{
  result = lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle;
  if (!lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle)
  {
    type metadata accessor for _UIImageNamedColorStyle(255);
    result = swift_getWitnessTable(protocol conformance descriptor for _UIImageNamedColorStyle, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UISceneSessionRole(void *a1, uint64_t *a2)
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

uint64_t View.accessibilityHint(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3 & 1;
  *(v12 + 56) = a4;
  v14 = v12;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980100], &v14, 1, a5, MEMORY[0x1E6980100], a6, MEMORY[0x1E69800F8]);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance PrimitiveButtonStyleConfiguration.Label(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(v4, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
}

unint64_t lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t View.accessibilityHint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  View.accessibilityHint(_:)(v10, v11, v13 & 1, v15, a2, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, MEMORY[0x1E6980688]);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for SearchScopeActivation.Role(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, type metadata accessor for ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>);
    type metadata accessor for ModifiedContent<Divider, _PaddingLayout>?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<_ViewList_View, AccessibilityLargeContentViewBehaviorModifier<EnabledLargeContentView>>, BarItemModifier>, ModifiedContent<Divider, _PaddingLayout>?));
    }
  }
}

_BYTE *initializeWithCopy for BarItemModifier(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLargeContentViewBehaviorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLargeContentViewBehaviorModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static AccessibilityLargeContentViewBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[3];
  v32 = a2[2];
  v33 = v9;
  v34 = a2[4];
  v35 = *(a2 + 20);
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  lazy protocol witness table accessor for type LargeContentViewerBehavior and conformance LargeContentViewerBehavior();
  PropertyList.subscript.getter();
  v11 = (*(a6 + 8))(a5, a6);
  if (v11 == 1 || v24 != 3 && v24 == v11)
  {
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v24 = v30;
    v25 = v31;
    return (a3)();
  }

  else
  {
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v14 = v30;
    v15 = v31;
    LOBYTE(v22[0]) = v11;
    outlined init with copy of _ViewInputs(&v30, &v24);
    PropertyList.subscript.setter();
    v20[2] = v16;
    v20[3] = v17;
    v20[4] = v18;
    v21 = v19;
    v20[0] = v14;
    v20[1] = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v24 = v14;
    v25 = v15;
    v13 = outlined init with copy of _ViewInputs(v20, v22);
    a3(v13, &v24);
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v23 = v29;
    v22[0] = v24;
    v22[1] = v25;
    outlined destroy of _ViewInputs(v22);
    MEMORY[0x1EEE9AC00](v17);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v24 = v14;
    v25 = v15;
    return outlined destroy of _ViewInputs(&v24);
  }
}

uint64_t storeEnumTagSinglePayload for WindowResizability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ToolbarButtonHoverShape>, lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape, &type metadata for ToolbarButtonHoverShape, MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69805E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>()
{
  result = lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>;
  if (!lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>);
  }

  return result;
}

uint64_t implicit closure #4 in static AccessibilityLargeContentViewModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a1[5];
  v23 = a1[4];
  v24 = v6;
  v7 = a1[7];
  v25 = a1[6];
  v26 = v7;
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  v9 = a1[3];
  v21 = a1[2];
  v22 = v9;
  *&v27 = a2;
  *(&v27 + 1) = a3;
  *&v28 = a4;
  *(&v28 + 1) = a5;
  v10 = type metadata accessor for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(0, &v27);
  v17 = v10;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLargeContentViewModifier<A, B>.AccessibilityLargeContentViewTransform, v10);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v27, a1, v10);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, partial apply for closure #1 in Attribute.init<A>(_:), v16, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  (*(v11 + 8))(&v27, v10);
  return v15;
}

void type metadata accessor for ModifiedContent<Divider, _PaddingLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>?)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(255, &lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>, &type metadata for Divider, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Divider, _PaddingLayout>?);
    }
  }
}

uint64_t initializeWithTake for BarItemView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectWeakTakeInit();
  return a1;
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

unint64_t lazy protocol witness table accessor for type BarEdgeInput and conformance BarEdgeInput()
{
  result = lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput;
  if (!lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarEdgeInput, &unk_1EFFF2658, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput;
  if (!lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarEdgeInput, &unk_1EFFF2658, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarEdgeInput and conformance BarEdgeInput);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v3;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 120) = v4;

  v5 = v4;
  return a1;
}

void destroy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(void *a1)
{

  v2 = a1[15];
}

uint64_t View.onScrollVisibilityChange(threshold:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a4 > 1.0)
  {
    a4 = 1.0;
  }

  *v5 = a4;
  v5[1] = a1;
  v5[2] = a2;
  v6 = 0;
  v7 = 0;
  return MEMORY[0x18D00A570](v5, a3, &unk_1EFFAF280);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Sizing>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Sizing>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Sizing>);
    }
  }
}

double View.textSizing(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

void *sub_18BF54278@<X0>(uint64_t a2@<X8>)
{
  result = EnvironmentValues.textSizing.getter();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void FlipForRTLTransform.value.getter(uint64_t a4@<X8>)
{
  v5 = *AGGraphGetValue();
  if (v5 != 2 && *AGGraphGetValue() == (v5 & 1))
  {
    Value = AGGraphGetValue();
    v10 = *(Value + 8);
    *a4 = *Value;
    *(a4 + 8) = v10;
    v11 = *(Value + 32);
    *(a4 + 16) = *(Value + 16);
    *(a4 + 32) = v11;
    type metadata accessor for CGPoint(0);

    v12 = AGGraphGetValue();
    ViewTransform.resetPosition(_:)(*v12);
    AGGraphGetValue();
    ViewSize.width.getter();
    *&v14.a = 0xBFF0000000000000;
    v14.c = 0.0;
    v14.d = 1.0;
    v14.tx = v13;
    v14.ty = 0.0;
    ViewTransform.appendAffineTransform(_:inverse:)(&v14, 1);
  }

  else
  {
    v6 = AGGraphGetValue();
    v7 = *(v6 + 8);
    *a4 = *v6;
    *(a4 + 8) = v7;
    v8 = *(v6 + 32);
    *(a4 + 16) = *(v6 + 16);
    *(a4 + 32) = v8;
  }
}

uint64_t assignWithCopy for DefaultToolbarBarPocketModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of _ViewList_View?(a1, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v4 = *(a2 + 3);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 4);
        (**(v4 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v5;
        *(a1 + 16) = v6;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

uint64_t assignWithCopy for InsetListLabelStyle.StyleView(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithCopy for ToolbarButtonStyle(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<ToolbarItemPlacement.Role>.Content(a1);
    if (*(a2 + 41))
    {
      if (*(a2 + 40) == 1)
      {
        v4 = *(a2 + 3);
        *(a1 + 24) = v4;
        *(a1 + 32) = *(a2 + 4);
        (**(v4 - 8))(a1, a2);
        *(a1 + 40) = 1;
      }

      else
      {
        v5 = *a2;
        v6 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v5;
        *(a1 + 16) = v6;
      }

      *(a1 + 41) = 1;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 8);
  v12 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  return a1;
}

uint64_t assignWithCopy for SearchCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (*(a1 + 72) != 255)
  {
    if (v6 == 255)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      *a1 = *a2;
      v10 = *(a2 + 32);
      v9 = *(a2 + 48);
      v11 = *(a2 + 16);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else if (a1 != a2)
    {
      outlined destroy of TextInputSuggestionCompletionKind(a1);
      if (*(a2 + 72))
      {
        goto LABEL_5;
      }

LABEL_9:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 72) = 0;

      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (a1 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v6 != 255)
  {
    if (v6)
    {
LABEL_5:
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 56);
      *(a1 + 56) = v8;
      *(a1 + 64) = *(a2 + 64);
      (**(v8 - 8))(a1 + 32, a2 + 32);
      *(a1 + 72) = 1;
      if (a1 == a2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  *a1 = *a2;
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  *(a1 + 16) = v19;
  if (a1 == a2)
  {
    goto LABEL_21;
  }

LABEL_13:
  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  outlined destroy of Environment<DismissSearchAccessoryAction>.Content(a1 + v12, type metadata accessor for Environment<DismissSearchAccessoryAction>.Content);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      *v13 = *v14;
      v45 = v17;
      v13[1] = v14[1];
      v22 = *(v16 + 32);
      v23 = v13 + v22;
      v24 = v14 + v22;
      *v23 = *(v14 + v22);
      v23[1] = *(v14 + v22 + 1);
      v23[2] = *(v14 + v22 + 2);
      v23[3] = *(v14 + v22 + 3);
      LODWORD(v22) = *(v14 + v22 + 4);
      v23[8] = v24[8];
      *(v23 + 1) = v22;
      v25 = type metadata accessor for SearchFieldState(0);
      v46 = a3;
      v26 = v25[9];
      v27 = type metadata accessor for AttributedString();
      v44 = *(*(v27 - 8) + 16);

      v28 = &v23[v26];
      v29 = &v24[v26];
      a3 = v46;
      v44(v28, v29, v27);
      v23[v25[10]] = v24[v25[10]];
      v30 = v25[11];
      v31 = &v23[v30];
      v32 = &v24[v30];
      v33 = v32[4];
      *v31 = *v32;
      v31[4] = v33;
      (*(v45 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
LABEL_21:
  v34 = *(a3 + 24);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(v36 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v36, v38, v39);
  v40 = *v35;
  v41 = *(v35 + 8);
  v42 = *(v35 + 16);
  *v35 = v37;
  *(v35 + 8) = v38;
  *(v35 + 16) = v39;
  outlined consume of Environment<TriggerSubmitAction?>.Content(v40, v41, v42, outlined consume of TriggerSubmitAction?);
  return a1;
}