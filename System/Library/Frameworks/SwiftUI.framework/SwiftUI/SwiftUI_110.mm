void storeEnumTagSinglePayload for WrappedButtonStyleBody.ArchiveBody(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  v13 = *(v8 + 80);
  v14 = ((v12 | 7) + *(v8 + 64) + ((v13 + 25) & ~v13)) & ~(v12 | 7);
  v15 = (-2 - (v12 | 7)) | v12;
  v16 = *(v11 + 64) - ((-76 - v12) | v12);
  if (v16 <= 0x30)
  {
    v16 = 48;
  }

  v17 = v16 - (*&v15 | 0xFFFFFFFF00000007) + v14;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
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

  if (v10 < a2)
  {
    v19 = ~v10 + a2;
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
LABEL_48:
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
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
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

      goto LABEL_33;
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

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0xFE)
  {
    v24 = *(v25 + 56);

    v24(((a1 & 0xFFFFFFFFFFFFFFF8) + v13 + 25) & ~v13, a2, v9, v7);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    *(a1 + 8) = -a2;
  }
}

unint64_t instantiation function for generic protocol witness table for ArchivableButtonAppIntentModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  a1[2] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  result = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  a1[3] = result;
  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t specialized ArchivableButtonAppIntentModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableButtonAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v17;
  v24 = 0;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v18;
  v11 = v19;
  v23 = v20;
  v16 = v21;
  v15 = v22;
  LOBYTE(v18) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v23;
  *(v9 + 24) = v16;
  *(v9 + 40) = v15;
  *(v9 + 48) = v12 & 1;
  return result;
}

uint64_t objectdestroy_73Tm()
{

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for WrappedButtonStyleBody.ArchiveBody(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(a1, v9, v6, v7);
}

unint64_t lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

uint64_t assignWithTake for ButtonSpringLoadedInteraction(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ButtonRepeatModifier(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v5 = *(a2 + 72);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonRepeatModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for ButtonRepeatModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>> and conformance ButtonBehavior<A>, type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, protocol conformance descriptor for ButtonBehavior<A>);
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E6980A08], MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>(255);
    type metadata accessor for FailedCallbacks<()>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>, lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>, &protocol witness table for TemporalStateViewModifier<A>);
    v6 = type metadata accessor for ButtonBehavior(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableButtonAppIntentModifier>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, MEMORY[0x1E697FDE8]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for TemporalStateViewModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981FD8], type metadata accessor for TemporalStateViewModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableButtonAppIntentModifier>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>();
    v6 = type metadata accessor for ButtonBehavior(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t objectdestroy_118Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ButtonFocusInteractionModifier.physicalButtonPressGesture.getter()
{
  v1 = *(v0 + 16);
  v2 = (*(v0 + 32))(0);
  return v1(v2);
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonRepeatModifier>, lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier, &unk_1EFFCD428, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for Environment<AppIntentExecutor?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for FailedCallbacks<()>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_124Tm()
{

  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t assignWithCopy for ButtonRepeatModifier.RepeatState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ButtonRepeatModifier.RepeatState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, lazy protocol witness table accessor for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>);
    v5[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonRepeatModifier>, lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier, &unk_1EFFCD428, MEMORY[0x1E697FDE8]);
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ValueActionModifier2<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ValueActionModifier2<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonSpringLoadedInteraction>, lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction, &unk_1EFFCD3A8, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonSpringLoadedInteraction>, lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction, &unk_1EFFCD3A8, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> CoalescingAdjacentDuplicates<A>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> CoalescingAdjacentDuplicates<A>, a2, &v8);
  return swift_getWitnessTable(a4, a1, &WitnessTable);
}

uint64_t CoalescingAdjacentDuplicates.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for Optional();
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v32 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v43 = v5;
  v44 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v15;
  dispatch thunk of IteratorProtocol.next()();
  v38 = *(v12 + 48);
  v39 = v12 + 48;
  if (v38(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v48);
    return (*(v12 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v32 = v12;
    v33 = a2;
    v16 = *(v12 + 32);
    v34 = (v7 + 16);
    v35 = v16;
    v45 = (v7 + 8);
    v36 = v12 + 32;
    v37 = (v12 + 8);
    v17 = v47;
    v18 = v42;
    while (1)
    {
      v19 = AssociatedTypeWitness;
      v35(v17, v11, AssociatedTypeWitness);
      v20 = *(v46 + 36);
      v21 = v48;
      v22 = (*v34)(v18, v2 + v20, v48);
      MEMORY[0x1EEE9AC00](v22);
      v23 = v44;
      *(&v32 - 4) = v43;
      *(&v32 - 3) = v23;
      *(&v32 - 2) = v2;
      *(&v32 - 1) = v17;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in CoalescingAdjacentDuplicates.Iterator.next(), (&v32 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, v49);
      v25 = *v45;
      (*v45)(v18, v21);
      if (v49[0] == 2 || (v49[0] & 1) != 0)
      {
        break;
      }

      v17 = v47;
      AssociatedTypeWitness = v19;
      (*v37)(v47, v19);
      dispatch thunk of IteratorProtocol.next()();
      if (v38(v11, 1, v19) == 1)
      {
        v12 = v32;
        a2 = v33;
        v25(v11, v48);
        return (*(v12 + 56))(a2, 1, 1, AssociatedTypeWitness);
      }
    }

    v25((v2 + v20), v48);
    v27 = v32;
    v28 = *(v32 + 16);
    v29 = v47;
    v28(v2 + v20, v47, v19);
    v30 = *(v27 + 56);
    v30(v2 + v20, 0, 1, v19);
    v31 = v33;
    v28(v33, v29, v19);
    v30(v31, 0, 1, v19);
    return (*(v27 + 8))(v29, v19);
  }
}

void closure #1 in CoalescingAdjacentDuplicates.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v9 = *(a2 + *(type metadata accessor for CoalescingAdjacentDuplicates.Iterator(0, a4, a5, a4) + 40));

  LOBYTE(a3) = v9(a3, a1);

  *a6 = (a3 & 1) == 0;
}

uint64_t CoalescingAdjacentDuplicates.Iterator.init(baseIterator:last:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for CoalescingAdjacentDuplicates.Iterator(0, a5, a6, v15);
  v17 = *(v16 + 36);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  result = (*(*(v18 - 8) + 32))(a7 + v17, a2, v18);
  v20 = (a7 + *(v16 + 40));
  *v20 = a3;
  v20[1] = a4;
  return result;
}

double CoalescingAdjacentDuplicates.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v19 - v16;
  (*(v10 + 16))(v13, v2, v5, v15);
  dispatch thunk of Sequence.makeIterator()();
  (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness);
  CoalescingAdjacentDuplicates.Iterator.init(baseIterator:last:comparator:)(v17, v9, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 36) + 8), v5, v4, v20);

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CoalescingAdjacentDuplicates<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = CoalescingAdjacentDuplicates.makeIterator()(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v2, a1, v4);
}

uint64_t CoalescingAdjacentDuplicates<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return CoalescingAdjacentDuplicates<>.formIndex(after:)(a4, a2, a3);
}

uint64_t CoalescingAdjacentDuplicates<>.formIndex(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v30 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v38 = v3;
  v39 = a1;
  v16 = dispatch thunk of Collection.subscript.read();
  v17 = *(v10 + 16);
  v36 = v15;
  v37 = v9;
  v30 = v17;
  v17(v15);
  v16(v40, 0);
  v33 = (v31 + 16);
  v18 = (v31 + 8);
  v31 = v10 + 16;
  v19 = (v10 + 8);
  while (1)
  {
    v20 = v39;
    dispatch thunk of Collection.formIndex(after:)();
    v21 = v34;
    (*v33)(v34, v20, AssociatedTypeWitness);
    v22 = v35;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v18;
    (*v18)(v22, AssociatedTypeWitness);
    v24(v21, AssociatedTypeWitness);
    if (v23)
    {
      break;
    }

    v25 = *(v38 + *(v32 + 36));
    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v37;
    v30(v12);
    (v26)(v40, 0);
    LOBYTE(v26) = v25(v36, v12);
    v28 = *v19;
    (*v19)(v12, v27);
    if ((v26 & 1) == 0)
    {
      return (v28)(v36, v37);
    }
  }

  v28 = *v19;
  return (v28)(v36, v37);
}

uint64_t CoalescingAdjacentDuplicates<>.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  v5 = dispatch thunk of Collection.subscript.read();
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v7, AssociatedTypeWitness);
  return v5(&v10, 0);
}

void (*protocol witness for Collection.subscript.read in conformance <> CoalescingAdjacentDuplicates<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = CoalescingAdjacentDuplicates<>.subscript.read(v8, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*CoalescingAdjacentDuplicates<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  CoalescingAdjacentDuplicates<>.subscript.getter(v7);
  return CoalescingAdjacentDuplicates<>.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> CoalescingAdjacentDuplicates<A>@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t CoalescingAdjacentDuplicates<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return CoalescingAdjacentDuplicates<>.formIndex(before:)(a4, a2, a3);
}

uint64_t CoalescingAdjacentDuplicates<>.formIndex(before:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v44 = a2;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v45 = a3;
  v19 = v3;
  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  v20 = dispatch thunk of Collection.subscript.read();
  v21 = *(v14 + 16);
  v48 = v18;
  v49 = v13;
  v41 = v21;
  v21(v18);
  v20(v52, 0);
  v22 = v50 + 16;
  v38 = *(v50 + 16);
  v39 = a1;
  v38(v12, a1, AssociatedTypeWitness);
  v50 = v22;
  v23 = (v22 - 8);
  v43 = v14 + 16;
  v47 = (v14 + 8);
  v40 = (v22 - 8);
  while (1)
  {
    v24 = v46;
    dispatch thunk of Collection.startIndex.getter();
    swift_getAssociatedConformanceWitness();
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = v6;
    v27 = *v23;
    (*v23)(v24, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v51 = *(v19 + *(v44 + 36));
    v28 = dispatch thunk of Collection.subscript.read();
    v29 = AssociatedTypeWitness;
    v30 = v42;
    v31 = v12;
    v32 = v7;
    v33 = v49;
    v41(v42);
    (v28)(v52, 0);
    v23 = v40;
    LOBYTE(v28) = v51(v48, v30);
    v34 = v30;
    AssociatedTypeWitness = v29;
    v35 = v33;
    v7 = v32;
    v12 = v31;
    (*v47)(v34, v35);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v36 = v39;
    v27(v39, v29);
    v38(v36, v31, v29);
    v6 = v26;
  }

  v27(v12, AssociatedTypeWitness);
  return (*v47)(v48, v49);
}

uint64_t type metadata completion function for CoalescingAdjacentDuplicates.Iterator(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CoalescingAdjacentDuplicates.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  if (*(v9 + 84))
  {
    v12 = *(v9 + 64);
  }

  else
  {
    v12 = *(v9 + 64) + 1;
  }

  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v12 + (v11 & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    v18 = ~v10;
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v19 = ((a2 + v11) & v18);
    if ((*(v9 + 48))(v19, 1, v17))
    {
      memcpy(((a1 + v11) & v18), v19, v12);
    }

    else
    {
      (*(v9 + 16))((a1 + v11) & v18, v19, v17);
      (*(v9 + 56))((a1 + v11) & v18, 0, 1, v17);
    }

    v20 = ((v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    v22 = ((((a1 + v11) & v18) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v20;
    v22[1] = v21;
  }

  return a1;
}

double destroy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = *(v4 + 56);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = (v5 + a1 + *(v7 + 80)) & ~*(v7 + 80);
  if (!(*(v7 + 48))(v8, 1, v6))
  {
    (*(v7 + 8))(v8, v6);
  }

  return result;
}

uint64_t initializeWithCopy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v7 + v10 + a1) & ~v10);
  v12 = ((v7 + v10 + a2) & ~v10);
  if ((*(v9 + 48))(v12, 1, v8))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v9 + 16))(v11, v12, v8);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, v8);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  v19 = v11 + v18 + 7;
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v20;
  v21 = v20[1];
  v23 = (v19 & 0xFFFFFFFFFFFFFFF8);
  *v23 = v22;
  v23[1] = v21;

  return a1;
}

uint64_t assignWithCopy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v7 + v10 + a1) & ~v10);
  v12 = ((v7 + v10 + a2) & ~v10);
  v13 = *(v9 + 48);
  LODWORD(v7) = v13(v11, 1, v8);
  v14 = v13(v12, 1, v8);
  if (v7)
  {
    if (!v14)
    {
      (*(v9 + 16))(v11, v12, v8);
      (*(v9 + 56))(v11, 0, 1, v8);
      goto LABEL_12;
    }

    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v9 + 24))(v11, v12, v8);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, v8);
    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v11, v12, v17);
LABEL_12:
  if (*(v9 + 84))
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  v19 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t initializeWithTake for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v7 + v10 + a1) & ~v10);
  v12 = ((v7 + v10 + a2) & ~v10);
  if ((*(v9 + 48))(v12, 1, v8))
  {
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v11, v12, v15);
  }

  else
  {
    (*(v9 + 32))(v11, v12, v8);
    v17 = *(v9 + 56);
    v16 = v9 + 56;
    v17(v11, 0, 1, v8);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  *((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = ((v7 + v10 + a1) & ~v10);
  v12 = ((v7 + v10 + a2) & ~v10);
  v13 = *(v9 + 48);
  LODWORD(v7) = v13(v11, 1, v8);
  v14 = v13(v12, 1, v8);
  if (v7)
  {
    if (!v14)
    {
      (*(v9 + 32))(v11, v12, v8);
      (*(v9 + 56))(v11, 0, 1, v8);
      goto LABEL_12;
    }

    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v9 + 40))(v11, v12, v8);
      goto LABEL_12;
    }

    (*(v9 + 8))(v11, v8);
    v15 = *(v9 + 84);
    v16 = *(v9 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v11, v12, v17);
LABEL_12:
  if (*(v9 + 84))
  {
    v18 = *(v9 + 64);
  }

  else
  {
    v18 = *(v9 + 64) + 1;
  }

  *((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for CoalescingAdjacentDuplicates.Iterator(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  v17 = v15 + 7;
  if (v13 < a2)
  {
    v18 = ((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_27:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        return v13 + (v25 | v24) + 1;
      }
    }
  }

  if (v7 == v13)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, AssociatedTypeWitness);
  }

  v28 = (a1 + v16) & ~v14;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v30 = (*(v10 + 48))(v28);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *((v17 + v28) & 0xFFFFFFFFFFFFFFF8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void storeEnumTagSinglePayload for CoalescingAdjacentDuplicates.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  if (v13 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v14;
  v17 = (v12 + v14) & ~v14;
  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  v19 = v18 + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v19 + v17) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = a3 - v15 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v15 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v15)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v15;
    }

    if (v20)
    {
      v26 = ~v15 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v9 == v15)
  {
    v27 = *(v8 + 56);

    v27(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v28 = (a1 + v16) & ~v14;
    if (v13 == v15)
    {
      v29 = *(v10 + 56);

      v29(v28, (a2 + 1));
    }

    else
    {
      v30 = ((v19 + v28) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v30 = a2 & 0x7FFFFFFF;
        v30[1] = 0;
      }

      else
      {
        *v30 = (a2 - 1);
      }
    }
  }
}

void CircularGaugeStyle.init(tint:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t ComplicationCircularGaugeStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63400;
  *(v4 + 32) = a1;
  result = MEMORY[0x18D00B0A0]();
  *a2 = result;
  return result;
}

double ComplicationCircularGaugeStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = v7;

  return result;
}

double protocol witness for GaugeStyle.makeBody(configuration:) in conformance ComplicationCircularGaugeStyle@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = v7;

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedTextFieldStyle(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = v7 + ((v6 + 16) & ~v6);
  }

  else
  {
    v48 = v5;
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[8];

    if (v9)
    {
      v10 = a2[5];
      v11 = a2[6];
      v12 = *(a2 + 56);
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v12;
      *(a1 + 64) = v9;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v40 = a2[17];
    v41 = a2[18];
    v42 = a2[19];
    v43 = a2[20];
    v44 = a2[21];
    v45 = *(a2 + 44);
    __dsta = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v40, v41, v42, v43, v44, v45, __dsta);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    *(a1 + 152) = v42;
    *(a1 + 160) = v43;
    *(a1 + 168) = v44;
    *(a1 + 176) = v45;
    *(a1 + 180) = __dsta;
    v21 = *(v48 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      v49 = v22;
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      v34 = v30;

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
        v36 = v49;
      }

      else
      {
        v37 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v38 - 8) + 16))(__dst, v30, v38);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v30, *(*(v37 - 8) + 64));
        }

        v36 = v49;
        __dst[*(v31 + 20)] = v34[*(v31 + 20)];
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      (*(v26 + 56))(v36, 0, 1, v25);
    }
  }

  return a1;
}

uint64_t initializeWithTake for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 64) = v5;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 180);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  v24 = *(a1 + 176);
  v25 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      return a1;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    outlined destroy of TextSelection.Indices(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    return a1;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      return a1;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection.Indices);
    v61 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v62 - 8) + 32))(v48, v49, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v61 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTextFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle, protocol conformance descriptor for ResolvedTextFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

void type metadata accessor for TextFieldStyleModifier<DefaultTextFieldStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TextFieldStyleModifier<DefaultTextFieldStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle();
    v4 = type metadata accessor for TextFieldStyleModifier(a1, &type metadata for DefaultTextFieldStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TextFieldStyleModifier<DefaultTextFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle;
  if (!lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultTextFieldStyle, &type metadata for DefaultTextFieldStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TextFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TextFieldStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

_DWORD *protocol witness for Rule.value.getter in conformance AccessibilityGestureAttachment@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

void *AccessibilityGestureModifier.initialAttachment(for:)(unint64_t a1, uint64_t a2)
{
  v39 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_38:
    v27 = a2;
    v28 = __CocoaSet.count.getter();
    a2 = v27;
    v4 = v28;
    if (v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v32 = a2;
      v5 = 0;
      v6 = a1 & 0xC000000000000001;
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      v33 = v4;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x18D00E9C0](v5, a1);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_37;
          }

          v8 = *(a1 + 32 + 8 * v5);
        }

        v9 = v8;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v11 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        outlined init with copy of AccessibilityAttachment?(&v9[v11], __src);
        if (__src[35])
        {
          memcpy(__dst, __src, 0x128uLL);
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          v12 = __src[14];
          v13 = BYTE4(__src[14]);
          v14 = LOBYTE(__src[15]);
          outlined destroy of AccessibilityProperties(__src);
          if (v14)
          {
            v15 = 0;
          }

          else
          {
            v15 = v13;
          }

          if (v14)
          {
            v16 = 0;
          }

          else
          {
            v16 = v12;
          }

          if ((v16 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          outlined destroy of AccessibilityAttachment?(__src);
          v17 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v18 = *&v9[v17];
          v19 = *(v18 + 16);
          if (v19)
          {

            v16 = 0;
            v15 = 0;
            v20 = v18 + 320 * v19 - 288;
            while (v19 <= *(v18 + 16))
            {
              outlined init with copy of AccessibilityAttachmentStorage(v20, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              outlined init with copy of AccessibilityProperties(__src, v34);
              outlined destroy of AccessibilityAttachment(__src);
              v21 = v35;
              v22 = v36;
              outlined destroy of AccessibilityProperties(v34);
              if ((v22 & 1) == 0)
              {
                v23 = v21 & ~v15;
                v24 = v15 | ~BYTE4(v21);
                v15 |= BYTE4(v21);
                v16 = v24 & v16 | v23;
              }

              v20 -= 320;
              if (!--v19)
              {

                v7 = a1 & 0xFFFFFFFFFFFFFF8;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_34:
            v25 = v39;
            LODWORD(a2) = v32;
            if (v32)
            {
              goto LABEL_40;
            }

LABEL_35:

            v26 = 0;
LABEL_48:
            AccessibilityProperties.init()();
            __dst[5] = v26;
            __dst[6] = 0x100000;
            LOBYTE(__dst[7]) = 0;
            static AccessibilityAttachment.properties(_:)();
            return outlined destroy of AccessibilityProperties(__dst);
          }

          v15 = 0;
          v16 = 0;
LABEL_24:
          v6 = a1 & 0xC000000000000001;
          v4 = v33;
          if ((v16 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        if ((v15 & 4) != 0 || (v16 & 8) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v7 = a1 & 0xFFFFFFFFFFFFFF8;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_29;
        }

LABEL_27:

LABEL_29:
        if (v5 == v4)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    goto LABEL_35;
  }

LABEL_40:
  v29 = a2;
  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v25 + 16);
  }

  if (v30 > 1)
  {
    v26 = 0;
    goto LABEL_48;
  }

  if ((v29 | 2) == 3 && v30 == 1)
  {
    v26 = 0x100000;
    goto LABEL_48;
  }

  return AccessibilityAttachment.init()();
}

void AccessibilityGestureModifier.updatedAttachment(for:nodes:atIndex:)(void x0_0, unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](a2, a1);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = *(a1 + 8 * a2 + 32);
LABEL_5:
  v7 = v6;
  AccessibilityNode.visibility.getter(&v8);

  if ((v8 & 4) != 0 || (v8 & 8) != 0 && (v9 & 4) == 0)
  {

    AccessibilityAttachment.init()();
  }

  else
  {

    AccessibilityGestureModifier.initialAttachment(for:)(a1, a3);
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityIgnoreGestures(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityIgnoreGesturesModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

unint64_t instantiation function for generic protocol witness table for AccessibilityGestureAttachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityGestureAttachment and conformance AccessibilityGestureAttachment();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of AccessibilityAttachment?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessibilityAttachment?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AccessibilityAttachment?()
{
  if (!lazy cache variable for type metadata for AccessibilityAttachment?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityAttachment?);
    }
  }
}

uint64_t outlined destroy of AccessibilityAttachment?(uint64_t a1)
{
  type metadata accessor for AccessibilityAttachment?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall UIKitTabBarItem.updateAccessibility()()
{
  if (*&v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_resolvedAccessibilityLabel])
  {
    [v0 setAccessibilityAttributedLabel_];
  }

  v1 = &v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility];
  if (*&v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility + 280])
  {
    v2 = *(v1 + 1);
    if (v2)
    {
      if (v1[16] <= 1u)
      {
        v3 = *v1;

        v4 = MEMORY[0x18D00C850](v3, v2);

        [v0 setAccessibilityIdentifier_];
      }
    }
  }

  v5 = [v0 __view];
  if (v5)
  {
    v10 = v5;
    v6 = [v0 accessibilityAttributedLabel];
    if (v6)
    {
      v7 = v6;
      [v10 setAccessibilityAttributedLabel_];
    }

    v8 = [v0 accessibilityIdentifier];
    v9 = v10;
    if (v8)
    {
      [v10 setAccessibilityIdentifier_];

      v9 = v10;
    }
  }
}

uint64_t outlined destroy of PlatformItem.AccessibilityContent?(uint64_t a1)
{
  type metadata accessor for PlatformItem.AccessibilityContent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PlatformItem.AccessibilityContent?()
{
  if (!lazy cache variable for type metadata for PlatformItem.AccessibilityContent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
    }
  }
}

uint64_t EnvironmentValues.sceneAllowsSecureDrawing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t implicit closure #1 in static TrueAllowsSecureDrawingModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_2(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6720]);
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

uint64_t View.allowsSecureDrawing(_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>(255, a4);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - v8;
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  View.input<A>(_:)();
  v15 = a1;
  v11 = lazy protocol witness table accessor for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>(v10);
  v14[0] = a3;
  v14[1] = v11;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v14);
  View.preference<A>(key:value:)();
  return (*(v7 + 8))(v9, v6);
}

void type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<IsInSecureDrawingHierarchy>)
  {
    lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
    v2 = type metadata accessor for ViewInputFlagModifier();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInSecureDrawingHierarchy>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>(double a1)
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>(255, a1);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void key path getter for EnvironmentValues.sceneAllowsSecureDrawing : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.sceneAllowsSecureDrawing : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AllowsSecureDrawingKey>, &type metadata for AllowsSecureDrawingKey, &protocol witness table for AllowsSecureDrawingKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AllowsSecureDrawingKey(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2((&v6 + 1));
    v4 = BYTE1(v6);
  }

  else
  {
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      result = a2(&v6);
      v5 = v6;
    }

    v4 = v5 & 1;
  }

  *v2 = v4;
  return result;
}

double MultimodalListStyle.init(layout:iconStyle:)@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  result = *&static ClarityUIMetrics.defaultGridCellMinWidth;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = result;
  return result;
}

char *MultimodalListStyle.init(layout:iconStyle:defaultGridCellMinWidth:)@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (a4)
  {
    if (one-time initialization token for defaultGridCellMinWidth != -1)
    {
      v8 = a5;
      result = swift_once();
      a5 = v8;
    }

    a3 = static ClarityUIMetrics.defaultGridCellMinWidth;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = a3;
  return result;
}

SwiftUI::MultimodalListStyle::Layout_optional __swiftcall MultimodalListStyle.Layout.init(rawValue:)(Swift::Int rawValue)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MultimodalListStyle.Layout@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t static MultimodalListStyle._makeView<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v30 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 64);
  v27 = *(a2 + 48);
  v28 = v11;
  v29 = *(a2 + 80);
  v12 = one-time initialization token for multimodalListLayout;

  if (v12 != -1)
  {
    swift_once();
  }

  v26 = HIDWORD(static CachedEnvironment.ID.multimodalListLayout);
  swift_beginAccess();
  v13 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>(0);
  v25 = v6;
  v17 = &type metadata for MultimodalListStyle;
  v18 = a3;
  v19 = &protocol witness table for MultimodalListStyle;
  *&v20 = a4;
  type metadata accessor for _ListValue(255, &v17);
  type metadata accessor for _GraphValue();
  LODWORD(v17) = _GraphValue.value.getter();
  HIDWORD(v17) = v13;
  v15 = type metadata accessor for MultimodalListStyle.Body(0, a3, a4, v14);
  swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyle.Body<A>, v15);
  _GraphValue.init<A>(_:)();
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v30;
  v21 = v10;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static MultimodalListStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (one-time initialization token for multimodalListLayout != -1)
  {
    swift_once();
  }

  v13 = HIDWORD(static CachedEnvironment.ID.multimodalListLayout);
  swift_beginAccess();
  v7 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>(0);
  v12 = v6;
  v11[0] = &type metadata for MultimodalListStyle;
  v11[1] = a3;
  v11[2] = &protocol witness table for MultimodalListStyle;
  v11[3] = a4;
  type metadata accessor for _ListValue(255, v11);
  type metadata accessor for _GraphValue();
  LODWORD(v11[0]) = _GraphValue.value.getter();
  HIDWORD(v11[0]) = v7;
  v9 = type metadata accessor for MultimodalListStyle.Body(0, a3, a4, v8);
  swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyle.Body<A>, v9);
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t MultimodalListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for MultimodalListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for MultimodalListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

double MultimodalListStyle.Body.value.getter@<D0>(double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = &type metadata for MultimodalListStyle;
  v24 = a2;
  v25 = &protocol witness table for MultimodalListStyle;
  v26 = a3;
  v7 = type metadata accessor for _ListValue(0, &v23);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MultimodalListStyle.Body.base.getter(*&a2, a3, &v22 - v12);
  v14 = *v13;
  v15 = *(v8 + 8);
  v15(v13, v7);
  LOBYTE(v13) = *AGGraphGetValue();
  MultimodalListStyle.Body.base.getter(*&a2, a3, v10);
  v16 = v10[3];
  v15(v10, v7);
  LOBYTE(v23) = v14;
  BYTE1(v23) = v13;
  v24 = v16;
  closure #1 in MultimodalListStyle.Body.value.getter(*&a2, a3, &v25);
  v17 = BYTE1(v23);
  result = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  *a4 = v23;
  *(a4 + 1) = v17;
  *(a4 + 8) = result;
  *(a4 + 16) = v19;
  *(a4 + 24) = v20;
  *(a4 + 32) = v21;
  return result;
}

uint64_t closure #1 in MultimodalListStyle.Body.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v18[0] = &type metadata for MultimodalListStyle;
  v18[1] = a2;
  v18[2] = &protocol witness table for MultimodalListStyle;
  v18[3] = a3;
  v7 = type metadata accessor for _ListValue(0, v18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  MultimodalListStyle.Body.base.getter(v5, a3, v18 - v12);
  v14 = *(v8 + 8);
  v14(v13, v7);
  KeyPath = swift_getKeyPath();
  MultimodalListStyle.Body.base.getter(v5, a3, v10);
  v16 = *(v10 + 1);
  LOBYTE(v5) = v10[16];
  result = (v14)(v10, v7);
  *a4 = KeyPath;
  *(a4 + 8) = v16;
  *(a4 + 16) = v5;
  return result;
}

void EnvironmentValues.multimodalListIconStyle.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double protocol witness for static Rule.initialValue.getter in conformance MultimodalListStyle.Body<A>@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Root.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  if (v4 == 2)
  {
    v7 = v2[1];
  }

  else
  {
    v7 = *v2;
  }

  outlined init with copy of _VariadicView_Children(a1, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v7 & 1;
  v9 = v14[1];
  *(v8 + 24) = v14[0];
  *(v8 + 40) = v9;
  v10 = v14[3];
  *(v8 + 56) = v14[2];
  *(v8 + 72) = v10;
  *(v8 + 88) = v4;
  *(v8 + 89) = v5;
  *(v8 + 96) = v6;
  result = static Animation.default.getter();
  if (one-time initialization token for listTitleBottomPadding != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  v12 = static ClarityUIMetrics.listTitleBottomPadding;
  *a2 = partial apply for closure #1 in Root.body(children:);
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  return result;
}

__n128 closure #1 in Root.body(children:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 184) = 258;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 2;
  *(a4 + 256) = 0;
  *(a4 + 232) = 0;
  *(a4 + 240) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 296) = 0;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  outlined init with copy of _VariadicView_Children(a3, &v19);
  if (a2)
  {
    v10 = *(a1 + 12);
    v12 = a1[1];
    v11 = a1[2];
    v34 = *a1;
    v35 = v12;
    v36 = v11;
    LODWORD(v37) = v10;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
  }

  else
  {
    v13 = a1[1];
    v23 = *a1;
    v24 = v13;
    v25 = a1[2];
    LODWORD(v26) = *(a1 + 12);
    *(&v26 + 1) = a5;
    *&v27 = swift_getKeyPath();
    BYTE8(v27) = 0;
    *&v28 = swift_getKeyPath();
    BYTE8(v28) = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v38 = v27;
    v39 = v28;
    v40 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v19) = a2 & 1;
  v14 = v39;
  *(a4 + 128) = v38;
  *(a4 + 144) = v14;
  *(a4 + 160) = v40;
  v15 = v35;
  *(a4 + 64) = v34;
  *(a4 + 80) = v15;
  v16 = v37;
  *(a4 + 96) = v36;
  *(a4 + 112) = v16;
  v17 = v31;
  *a4 = v30;
  *(a4 + 16) = v17;
  result = v33;
  *(a4 + 32) = v32;
  *(a4 + 48) = result;
  *(a4 + 176) = v19;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance Root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Root and conformance Root();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t MultimodalListStyleIconContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(255);
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
  v4 = type metadata accessor for ModifiedContent();
  v87[0] = *(a1 + 24);
  v87[1] = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>, MEMORY[0x1E6980A18]);
  swift_getWitnessTable(MEMORY[0x1E697E858], v4, v87);
  v5 = type metadata accessor for _OverlayModifier();
  v6 = type metadata accessor for ModifiedContent();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ClipEffect<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697DDA0]);
  v12 = type metadata accessor for ModifiedContent();
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - v13;
  type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ContentShapeModifier<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697FD48]);
  v69 = v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v62 - v19;
  v68 = v20;
  v73 = type metadata accessor for _ConditionalContent();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v62 - v21;
  v22 = (v2 + *(a1 + 36));
  if (*(v22 + 8) == 1 && *v22 > 1)
  {
    MultimodalListStyleIconContainerView.styledIcon.getter(a1);
    v42 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>, MEMORY[0x1E697DB78]);
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E697EC18], v5);
    v86[0] = v42;
    v86[1] = WitnessTable;
    v44 = MEMORY[0x1E697E858];
    v45 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v86);
    v63 = v11;
    static ViewBuilder.buildExpression<A>(_:)();
    v41 = v5;
    v46 = *(v70 + 8);
    v46(v8, v6);
    static ViewBuilder.buildExpression<A>(_:)();
    v47 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
    v85[0] = v45;
    v85[1] = v47;
    v33 = v69;
    v48 = swift_getWitnessTable(v44, v69, v85);
    v49 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
    v84[0] = v48;
    v84[1] = v49;
    v50 = v44;
    v51 = v68;
    v52 = swift_getWitnessTable(v50, v68, v84);
    v40 = v71;
    static ViewBuilder.buildEither<A, B>(second:)(v8, v51, v6, v52, v45);
    v46(v8, v6);
    v46(v63, v6);
    v36 = v51;
  }

  else
  {
    MultimodalListStyleIconContainerView.styledIcon.getter(a1);
    v23 = *(v22 + 8);
    v78 = *v22;
    v79 = v23;
    v24 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>, MEMORY[0x1E697DB78]);
    v25 = swift_getWitnessTable(MEMORY[0x1E697EC18], v5);
    v77[0] = v24;
    v77[1] = v25;
    v26 = MEMORY[0x1E697E858];
    v27 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v77);
    lazy protocol witness table accessor for type IconShape and conformance IconShape();
    v64 = v5;
    v28 = v6;
    v29 = v15;
    v30 = v65;
    View.clipShape<A>(_:style:)();
    (*(v70 + 8))(v11, v28);
    v31 = *(v22 + 8);
    v78 = *v22;
    v79 = v31;
    v32 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
    v76[0] = v27;
    v76[1] = v32;
    v33 = v69;
    v34 = swift_getWitnessTable(v26, v69, v76);
    View.contentShape<A>(_:eoFill:)();
    (*(v67 + 8))(v30, v33);
    v35 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
    v75[0] = v34;
    v75[1] = v35;
    v36 = v68;
    v37 = swift_getWitnessTable(v26, v68, v75);
    v38 = v66;
    static ViewBuilder.buildExpression<A>(_:)();
    v39 = *(v29 + 8);
    v39(v17, v36);
    static ViewBuilder.buildExpression<A>(_:)();
    v40 = v71;
    static ViewBuilder.buildEither<A, B>(first:)(v17, v36, v28, v37, v27);
    v39(v17, v36);
    v39(v38, v36);
    v6 = v28;
    v41 = v64;
  }

  v53 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>, MEMORY[0x1E697DB78]);
  v54 = swift_getWitnessTable(MEMORY[0x1E697EC18], v41);
  v83[0] = v53;
  v83[1] = v54;
  v55 = MEMORY[0x1E697E858];
  v56 = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v83);
  v57 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
  v82[0] = v56;
  v82[1] = v57;
  v58 = swift_getWitnessTable(v55, v33, v82);
  v59 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
  v81[0] = v58;
  v81[1] = v59;
  v80[0] = swift_getWitnessTable(v55, v36, v81);
  v80[1] = v56;
  v60 = v73;
  swift_getWitnessTable(MEMORY[0x1E697F968], v73, v80);
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v72 + 8))(v40, v60);
}

uint64_t MultimodalListStyleIconContainerView.styledIcon.getter(uint64_t a1)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-1] - v4;
  v11 = 256;
  static Color.white.getter();
  v6 = *(a1 + 24);
  View.foregroundColor(_:)();

  static Alignment.center.getter();
  type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(0);
  lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>, MEMORY[0x1E697DB78]);
  v7 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>, MEMORY[0x1E6980A18]);
  v10[0] = v6;
  v10[1] = v7;
  swift_getWitnessTable(MEMORY[0x1E697E858], v2, v10);
  View.overlay<A>(_:alignment:)();
  return (*(v3 + 8))(v5, v2);
}

void *protocol witness for Shape.path(in:) in conformance IconShape@<X0>(uint64_t a2@<X8>)
{
  if (*(v2 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (!*v2)
  {
    result = Circle.path(in:)();
LABEL_6:
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    return result;
  }

  if (*v2 == 1)
  {
LABEL_5:
    result = Rectangle.path(in:)();
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void protocol witness for View.body.getter in conformance IconShape(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = 256;
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>)
  {
    type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>(255);
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E697FC88], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>, &type metadata for MultimodalListStyle.IconStyle, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>();
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Root and conformance Root();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Root and conformance Root()
{
  result = lazy protocol witness table cache variable for type Root and conformance Root;
  if (!lazy protocol witness table cache variable for type Root and conformance Root)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Root, &unk_1EFFCDE78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Root and conformance Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Root and conformance Root;
  if (!lazy protocol witness table cache variable for type Root and conformance Root)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Root, &unk_1EFFCDE78, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Root and conformance Root);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for ListStyleContent;
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>, &type metadata for MultimodalListStyle.IconStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E697FC88], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout;
  if (!lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout;
  if (!lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MultimodalListStyle.Layout] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A])
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for [MultimodalListStyle.Layout], &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalListStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for MultimodalListStyleIconContainerView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MultimodalListStyleIconContainerView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 8) = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithCopy for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyleIconContainerView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for MultimodalListStyleIconContainerView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t getEnumTagSinglePayload for Root(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Root(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Root(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Root and conformance Root();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, TintShapeStyle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<Rectangle, TintShapeStyle>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type IconShape and conformance IconShape()
{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IconShape, &unk_1EFFCDF68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IconShape, &unk_1EFFCDF68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IconShape, &unk_1EFFCDF68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ClipEffect<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ContentShapeModifier<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD58], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>)
  {
    type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>(255);
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>)
  {
    type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>(255);
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _AnimationModifier<MultimodalListStyle.Layout>, lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E697F540]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>);
    }
  }
}

void type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>)
  {
    type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>(255);
    lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>> and conformance ScrollView<A>, type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>, protocol conformance descriptor for ScrollView<A>);
    v1 = type metadata accessor for GeometryReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>);
    }
  }
}

void type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>, &type metadata for MultimodalListStyleGridScrollViewContent, &type metadata for MultimodalListStyleStackScrollViewContent, MEMORY[0x1E697F960]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>();
    v6 = type metadata accessor for ScrollView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>, &type metadata for MultimodalListStyleGridScrollViewContent, &type metadata for MultimodalListStyleStackScrollViewContent, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent();
    v5[1] = lazy protocol witness table accessor for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent();
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyleGridScrollViewContent, &type metadata for MultimodalListStyleGridScrollViewContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalListStyleStackScrollViewContent, &type metadata for MultimodalListStyleStackScrollViewContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent);
  }

  return result;
}

void type metadata accessor for _ClipEffect<IconShape>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StyleContextWriter<MultimodalListContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>> and conformance GeometryReader<A>, type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, MEMORY[0x1E697E378]);
    v5[1] = lazy protocol witness table accessor for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _AnimationModifier<MultimodalListStyle.Layout>, lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable(MEMORY[0x1E697F548], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _ShapeView<IconShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<IconShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type IconShape and conformance IconShape();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<IconShape, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for IconShape(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type IconShape and conformance IconShape();
  result = lazy protocol witness table accessor for type IconShape and conformance IconShape();
  *(a1 + 16) = result;
  return result;
}

uint64_t UIHostingConfiguration.background<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 32);
  v11[1] = *(a2 + 16);
  v12 = a3;
  v13 = v7;
  v14 = a4;
  v15 = a1;
  v8 = type metadata accessor for _UIHostingConfigurationBackgroundView(0, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _UIHostingConfigurationBackgroundView<A>, v8);
  return UIHostingConfiguration.background<A>(content:)(partial apply for closure #1 in UIHostingConfiguration.background<A>(_:), v11, a2, v8, WitnessTable, a5);
}

uint64_t closure #1 in UIHostingConfiguration.background<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _UIHostingConfigurationBackgroundView(0, v10, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  (*(v6 + 16))(v8, a1, a4, v16);
  (*(v6 + 32))(v14, v8, a4);
  swift_getWitnessTable(protocol conformance descriptor for _UIHostingConfigurationBackgroundView<A>, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v18, v11);
}

double UIHostingConfiguration.margins(_:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v6, a1);
  OptionalEdgeInsets.init(_:edges:)();
  OptionalEdgeInsets.adding(_:)();
  v9 = a2 + *(a1 + 56);
  *(v9 + 8) = v11;
  *(v9 + 24) = v12;
  *(v9 + 40) = *v13;
  result = *&v13[9];
  *(v9 + 49) = *&v13[9];
  return result;
}

uint64_t UIHostingConfiguration.minSize(width:height:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = (*(*(a5 - 8) + 16))(a6, v6, a5);
  v14 = a6 + *(a5 + 56);
  *(v14 + 72) = a1;
  *(v14 + 80) = a2 & 1;
  *(v14 + 88) = a3;
  *(v14 + 96) = a4 & 1;
  return result;
}

uint64_t UIHostingConfiguration.animatedSizeInvalidationDisabled()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = (*(*(a1 - 8) + 16))(a2, v3, a1);
  *(a2 + *(a1 + 56) + 98) = 1;
  return result;
}

uint64_t _UIHostingConfigurationBackgroundView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  v10 = *(a1 + 24);
  v21[2] = MEMORY[0x1E6981EF8];
  v21[3] = v5;
  v21[4] = v9;
  v21[5] = v10;
  v11 = type metadata accessor for _ShapeView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v21 - v17;
  (*(v6 + 16))(v8, v3, v5, v16);
  _ShapeView.init(shape:style:fillStyle:)();
  swift_getWitnessTable(MEMORY[0x1E697DB78], v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v18, v11);
}

void @objc UIHostingBackgroundView.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingBackgroundView.bounds.setter(a2, a3, a4, a5);
}

void UIHostingBackgroundView.bounds.setter(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v19.receiver = v4;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_bounds);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_setBounds_, a1, a2, a3, a4);
  UIHostingBackgroundView.bounds.didset(v11, v13, v15, v17);
}

void UIHostingBackgroundView.bounds.didset(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_bounds);
  if (v8 != a3 || v7 != a4)
  {
    v10 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

void *UIHostingBackgroundView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized UIHostingBackgroundView.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 1792) - 8) + 8))(a1);
  return v3;
}

uint64_t UIHostingContentView.listEnvironment.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x720);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return UIHostingContentView.listEnvironment.didset(v3);
}

void (*UIHostingContentView.configuration.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  UIHostingContentView.configuration.getter(v3);
  return UIHostingContentView.configuration.modify;
}

void UIHostingContentView.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of _Benchmark(*a1, (v2 + 5));
    UIHostingContentView.configuration.setter(v2 + 5);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    UIHostingContentView.configuration.setter(*a1);
  }

  free(v2);
}

__n128 UIHostingContentView.lastObservedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x760));
  v3 = v2[1].n128_u64[0];
  v4 = v2[1].n128_u8[8];
  v5 = v2[1].n128_u8[9];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  a1[1].n128_u8[9] = v5;
  return result;
}

__n128 UIHostingContentView.lastObservedSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x760));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t UIHostingContentView.lastSizeThatFits.setter(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x768);
  *v4 = result;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  return result;
}

double UIHostingContentView.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

double UIHostingContentView.hostingView<A>(_:didChangePlatformItemList:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration(0, v16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 48))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

id UIHostingContentView._leadingSwipeActionsConfiguration()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();

  v17[10] = v13;
  v17[11] = v14;
  v17[12] = v15;
  v17[13] = v16;
  v17[6] = v9;
  v17[7] = v10;
  v17[8] = v11;
  v17[9] = v12;
  v17[2] = v5;
  v17[3] = v6;
  v17[4] = v7;
  v17[5] = v8;
  v17[0] = v3;
  v17[1] = v4;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v18 = v3;
  v19 = v4;
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v18) == 1)
  {
    return 0;
  }

  outlined init with copy of SwipeActions.Configuration?(&v18, v2);
  outlined destroy of SwipeActions.Configuration?(v17, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
  if (!*(&v19 + 1))
  {
    return 0;
  }

  v2[4] = v22;
  v2[5] = v23;
  v2[6] = v24;
  v2[0] = v18;
  v2[1] = v19;
  v2[2] = v20;
  v2[3] = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration, 0x1E69DCFC0);
  return specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v2, 0, closure #1 in closure #1 in TabItem.swipeActionsConfiguration(for:), 0);
}

uint64_t UIHostingContentView._trailingSwipeActionsConfiguration()(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();

  v28[10] = v24;
  v28[11] = v25;
  v28[12] = v26;
  v28[13] = v27;
  v28[6] = v20;
  v28[7] = v21;
  v28[8] = v22;
  v28[9] = v23;
  v28[2] = v16;
  v28[3] = v17;
  v28[4] = v18;
  v28[5] = v19;
  v28[0] = v14;
  v28[1] = v15;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v29[6] = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v29[2] = v16;
  v29[3] = v17;
  v29[4] = v18;
  v29[5] = v19;
  v29[0] = v14;
  v29[1] = v15;
  v2 = _s7SwiftUI12SwipeActionsO5ValueVSgWOg(v29);
  result = 0;
  if (v2 != 1)
  {
    outlined init with copy of SwipeActions.Configuration?(&v30, v13);
    outlined destroy of SwipeActions.Configuration?(v28, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v31 + 1))
    {
      v8 = v33;
      v9 = v34;
      v10 = v35;
      v11 = v36;
      v5 = v30;
      v6 = v31;
      v7 = v32;
      v13[0] = v30;
      v13[1] = v31;
      v13[2] = v32;
      v13[3] = v33;
      v13[4] = v34;
      v13[5] = v35;
      v13[6] = v36;
      outlined init with copy of SwipeActions.Configuration(v13, v4);
      closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()(&v5, v1, &v12);
      outlined destroy of SwipeActions.Configuration?(&v30, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      v4[4] = v9;
      v4[5] = v10;
      v4[6] = v11;
      v4[0] = v5;
      v4[1] = v6;
      v4[2] = v7;
      v4[3] = v8;
      outlined destroy of SwipeActions.Configuration(v4);
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id @objc UIHostingContentView._defaultListContentConfigurationProvider.getter()
{
  v0 = specialized UIHostingContentView._defaultListContentConfigurationProvider.getter();
  if (v0)
  {
    v6[4] = v0;
    v6[5] = v1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
    v6[3] = &block_descriptor_53;
    v2 = v0;
    v3 = v1;
    v4 = _Block_copy(v6);
    outlined copy of AppIntentExecutor?(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id @objc UIHostingContentView._containerBackgroundViewDidChangeHandler.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  if (v5)
  {
    v11[4] = v5;
    v11[5] = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed () -> ();
    v11[3] = a4;
    v7 = v5;
    v8 = v6;
    v9 = _Block_copy(v11);
    outlined copy of AppIntentExecutor?(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id @objc UIHostingContentView._leadingSwipeActionsConfiguration()(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._leadingSwipeActionsConfiguration()(v1);

  return v2;
}

void closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *a2;
  v8 = a1[5];
  v30 = a1[4];
  v31 = v8;
  v32 = a1[6];
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v10 = a1[3];
  v28 = a1[2];
  v29 = v10;
  v11 = v7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration, 0x1E69DCFC0);
  v12 = a1[5];
  v25[4] = a1[4];
  v25[5] = v12;
  v25[6] = a1[6];
  v13 = a1[1];
  v25[0] = *a1;
  v25[1] = v13;
  v14 = a1[3];
  v25[2] = a1[2];
  v25[3] = v14;
  v15 = outlined init with copy of SwipeActions.Configuration(&v26, v24);
  v16 = _UIHostingView.viewGraph.getter(v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *((v6 & v5) + 0x700);
  *(v18 + 24) = *(v11 + 1800);
  v19 = *((v6 & v5) + 0x718);
  v20 = v28;
  *(v18 + 104) = v29;
  v21 = v31;
  *(v18 + 120) = v30;
  *(v18 + 136) = v21;
  *(v18 + 152) = v32;
  v22 = v27;
  *(v18 + 56) = v26;
  *(v18 + 72) = v22;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  *(v18 + 88) = v20;
  outlined init with copy of SwipeActions.Configuration(&v26, v24);
  v23 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v25, v16, partial apply for closure #1 in closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration(), v18);

  *a3 = v23;
}

uint64_t closure #1 in closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v16[0] = *(a4 + 56);
    v8 = *(a4 + 88);
    v16[1] = *(a4 + 72);
    v16[2] = v8;
    v17 = *(a4 + 104);
    if (*(&v16[0] + 1))
    {
      v11 = 0;
      v12 = a1;
      v14 = 0;
      v15 = 0;
      v13 = a2;
      outlined init with copy of UIHostingConfigurationStorage(v16, v10, type metadata accessor for Binding<SwipeActionResultToken?>?);

      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined consume of SwipeActionResultToken?(v11, v12, v13, v14, v15);
      return outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for Binding<SwipeActionResultToken?>?);
    }

    Strong = 1;
  }

  return a1(Strong);
}

id @objc UIHostingContentView._trailingSwipeActionsConfiguration()(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._trailingSwipeActionsConfiguration()(v1);

  return v2;
}

uint64_t UIHostingContentView.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x728);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v10[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v10[1] = v3;
  v4 = type metadata accessor for UIHostingConfiguration(0, v10);
  (*(*(v4 - 8) + 8))(&v0[v2], v4);
  v5 = &v0[*((*v1 & *v0) + 0x730)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v5, v5[1]);

  v6 = &v0[*((*v1 & *v0) + 0x740)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v6, v6[1]);
  v7 = &v0[*((*v1 & *v0) + 0x748)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v7, v7[1]);
  outlined destroy of UIHostingConfigurationStorage(&v0[*((*v1 & *v0) + 0x750)], type metadata accessor for WeakBox<UIButton>?);
  v8 = &v0[*((*v1 & *v0) + 0x778)];
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v8, v8[1]);
}

id UIHostingContentView.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v4[1] = v1;
  v2 = type metadata accessor for UIHostingContentView(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t @objc UIHostingContentView.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x728);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x710);
  v11[0] = *((*MEMORY[0x1E69E7D40] & *a1) + 0x700);
  v11[1] = v4;
  v5 = type metadata accessor for UIHostingConfiguration(0, v11);
  (*(*(v5 - 8) + 8))(&a1[v3], v5);
  v6 = &a1[*((*v2 & *a1) + 0x730)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v6, v6[1]);

  v7 = &a1[*((*v2 & *a1) + 0x740)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v7, v7[1]);
  v8 = &a1[*((*v2 & *a1) + 0x748)];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v8, v8[1]);
  outlined destroy of UIHostingConfigurationStorage(&a1[*((*v2 & *a1) + 0x750)], type metadata accessor for WeakBox<UIButton>?);
  v9 = &a1[*((*v2 & *a1) + 0x778)];
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v9, v9[1]);
}

void (*protocol witness for UIContentView.configuration.modify in conformance UIHostingContentView<A, B>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UIHostingContentView.configuration.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInHostingConfiguration(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t assignWithTake for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  LOBYTE(v17) = *(v19 + 0x10);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 16) = v17;
  LOBYTE(v17) = *(v19 + 32);
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 32) = v17;
  LOBYTE(v17) = *(v19 + 48);
  *(v18 + 40) = *(v19 + 40);
  *(v18 + 48) = v17;
  LOBYTE(v17) = *(v19 + 64);
  *(v18 + 56) = *(v19 + 56);
  *(v18 + 64) = v17;
  LOBYTE(v17) = *(v19 + 80);
  *(v18 + 72) = *(v19 + 72);
  *(v18 + 80) = v17;
  LOBYTE(v17) = *(v19 + 96);
  *(v18 + 88) = *(v19 + 88);
  *(v18 + 96) = v17;
  *(v18 + 97) = *(v19 + 97);
  *(v18 + 98) = *(v19 + 98);
  v20 = ((v16 + 99 + v18) & ~v16);
  v21 = ((v16 + 99 + v19) & ~v16);
  v22 = *(v15 + 48);
  LODWORD(v13) = v22(v20, 1, v14);
  v23 = v22(v21, 1, v14);
  if (v13)
  {
    if (!v23)
    {
      (*(v15 + 32))(v20, v21, v14);
      (*(v15 + 56))(v20, 0, 1, v14);
      goto LABEL_12;
    }

    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v15 + 40))(v20, v21, v14);
      goto LABEL_12;
    }

    (*(v15 + 8))(v20, v14);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  if (*(v15 + 84))
  {
    v27 = *(v15 + 64);
  }

  else
  {
    v27 = *(v15 + 64) + 1;
  }

  v28 = &v20[v27];
  v29 = &v21[v27];
  *v28 = *v29;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakTakeAssign();
  *(v30 + 16) = *(v31 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIHostingConfiguration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UICellConfigurationState() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (!v13)
  {
    ++v19;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v16;
  v21 = v18 | 7;
  v22 = v18 + 99;
  if (v15 >= a2)
  {
    goto LABEL_37;
  }

  v23 = ((v21 + v17 + (v20 & ~v16)) & ~v21) + (((v22 & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 24;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v15 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= 1)
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *(a1 + v23);
    if (!v28)
    {
      goto LABEL_37;
    }

LABEL_34:
    v30 = v28 - 1;
    if (v24)
    {
      v30 = 0;
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    return v15 + (v31 | v30) + 1;
  }

  if (v27 == 2)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v7 == v15)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v20) & ~v16);
  if (v9 == v15)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v41;

    return v32(v33, v34, v35);
  }

  v36 = (v22 + ((v33 + v17 + v21) & ~v21)) & ~v18;
  if (v14 < 0x7FFFFFFF)
  {
    v38 = (v36 + v19) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v38 + 16);
    v40 = *(v38 + 8) & 0x7FFFFFFF;
    if ((v39 & 0xF000000000000007) != 0)
    {
      return (v40 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v37 = (*(v12 + 48))(v36);
    if (v37 >= 2)
    {
      return v37 - 1;
    }

    else
    {
      return 0;
    }
  }
}

_OWORD *initializeBufferWithCopyOfBuffer for HostingContentViewRootModifier(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v7;
    v8 = a2[5];
    *(v4 + 4) = a2[4];
    *(v4 + 5) = v8;
    *(v4 + 6) = a2[6];
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 8) = a2[8];
    v10 = a2 + 9;
    v9 = a2[9];

    if (v9 == 1)
    {
      *(v4 + 9) = *v10;
      *(v4 + 80) = *(a2 + 80);
    }

    else
    {
      *(v4 + 9) = v9;
      *(v4 + 80) = *(a2 + 80);
    }

    *(v4 + 88) = *(a2 + 11);
    *(v4 + 104) = *(a2 + 13);
    *(v4 + 120) = *(a2 + 15);
    *(v4 + 129) = *(a2 + 129);
    *(v4 + 152) = *(a2 + 19);
    *(v4 + 161) = *(a2 + 161);
    *(v4 + 23) = a2[23];
    v12 = *(a3 + 32);
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(v4 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t initializeWithTake for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for UIHostingConfigurationStorage(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 97) = *(a2 + 97);
    v7 = a3[9];
    v8 = type metadata accessor for UICellConfigurationState();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(&v4[v7], a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], a2 + v7, v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = a3[11];
    v4[a3[10]] = *(a2 + a3[10]);
    *(swift_unknownObjectWeakCopyInit() + 8) = *(a2 + v12 + 8);
  }

  return v4;
}

uint64_t assignWithCopy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  v10 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v10;
  v11 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v11;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  v12 = a3[9];
  v13 = type metadata accessor for UICellConfigurationState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v19 = a2 + a3[11];
  *(swift_unknownObjectWeakCopyAssign() + 8) = *(v19 + 8);
  return a1;
}

uint64_t initializeWithTake for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 97) = *(a2 + 97);
  v6 = a3[9];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(swift_unknownObjectWeakTakeInit() + 8) = *(a2 + v10 + 8);
  return a1;
}

void specialized UIHostingContentView.init(rootView:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x720)) = 1;
  v2 = (v0 + *((*v1 & *v0) + 0x730));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x738)) = 0;
  v3 = (v0 + *((*v1 & *v0) + 0x740));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x748));
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + *((*v1 & *v0) + 0x750);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x758)) = -1;
  v6 = v0 + *((*v1 & *v0) + 0x760);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 12) = 256;
  v7 = v0 + *((*v1 & *v0) + 0x768);
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x770)) = 0;
  v8 = (v0 + *((*v1 & *v0) + 0x778));
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SwipeActions.Configuration?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SwipeActions.Configuration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Binding<SwipeActionResultToken?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<SwipeActionResultToken?>)
  {
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(255, &lazy cache variable for type metadata for SwipeActionResultToken?, &type metadata for SwipeActionResultToken, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>);
    }
  }
}

void outlined consume of SwipeActionResultToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2, a3);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a4, a5);
  }
}

double partial apply for closure #1 in UIHostingContentView.listEnvironment.didset(uint64_t a1)
{
  _UIHostingView.viewGraph.getter(a1);
  GraphHost.uninstantiate(immediately:)(0);

  return result;
}

void specialized UIHostingContentView.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x720)) = 1;
  v2 = (v0 + *((*v1 & *v0) + 0x730));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x738)) = 0;
  v3 = (v0 + *((*v1 & *v0) + 0x740));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x748));
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + *((*v1 & *v0) + 0x750);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x758)) = -1;
  v6 = v0 + *((*v1 & *v0) + 0x760);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 12) = 256;
  v7 = v0 + *((*v1 & *v0) + 0x768);
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x770)) = 0;
  v8 = (v0 + *((*v1 & *v0) + 0x778));
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityAttachmentModifier);
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(255);
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfiguration>, lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t assignWithTake for PickerContentView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = a2[2];

  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  v8 = a2[8];
  v9 = *(a1 + 64);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v8;

  *(a1 + 72) = a2[9];

  *(a1 + 80) = a2[10];
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerContentView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for PickerContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

void *initializeBufferWithCopyOfBuffer for PickerItemView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-10 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v10 = a2 + v6 + 9;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 9) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t initializeWithTake for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((*(v6 + 80) + 9 + a1) & ~*(v6 + 80), (*(v6 + 80) + 9 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerItemView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
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

void storeEnumTagSinglePayload for PickerItemView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v21 = &a1[v9 + 9] & ~v9;

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

void specialized closure #1 in ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.observeListLayout(handler:)(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 1;
  }
}

double thunk for @escaping @callee_guaranteed (@unowned BSSettingDiffTypes, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

id ClarityUIListLayoutSettingsDiffAction.diffInspector.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector;
  v4 = *(v2 + OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector);
  }

  else
  {
    v6 = [objc_allocWithZone(type metadata accessor for ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector()) init];
    v11[4] = specialized closure #1 in ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.observeListLayout(handler:);
    v11[5] = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed (@unowned BSSettingDiffTypes, @unowned UnsafeMutableRawPointer?) -> ();
    v11[3] = &block_descriptor_41;
    v7 = _Block_copy(v11);

    [v6 observeOtherSetting:312002 withBlock:v7];
    _Block_release(v7);
    v8 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized ClarityUIListLayoutSettingsDiffAction._performActions(for:withUpdatedFBSScene:settingsDiff:from:transitionContext:lifecycleActionType:)(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  if (a1)
  {
    v1 = a1;
    v3 = ClarityUIListLayoutSettingsDiffAction.diffInspector.getter(v1, v2);
    [v3 inspectDiff:v1 withContext:&v5];

    if (v5 == 1)
    {
      v4 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for didUpdateListLayout != -1)
      {
        swift_once();
      }

      [v4 postNotificationName:static ClarityUI.didUpdateListLayout object:0];
    }
  }
}

__n128 MultimodalListStyleGridScrollViewContent.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  _s7SwiftUI4FontVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridItem>, &type metadata for GridItem, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63400;
  v5 = *(v1 + 120);
  v6 = v5 * MultimodalListStyleGridScrollViewContent.dynamicTypeScaleFactor.getter();
  v7 = specialized Environment.wrappedValue.getter(*(v1 + 144), *(v1 + 152));
  if (v7 == 1.0)
  {
    v8 = round(v6);
  }

  else
  {
    v8 = v7 * round(v6 / v7);
  }

  if (one-time initialization token for gridCellSpacing != -1)
  {
    swift_once();
  }

  v9 = static ClarityUIMetrics.gridCellSpacing;
  v10 = static Alignment.top.getter();
  LOBYTE(v42) = 0;
  *(v4 + 32) = v8;
  *(v4 + 40) = 0x7FF0000000000000;
  *(v4 + 48) = 2;
  *(v4 + 56) = v9;
  *(v4 + 64) = 0;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  *(v4 + 88) = 0;
  v12 = static HorizontalAlignment.center.getter();
  outlined init with copy of _VariadicView_Children(v2, &v40);
  *v39 = v4;
  *&v39[8] = v12;
  *&v39[16] = v9;
  v39[24] = 0;
  *&v39[28] = 0;
  type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(0);
  lazy protocol witness table accessor for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>();
  View.resettableLazyLayoutRoot()();
  outlined destroy of _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(v39);
  lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
  AnyHashable.init<A>(_:)();
  v49[24] = 0;
  v38 = static Edge.Set.horizontal.getter();
  v13 = *(v2 + 80);
  *v39 = *(v2 + 64);
  *&v39[16] = v13;
  v40 = *(v2 + 96);
  v41 = *(v2 + 112);
  if (!MultimodalListStyleGridScrollViewContent.isLandscape(geom:)(v39))
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_10:
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v57 = v48;
  *v58 = *v49;
  *&v58[9] = *&v49[9];
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v51 = v42;
  v52 = v43;
  v50 = 0;
  v22 = *(v2 + 80);
  *v39 = *(v2 + 64);
  *&v39[16] = v22;
  v40 = *(v2 + 96);
  v41 = *(v2 + 112);
  if (MultimodalListStyleGridScrollViewContent.isLandscape(geom:)(v39))
  {
    if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
    {
      swift_once();
    }

    v23 = &static ClarityUIMetrics.gridHorizontalPaddingLandscape;
  }

  else
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait != -1)
    {
      swift_once();
    }

    v23 = &static ClarityUIMetrics.gridHorizontalPaddingPortrait;
  }

  v24 = *v23;
  v25 = v50;
  v59 = 0;
  v26 = *(v2 + 160);
  v27 = *(v2 + 168);
  type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(0, &lazy cache variable for type metadata for State<[MultimodalBadgeInfo]>, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v28 = *v39;
  v37 = *&v39[8];
  v29 = v59;
  KeyPath = swift_getKeyPath();
  *v39 = v26;
  *&v39[8] = v27;
  State.wrappedValue.getter();
  v31 = swift_getKeyPath();
  v32 = *v58;
  *(a1 + 96) = v57;
  *(a1 + 112) = v32;
  *(a1 + 128) = *&v58[16];
  v33 = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = v33;
  v34 = v56;
  *(a1 + 64) = v55;
  *(a1 + 80) = v34;
  v35 = v52;
  *a1 = v51;
  *(a1 + 16) = v35;
  *(a1 + 144) = v38;
  *(a1 + 152) = v15;
  *(a1 + 160) = v17;
  *(a1 + 168) = v19;
  *(a1 + 176) = v21;
  *(a1 + 184) = v25;
  *(a1 + 192) = v24;
  *(a1 + 200) = v29;
  *(a1 + 208) = v28;
  result = v37;
  *(a1 + 216) = v37;
  *(a1 + 232) = KeyPath;
  *(a1 + 240) = v26;
  *(a1 + 248) = v31;
  *(a1 + 256) = v5;
  return result;
}

uint64_t EnvironmentValues.multimodalListGridBadgeInfos.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.multimodalListGridBadgeInfos : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.multimodalListGridBadgeInfos : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double EnvironmentValues.multimodalListDefaultGridCellMinWidth.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double MultimodalListStyleGridScrollViewContent.dynamicTypeScaleFactor.getter()
{
  BYTE1(v6) = 6;
  v1 = specialized Environment.wrappedValue.getter(*(v0 + 128), *(v0 + 136), &v6);
  v2 = MEMORY[0x18D0099E0](&v6 + 1, &v6, v1);
  v5 = 6;
  v4 = 7;
  return v2 / MEMORY[0x18D0099E0](&v5, &v4);
}

BOOL MultimodalListStyleGridScrollViewContent.isLandscape(geom:)(uint64_t a1)
{
  GeometryProxy.size.getter();
  v2 = v1;
  GeometryProxy.safeAreaInsets.getter();
  v4 = v2 + v3;
  GeometryProxy.safeAreaInsets.getter();
  v6 = v4 + v5;
  GeometryProxy.size.getter();
  v8 = v7;
  GeometryProxy.safeAreaInsets.getter();
  v10 = v8 + v9;
  GeometryProxy.safeAreaInsets.getter();
  return v10 + v11 < v6;
}

uint64_t MultimodalListGridLabelStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

double MultimodalListGridLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21 = *v1;
  v22[0] = v3;
  *(v22 + 9) = *(v1 + 25);
  v4 = static HorizontalAlignment.center.getter();
  v20 = 0;
  closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(&v21, &v11);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v31[0] = v11;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v31[6] = v17;
  v32 = v18;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v23, &v10, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v31, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  *&v19[71] = v27;
  *&v19[87] = v28;
  *&v19[103] = v29;
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  *&v19[55] = v26;
  v5 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v19[96];
  v6 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v6;
  result = *&v19[32];
  v8 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v19[119] = v30;
  v9 = v20;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 129) = *&v19[112];
  *(a1 + 65) = v8;
  return result;
}

uint64_t closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for gridIconToTextSpacing != -1)
  {
    swift_once();
  }

  v6 = static ClarityUIMetrics.gridIconToTextSpacing;
  LOBYTE(v25) = 0;
  closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(a1, &v27);
  v21 = v29;
  v22[0] = *v30;
  *(v22 + 9) = *&v30[9];
  v19 = v27;
  v20 = v28;
  v23[2] = v29;
  v24[0] = *v30;
  *(v24 + 9) = *&v30[9];
  v23[0] = v27;
  v23[1] = v28;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v19, v33, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v23, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
  *&v18[7] = v19;
  *&v18[64] = *(v22 + 9);
  *&v18[55] = v22[0];
  *&v18[39] = v21;
  *&v18[23] = v20;
  v7 = v25;
  *&v25 = v5;
  *(&v25 + 1) = v6;
  v26[0] = v7;
  v8 = *&v18[16];
  *&v26[1] = *v18;
  *&v26[65] = *&v18[64];
  v10 = *&v18[48];
  v9 = *&v18[64];
  *&v26[49] = *&v18[48];
  v11 = *&v18[32];
  *&v26[33] = *&v18[32];
  v12 = *v18;
  *&v26[17] = *&v18[16];
  v27 = v25;
  v28 = *v26;
  *&v30[16] = *&v26[48];
  v31 = *&v26[64];
  v29 = *&v26[16];
  *v30 = *&v26[32];
  v13 = *v26;
  *a2 = v25;
  *(a2 + 16) = v13;
  v14 = v31;
  *(a2 + 64) = *&v30[16];
  *(a2 + 80) = v14;
  v15 = *v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v15;
  v35 = v12;
  LOBYTE(v32) = v26[80];
  v17[104] = 0;
  *(a2 + 96) = v32;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v33[0] = v5;
  v33[1] = v6;
  v34 = v7;
  v39 = v9;
  v38 = v10;
  v37 = v11;
  v36 = v8;
  outlined init with copy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(&v25, v17);
  return outlined destroy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v33);
}

void type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer))
  {
    type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
    }
  }
}

void type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>))
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>)
  {
    type metadata accessor for _LayoutRoot<GridIconLayout>(255);
    type metadata accessor for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _LayoutRoot<GridIconLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<GridIconLayout>, MEMORY[0x1E697DDC8]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>);
    }
  }
}

void type metadata accessor for _LayoutRoot<GridIconLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LayoutRoot<GridIconLayout>)
  {
    lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout();
    v1 = type metadata accessor for _LayoutRoot();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _LayoutRoot<GridIconLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout()
{
  result = lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout;
  if (!lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridIconLayout, &unk_1EFFCE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout;
  if (!lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GridIconLayout, &unk_1EFFCE818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout);
  }

  return result;
}

void type metadata accessor for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>)
  {
    type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>> and conformance MultimodalListStyleIconContainerView<A>, type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>, protocol conformance descriptor for MultimodalListStyleIconContainerView<A>);
    v1 = type metadata accessor for GeometryReader();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>);
    }
  }
}

void type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for MultimodalListStyleIconContainerView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    v4 = v3;
    v5[0] = &protocol witness table for LabelStyleConfiguration.Icon;
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>);
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>(255);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Environment.wrappedValue.getter(*a1, *(a1 + 8) | (*(a1 + 9) << 8), &v13);
  v4 = v13;
  v5 = v14;
  v6 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24));
  v7 = specialized Environment.wrappedValue.getter(*(a1 + 32), *(a1 + 40));
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  *(v8 + 41) = *(a1 + 25);
  outlined init with copy of MultimodalListGridLabelStyle(a1, &v13);
  if (one-time initialization token for clarityUIGridCellTitle != -1)
  {
    swift_once();
  }

  v10 = static Font.clarityUIGridCellTitle;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  LOBYTE(v13) = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:);
  *(a2 + 40) = v8;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  *(a2 + 72) = 1;
}

void closure #1 in closure #1 in closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(uint64_t a1@<X1>, uint64_t a2@<X8>, __int128 *a3@<X0>)
{
  v5 = MultimodalListGridLabelStyle.gridIconFont(geom:)(a3);
  KeyPath = swift_getKeyPath();
  specialized Environment.wrappedValue.getter(*a1, *(a1 + 8) | (*(a1 + 9) << 8), &v9);
  v7 = v9;
  v8 = v10;
  *a2 = KeyPath;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
}

uint64_t MultimodalListGridLabelStyle.gridIconFont(geom:)(__int128 *a1)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8), &v7);
  if (BYTE8(v7) != 1 || v7 == 1)
  {
    v4 = a1[1];
    v7 = *a1;
    v8 = v4;
    v9 = a1[2];
    v10 = *(a1 + 12);
    GeometryProxy.size.getter();
    if (one-time initialization token for buttonHorizontalPadding != -1)
    {
      swift_once();
    }
  }

  else
  {
    v5 = a1[1];
    v7 = *a1;
    v8 = v5;
    v9 = a1[2];
    v10 = *(a1 + 12);
    GeometryProxy.size.getter();
  }

  LOBYTE(v7) = 0;
  return static Font.system(size:weight:design:)();
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance MultimodalListGridLabelStyle@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21 = *v1;
  v22[0] = v3;
  *(v22 + 9) = *(v1 + 25);
  v4 = static HorizontalAlignment.center.getter();
  v20 = 0;
  closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(&v21, &v11);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v31[0] = v11;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v31[6] = v17;
  v32 = v18;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v23, &v10, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v31, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  *&v19[71] = v27;
  *&v19[87] = v28;
  *&v19[103] = v29;
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  *&v19[55] = v26;
  v5 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v19[96];
  v6 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v6;
  result = *&v19[32];
  v8 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v19[119] = v30;
  v9 = v20;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 129) = *&v19[112];
  *(a1 + 65) = v8;
  return result;
}

uint64_t destroy for MultimodalListGridLabelStyle(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v9 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v9, v2);
  *(a1 + 32) = v9;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 9);
  *a1 = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v14, v2);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *(a1 + 32) = v14;
  *(a1 + 40) = v2;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  return a1;
}

uint64_t assignWithTake for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  v9 = *(a2 + 24);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 40);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListGridLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
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

uint64_t storeEnumTagSinglePayload for MultimodalListGridLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>)
  {
    type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255, &lazy cache variable for type metadata for VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer), &lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)> and conformance TupleView<A>);
    result = swift_getWitnessTable(MEMORY[0x1E6981870], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(255, a3, a4);
    lazy protocol witness table accessor for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(a5, a3, a4);
    v9 = type metadata accessor for VStack();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GridIconLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance DefaultGridCellMinWidthEnvironmentKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static DefaultGridCellMinWidthEnvironmentKey.defaultValue;
  *a1 = static DefaultGridCellMinWidthEnvironmentKey.defaultValue;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance GridBadgeInfoEnvironmentKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static GridBadgeInfoEnvironmentKey.defaultValue;

  return result;
}

void specialized implicit closure #1 in _GraphInputs.multimodalListGridBadgeInfos.getter(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

__n128 static OnBadgeInfoChange._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v10 = a2[4];
  v33 = v8;
  v34 = v10;
  v30 = v36;
  v11 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v31 = v7;
  v32 = v38;
  outlined init with copy of _ViewInputs(&v36, v44);
  PreferenceKeys.add(_:)();
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v43 = v35;
  v42[0] = v30;
  v42[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v12 = outlined init with copy of _ViewInputs(v42, v44);
  a3(&v22, v12, &v24);
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v45 = v29;
  v44[0] = v24;
  v44[1] = v25;
  outlined destroy of _ViewInputs(v44);
  v13 = v22;
  v14.n128_u64[0] = v23;
  *&v24 = v22;
  v21 = v14;
  DWORD2(v24) = v23;
  v15 = PreferencesOutputs.subscript.getter();
  if ((v15 & 0x100000000) == 0)
  {
    v16 = v15;
    v17 = DWORD2(v37);
    type metadata accessor for GraphHost();
    v18 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v19 = *(v18 + 64);

    *&v24 = __PAIR64__(v16, v11);
    *(&v24 + 1) = __PAIR64__(v19, v17);
    *&v25 = 0xFFFFFFFFLL;
    BYTE8(v25) = 0;
    HIDWORD(v25) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  outlined destroy of _ViewInputs(&v24);
  *a4 = v13;
  result = v21;
  a4[1] = v21.n128_u64[0];
  return result;
}

void BadgeInfoActionBinding.updateValue()()
{
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  _s7SwiftUI4FontVSgMaTm_0(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if (v2)
  {
    v3 = *Value;

    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      AGGraphClearUpdate();
      v4 = AGGraphGetValue();
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];

      AGGraphSetUpdate();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v6;
      v8[4] = v7;
      v8[5] = v3;

      static Update.enqueueAction(reason:_:)();
    }

    else
    {
    }
  }
}

uint64_t closure #2 in BadgeInfoActionBinding.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void specialized GridIconLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  CGRectGetWidth(v13);
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  Width = CGRectGetWidth(v14);
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  if (CGRectGetHeight(v15) >= Width)
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_5:
  if (one-time initialization token for gridCellSpacing != -1)
  {
    swift_once();
  }

  if (one-time initialization token for buttonHorizontalPadding != -1)
  {
    swift_once();
  }

  if ((!v2 || v1 == 1) && one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }
}

uint64_t specialized GridIconLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *v5;
  v11 = *(v5 + 8);
  result = LayoutSubviews.endIndex.getter();
  if (result)
  {
    LayoutSubviews.subscript.getter();
    if (v10 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if ((v13 & 1) == 0)
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetWidth(v14);
      if (one-time initialization token for buttonHorizontalPadding != -1)
      {
        swift_once();
      }

      v15.origin.x = a2;
      v15.origin.y = a3;
      v15.size.width = a4;
      v15.size.height = a5;
      CGRectGetHeight(v15);
      if (one-time initialization token for buttonVerticalPadding != -1)
      {
        swift_once();
      }
    }

    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetMidX(v16);
    static UnitPoint.top.getter();
    return LayoutSubview.place(at:anchor:proposal:)();
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(0, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(0, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double destroy for MultimodalListStyleGridScrollViewContent(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of Environment<Selector?>.Content(*(a1 + 128), *(a1 + 136));
  outlined consume of Environment<Selector?>.Content(*(a1 + 144), *(a1 + 152));

  return result;
}

uint64_t initializeWithCopy for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = v5;

  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 128) = v8;
  *(a1 + 136) = v9;
  v11 = *(a2 + 144);
  LOBYTE(v8) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v11, v8);
  *(a1 + 144) = v11;
  *(a1 + 152) = v8;
  v12 = *(a2 + 160);
  v13 = *(a2 + 168);
  *(a1 + 160) = v12;
  *(a1 + 168) = v13;

  return a1;
}

uint64_t assignWithCopy for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 128);
  v8 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  *(a1 + 128) = v7;
  *(a1 + 136) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(a1 + 144) = v11;
  *(a1 + 152) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  return a1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t assignWithTake for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 152);
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyleGridScrollViewContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalListStyleGridScrollViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListGridContext>, MEMORY[0x1E6980550], MEMORY[0x1E6980548], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for LazyVGridLayout;
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>();
    v6[0] = MEMORY[0x1E697FFC8];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListGridContext>, MEMORY[0x1E6980550], MEMORY[0x1E6980548], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t outlined destroy of _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(uint64_t a1)
{
  type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for OnBadgeInfoChange()
{
}

uint64_t *initializeBufferWithCopyOfBuffer for OnBadgeInfoChange(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for OnBadgeInfoChange(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for OnBadgeInfoChange(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>(255);
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>);
    type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, type metadata accessor for ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>);
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>, &type metadata for MultimodalNavigationTitleHorizontalPaddingKey, &protocol witness table for MultimodalNavigationTitleHorizontalPaddingKey, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>();
    v6 = type metadata accessor for LazyVGrid(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceWritingModifier<A>);
    v5[1] = &protocol witness table for OnBadgeInfoChange;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, type metadata accessor for ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>(255);
    v4[0] = &protocol witness table for LazyVGrid<A>;
    v4[1] = &protocol witness table for CoordinateSpaceNameModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>, &type metadata for MultimodalNavigationTitleHorizontalPaddingKey, &protocol witness table for MultimodalNavigationTitleHorizontalPaddingKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding()
{
  result = lazy protocol witness table cache variable for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding;
  if (!lazy protocol witness table cache variable for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BadgeInfoActionBinding, &unk_1EFFCEA60, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding);
  }

  return result;
}

void NavigationColumnState.change(from:)(uint64_t a1)
{
  v3 = v1;
  outlined init with copy of NavigationRequest.Action?(a1, __src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
  if (!__src[31])
  {
    outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    if (!NavigationColumnState.isRootReplaced.getter())
    {
      NavigationColumnState.count.getter();
    }

    return;
  }

  memcpy(__dst, __src, 0x163uLL);
  if (NavigationColumnState.isRootReplaced.getter() && !NavigationColumnState.isRootReplaced.getter())
  {
LABEL_43:
    outlined destroy of NavigationColumnState(__dst);
    return;
  }

  if (!NavigationColumnState.isRootReplaced.getter() && NavigationColumnState.isRootReplaced.getter())
  {
    goto LABEL_41;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v1 + 120, __src);
  if (__src[15])
  {
    outlined destroy of NavigationColumnState.ColumnContent(__src);
    v4 = 0;
  }

  else
  {
    v4 = __src[12];

    outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(&__dst[120], __src);
  if (__src[15])
  {
    v5 = outlined destroy of NavigationColumnState.ColumnContent(__src);
    if (!v4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v6 = __src[12];

    v5 = outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    if (!v4)
    {
      if (!v6)
      {
LABEL_23:
        v7 = 1;
        goto LABEL_24;
      }

      if (((*(*v6 + 80))(v5) & 1) == 0)
      {
        v7 = (*(*v6 + 88))();

        v9 = 0;
        goto LABEL_25;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (v6)
    {
      v7 = (*(*v4 + 136))(v6);
      v9 = v8;

      if (v2)
      {
        goto LABEL_37;
      }

      goto LABEL_25;
    }
  }

  if ((*(*v4 + 80))(v5))
  {
    goto LABEL_22;
  }

  v10 = (*(*v4 + 88))() != 1;

  v7 = 2 * v10;
LABEL_24:
  v9 = 1;
LABEL_25:
  outlined init with copy of NavigationColumnState.ColumnContent(v3 + 120, __src);
  if (__src[15])
  {
    outlined destroy of NavigationColumnState.ColumnContent(__src);
    v11 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v11 = __src[13];
    outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  v12 = *(v11 + 16);

  outlined init with copy of NavigationColumnState.ColumnContent(&__dst[120], __src);
  if (__src[15])
  {
    outlined destroy of NavigationColumnState.ColumnContent(__src);
    v13 = MEMORY[0x1E69E7CC0];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v13 = __src[13];
    outlined destroy of NavigationRequest.Action?(__src, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  }

  v14 = *(v13 + 16);

  type metadata accessor for (Int, Int, NavigationState.StackContent.ChangeKind)();
  if (v9)
  {
    if (v7 < 2)
    {
      if (!(v12 | v14))
      {
        goto LABEL_37;
      }

      if (v7)
      {
        if (v12 == 1)
        {
          if (!v14)
          {
LABEL_37:
            outlined destroy of NavigationColumnState(__dst);
            return;
          }

LABEL_52:
          outlined init with copy of NavigationColumnState(v3, __src);
          outlined init with copy of NavigationColumnState(__dst, v17);
          v15 = v14 - v12;
          if (!__OFSUB__(v14, v12))
          {
            if ((v15 & 0x8000000000000000) == 0 || (v16 = __OFSUB__(0, v15), v15 = v12 - v14, !v16))
            {
              if (v15 < 2)
              {
                closure #1 in NavigationColumnState.change(from:)(__src, v17);
                outlined destroy of NavigationColumnState(v17);
                outlined destroy of NavigationColumnState(__src);
                outlined destroy of NavigationColumnState(__dst);
                return;
              }

              outlined destroy of NavigationColumnState(v17);
              outlined destroy of NavigationColumnState(__src);
              goto LABEL_41;
            }

LABEL_61:
            __break(1u);
            return;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v14)
        {
          if (!v12)
          {
            goto LABEL_37;
          }

          goto LABEL_52;
        }
      }

LABEL_41:
      outlined destroy of NavigationColumnState(__dst);
      return;
    }

    if (v7 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (!(v12 | v14))
  {
    goto LABEL_37;
  }

  outlined destroy of NavigationColumnState(__dst);
  if (v14 && !v12 && __OFADD__(v7, v14))
  {
    __break(1u);
    goto LABEL_60;
  }
}

void NavigationColumnState.count.getter()
{
  v1 = outlined init with copy of NavigationColumnState.ColumnContent(v0 + 120, v6);
  if (v7)
  {
    goto LABEL_4;
  }

  v2 = v6[13];
  v3 = (*(*v6[12] + 88))(v1);

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (!__OFADD__(v4, v5))
    {
LABEL_4:
      outlined destroy of NavigationRequest.Action?(v6, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      return;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(void *, double), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 64); ; i += 40)
  {
    v20 = v5;
    v7 = *(i - 4);
    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v18[0] = v7;
    v18[1] = v8;
    v18[2] = v9;
    v18[3] = v10;
    v19 = v11;
    v12 = outlined copy of TableColumnCustomizationID.Base(v7, v8, v9, v10, v11);
    v13 = v4;
    v14 = a1(v18, v12);
    result = outlined consume of TableColumnCustomizationID.Base(v7, v8, v9, v10, v11);
    if (v13)
    {
      break;
    }

    if (v14)
    {
      return v20;
    }

    v5 = v20 + 1;
    v4 = 0;
    if (v16 == v20 + 1)
    {
      return 0;
    }
  }

  return result;
}

{
  v14 = a1;
  v11 = *(a3 + 16);
  if (!v11)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a3 + 48); ; i += 24)
  {
    v6 = *(i - 1);
    v7 = *i;
    v12[0] = *(i - 2);
    v12[1] = v6;
    v13 = v7;
    v8 = outlined copy of TabCustomizationID.Base();
    v9 = v14(v12, v8);
    outlined consume of TabCustomizationID.Base();
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v11 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

void specialized Collection.firstIndex(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18D00E9C0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for ToolbarStorage.Entry(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  if (v4 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  result = type metadata accessor for _ArchivedViewStates(0);
  v8 = *(*(v3 + *(result + 20) + 8) + 16);
  if (v8 < a1 || v8 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_13:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    goto LABEL_16;
  }

  if (result > v8)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _VariadicView_Children.endIndex.getter();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v7 = a3 - a1;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_12:
  v9 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = _VariadicView_Children.endIndex.getter();
  if ((v8 & 0x8000000000000000) == 0 && result >= v8)
  {
    return v8;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v7 = *(*v3 + 88);
  v8 = v7();
  v9 = *(*v3 + 96);
  result = v9();
  if (v8 > a1 || result < a1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = (v7)(result);
  result = v9();
  if (v12 > a3 || result < a3)
  {
    goto LABEL_24;
  }

  v14 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a2 >= 1)
  {
    if (v14 < 0 || v14 >= a2)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v14 <= 0 && v14 > a2)
  {
    return 0;
  }

LABEL_17:
  v16 = __OFADD__(a1, a2);
  v15 = a1 + a2;
  if (v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = (v7)(result);
  result = v9();
  if (v15 >= v17 && result >= v15)
  {
    return v15;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = *(*v3 + 88);
  v8 = v7();
  v9 = *(*v3 + 96);
  result = v9();
  if (v8 > a1 || result < a1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = (v7)(result);
  result = v9();
  if (v12 > a3 || result < a3)
  {
    goto LABEL_24;
  }

  v14 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a2 >= 1)
  {
    if (v14 < 0 || v14 >= a2)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v14 <= 0 && v14 > a2)
  {
    return 0;
  }

LABEL_17:
  v16 = __OFADD__(a1, a2);
  v15 = a1 + a2;
  if (v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = (v7)(result);
  result = v9();
  if (v15 >= v17 && result >= v15)
  {
    return v15;
  }

LABEL_27:
  __break(1u);
  return result;
}

void specialized Collection<>.dismiss(from:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 < a1)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v7 = specialized Sequence.reversed()(a1, v3, a2, a3);
  v8 = *(v7 + 2);
  if (v8)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v21;
    v10 = (v7 + 32);
    do
    {
      outlined init with copy of NavigationViewDestinationView(v10, v18);
      v12 = v19;
      v11 = v20;

      outlined destroy of NavigationViewDestinationView(v18);
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v11;
      v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v9 = v21;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = partial apply for thunk for @callee_guaranteed () -> ();
      *(v16 + 40) = v13;
      v10 += 88;
      --v8;
    }

    while (v8);

    if (*(v9 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_9:
      v18[0] = 17;
      *(swift_allocObject() + 16) = v9;
      static Update.enqueueAction(reason:_:)();

      return;
    }
  }
}

uint64_t specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(void (*a1)(uint64_t *))
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v11);
  v4 = v16;
  if (v16)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v11);
  }

  else
  {
    outlined destroy of NavigationColumnState.ColumnContent(v1);
    v5 = v14;
    v6 = v15;
    v20 = v11[2];
    v21 = v11[3];
    v22[0] = v12[0];
    *(v22 + 9) = *(v12 + 9);
    v18 = v11[0];
    v19 = v11[1];
    v17 = v13;
    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
    *(v1 + 88) = -1;
    *(v1 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v1);
    a1(&v17);
    if (v2)
    {
      v7 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(&v18, v1, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      *(v1 + 96) = v17;
      *(v1 + 104) = v5;
      *(v1 + 112) = v6;
      *(v1 + 120) = 0;
      swift_willThrow();
      outlined destroy of NavigationRequest.Action?(&v18, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, v7);
    }

    else
    {
      v8 = v21;
      *(v1 + 32) = v20;
      *(v1 + 48) = v8;
      *(v1 + 64) = v22[0];
      *(v1 + 73) = *(v22 + 9);
      v9 = v19;
      *v1 = v18;
      *(v1 + 16) = v9;
      *(v1 + 96) = v17;
      *(v1 + 104) = v5;
      *(v1 + 112) = v6;
      *(v1 + 120) = 0;
    }
  }

  return v4;
}

uint64_t specialized NavigationColumnState.ColumnContent.mutateViewDestinationViews<A>(transform:)(void (*a1)(__int128 *))
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v10);
  v4 = v14;
  if (v14)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v10);
  }

  else
  {
    outlined destroy of NavigationColumnState.ColumnContent(v1);
    v5 = v12;
    v18 = v10[2];
    v19 = v10[3];
    v20[0] = v11[0];
    *(v20 + 9) = *(v11 + 9);
    v16 = v10[0];
    v17 = v10[1];
    v15 = v13;
    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *v1 = 0u;
    *(v1 + 88) = -1;
    *(v1 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v1);
    a1(&v15);
    if (v2)
    {
      v6 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(&v16, v1, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      *(v1 + 96) = v5;
      *(v1 + 104) = v15;
      *(v1 + 120) = 0;
      swift_willThrow();
      outlined destroy of NavigationRequest.Action?(&v16, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, v6);
    }

    else
    {
      v7 = v19;
      *(v1 + 32) = v18;
      *(v1 + 48) = v7;
      *(v1 + 64) = v20[0];
      *(v1 + 73) = *(v20 + 9);
      v8 = v17;
      *v1 = v16;
      *(v1 + 16) = v8;
      *(v1 + 96) = v5;
      *(v1 + 104) = v15;
      *(v1 + 120) = 0;
    }
  }

  return v4;
}

void NavigationColumnState.boundPathChange(to:environment:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *a2;
  v7 = a2[1];
  outlined init with copy of NavigationColumnState.ColumnContent(v4 + 120, &v31);
  if (v38 == 1)
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v31);
    __break(1u);
  }

  else
  {
    v9 = v36;

    outlined destroy of NavigationRequest.Action?(&v31, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    outlined init with copy of NavigationColumnState.ColumnContent(v4 + 120, &v31);
    if (v38)
    {
      outlined destroy of NavigationColumnState.ColumnContent(&v31);
    }

    else
    {
      outlined destroy of NavigationColumnState.ColumnContent(v4 + 120);
      v25 = v33;
      v27 = v34;
      *v29 = v35[0];
      *&v29[9] = *(v35 + 9);
      v21 = v31;
      v23 = v32;
      v19 = v37;

      *(v4 + 200) = 0;
      *(v4 + 184) = 0u;
      *(v4 + 168) = 0u;
      *(v4 + 152) = 0u;
      *(v4 + 136) = 0u;
      *(v4 + 120) = 0u;
      *(v4 + 208) = -1;
      *(v4 + 240) = 1;
      outlined destroy of NavigationColumnState.ColumnContent(v4 + 120);
      *(v4 + 152) = v25;
      *(v4 + 168) = v27;
      *(v4 + 184) = *v29;
      *(v4 + 193) = *&v29[9];
      *(v4 + 120) = v21;
      *(v4 + 136) = v23;
      *(v4 + 216) = a1;
      *(v4 + 224) = v19;
      *(v4 + 240) = 0;
    }

    outlined init with copy of NavigationColumnState.ColumnContent(v4 + 120, &v31);
    if ((v38 & 1) == 0)
    {
      v10 = v36;

      outlined destroy of NavigationRequest.Action?(&v31, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v11 = (*(*v10 + 136))(v9);
      v13 = v12;

      if ((v13 & 1) != 0 && v11 == 1)
      {

        v14 = 0;
      }

      else
      {
        outlined init with copy of NavigationColumnState.ColumnContent(v4 + 120, &v31);
        if ((v38 & 1) == 0)
        {

          specialized Collection<>.dismiss(from:)(0, v37, *(&v37 + 1));
        }

        outlined destroy of NavigationRequest.Action?(&v31, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        outlined init with copy of NavigationColumnState.ColumnContent(v4 + 120, &v31);
        if (v38)
        {

          outlined destroy of NavigationColumnState.ColumnContent(&v31);
        }

        else
        {
          outlined destroy of NavigationColumnState.ColumnContent(v4 + 120);
          v20 = v7;
          v15 = v36;

          v26 = v33;
          v28 = v34;
          *v30 = v35[0];
          *&v30[9] = *(v35 + 9);
          v22 = v31;
          v24 = v32;
          *(v4 + 200) = 0;
          *(v4 + 184) = 0u;
          *(v4 + 168) = 0u;
          *(v4 + 152) = 0u;
          *(v4 + 136) = 0u;
          *(v4 + 120) = 0u;
          *(v4 + 208) = -1;
          *(v4 + 240) = 1;
          outlined destroy of NavigationColumnState.ColumnContent(v4 + 120);
          v16 = MEMORY[0x1E69E7CC0];
          v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

          *(v4 + 152) = v26;
          *(v4 + 168) = v28;
          *(v4 + 184) = *v30;
          *(v4 + 193) = *&v30[9];
          *(v4 + 120) = v22;
          *(v4 + 136) = v24;
          *(v4 + 216) = v15;
          *(v4 + 224) = v16;
          v7 = v20;
          *(v4 + 232) = v17;
          *(v4 + 240) = 0;
        }

        *(v4 + 352) = 0;
        *(v4 + 288) = v8;
        *(v4 + 296) = v7;

        if ((v13 & 1) == 0)
        {
          v18 = 1;
          v14 = 1;
          goto LABEL_18;
        }

        v11 = qword_18CDAF608[v11];
        v14 = 1;
      }

      v18 = 2;
LABEL_18:
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 152) = 0;
      *(a3 + 160) = 0x1FFFFFFFCLL;
      *(a3 + 184) = 0u;
      *(a3 + 200) = 0u;
      *(a3 + 216) = 0u;
      *(a3 + 232) = 0u;
      *(a3 + 248) = 0u;
      *(a3 + 168) = 0u;
      *(a3 + 264) = 0u;
      *(a3 + 280) = 0u;
      *(a3 + 296) = 0u;
      *(a3 + 312) = 0u;
      *(a3 + 321) = 0u;
      *a3 = v11;
      *(a3 + 8) = 0;
      *(a3 + 16) = v18;
      *(a3 + 340) = v14;
      *(a3 + 344) = 0;
      return;
    }
  }

  outlined destroy of NavigationColumnState.ColumnContent(&v31);
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t NavigationColumnState.editingChanged(request:splitViewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of NavigationRequest.TargetedRequest(a1, v8);
  NavigationRequest.ListRequest.init(_:)(v8, v10);
  if (v11 == 1)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14[8] = v10[8];
    v14[9] = v11;
    v14[10] = v12;
    v15 = v13;
    v14[4] = v10[4];
    v14[5] = v10[5];
    v14[6] = v10[6];
    v14[7] = v10[7];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v9 = *(a2 + 64);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    NavigationColumnState.updateListState(_:splitViewState:)(v14, v8, a3);
    return outlined destroy of NavigationRequest.ListRequest(v14);
  }

  return result;
}

uint64_t NavigationColumnState.pop(_:writesSelectionAt:request:splitViewState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = a1;
  v11 = *(a4 + 48);
  v134 = *(a4 + 32);
  v135 = v11;
  v136 = *(a4 + 64);
  v12 = *(a4 + 16);
  v133[0] = *a4;
  v133[1] = v12;
  if (v12 != 1)
  {
    v13 = v134;
    if (v134)
    {
      v14 = *(&v134 + 1);
      v15 = *(v6 + 24);
      if (v15 >= 3)
      {
        LOBYTE(v15) = 3;
      }

      *&v111 = a1;
      BYTE8(v114) = 0;
      BYTE9(v114) = v15;
      LOBYTE(v127) = 17;
      outlined init with copy of NavigationUpdateEvent(&v111, v109);
      v16 = swift_allocObject();
      *(v16 + 16) = v13;
      *(v16 + 24) = v14;
      v17 = *&v109[16];
      *(v16 + 32) = *v109;
      *(v16 + 48) = v17;
      *(v16 + 64) = *&v109[32];
      *(v16 + 74) = *&v109[42];
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v13, v14);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v13, v14);
      v18 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(v133, __src, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.Action?(v133, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v18);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13, v14);
      result = outlined destroy of NavigationUpdateEvent(&v111);
      *(a5 + 136) = 0u;
      *(a5 + 120) = 0u;
      *(a5 + 104) = 0u;
      *(a5 + 88) = 0u;
      *(a5 + 72) = 0u;
      *(a5 + 56) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 24) = 0u;
      *(a5 + 152) = 0;
      *(a5 + 160) = 0x1FFFFFFFCLL;
      *(a5 + 184) = 0u;
      *(a5 + 200) = 0u;
      *(a5 + 216) = 0u;
      *(a5 + 232) = 0u;
      *(a5 + 248) = 0u;
      *(a5 + 168) = 0u;
      *(a5 + 264) = 0u;
      *(a5 + 280) = 0u;
      *(a5 + 296) = 0u;
      *(a5 + 312) = 0u;
      *(a5 + 321) = 0u;
      *a5 = xmmword_18CD6A6D0;
      *(a5 + 16) = 2;
      *(a5 + 340) = 0;
      return result;
    }
  }

  if (a1 < 1)
  {
    v21 = 2;
    v22 = 1;
    v20 = a1;
    goto LABEL_42;
  }

  outlined init with copy of NavigationColumnState(v6, __src);
  outlined init with copy of NavigationColumnState.ColumnContent(&__src[7] + 8, &v111);
  outlined destroy of NavigationColumnState(__src);
  if (BYTE8(v117))
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v111);
    v20 = v9;
  }

  else
  {

    v23 = *(&v116 + 1);
    outlined destroy of NavigationRequest.Action?(&v111, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v24 = *(v23 + 16);

    v20 = v9;
    if (v24)
    {
      outlined init with copy of NavigationColumnState(v6, __src);
      outlined init with copy of NavigationColumnState.ColumnContent(&__src[7] + 8, &v111);
      v94 = a2;
      if (BYTE8(v117))
      {
        outlined destroy of NavigationColumnState.ColumnContent(&v111);
        v25 = MEMORY[0x1E69E7CC0];
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        outlined destroy of NavigationColumnState(__src);
      }

      else
      {
        outlined destroy of NavigationColumnState(__src);

        v25 = *(&v116 + 1);
        outlined destroy of NavigationRequest.Action?(&v111, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      }

      v26 = *(v25 + 16);

      v27 = v26 >= v9 ? v9 : v26;
      outlined init with copy of NavigationColumnState.ColumnContent(v6 + 120, __src);
      if (BYTE8(__src[7]))
      {
        outlined destroy of NavigationColumnState.ColumnContent(__src);
      }

      else
      {
        outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
        v105 = *&__src[6];
        v113 = __src[2];
        v114 = __src[3];
        *v115 = __src[4];
        *&v115[9] = *(&__src[4] + 9);
        v111 = __src[0];
        v112 = __src[1];
        *v109 = *(&__src[6] + 8);
        *(v6 + 200) = 0;
        *(v6 + 184) = 0u;
        *(v6 + 168) = 0u;
        *(v6 + 152) = 0u;
        *(v6 + 136) = 0u;
        *(v6 + 120) = 0u;
        *(v6 + 208) = -1;
        *(v6 + 240) = 1;
        outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
        v28 = specialized IdentifiedArray.popLast(_:)(v27);
        v30 = v29;
        v32 = v31;
        v33 = v9;
        v35 = v34;
        LOBYTE(__src[0]) = 16;
        v36 = swift_allocObject();
        v36[2] = v28;
        v36[3] = v30;
        v36[4] = v32;
        v36[5] = v35;
        v9 = v33;
        static Update.enqueueAction(reason:_:)();

        v37 = v114;
        *(v6 + 152) = v113;
        *(v6 + 168) = v37;
        *(v6 + 184) = *v115;
        *(v6 + 193) = *&v115[9];
        v38 = v112;
        *(v6 + 120) = v111;
        *(v6 + 136) = v38;
        *(v6 + 216) = v105;
        *(v6 + 224) = *v109;
        *(v6 + 240) = 0;
      }

      a2 = v94;
      v20 = v9 - v27;
      if (v9 - v27 < 1)
      {
        v21 = 2;
        v22 = 1;
        goto LABEL_42;
      }
    }
  }

  outlined init with copy of NavigationColumnState(v6, __src);
  outlined init with copy of NavigationColumnState.ColumnContent(&__src[7] + 8, &v111);
  if (BYTE8(v117))
  {
    outlined destroy of NavigationColumnState(__src);
    outlined destroy of NavigationColumnState.ColumnContent(&v111);
  }

  else
  {
    v39 = v116;

    v40 = outlined destroy of NavigationRequest.Action?(&v111, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v41 = (*(*v39 + 80))(v40);

    outlined destroy of NavigationColumnState(__src);
    if ((v41 & 1) == 0)
    {
      outlined init with copy of NavigationColumnState(v6, __src);
      outlined init with copy of NavigationColumnState.ColumnContent(&__src[7] + 8, &v111);
      outlined destroy of NavigationColumnState(__src);
      if ((BYTE8(v117) & 1) == 0)
      {
        v42 = v116;

        v43 = outlined destroy of NavigationRequest.Action?(&v111, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        v44 = (*(*v42 + 88))(v43);

        if (v44 >= v20)
        {
          v45 = v20;
        }

        else
        {
          v45 = v44;
        }

        outlined init with copy of NavigationColumnState.ColumnContent(v6 + 120, __src);
        v103 = v45;
        v106 = v20;
        if (BYTE8(__src[7]))
        {
          outlined destroy of NavigationColumnState.ColumnContent(__src);
        }

        else
        {
          outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
          v46 = *&__src[6];
          v100 = *(&__src[6] + 8);
          v113 = __src[2];
          v114 = __src[3];
          *v115 = __src[4];
          *&v115[9] = *(&__src[4] + 9);
          v111 = __src[0];
          v112 = __src[1];
          *(v6 + 200) = 0;
          *(v6 + 184) = 0u;
          *(v6 + 168) = 0u;
          *(v6 + 152) = 0u;
          *(v6 + 136) = 0u;
          *(v6 + 120) = 0u;
          *(v6 + 208) = -1;
          *(v6 + 240) = 1;
          outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = (*(*v46 + 104))();

            v46 = v47;
          }

          (*(*v46 + 128))(v45);
          v48 = v114;
          *(v6 + 152) = v113;
          *(v6 + 168) = v48;
          *(v6 + 184) = *v115;
          *(v6 + 193) = *&v115[9];
          v49 = v112;
          *(v6 + 120) = v111;
          *(v6 + 136) = v49;
          *(v6 + 216) = v46;
          *(v6 + 224) = v100;
          *(v6 + 240) = 0;
        }

        v50 = v9;
        v109[0] = 16;
        v51 = *(v6 + 96);
        v52 = *(v6 + 104);
        v53 = *(v6 + 112);
        outlined init with copy of NavigationColumnState(v6, __src);
        outlined init with copy of NavigationColumnState.ColumnContent(&__src[7] + 8, &v111);
        outlined destroy of NavigationColumnState(__src);
        if (BYTE8(v117))
        {
          outlined destroy of NavigationColumnState.ColumnContent(&v111);
          v54 = 0;
        }

        else
        {
          v54 = v116;

          outlined destroy of NavigationRequest.Action?(&v111, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        }

        v55 = swift_allocObject();
        v55[2] = v51;
        v55[3] = v52;
        v55[4] = v53;
        v55[5] = v54;
        outlined copy of Binding<AnyNavigationPath>?(v51, v52, v53);

        static Update.enqueueAction(reason:_:)();

        v22 = v103;
        v20 = v106 - v103;
        if (!__OFSUB__(v106, v103))
        {
          v9 = v50;
          v21 = 1;
          if (v20 < 1)
          {
            goto LABEL_42;
          }

          goto LABEL_25;
        }

        __break(1u);
      }

      result = outlined destroy of NavigationColumnState.ColumnContent(&v111);
      __break(1u);
      return result;
    }
  }

  v21 = 2;
  v22 = 1;
LABEL_25:
  if (NavigationColumnState.isRootReplaced.getter())
  {
    outlined consume of ResolvedNavigationDestinations.ChangeRequest(v22, 0, v21);
    NavigationColumnState.ColumnContent.dismissReplacedRootView()();
    NavigationColumnState.ColumnContent.resetRoot()();
    --v20;
    v22 = 2;
    v21 = 2;
  }

LABEL_42:
  v56 = NavigationColumnState.ColumnContent.isShowingOriginalRoot.getter();
  if (*(v6 + 352))
  {
    if (!v56)
    {
      goto LABEL_48;
    }

    v57 = 0;
  }

  else
  {
    if (v56)
    {
      goto LABEL_48;
    }

    v57 = 2;
  }

  *(v6 + 352) = v57;
LABEL_48:
  v104 = v22;
  v107 = v20;
  if (v20 >= 1)
  {
    v58 = *(v6 + 48);
    if (v58)
    {
      v59 = *(v6 + 80);
      v97 = a3;
      v60 = a2;
      v61 = v9;
      v62 = *(v6 + 56);
      v63 = *(v6 + 64);
      v101 = v21;
      v64 = *(v6 + 72);
      v65 = *(v6 + 88);
      LODWORD(__src[0]) = *(v6 + 40);
      *(&__src[0] + 1) = v58;
      *&__src[1] = v62;
      *(&__src[1] + 1) = v63;
      *&__src[2] = v64;
      *(&__src[2] + 1) = v59;
      LODWORD(__src[3]) = v65;

      LOBYTE(v59) = NavigationListState.isAnyEditing()();

      v9 = v61;
      a2 = v60;
      a3 = v97;

      v21 = v101;

      if (v59)
      {
        v66 = *(v6 + 48);
        if (a2)
        {
          if (v66)
          {

            v68 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI15NavigationStateV7ListKeyV_SD4KeysVyAhD0dfE0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLV_GTt0g5(v67);
            if (*(v6 + 48) && (v69 = v68, NavigationListState.dismissLegacyLinks()(), *(v6 + 48)))
            {
              specialized Set.formUnion<A>(_:)(v69);
            }

            else
            {
            }
          }
        }

        else if (v66)
        {
          NavigationListState.clearAllSelections()();
        }
      }
    }
  }

  v70 = a3[25];
  if (v70 >> 1 == 0xFFFFFFFF)
  {
    v71 = a3 + 13;
    v72 = a3 + 14;
    v73 = a3 + 15;
    v74 = a3 + 16;
    v70 = a3[17];
    v75 = a3 + 18;
  }

  else
  {
    v71 = a3 + 21;
    v72 = a3 + 22;
    v73 = a3 + 23;
    v74 = a3 + 24;
    v75 = a3 + 26;
  }

  v76 = *v75;
  v77 = *v74;
  v78 = *v73;
  v79 = *v72;
  v127 = *v71;
  v128 = v79;
  v129 = v78;
  v130 = v77;
  v131 = v70;
  v132 = v76;
  NavigationRequest.KeyKind.previous.getter(&v121);
  v80 = v125;
  if (v125 >> 1 == 0xFFFFFFFF)
  {
    memset(__src, 0, 136);
    v81 = v104;
    if (v20)
    {
      v82 = 0x1FFFFFFFELL;
    }

    else
    {
      v82 = 0x1FFFFFFFCLL;
    }

    *(&__src[8] + 1) = v82;
    memset(&__src[9], 0, 169);
  }

  else
  {
    v102 = v21;
    v98 = v122;
    v83 = v124;
    v84 = v126;
    v85 = *(a4 + 16);
    if (v107)
    {
      v95 = v121;
      v96 = v123;
      if (v85 == 1)
      {
        v86 = a2;
        v87 = 0;
      }

      else
      {
        if (v125 >> 62)
        {
          if (v125 >> 62 == 1)
          {
            if (v123 == 6)
            {
              v91.value = SwiftUI_NavigationSplitColumn_unknownDefault;
            }

            else
            {
              v91.value = v123;
            }
          }

          else
          {
            v91.value = SwiftUI_NavigationSplitColumn_unknownDefault;
          }
        }

        else
        {
          v91.value = v122;
        }

        v86 = a2;
        v87 = NavigationSplitViewState.reduceCompactColumnBindingsIfGreaterThan(_:)(v91);
      }

      v92 = v107 < v9;
      v93 = v87;
      outlined init with copy of NavigationRequest(a3, &v111);
      *v109 = v107;
      v109[8] = v86 & 1;
      v109[9] = v93;
      v109[10] = v92;
      v110 = 16;
      *(&__src[16] + 8) = 0u;
      *(&__src[17] + 8) = 0u;
      *(&__src[18] + 8) = 0u;
      *(&__src[13] + 8) = 0u;
      *(&__src[14] + 8) = 0u;
      *(&__src[15] + 8) = 0u;
      BYTE8(__src[19]) = -1;
      __src[0] = v111;
      __src[1] = v112;
      __src[4] = *v115;
      __src[5] = *&v115[16];
      __src[2] = v113;
      __src[3] = v114;
      __src[8] = v118;
      __src[9] = v119;
      __src[6] = v116;
      __src[7] = v117;
      *&__src[10] = v120;
      *(&__src[10] + 1) = v95;
      *&__src[11] = v98;
      *(&__src[11] + 1) = v96;
    }

    else
    {
      v88 = v121;
      v89 = v123;
      if (v85 != 1)
      {
        if (v125 >> 62)
        {
          if (v125 >> 62 == 1)
          {
            if (v123 == 6)
            {
              v90.value = SwiftUI_NavigationSplitColumn_unknownDefault;
            }

            else
            {
              v90.value = v123;
            }
          }

          else
          {
            v90.value = SwiftUI_NavigationSplitColumn_unknownDefault;
          }
        }

        else
        {
          v90.value = v122;
        }

        NavigationSplitViewState.reduceCompactColumnBindingsIfGreaterThan(_:)(v90);
      }

      outlined init with copy of NavigationRequest(a3, &v111);
      memset(&v109[8], 0, 88);
      *v109 = 6;
      v110 = 22;
      *(&__src[16] + 8) = 0u;
      *(&__src[17] + 8) = 0u;
      *(&__src[18] + 8) = 0u;
      *(&__src[13] + 8) = 0u;
      *(&__src[14] + 8) = 0u;
      *(&__src[15] + 8) = 0u;
      BYTE8(__src[19]) = -1;
      __src[0] = v111;
      __src[1] = v112;
      __src[4] = *v115;
      __src[5] = *&v115[16];
      __src[2] = v113;
      __src[3] = v114;
      __src[8] = v118;
      __src[9] = v119;
      __src[6] = v116;
      __src[7] = v117;
      *&__src[10] = v120;
      *(&__src[10] + 1) = v88;
      *&__src[11] = v98;
      *(&__src[11] + 1) = v89;
    }

    *&__src[12] = v83;
    *(&__src[12] + 1) = v80;
    *&__src[13] = v84;
    outlined assign with take of NavigationRequest.Action?(v109, &__src[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
    v81 = v104;
    v21 = v102;
  }

  *a5 = v81;
  *(a5 + 8) = 0;
  *(a5 + 16) = v21;
  result = memcpy((a5 + 24), __src, 0x139uLL);
  *(a5 + 340) = 1;
  return result;
}

double NavigationColumnState.revealedBySubsequentPop()@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1 + 120, v12);
  if ((v12[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v12, v8);
    v3 = v11;
    if (v9 == 255)
    {
      v5 = v1;
      v6 = (*(*v10 + 80))();

      if (v6)
      {
        v7 = *(v3 + 16);

        outlined destroy of NavigationColumnState.ColumnContent(v12);
        v1 = v5;
        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      }

LABEL_9:
      outlined destroy of NavigationColumnState.ColumnContent(v12);
      goto LABEL_10;
    }

LABEL_8:
    outlined destroy of NavigationRequest.Action?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v12, v8);
  if (v9 != 255)
  {
    goto LABEL_8;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v12);
LABEL_4:
  if (!*(v1 + 352))
  {
    *(v1 + 352) = 2;
  }

LABEL_10:
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x1FFFFFFFCLL;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 321) = 0u;
  *&result = 1;
  *a1 = xmmword_18CD6A6D0;
  *(a1 + 16) = 2;
  *(a1 + 340) = 0;
  return result;
}