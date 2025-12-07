void SwiftUIGlue2.systemDefaultDynamicTypeSize.getter(char *a1@<X8>)
{
  v2 = _UIApplicationDefaultContentSizeCategory();
  DynamicTypeSize.init(uiSizeCategory:)(v2, &v4);
  v3 = v4;
  if (v4 == 12)
  {
    v3 = 3;
  }

  *a1 = v3;
}

uint64_t protocol witness for static StyleableView.defaultStyleModifier.getter in conformance ResolvedLabeledContent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultStyleModifier != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1EAB096C0;
  *a1 = static ResolvedLabeledContent.defaultStyleModifier;
  *(a1 + 8) = v2;

  return outlined copy of Environment<Bool>.Content();
}

uint64_t outlined copy of Environment<ListItemTint?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of Transaction?(result);
  }

  else
  {
  }
}

double outlined consume of Environment<ListItemTint?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    outlined consume of ListItemTint?(result);
  }

  else
  {
  }

  return v3;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>, &unk_1EFFDB4B0, &protocol witness table for EnvironmentValues.__Key_listLabelVerticalTitlePadding, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t assignWithTake for AutomaticLabeledContentStyle(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

void type metadata accessor for _PreferenceTransformModifier<PlatformItemList.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveLabelStyleKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI28_PreferenceTransformModifierVyAA16PlatformItemListV3Key33_CE84B1BFBEAEAB6361605407E54625A3LLVGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x5463696D616E7944, outlined consume of Environment<Bool>.Content, a3, 0xEF657A6953657079);
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F990, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x694474756F79614CLL, outlined consume of Environment<Bool>.Content, a3, 0xEF6E6F6974636572);
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000018CD3F250, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000018CD3F2A0, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F140, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F7A0, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  return specialized Environment.wrappedValue.getter(a1, a2, outlined copy of Environment<Bool>.Content, 0x6E656E696D6F7250, outlined consume of Environment<Bool>.Content, a3, 0xEA00000000006563);
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F7F0, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1 & 1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000018CD3F400, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F950, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1 & 1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F490, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F4B0, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA28FeedbackRequestContextWriter33_C9541C03AF81FECFD19A57A1BB81CE81LLVyAA0F9Generator33_E5C2FE5C277CCA85C518490456542950LLVyqd__GGGAaBHPxAaBHD1__AlA0C8ModifierHPyHCHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a1[2];
  v5 = a2(255, a1[1], a1[3]);
  WitnessTable = swift_getWitnessTable(a3, v5);
  type metadata accessor for FeedbackRequestContextWriter(255, v5, WitnessTable, v7);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v4;
  v10[1] = &protocol witness table for FeedbackRequestContextWriter<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
}

uint64_t sub_18BE1B6E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  v4 = type metadata accessor for FeedbackGenerator(255, v1, v2, v3);
  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v7 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for _ValueActionModifier2();
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  v12 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v19[2] = v5;
  v19[3] = &type metadata for SensoryFeedback;
  v19[4] = WitnessTable;
  v19[5] = v7;
  v19[0] = swift_getOpaqueTypeConformance2();
  v19[1] = swift_getWitnessTable(MEMORY[0x1E697FDE0], v8);
  v13 = MEMORY[0x1E697E858];
  v18[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v19);
  v18[1] = MEMORY[0x1E69805D0];
  v15 = v12;
  v16 = swift_getWitnessTable(v13, v10, v18);
  v17 = v16;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v11, &v15);
}

uint64_t sub_18BE1B8E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskValueModifier2(255, v1, v2, v3);
  }

  else
  {
    type metadata accessor for _TaskValueModifier(255, v1, v2, v3);
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_18BE1B964(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskValueModifier2(255, v1, v2, v4);
    v5 = type metadata accessor for ModifiedContent();
    return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v9, v8[0], v8[1], v3, &protocol witness table for _TaskValueModifier2<A>);
  }

  else
  {
    type metadata accessor for _TaskValueModifier(255, v1, v2, v4);
    v7 = type metadata accessor for ModifiedContent();
    return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v8, v3, &protocol witness table for _TaskValueModifier<A>, v9[0], v9[1]);
  }
}

void type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>()
{
  if (!lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>)
  {
    v0 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback and conformance SensoryFeedback;
  if (!lazy protocol witness table cache variable for type SensoryFeedback and conformance SensoryFeedback)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SensoryFeedback, &type metadata for SensoryFeedback, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback and conformance SensoryFeedback);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SensoryFeedback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for focusSupportingTechnologies()
{
  if (one-time initialization token for focusSupportingTechnologies != -1)
  {
    result = swift_once();
  }

  static AccessibilityTechnologies.focusSupportingTechnologies = static AccessibilityTechnologySet.focusSupportingTechnologies;
  return result;
}

{
  result = static AccessibilityEnabledTechnology.focusSupportingTechnologies.getter();
  v1 = *(result + 16);
  if (v1)
  {
    LOWORD(v2) = 0;
    v3 = (result + 32);
    while (1)
    {
      v4 = *v3++;
      v5 = 1 << (v4 & 0xF);
      v6 = v4 <= 0xF ? v5 : 0;
      v2 = v6 + v2;
      if ((v2 & 0x10000) != 0)
      {
        break;
      }

      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    LOWORD(v2) = 0;
LABEL_10:

    static AccessibilityTechnologySet.focusSupportingTechnologies = v2;
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityFocusStoreLocation(uint64_t a1)
{
  v1 = a1 + class metadata base offset for AccessibilityFocusStoreLocation;
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_getTupleTypeMetadata2();
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      type metadata accessor for AccessibilityFocusStore.Entry(255, v4, *(v1 + 8), v5);
      result = type metadata accessor for Optional();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

BOOL AccessibilityFocusStoreLocation.update()(uint64_t a1)
{
  v26 = a1;
  v29 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = (*v1 + class metadata base offset for AccessibilityFocusStoreLocation);
  v4 = *v3;
  v5 = *(*v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Optional();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = v3[7];
  swift_beginAccess();
  v16 = type metadata accessor for AccessibilityFocusStore.Entry(0, v4, *(v2 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v15);
  v17 = (*(*(v16 - 8) + 48))(&v1[v14], 1, v16);
  v18 = 1;
  if (!v17)
  {
    (*(v5 + 16))(v13, &v1[v14], v4);
    v18 = 0;
  }

  v19 = *(v5 + 56);
  v19(v13, v18, 1, v4);
  AccessibilityFocusStoreLocation.getValue(forReading:)(0, v7);
  v20 = *(v5 + 16);
  v20(v26, v7, v4);
  v20(v10, v7, v4);
  v21 = (v19)(v10, 0, 1, v4);
  MEMORY[0x1EEE9AC00](v21);
  *(&v26 - 4) = v8;
  *(&v26 - 3) = v10;
  *(&v26 - 4) = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v26 - 6), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v22);
  (*(v5 + 8))(v7, v4);
  v23 = *(v27 + 8);
  v23(v13, v8);
  v24 = v28;
  v23(v10, v8);
  return (v24 & 1) == 0;
}

uint64_t getEnumTagSinglePayload for AccessibilityFocusStore.Entry(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double AccessibilityFocusStoreLocation.resolve()@<D0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation);
  v5 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 8);
  v6 = type metadata accessor for AccessibilityFocusStore.Entry(0, v4, v5, a2);
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  if (*(v2[4] + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v2);
    if (v9)
    {
      v10 = type metadata accessor for AccessibilityFocusStore.Key(0, v4, v5, v8);
      MEMORY[0x1EEE9AC00](v10);

      swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStore.Key<A>, v10);
      PropertyList.forEach<A>(keyType:_:)();
    }
  }

  return result;
}

uint64_t closure #1 in compareValues<A>(_:_:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a1;
  v10 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:), v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in closure #1 in compareValues<A>(_:_:options:)@<X0>(_BYTE *a2@<X8>)
{
  result = AGCompareValues();
  *a2 = result;
  return result;
}

double specialized closure #2 in AccessibilityFocusState.Box.update(property:phase:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    AccessibilityFocusStoreLocation.performDeferredUpdate()();
  }

  return result;
}

Swift::Void __swiftcall AccessibilityFocusStoreLocation.performDeferredUpdate()()
{
  v1 = (*v0 + class metadata base offset for AccessibilityFocusStoreLocation);
  v2 = *v1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v22 = v2;
  v10 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = v1[6];
  swift_beginAccess();
  (*(v5 + 16))(v9, &v0[v14], v4);
  v15 = *(TupleTypeMetadata2 - 8);
  if ((*(v15 + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v16 = *&v9[*(TupleTypeMetadata2 + 48)];
    v17 = v9;
    v18 = v22;
    (*(v10 + 32))(v13, v17, v22);
    if (v16)
    {
      v19 = v16 == *&v0[*(*v0 + class metadata base offset for AccessibilityFocusStoreLocation + 64)];
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = static Transaction.current.getter();
      AccessibilityFocusStoreLocation.set(_:transaction:)(v13, v20);

      (*(v10 + 8))(v13, v18);
      return;
    }

    (*(v10 + 8))(v13, v18);
  }

  v21 = v23;
  (*(v15 + 56))(v23, 1, 1, TupleTypeMetadata2);
  swift_beginAccess();
  (*(v5 + 40))(&v0[v14], v21, v4);
  swift_endAccess();
}

uint64_t Material._GlassVariant.subvariant(_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for GlassMaterialProvider.Subvariant?(0, &lazy cache variable for type metadata for GlassMaterialProvider.Subvariant?, MEMORY[0x1E6999C70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GlassMaterialProvider.Subvariant();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;

  GlassMaterialProvider.Subvariant.init(_:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of GlassMaterialProvider.Subvariant?(v8, &lazy cache variable for type metadata for GlassMaterialProvider.Subvariant?, MEMORY[0x1E6999C70]);
    return outlined init with copy of Material._GlassVariant(v4, a3, v16);
  }

  else
  {
    v18 = (*(v10 + 32))(v15, v8, v9);
    outlined init with copy of Material._GlassVariant(v4, a3, v18);
    (*(v10 + 16))(v12, v15, v9);
    GlassMaterialProvider.Configuration.subvariant.setter();
    return (*(v10 + 8))(v15, v9);
  }
}

void type metadata accessor for GlassMaterialProvider.Subvariant?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Material._GlassVariant.excludingOuterRefraction()@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GlassMaterialProvider.Options();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-v11];
  v13 = outlined init with copy of Material._GlassVariant(v2, a2, v10);
  a1(v13);
  v14 = GlassMaterialProvider.Configuration.options.modify();
  specialized OptionSet<>.insert(_:)(v12, v8);
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v12, v5);
  return v14(v17, 0);
}

uint64_t AccessibilityFocusState.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = AccessibilityFocusState.getValue(forReading:)(0, a1, &v21 - v15);
  if (*(v2 + *(a1 + 40)))
  {
    (*(v10 + 16))(v13, v16, v5, v17);

    Binding.init(value:location:)();
  }

  else
  {
    v18 = static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v18, &dword_18BD4A000, v19, "Accessing AccessibilityFocusState's value outside of the body of a View. This will result in a constant Binding of the initial value and will not update.", 153, 2, MEMORY[0x1E69E7CC0]);

    static Binding.constant(_:)();
  }

  (*(v10 + 8))(v16, v5);
  return (*(v7 + 32))(a2, v9, v6);
}

double AccessibilityFocusState.getValue(forReading:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(v3 + *(a2 + 40)))
  {
LABEL_6:
    v7 = *(*(*(a2 + 16) - 8) + 16);
    v8 = v3 + *(a2 + 36);

    v7(a3, v8);
    return result;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    if (a1)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }

    goto LABEL_6;
  }

  dispatch thunk of AnyLocation.get()();

  return result;
}

uint64_t View.accessibilityFocused(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v7 = 1;
  return View.accessibilityFocused<A>(_:equals:)(v8, &v7, a4, MEMORY[0x1E69E6370], a5, MEMORY[0x1E69E6380], a6);
}

uint64_t View.accessibilityDefaultFocus<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, double)@<X6>, void (*a8)(char *, char *, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v33 = a8;
  v34 = a5;
  v31 = a9;
  v32 = a3;
  v29 = a1;
  v30 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessibilityFocusState.Binding(0, v15, v16, v15);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  v22 = a7(0, a4, a6, v19);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v28 - v25;
  (*(v18 + 16))(v21, v29, v17, v24);
  (*(v12 + 16))(v14, v30, a4);
  v33(v21, v14, a4, a6);
  MEMORY[0x18D00A570](v26, v32, v22, v34);
  return (*(v23 + 8))(v26, v22);
}

void type metadata accessor for AccessibilityFocusBindingModifier<Bool>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AccessibilityFocusBindingModifier<Bool>)
  {
    v4 = type metadata accessor for AccessibilityFocusBindingModifier(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AccessibilityFocusBindingModifier<Bool>);
    }
  }
}

uint64_t View.sensoryFeedback<A>(_:trigger:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v22 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedbackGenerator(0, v13, v14, v13);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v27 = *a1;
  (*(v10 + 16))(v12, a2, a4);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  swift_weakInit();
  *&v19 = FeedbackGenerator.init(feedbackRequestContext:feedback:trigger:condition:implementation:)(&v24, &v27, v12, 0, 0, v25, a4, a6, v18).n128_u64[0];
  swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, v15, v19);
  View.platformSensoryFeedback<A>(_:)(v18, v22, v15, v23);
  return (*(v16 + 8))(v18, v15);
}

__n128 FeedbackGenerator.init(feedbackRequestContext:feedback:trigger:condition:implementation:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a2;
  v17 = a2[1];
  outlined init with take of FeedbackRequestContext(a1, a9);
  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  v19 = type metadata accessor for FeedbackGenerator(0, a7, a8, v18);
  (*(*(a7 - 8) + 32))(a9 + v19[10], a3, a7);
  v20 = (a9 + v19[11]);
  *v20 = a4;
  v20[1] = a5;
  v21 = a9 + v19[12];
  result = *a6;
  v23 = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 16) = v23;
  *(v21 + 32) = *(a6 + 32);
  *(v21 + 40) = 0;
  return result;
}

void *initializeWithTake for FeedbackRequestContext(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  return a1;
}

void *initializeWithTake for FeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 23;
  *a1 = *a2;
  v6 = a1 + 23;
  swift_weakTakeInit();
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = (v10 + 16 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    *v14 = *v15;
  }

  else
  {
    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
  }

  v17 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  v20 = v18[2];
  v17[1] = v18[1];
  v17[2] = v20;
  *v17 = v19;
  return a1;
}

double destroy for FeedbackGenerator(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();
  v4 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  (*(v5 + 8))(v7);
  v8 = ((*(v6 + 56) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v8 >= 0xFFFFFFFFuLL)
  {
  }

  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t sub_18BE1D814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for AccessibilityFocusBindingModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusBindingModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for AccessibilityFocusStoreListModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v11[1] = &protocol witness table for AccessibilityFocusStoreListModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t static AccessibilityFocusStoreListModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a5;
  v55 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *a2;
  v12 = *(a2 + 24);
  v44 = *(a2 + 8);
  v45 = v12;
  v13 = *(a2 + 48);
  v46 = *(a2 + 40);
  v47 = v13;
  v14 = v13;
  v15 = *(a2 + 56);
  LODWORD(v48) = v15;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v47 = v11;
    v16 = *(a2 + 24);
    v48 = *(a2 + 8);
    v49 = v16;
    v50 = *(a2 + 40);
    v51 = v14;
    v40 = v14;
    v41 = v15;
    v52 = v15;
    v53 = *(a2 + 60);
    v54 = *(a2 + 76);
    a3();
    v43 = v10;
    v17 = v42;
    type metadata accessor for AccessibilityFocusStoreListModifier(255, a4, v42, v18);
    type metadata accessor for _GraphValue();
    v19 = _GraphValue.value.getter();
    v20 = *(a6 + 8);
    v47 = *a6;
    LODWORD(v48) = v20;
    v21 = PreferencesOutputs.subscript.getter();
    if ((v21 & 0x100000000) != 0)
    {
      v22 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v22 = v21;
    }

    lazy protocol witness table accessor for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey();
    PropertyList.subscript.getter();
    v23 = v47;
    v47 = v11;
    v48 = v44;
    v49 = v45;
    v50 = v46;
    v24 = _GraphInputs.accessibilityEnabled.getter();
    v47 = __PAIR64__(v22, v19);
    *&v48 = __PAIR64__(v24, v23);
    *(&v48 + 1) = MEMORY[0x1E69E7CC8];
    *&v49 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](v24);
    v38 = type metadata accessor for AccessibilityFocusStoreListModifier.ItemFilter(0, a4, v42, v25);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStoreListModifier<A>.ItemFilter, v38);
    type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<AccessibilityFocusStoreList>, &type metadata for AccessibilityFocusStoreList, MEMORY[0x1E698D388]);
    v26 = MEMORY[0x1E69E73E0];
    v27 = MEMORY[0x1E69E7410];
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_13, v37, v38, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);

    LODWORD(v47) = v43;
    MEMORY[0x1EEE9AC00](v30);
    v32 = type metadata accessor for AccessibilityFocusStoreListModifier.ListTransform(0, a4, v17, v31);
    v38 = v32;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStoreListModifier<A>.ListTransform, v32);
    type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_13, v37, v32, v26, v33, v27, v34);
    v47 = v40;
    LODWORD(v48) = v41;
    MEMORY[0x1EEE9AC00](v40);
    LODWORD(v38) = v35;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  else
  {

    return _ViewOutputs.init()();
  }
}

void type metadata accessor for Attribute<(_:)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *assignWithCopy for AccessibilityFocusStoreListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 24);
  v11 = v9 + 24;
  v12 = *(v9 + 80);
  v10((v7 + v12 + 8) & ~v12, (v12 + 8 + v6) & ~v12, v8);
  v13 = ((v12 + 16) & ~v12) + *(v11 + 40) + v12;
  v10((a1 + v13) & ~v12, (a2 + v13) & ~v12, v8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LabeledContentStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = (a4)(0, &type metadata for LabeledContentStyleConfiguration.Label, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for FeedbackGenerator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessibilityFocusStore.Entry(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

uint64_t AccessibilityFocusBindingModifier.init(binding:prototype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AccessibilityFocusState.Binding(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for AccessibilityFocusBindingModifier(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

unint64_t lazy protocol witness table accessor for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = lazy protocol witness table cache variable for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>)
  {
    type metadata accessor for AccessibilityFocusBindingModifier<Bool>(255, a2, a3, a4);
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusBindingModifier<A>, v7, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>);
  }

  return result;
}

uint64_t View.platformSensoryFeedback<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedbackRequestContextWriter(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

void *initializeWithCopy for FeedbackGenerator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 23;
  *a1 = *a2;
  v6 = a1 + 23;
  swift_weakCopyInit();
  v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = (v10 + 16 + (v5 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 16))(v11, v12);
  v13 = *(v9 + 48) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    *v14 = *v15;
  }

  else
  {
    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
  }

  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 24);
  if (v19)
  {
    *(v17 + 24) = v19;
    *(v17 + 32) = *(v18 + 32);
    (**(v19 - 8))(v17, v18);
  }

  else
  {
    v20 = *v18;
    v21 = *(v18 + 16);
    *(v17 + 32) = *(v18 + 32);
    *v17 = v20;
    *(v17 + 16) = v21;
  }

  *(v17 + 40) = *(v18 + 40);

  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityFocusStoreListModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusStoreListModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BE1EAB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v12 = &type metadata for LabeledContentStyleConfiguration.Label;
  v13 = v1;
  v14 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
  v15 = v3;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
  v12 = &type metadata for LabeledContentStyleConfiguration.Content;
  v13 = v2;
  v14 = v6;
  v15 = v4;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = lazy protocol witness table accessor for type ResolvedLabeledContent and conformance ResolvedLabeledContent();
  v11[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v11);
  v10[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v8, v7, v10);
}

unint64_t lazy protocol witness table accessor for type ResolvedLabeledContent and conformance ResolvedLabeledContent()
{
  result = lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent;
  if (!lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabeledContent, &type metadata for ResolvedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent;
  if (!lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabeledContent, &type metadata for ResolvedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabeledContent and conformance ResolvedLabeledContent);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedLabeledContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabeledContent and conformance ResolvedLabeledContent();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ResolvedLabeledContent._Body and conformance ResolvedLabeledContent._Body()
{
  result = lazy protocol witness table cache variable for type ResolvedLabeledContent._Body and conformance ResolvedLabeledContent._Body;
  if (!lazy protocol witness table cache variable for type ResolvedLabeledContent._Body and conformance ResolvedLabeledContent._Body)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabeledContent._Body, &type metadata for ResolvedLabeledContent._Body, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabeledContent._Body and conformance ResolvedLabeledContent._Body);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityLabeledContentRootModifier);
    v5[1] = &protocol witness table for AccessibilityFrameModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>, AccessibilityLabeledContentRootModifier>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>)
  {
    type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, type metadata accessor for LabeledContent);
    type metadata accessor for StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>)
  {
    type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>, &type metadata for AccessibilityLabeledContentLabelModifier, MEMORY[0x1E697E830]);
    v5[0] = &type metadata for LabeledContentStyleConfiguration.Label;
    v5[1] = v2;
    v5[2] = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for StaticSourceWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>, &type metadata for AccessibilityLabeledContentLabelModifier, MEMORY[0x1E697E830]);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    v4[1] = &protocol witness table for AccessibilityLabeledContentLabelModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>(255);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Content;
    v4[1] = &protocol witness table for AccessibilityLabeledContentContentModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static AccessibilityFrameModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  *&v31[60] = *(a2 + 60);
  *&v31[76] = *(a2 + 76);
  v8 = a2[1];
  *v31 = *a2;
  *&v31[16] = v8;
  *&v31[32] = a2[2];
  *&v31[48] = v6;
  *&v31[56] = v7;
  a3(&v21, a1, v31);
  *v31 = v6;
  *&v31[8] = v7;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v10 = v21;
  v11 = v22;
  if ((result & 1) == 0 || (*v31 = v21, *&v31[8] = v22, result = PreferencesOutputs.subscript.getter(), (result & 0x100000000) != 0))
  {
    v20 = HIDWORD(v22);
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 12) = v20;
  }

  else
  {
    v12 = result;
    v13 = a2[1];
    v37 = *a2;
    v38 = v13;
    v39 = a2[2];
    v14 = _GraphInputs.accessibilityEnabled.getter();
    *v31 = v10;
    *&v31[8] = v11;
    v15 = PreferencesOutputs.subscript.getter();
    AccessibilityAttachmentToken.init<A>(_:)();
    v16 = v35;
    v17 = v36;
    result = AGSubgraphGetCurrent();
    if (result)
    {
      v18 = *MEMORY[0x1E698D3F8];
      if ((v15 & 0x100000000) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v15;
      }

      *v31 = v12;
      *&v31[4] = v14;
      memset(&v31[8], 0, 64);
      *&v31[72] = v19 | (v18 << 32);
      *&v31[80] = v16;
      *&v31[88] = v17;
      v32 = 0;
      v33 = 0;
      *&v34 = 1;
      *(&v34 + 1) = result;
      v27 = *&v31[64];
      v28 = *&v31[80];
      v29 = 0u;
      v30 = v34;
      v23 = *v31;
      v24 = *&v31[16];
      v25 = *&v31[32];
      v26 = *&v31[48];
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type GeometryTransform and conformance GeometryTransform();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of GeometryTransform(v31);
      AGGraphSetFlags();
      LOBYTE(v23) = 0;
      result = PreferencesOutputs.subscript.setter();
      *a4 = v21;
      *(a4 + 8) = v22;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityLabeledContentRootModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t specialized static AccessibilityLabeledContentRootModifier._makeViewInputs(modifier:inputs:)(unsigned int *a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  PropertyList.subscript.getter();
  if (v3 == 1)
  {
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    GraphHost.intern<A>(_:for:id:)();
  }

  else
  {
    AGGraphCreateOffsetAttribute2();
    lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
    PropertyList.subscript.getter();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityLabeledContentRootModifier.ResolvedPresentation and conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation();
    Attribute.init<A>(body:value:flags:update:)();
  }

  lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledContentRootModifier.ResolvedPresentation and conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier.ResolvedPresentation and conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier.ResolvedPresentation and conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabeledContentRootModifier.ResolvedPresentation, &unk_1EFFC8A50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledContentRootModifier.ResolvedPresentation and conformance AccessibilityLabeledContentRootModifier.ResolvedPresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation()
{
  result = lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation;
  if (!lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPresentation, &unk_1EFFC89D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation;
  if (!lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityPresentation, &unk_1EFFC89D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityPresentation and conformance AccessibilityPresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LabeledContentStyleModifier<AutomaticLabeledContentStyle> and conformance _LabeledContentStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _LabeledContentStyleModifier<AutomaticLabeledContentStyle> and conformance _LabeledContentStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _LabeledContentStyleModifier<AutomaticLabeledContentStyle> and conformance _LabeledContentStyleModifier<A>)
  {
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for _LabeledContentStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LabeledContentStyleModifier<AutomaticLabeledContentStyle> and conformance _LabeledContentStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<ListLabeledContentStyle>, lazy protocol witness table accessor for type ListLabeledContentStyle and conformance ListLabeledContentStyle, &type metadata for ListLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListLabeledContentStyle and conformance ListLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type ListLabeledContentStyle and conformance ListLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type ListLabeledContentStyle and conformance ListLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentStyle, &type metadata for ListLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentStyle and conformance ListLabeledContentStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle, &type metadata for LeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ColumnarLabeledContentStyle and conformance ColumnarLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type ColumnarLabeledContentStyle and conformance ColumnarLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type ColumnarLabeledContentStyle and conformance ColumnarLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ColumnarLabeledContentStyle, &type metadata for ColumnarLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnarLabeledContentStyle and conformance ColumnarLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
    v5[1] = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label? and conformance <A> A?();
    v5[2] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ColumnsFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ColumnsFormStyleContext>, &type metadata for ColumnsFormStyleContext);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TitleAndContentLayout and conformance TitleAndContentLayout()
{
  result = lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout;
  if (!lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TitleAndContentLayout, &unk_1EFFFD790, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout;
  if (!lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TitleAndContentLayout, &unk_1EFFFD790, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TitleAndContentLayout and conformance TitleAndContentLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext()
{
  result = lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InsetGroupedListStyleContext, &type metadata for InsetGroupedListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext;
  if (!lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InsetGroupedListStyleContext, &type metadata for InsetGroupedListStyleContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext);
  }

  return result;
}

uint64_t type metadata completion function for LabeledContent(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LabeledContentStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>(255);
    type metadata accessor for StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, StaticSourceWriter<LabeledContentStyleConfiguration.Label, ModifiedContent<LabeledContentStyleConfiguration.Label, AccessibilityLabeledContentLabelModifier>>>, StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>)
  {
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>(255);
    v5[0] = &type metadata for LabeledContentStyleConfiguration.Content;
    v5[1] = v2;
    v5[2] = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for StaticSourceWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for StaticSourceWriter<LabeledContentStyleConfiguration.Content, ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>)
  {
    type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>, &protocol witness table for LabeledContentStyleConfiguration.Label, type metadata accessor for AccessibilityLabeledContentContentModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityLabeledContentContentModifier<LabeledContentStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance <> LabeledContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, type metadata accessor for LabeledContent);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    v4[1] = &protocol witness table for LabeledContentStyleConfiguration.Content;
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent()
{
  result = lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent;
  if (!lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent;
  if (!lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent;
  if (!lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent;
  if (!lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent;
  if (!lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured()
{
  result = lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured;
  if (!lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelVisibilityConfigured, &type metadata for LabelVisibilityConfigured, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured;
  if (!lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelVisibilityConfigured, &type metadata for LabelVisibilityConfigured, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured;
  if (!lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelVisibilityConfigured, &type metadata for LabelVisibilityConfigured, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured;
  if (!lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelVisibilityConfigured, &type metadata for LabelVisibilityConfigured, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured;
  if (!lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelVisibilityConfigured, &type metadata for LabelVisibilityConfigured, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured);
  }

  return result;
}

void type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>)
  {
    v2 = lazy protocol witness table accessor for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle();
    v4 = type metadata accessor for _LabeledContentStyleModifier(a1, &type metadata for AutomaticLabeledContentStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomaticLabeledContentStyle, &type metadata for AutomaticLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _LabeledContentStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _LabeledContentStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for LabeledContentStyleConfiguration.Label?, &type metadata for LabeledContentStyleConfiguration.Label, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for LabeledContentStyleConfiguration.Label?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>)
  {
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>, lazy protocol witness table accessor for type AutomaticLabeledContentStyle and conformance AutomaticLabeledContentStyle, &type metadata for AutomaticLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>);
    }
  }
}

void type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LeadingTrailingLabeledContentStyle, &type metadata for LeadingTrailingLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle, &type metadata for LeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ColumnsFormStyleContext>, &type metadata for ColumnsFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, lazy protocol witness table accessor for type ColumnarLabeledContentStyle and conformance ColumnarLabeledContentStyle, &type metadata for ColumnarLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, lazy protocol witness table accessor for type AccessibilityLabeledContentStyle and conformance AccessibilityLabeledContentStyle, &type metadata for AccessibilityLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledContentStyle and conformance AccessibilityLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledContentStyle and conformance AccessibilityLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledContentStyle and conformance AccessibilityLabeledContentStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabeledContentStyle, &type metadata for AccessibilityLabeledContentStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledContentStyle and conformance AccessibilityLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>> and conformance <> LabeledContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label> and conformance <> StaticIf<A, B, C>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for LabeledContentStyleConfiguration.Label?, &type metadata for LabeledContentStyleConfiguration.Label, MEMORY[0x1E69E6720]);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContentStyleConfiguration.Label? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>(255);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Content;
    v4[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18]);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance InsetGroupedListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

unint64_t instantiation function for generic protocol witness table for InsetGroupedListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  *(a1 + 8) = result;
  return result;
}

uint64_t static ListLabeledContentStyle._Body._makeView(view:inputs:)(unsigned int *a1, uint64_t *a2)
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting();
  PropertyList.subscript.getter();
  if (v3 == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    static Solarium.isEnabled(for:)();
  }

  lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListLabeledContentStyle._Body.MakeBody and conformance ListLabeledContentStyle._Body.MakeBody();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type ListLabeledContent and conformance ListLabeledContent();
  return static View.makeView(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting()
{
  result = lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting;
  if (!lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting;
  if (!lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting;
  if (!lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting;
  if (!lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting;
  if (!lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout()
{
  result = lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout)
  {
    result = swift_getWitnessTable("Ŋ\tbDd\b", &type metadata for ListLabeledContentPrefersHorizontalLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentPrefersHorizontalLayout, &type metadata for ListLabeledContentPrefersHorizontalLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabeledContentStyle._Body.MakeBody and conformance ListLabeledContentStyle._Body.MakeBody()
{
  result = lazy protocol witness table cache variable for type ListLabeledContentStyle._Body.MakeBody and conformance ListLabeledContentStyle._Body.MakeBody;
  if (!lazy protocol witness table cache variable for type ListLabeledContentStyle._Body.MakeBody and conformance ListLabeledContentStyle._Body.MakeBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentStyle._Body.MakeBody, &unk_1EFFFD638, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentStyle._Body.MakeBody and conformance ListLabeledContentStyle._Body.MakeBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListLabeledContent and conformance ListLabeledContent()
{
  result = lazy protocol witness table cache variable for type ListLabeledContent and conformance ListLabeledContent;
  if (!lazy protocol witness table cache variable for type ListLabeledContent and conformance ListLabeledContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContent, &type metadata for ListLabeledContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContent and conformance ListLabeledContent);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel()
{
  result = lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel;
  if (!lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiViewLabel, &type metadata for MultiViewLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel;
  if (!lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiViewLabel, &type metadata for MultiViewLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel;
  if (!lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiViewLabel, &type metadata for MultiViewLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel;
  if (!lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiViewLabel, &type metadata for MultiViewLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel;
  if (!lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultiViewLabel, &type metadata for MultiViewLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultiViewLabel and conformance MultiViewLabel);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TitleAndContentLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TitleAndContentLayout and conformance TitleAndContentLayout();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ViewInputFlagModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>)
  {
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<MultiViewLabel>, lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel, &type metadata for MultiViewLabel, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle()
{
  result = lazy protocol witness table cache variable for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle;
  if (!lazy protocol witness table cache variable for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TitleAndIconLabelStyle, &type metadata for TitleAndIconLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for _LayoutRoot<TitleAndContentLayout>, lazy protocol witness table accessor for type TitleAndContentLayout and conformance TitleAndContentLayout, &unk_1EFFFD790, MEMORY[0x1E697DDC0]);
    type metadata accessor for TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>(255);
    lazy protocol witness table accessor for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>();
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
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

void type metadata accessor for (VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>))
  {
    type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>(255, &lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, type metadata accessor for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>, MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>));
    }
  }
}

void type metadata accessor for LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>> and conformance GroupElementsOfContent<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>, MEMORY[0x1E6981F48]);
    v6 = type metadata accessor for LabelGroup(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>);
    }
  }
}

void type metadata accessor for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>)
  {
    type metadata accessor for LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>(255);
    lazy protocol witness table accessor for type GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>> and conformance GroupElementsOfContent<A, B>(&lazy protocol witness table cache variable for type LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>> and conformance LabelGroup<A>, type metadata accessor for LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>, protocol conformance descriptor for LabelGroup<A>);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>);
    }
  }
}

void type metadata accessor for Font?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI4FontVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI4FontVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI4FontVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for Subview?(255, &lazy cache variable for type metadata for Subview?, MEMORY[0x1E6981A60], MEMORY[0x1E69E6720]);
    type metadata accessor for Subview?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice))
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice));
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for VStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E6981860]);
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for _LayoutRoot<TitleAndContentLayout>, lazy protocol witness table accessor for type TitleAndContentLayout and conformance TitleAndContentLayout, &unk_1EFFFD790, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for _LayoutRoot<TitleAndContentLayout>, lazy protocol witness table accessor for type TitleAndContentLayout and conformance TitleAndContentLayout, &unk_1EFFFD790, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<SubviewsCollectionSlice> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<SubviewsCollectionSlice> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<SubviewsCollectionSlice> and conformance HStack<A>)
  {
    type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HStack<SubviewsCollectionSlice>, MEMORY[0x1E6980298], MEMORY[0x1E6980288], MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<SubviewsCollectionSlice> and conformance HStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for [SwiftUIAnySortComparator](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Image.Scale>, MEMORY[0x1E69816F0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    v5[1] = lazy protocol witness table accessor for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>)
  {
    v2 = lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle();
    v4 = type metadata accessor for LabelStyleWritingModifier(a1, &type metadata for TitleAndIconLabelStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<MultiViewLabel> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<MultiViewLabel> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<MultiViewLabel> and conformance ViewInputFlagModifier<A>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<MultiViewLabel>, lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel, &type metadata for MultiViewLabel, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<MultiViewLabel> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, type metadata accessor for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <> _VariadicView.Tree<A, B>();
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _LayoutRoot<TitleAndContentLayout> and conformance _LayoutRoot<A>();
    v5[1] = lazy protocol witness table accessor for type GroupElementsOfContent<Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>> and conformance GroupElementsOfContent<A, B>(&lazy protocol witness table cache variable for type TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

double ListLabeledContentStyle._Body.MakeBody.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = WORD2(a1);
  v4 = *AGGraphGetValue();
  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 1) = HIBYTE(v2) & 1;
  *(a2 + 2) = v2 & 1;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  result = v18;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = 0;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = v6;
  *(a2 + 96) = 0;
  *(a2 + 104) = v7;
  *(a2 + 112) = 0;
  *(a2 + 120) = v8;
  *(a2 + 128) = 0;
  *(a2 + 136) = v9;
  *(a2 + 144) = 0;
  *(a2 + 152) = v10;
  *(a2 + 160) = 0;
  *(a2 + 168) = v11;
  *(a2 + 176) = 0;
  return result;
}

uint64_t LabeledContent<>.init(content:label:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *(type metadata accessor for LabeledContent(0, a4, a5, a3) + 40);
  v10 = a1();
  result = a2(v10);
  *(a6 + v9) = 2;
  return result;
}

uint64_t initializeWithCopy for WheelPickerRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *(*(v9 + 48) + v12) = *(*(v9 + 48) + v13);
  return a1;
}

uint64_t LabeledContent<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v8 = *(a1 + 16);
  v29 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
  v47 = &type metadata for LabeledContentStyleConfiguration.Label;
  v48 = v8;
  v49 = v29;
  v50 = a2;
  type metadata accessor for StaticSourceWriter(255, &v47);
  v9 = type metadata accessor for ModifiedContent();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v25 - v10;
  v11 = *(a1 + 24);
  v28 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
  v47 = &type metadata for LabeledContentStyleConfiguration.Content;
  v48 = v11;
  v49 = v28;
  v50 = a3;
  type metadata accessor for StaticSourceWriter(255, &v47);
  v12 = type metadata accessor for ModifiedContent();
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v27 = &v25 - v16;
  v17 = *(a1 + 40);
  v25 = v4;
  LOBYTE(v47) = *(v4 + v17);
  v40 = v8;
  v41 = v11;
  v42 = a2;
  v43 = a3;
  v44 = v4;
  v18 = lazy protocol witness table accessor for type ResolvedLabeledContent and conformance ResolvedLabeledContent();
  v19 = v26;
  View.viewAlias<A, B>(_:_:)(&type metadata for LabeledContentStyleConfiguration.Label, partial apply for closure #1 in LabeledContent<>.body.getter, v39, &type metadata for ResolvedLabeledContent, &type metadata for LabeledContentStyleConfiguration.Label, v8, v18);
  v34 = v8;
  v35 = v11;
  v36 = a2;
  v37 = a3;
  v38 = v25;
  v46[0] = v18;
  v46[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v46);
  View.viewAlias<A, B>(_:_:)(&type metadata for LabeledContentStyleConfiguration.Content, partial apply for closure #2 in LabeledContent<>.body.getter, v33, v9, &type metadata for LabeledContentStyleConfiguration.Content, v11, WitnessTable);
  (*(v31 + 8))(v19, v9);
  v45[0] = WitnessTable;
  v45[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v20, v12, v45);
  v22 = v27;
  static ViewBuilder.buildExpression<A>(_:)();
  v23 = *(v30 + 8);
  v23(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v23)(v22, v12);
}

uint64_t closure #1 in LabeledContent<>.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t closure #2 in LabeledContent<>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabeledContent(0, v7, v8, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

void ResolvedLabeledContent._Body.body.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  *a1 = 2;
  a1[1] = v2;
}

uint64_t one-time initialization function for defaultStyleModifier()
{
  result = swift_getKeyPath();
  static ResolvedLabeledContent.defaultStyleModifier = result;
  byte_1EAB096C0 = 0;
  return result;
}

{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIKitSystemButtonConfigurationModifier(0);
  __swift_allocate_value_buffer(v4, static ResolvedUIKitButtonBody.defaultStyleModifier);
  v5 = __swift_project_value_buffer(v4, static ResolvedUIKitButtonBody.defaultStyleModifier);
  static UIButton.Configuration.bordered()();
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t type metadata completion function for AccessibilityFocusState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for AccessibilityFocusState(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v8 = *(v3 + 8);
  v9 = v3 + 8;
  v4 = *(v3 + 80);
  v5 = (a1 + v4 + 3) & ~v4;
  v8(v5, v2);
  v6 = (*(v9 + 56) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return (v8)((v4 + v6 + 8) & ~v4, v2);
}

uint64_t assignWithCopy for AccessibilityFocusState(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v9 = *(v6 + 80);
  v10 = (v9 + 3 + a1) & ~v9;
  v11 = (a2 + v9 + 3) & ~v9;
  v7(v10, v11, v5);
  v12 = *(v8 + 40) + 7;
  v13 = ((v12 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;

  v7((v13 + v9 + 8) & ~v9, (v14 + v9 + 8) & ~v9, v5);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for FeedbackGenerator<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(protocol conformance descriptor for FeedbackGenerator<A>, a2);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static AccessibilityFocusState._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  lazy protocol witness table accessor for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey();
  PropertyList.subscript.getter();
  v9 = type metadata accessor for AccessibilityFocusState.Box(0, a4, a6, v8);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusState<A>.Box, v9);
  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FeedbackRequestContextWriter<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FeedbackRequestContextWriter<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t storeEnumTagSinglePayload for AnyDynamicItem(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void static FeedbackRequestContextWriter._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[2];
  v10 = a2[4];
  v34 = a2[3];
  v35 = v10;
  v11 = a2[1];
  v31 = *a2;
  v12 = *a1;
  v36 = *(a2 + 20);
  v32 = v11;
  v33 = v9;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  v13 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v13 + 208);

  if (Strong && (v17 = swift_getObjectType(), v18 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for SensoryFeedbackCacheHost, &protocol descriptor for SensoryFeedbackCacheHost, 0), (*(v15 + 16))(&v25, v18, v18, v17, v15), v16 = swift_unknownObjectRelease(), v25))
  {
    v19 = *(&v25 + 1);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    v22 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v22);
    LODWORD(v25) = v12;
    type metadata accessor for FeedbackRequestContextWriter(255, a5, a6, v23);
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter();
    type metadata accessor for _GraphValue();
    v24 = _GraphValue.value.getter();
    closure #2 in static FeedbackRequestContextWriter._makeView(modifier:inputs:body:)(&v31, v24, v21, a5, a6);
    _GraphValue.init(_:)();
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }

  else
  {
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    a3(v16, &v25);
  }
}

uint64_t closure #1 in static FeedbackRequestContextWriter._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for FeedbackRequestContextWriter(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static FeedbackRequestContextWriter._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 9);
  if ((v6 & 0x20) != 0)
  {
    v10 = *(a1 + 5);
    v11 = a1[1];
    v26 = *a1;
    v27 = v11;
    LODWORD(v28) = *(a1 + 8);
    DWORD1(v28) = v6;
    *(&v28 + 1) = v10;
    _GraphInputs.interfaceIdiom.getter();
    v26 = v25;
    if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (v26 = v25, (AnyInterfaceIdiom.accepts<A>(_:)()))
    {
      v12 = a1[3];
      v28 = a1[2];
      v29 = v12;
      v30 = a1[4];
      v31 = *(a1 + 20);
      v13 = a1[1];
      v26 = *a1;
      v27 = v13;
      v14 = _ViewInputs.position.getter();
      v15 = *(a1 + 15);
      *&v26 = __PAIR64__(*(a1 + 18), v14);
      DWORD2(v26) = v15;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type FeedbackLocation and conformance FeedbackLocation();
      v16 = Attribute.init<A>(body:value:flags:update:)();
    }

    else
    {
      type metadata accessor for GraphHost();
      MEMORY[0x18D00B7D0]();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      v17 = ViewGraph.$zeroPoint.getter();

      v16 = v17;
    }

    *&v26 = __PAIR64__(v16, a2);

    swift_weakInit();

    MEMORY[0x1EEE9AC00](v18);
    v24[2] = a4;
    v20 = type metadata accessor for FeedbackRequestContextWriter.ChildModifier(0, a4, a5, v19);
    v24[3] = v20;
    v24[4] = swift_getWitnessTable(protocol conformance descriptor for FeedbackRequestContextWriter<A>.ChildModifier, v20);
    v21 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v24, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    (*(*(v20 - 8) + 8))(&v26, v20);
    return v25;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for SensoryFeedback(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
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

uint64_t AccessibilityFocusState.Box.update(property:phase:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 1);
  v37 = v12 == 0;
  v36 = v12;
  if (v12)
  {
    v13 = *(v8 + 24);
  }

  else
  {
    if (a1[2])
    {
      if (one-time initialization token for focusSupportingTechnologies != -1)
      {
        v34 = v8;
        swift_once();
        v8 = v34;
      }

      v14 = static AccessibilityTechnologies.focusSupportingTechnologies;
    }

    else
    {
      v15 = *a1;
      if (one-time initialization token for focusSupportingTechnologies != -1)
      {
        v35 = v8;
        swift_once();
        v8 = v35;
      }

      v14 = static AccessibilityTechnologies.focusSupportingTechnologies & v15;
    }

    v13 = *(v8 + 24);
    v17 = type metadata accessor for AccessibilityFocusState(0, v6, v13, v9);
    if (*&a1[*(v17 + 40)] && (type metadata accessor for AccessibilityFocusStoreLocation(0, v6, v13, v16), (v18 = swift_dynamicCastClass()) != 0))
    {
      v12 = v18;
    }

    else
    {
      type metadata accessor for AccessibilityFocusStoreLocation(0, v6, v13, v16);
      type metadata accessor for GraphHost();
      v19 = MEMORY[0x18D00B7D0]();
      v20 = *(v17 + 44);
      LOWORD(v38) = v14;
      v12 = specialized AccessibilityFocusStoreLocation.__allocating_init(host:resetValue:technologies:)(v19, &a1[v20], &v38);
    }

    *(v4 + 1) = v12;
  }

  v21 = *v4;
  AccessibilityFocusState.Box.store.getter(v21, &v38);
  matched = v39;
  if (v39)
  {
    v23 = v40;
    v24 = v38;
  }

  else
  {
    matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v24 = 0;
    v23 = MEMORY[0x1E69E7CC8];
  }

  *(v12 + 2) = v24;
  *(v12 + 3) = matched;
  *(v12 + 4) = v23;

  v25 = AccessibilityFocusStoreLocation.update()(v11);
  v27 = type metadata accessor for AccessibilityFocusState(0, v6, v13, v26);
  (*(v7 + 24))(&a1[*(v27 + 36)], v11, v6);
  v28 = *(v27 + 40);

  *&a1[v28] = v12;
  if (*MEMORY[0x1E698D3F8] == v21 || (AGGraphGetValue(), (v29 & 1) != 0))
  {
    v30 = swift_weakInit();
    specialized closure #2 in AccessibilityFocusState.Box.update(property:phase:)(v30);
    swift_weakDestroy();
  }

  (*(v7 + 8))(v11, v6);
  v31 = v37;
  if (v25)
  {
    v32 = v36 == 0;
    v31 = v32 | AccessibilityFocusStoreLocation.wasRead.getter();
  }

  return v31 & 1;
}

char *specialized AccessibilityFocusStoreLocation.init(host:resetValue:technologies:)(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v5 = *v3;
  v6 = *a3;
  matched = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 2) = 0;
  *(v3 + 3) = matched;
  *(v3 + 4) = MEMORY[0x1E69E7CC8];
  swift_weakInit();
  v8 = *(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 48);
  v9 = *(v5 + class metadata base offset for AccessibilityFocusStoreLocation);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(&v3[v8], 1, 1, TupleTypeMetadata2);
  v11 = *(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  v13 = type metadata accessor for AccessibilityFocusStore.Entry(0, v9, *(v5 + class metadata base offset for AccessibilityFocusStoreLocation + 8), v12);
  (*(*(v13 - 8) + 56))(&v3[v11], 1, 1, v13);
  *&v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 64)] = 0;
  v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 72)] = 0;
  swift_weakAssign();
  (*(*(v9 - 8) + 16))(&v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], a2, v9);
  *&v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 40)] = v6;
  return v3;
}

uint64_t AccessibilityFocusState.Box.store.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == result)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = Value[1];
    v5 = Value[2];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t initializeWithCopy for AccessibilityFocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v8 = *(v5 + 80);
  v9 = (v8 + 3 + a1) & ~v8;
  v10 = (v8 + 3 + a2) & ~v8;
  v6(v9, v10, v4);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = v12 + v8 + 8;
  v15 = v13 + v8 + 8;

  v6(v14 & ~v8, v15 & ~v8, v4);
  return a1;
}

uint64_t AccessibilityFocusStoreLocation.getValue(forReading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v32 = a2;
  v30 = *(*(*v2 + class metadata base offset for AccessibilityFocusStoreLocation) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - v5;
  v7 = *(v6 + 8);
  v31 = v8;
  v10 = type metadata accessor for AccessibilityFocusStore.Entry(255, v8, v7, v9);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  type metadata accessor for GraphHost();
  if (static GraphHost.isUpdating.getter() & 1) != 0 && (v4)
  {
    v2[*(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 72)] = 1;
  }

  v17 = *(*v2 + class metadata base offset for AccessibilityFocusStoreLocation + 56);
  swift_beginAccess();
  (*(v12 + 16))(v16, &v2[v17], v11);
  v18 = *(*(v10 - 8) + 48);
  v19 = v18(v16, 1, v10);
  (*(v12 + 8))(v16, v11);
  if (v19 == 1 || *(v3 + 2) != *&v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 64)])
  {
    v21 = v29;
    AccessibilityFocusStoreLocation.resolve()(v29, v20);
    swift_beginAccess();
    (*(v12 + 40))(&v3[v17], v21, v11);
    swift_endAccess();
    *&v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 64)] = *(v3 + 2);
  }

  if (v18(&v3[v17], 1, v10))
  {
    return (*(v30 + 16))(v32, &v3[*(*v3 + class metadata base offset for AccessibilityFocusStoreLocation + 32)], v31);
  }

  v24 = v30;
  v23 = v31;
  v25 = &v3[v17];
  v26 = v28;
  (*(v30 + 16))(v28, v25, v31);
  return (*(v24 + 32))(v32, v26, v23);
}

uint64_t type metadata completion function for AccessibilityFocusStoreListModifier(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for FocusState.Binding(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeWithCopy for FocusState.Binding(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

uint64_t *initializeWithCopy for AccessibilityFocusStoreListModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + v10;
  v8((a1 + v13) & ~v10, (a2 + v13) & ~v10, v7);
  return a1;
}

uint64_t destroy for AccessibilityFocusStoreListModifier(void *a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v10 = v6 + 8;
  v11 = *(v6 + 8);
  v7 = *(v6 + 80);
  v11(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v5);
  v8 = (a1 + v7 + *(v10 + 56) + ((v7 + 16) & ~v7)) & ~v7;

  return (v11)(v8, v5);
}

uint64_t static StaticSourceWriter._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v31 = a1[4];
  v13 = a1[1];
  v28[0] = *a1;
  v28[1] = v13;
  v25 = v29;
  v26 = v12;
  v27 = a1[4];
  v23 = v28[0];
  v24 = v10;
  *&v33 = type metadata accessor for SourceFormula(0, a5, a7, a4);
  *(&v33 + 1) = &protocol witness table for SourceFormula<A>;
  *&v34 = 0;
  DWORD2(v34) = 0;
  BYTE12(v34) = 1;
  v15 = type metadata accessor for SourceInput(0, a4, a6, v14);
  outlined init with copy of _ViewListCountInputs(v28, v38);
  swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v15);
  _ViewListCountInputs.append<A, B>(_:to:)();
  v32[2] = v25;
  v32[3] = v26;
  v32[4] = v27;
  v32[0] = v23;
  v32[1] = v24;
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v18 = v23;
  v19 = v24;
  outlined init with copy of _ViewListCountInputs(v32, v38);
  v16 = a2(&v18);
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v33 = v18;
  v34 = v19;
  outlined destroy of _ViewListCountInputs(&v33);
  v38[2] = v25;
  v38[3] = v26;
  v38[4] = v27;
  v38[0] = v23;
  v38[1] = v24;
  outlined destroy of _ViewListCountInputs(v38);
  return v16;
}

void *initializeWithCopy for RemoteSheetContainerVCWriter(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedConfiguration and conformance ScrollViewAdjustedConfiguration()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedConfiguration and conformance ScrollViewAdjustedConfiguration;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedConfiguration and conformance ScrollViewAdjustedConfiguration)
  {
    result = swift_getWitnessTable("͐\abxf\a", &unk_1F001A420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedConfiguration and conformance ScrollViewAdjustedConfiguration);
  }

  return result;
}

uint64_t outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void AVKitCaptureButtonBridge.removeInteraction()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    v5 = v9;
    if (v9)
    {
      v6 = OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction;
      v7 = *(v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction);
      if (v7)
      {
        v8 = v7;
        [v9 removeInteraction_];

        v5 = *(v1 + v6);
        *(v1 + v6) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 MatchedTransitionSourceModifier.makeEffect(in:)@<Q0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  outlined init with copy of AnyHashable((v2 + 1), v27);
  v6 = v2[6];
  v7 = 0uLL;
  if (!v6)
  {
    v15 = 0uLL;
    v8 = 0;
    v26 = 0u;
    v16 = v2[10];
    if (!v16)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v2[9];
  v26 = *(v2 + 7);
  dispatch thunk of AnyColorBox.resolve(in:)();
  v10 = v9;
  v7 = 0uLL;
  v12.i64[0] = v11;
  v12.i64[1] = v10;
  v14.i32[1] = v13;
  v15 = vorrq_s8(vshll_n_s32(v14, 0x20uLL), v12);
  v16 = v2[10];
  if (v16)
  {
LABEL_3:
    v25 = v15;
    dispatch thunk of AnyColorBox.resolve(in:)();
    v19.i64[0] = v17;
    v19.i64[1] = v18;
    v21.i32[1] = v20;
    v15 = v25;
    v7 = vorrq_s8(vshll_n_s32(v21, 0x20uLL), v19);
  }

LABEL_4:
  v22 = v27[1];
  *(a2 + 8) = v27[0];
  v23 = *(v3 + 104);
  *a2 = v5;
  *(a2 + 24) = v22;
  *(a2 + 40) = v28;
  *(a2 + 48) = v15;
  *(a2 + 64) = v6 == 0;
  *(a2 + 72) = v26;
  *(a2 + 88) = v8;
  *(a2 + 96) = v7;
  *(a2 + 112) = v16 == 0;
  result = *(v3 + 11);
  *(a2 + 120) = result;
  *(a2 + 136) = v23;
  return result;
}

uint64_t initializeWithCopy for MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance MatchedTransitionSourceSourceMarkingEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v5[5] = a1;
  v5[6] = lazy protocol witness table accessor for type MatchedTransitionSourceSourceMarkingEffect and conformance MatchedTransitionSourceSourceMarkingEffect();
  v6 = swift_allocObject();
  v5[2] = v6;
  result = outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v2, v6 + 16);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = 3;
  return result;
}

uint64_t sub_18BE24D2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18BE24D64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  (**(v4 - 8))(a2 + 8, a1 + 8);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 48) = v5;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  return a2;
}

uint64_t MatchedTransitionSourceSourceMarkingEffect.updatePlatformGroup(_:)(uint64_t *a1)
{
  type metadata accessor for MatchedTransitionSourceMarkingView();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v1, v6);
    v4 = OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect;
    swift_beginAccess();
    outlined assign with copy of MatchedTransitionSourceSourceMarkingEffect(v6, v3 + v4);
    swift_endAccess();
    MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(*(v3 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom));
    swift_unknownObjectRelease();
    return outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v6);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView);
  v4 = [v3 layer];
  v5 = v1 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect;
  swift_beginAccess();
  v6 = 0;
  if ((*(v5 + 112) & 1) == 0)
  {
    v6 = Color.Resolved.cgColor.getter();
  }

  [v4 setBackgroundColor_];

  v7 = [v3 layer];
  v34 = *(v5 + 120);
  v33 = v34;
  v36 = v34;
  v35 = v34;
  [v7 setCornerRadii_];

  v8 = [v3 layer];
  v9 = MEMORY[0x1E69796E8];
  if (!*(v5 + 136))
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v10 = *v9;
  [v8 setCornerCurve_];

  v13 = 0;
  LODWORD(v11) = *(v5 + 48);
  LODWORD(v12) = *(v5 + 52);
  v14 = [v3 layer];
  v15 = Color.Resolved.cgColor.getter();
  [v14 setShadowColor_];

  v16 = [v3 layer];
  [v16 setShadowRadius_];

  v17 = [v3 layer];
  [v17 setShadowOffset_];

  v18 = [v3 layer];
  v19 = v18;
  v20 = 0.0;
  if ((a1 & 1) == 0 && (*(v5 + 64) & 1) == 0)
  {
    LODWORD(v20) = *(v5 + 60);
  }

  [v18 setShadowOpacity_];

  v21 = [v3 layer];
  v22 = v21;
  v23 = *(v5 + 128) > 0.0 && *(v5 + 120) > 0.0;
  [v21 setMasksToBounds_];

  v24 = *(v1 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView);
  v25 = [v24 layer];
  v26 = Color.Resolved.cgColor.getter();
  [v25 setShadowColor_];

  v27 = [v24 layer];
  [v27 setShadowRadius_];

  v28 = [v24 layer];
  [v28 setShadowOffset_];

  v29 = [v24 layer];
  v31 = v29;
  if ((*(v5 + 64) & 1) == 0)
  {
    v13 = *(v5 + 60);
  }

  LODWORD(v30) = v13;
  [v29 setShadowOpacity_];

  return [v24 setHidden_];
}

id protocol witness for PlatformGroupFactory.platformGroupContainer(_:) in conformance MatchedTransitionSourceSourceMarkingEffect(uint64_t a1)
{
  type metadata accessor for MatchedTransitionSourceMarkingView();
  v1 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView);

  return v1;
}

uint64_t assignWithCopy for MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t initializeWithCopy for MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

double destroy for MatchedTransitionSourceModifier(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 1);

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

__n128 protocol witness for ViewModifier.body(content:) in conformance MatchedTransitionSourceModifier@<Q0>(double (**a1)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  outlined init with copy of MatchedTransitionSourceModifier(v1, v7);
  v3 = swift_allocObject();
  v4 = v8[0];
  *(v3 + 80) = v7[4];
  *(v3 + 96) = v4;
  *(v3 + 105) = *(v8 + 9);
  v5 = v7[1];
  *(v3 + 16) = v7[0];
  *(v3 + 32) = v5;
  result = v7[3];
  *(v3 + 48) = v7[2];
  *(v3 + 64) = result;
  *a1 = partial apply for closure #1 in MatchedTransitionSourceModifier.body(content:);
  a1[1] = v3;
  return result;
}

uint64_t sub_18BE2570C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

char *MatchedTransitionSourceMarkingView.init(effect:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView;
  type metadata accessor for _UIGraphicsView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v2[v5] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView;
  *&v2[v7] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v2[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom] = 0;
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(a1, &v2[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect]);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  [v9 setAllowsGroupOpacity_];

  v10 = [v8 layer];
  [v10 setAllowsGroupBlending_];

  v11 = [v8 layer];
  [v11 setShadowPathIsBounds_];

  v12 = OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView;
  v13 = [*&v8[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView] layer];
  [v13 setAllowsGroupOpacity_];

  v14 = [*&v8[v12] layer];
  [v14 setAllowsGroupBlending_];

  v15 = [*&v8[v12] layer];
  [v15 setShadowPathIsBounds_];

  [v8 addSubview_];
  v16 = OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView;
  v17 = [*&v8[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView] layer];
  [v17 setAllowsGroupOpacity_];

  v18 = [*&v8[v16] layer];
  [v18 setAllowsGroupBlending_];

  v19 = [*&v8[v16] layer];
  [v19 setShadowPathIsBounds_];

  [v8 addSubview_];
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect(a1);
  return v8;
}

uint64_t PresentationState.presentingViewID.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v5);
  if (v12 != 1 && v12)
  {
    outlined destroy of PresentationState.Base(&v5);
    return 0;
  }

  else
  {

    v3[4] = v9;
    v4[0] = v10[0];
    *(v4 + 10) = *(v10 + 10);
    v3[0] = v5;
    v3[1] = v6;
    v3[2] = v7;
    v3[3] = v8;
    v1 = *(&v6 + 1);
    outlined destroy of SheetPreference(v3);
  }

  return v1;
}

void PresentationState.presentationDidChange(_:animated:hasNoModifier:)(uint64_t a1, char a2, char a3)
{
  outlined init with copy of PresentationState.Base(v3, v36);
  if (v46 > 8u)
  {
    if (v46 == 9)
    {
      v12 = v38;
      outlined init with copy of SheetPreference?(a1, &v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v16)
      {
        v34 = v20;
        v35[0] = v21[0];
        *(v35 + 10) = *(v21 + 10);
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v33 = v19;
        outlined init with copy of SheetPreference(&v30, &v16);
        *&v22 = v12;
        BYTE8(v22) = a2 & 1;
        v8 = 9;
        goto LABEL_15;
      }

      _ss11AnyHashableVSgWOhTm_3(&v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v29 = 12;
      PresentationState.base.willset(&v16);
    }

    else
    {
      if (v46 != 10)
      {
        goto LABEL_10;
      }

      outlined init with copy of SheetPreference?(a1, &v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v16)
      {
        v34 = v20;
        v35[0] = v21[0];
        *(v35 + 10) = *(v21 + 10);
        v30 = v16;
        v31 = v17;
        v32 = v18;
        v33 = v19;
        outlined init with copy of SheetPreference(&v30, &v16);
        BYTE10(v21[1]) = a2 & 1;
        v8 = 10;
LABEL_15:
        v29 = v8;
        PresentationState.base.willset(&v16);
LABEL_25:
        outlined destroy of SheetPreference(&v30);
        goto LABEL_26;
      }

      _ss11AnyHashableVSgWOhTm_3(&v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v29 = 12;
      PresentationState.base.willset(&v16);
    }

LABEL_26:
    outlined assign with take of PresentationState.Base(&v16, v3);
    v11 = v36;
    goto LABEL_27;
  }

  if (v46)
  {
    if (v46 == 8)
    {
      v7 = v38;
      v34 = v44;
      v35[0] = *v45;
      *(v35 + 10) = *&v45[10];
      v30 = v40;
      v31 = v41;
      v32 = v42;
      v33 = v43;
      outlined init with copy of SheetPreference?(a1, &v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      if (v16)
      {
        v14[4] = v20;
        v15[0] = v21[0];
        *(v15 + 10) = *(v21 + 10);
        v14[0] = v16;
        v14[1] = v17;
        v14[2] = v18;
        v14[3] = v19;
        outlined init with copy of SheetPreference(v14, &v16);
        *&v22 = v7;
        BYTE8(v22) = a2 & 1;
        outlined init with copy of SheetPreference(&v30, &v23);
        v29 = 8;
        PresentationState.base.willset(&v16);
        outlined destroy of SheetPreference(v14);
      }

      else
      {
        _ss11AnyHashableVSgWOhTm_3(&v16, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
        if (a3 & 1) != 0 && (type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>(), (static SemanticFeature.isEnabled.getter()))
        {
          outlined init with copy of SheetPreference(&v30, &v16);
          v29 = 4;
        }

        else
        {
          *&v16 = v7;
          outlined init with copy of SheetPreference(&v30, &v16 + 8);
          v29 = 2;
          v7 = v7;
        }

        PresentationState.base.willset(&v16);
      }

      goto LABEL_25;
    }

LABEL_10:
    outlined destroy of PresentationState.Base(v36);
    return;
  }

  v9 = v39;
  v34 = v36[4];
  v35[0] = v37[0];
  *(v35 + 10) = *(v37 + 10);
  v30 = v36[0];
  v31 = v36[1];
  v32 = v36[2];
  v33 = v36[3];
  v10 = v38;
  if ([v10 isBeingPresented])
  {

    v11 = &v30;
LABEL_27:
    outlined destroy of SheetPreference(v11);
    return;
  }

  v13 = [v10 isBeingDismissed];

  if (v13)
  {
    outlined destroy of SheetPreference(&v30);
  }

  else
  {
    outlined init with copy of SheetPreference(&v30, &v16);
    *&v22 = v10;
    DWORD2(v22) = v9;
    v29 = 1;
    PresentationState.base.willset(&v16);
    outlined destroy of SheetPreference(&v30);
    outlined assign with take of PresentationState.Base(&v16, v3);
  }
}

uint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, a2, a3, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable(MEMORY[0x1E69808F0], v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate()
{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetPredicate, &type metadata for CreatesToolbarSafeAreaInsetPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate);
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>)
  {
    v0 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier()
{
  result = lazy protocol witness table cache variable for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier;
  if (!lazy protocol witness table cache variable for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AllowsToolbarItemBridgingModifier, &type metadata for AllowsToolbarItemBridgingModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AllowsToolbarItemBridgingModifier and conformance AllowsToolbarItemBridgingModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CreatesToolbarSafeAreaInsetPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput();
  PropertyList.subscript.getter();
  return v2;
}

unint64_t lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput()
{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetInput, &type metadata for CreatesToolbarSafeAreaInsetInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetInput, &type metadata for CreatesToolbarSafeAreaInsetInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetInput, &type metadata for CreatesToolbarSafeAreaInsetInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetInput, &type metadata for CreatesToolbarSafeAreaInsetInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput;
  if (!lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CreatesToolbarSafeAreaInsetInput, &type metadata for CreatesToolbarSafeAreaInsetInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CreatesToolbarSafeAreaInsetInput and conformance CreatesToolbarSafeAreaInsetInput);
  }

  return result;
}

void type metadata accessor for [SwiftUIAnySortComparator](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(int a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(_OWORD *, __int128 *))
{
  v7 = a2[3];
  v19 = a2[2];
  v20 = v7;
  v21 = a2[4];
  v22 = *(a2 + 20);
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  LODWORD(v25[0]) = a1;
  outlined init with copy of _ViewInputs(a2, v27);
  a5(v25, &v17);
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v23, v27);
  a3(v9, &v11);
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26 = v16;
  v25[0] = v11;
  v25[1] = v12;
  outlined destroy of _ViewInputs(v25);
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v28 = v22;
  v27[0] = v17;
  v27[1] = v18;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t getEnumTagSinglePayload for SheetPreference(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
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

void destroy for PresentationState.Base(void *a1)
{
  v2 = *(a1 + 234);
  if (v2 >= 0xC)
  {
    v2 = *a1 + 12;
  }

  if (v2 <= 5)
  {
    if (v2 <= 2)
    {
      if (v2 >= 2)
      {
        if (v2 != 2)
        {
          return;
        }

        goto LABEL_21;
      }

      goto LABEL_36;
    }

    if (v2 != 4)
    {
LABEL_21:

      if (a1[2])
      {
      }

      if (a1[8])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 5);
      }

LABEL_33:

      return;
    }

    goto LABEL_29;
  }

  if (v2 > 8)
  {
    if (v2 == 9)
    {
LABEL_36:

      if (a1[1])
      {
      }

      if (a1[7])
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 4);
      }

      v3 = a1[14];
      goto LABEL_42;
    }

    if (v2 != 10 && v2 != 11)
    {
      return;
    }

LABEL_29:

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    goto LABEL_33;
  }

  if (v2 == 6)
  {
    goto LABEL_29;
  }

  if (v2 != 7)
  {

    if (a1[1])
    {
    }

    if (a1[7])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 4);
    }

    if (a1[17])
    {
    }

    if (a1[23])
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 20);
    }

    goto LABEL_33;
  }

  v3 = *a1;
LABEL_42:
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for SystemScrollViewContainer(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE269E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SystemScrollViewContainer(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>, v4);
}

uint64_t type metadata completion function for SystemScrollView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE26B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>(255);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v5 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired(255, v1, v2, v6);
  v8 = type metadata accessor for StaticIf();
  v9 = type metadata accessor for ModifiedContent();
  v33[0] = v2;
  v33[1] = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v10 = MEMORY[0x1E697E858];
  v32[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v33);
  v32[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v31[0] = swift_getWitnessTable(v10, v4, v32);
  v31[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  WitnessTable = swift_getWitnessTable(v10, v5, v31);
  v30[0] = swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.InertPaddingLayoutRequired, v7);
  v30[1] = MEMORY[0x1E697E5D8];
  v30[2] = MEMORY[0x1E697E100];
  v29[0] = WitnessTable;
  v29[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v30);
  v12 = swift_getWitnessTable(v10, v9, v29);
  swift_getOpaqueTypeMetadata2();
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier(255, v1, v2, v14);
  v15 = type metadata accessor for ModifiedContent();
  v27 = v9;
  v28 = v12;
  v26[0] = swift_getOpaqueTypeConformance2();
  v26[1] = &protocol witness table for ResetContentMarginModifier;
  v25[0] = swift_getWitnessTable(v10, v13, v26);
  v25[1] = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  v16 = swift_getWitnessTable(v10, v15, v25);
  type metadata accessor for SystemScrollView(255, v15, v16, v17);
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>(255);
  v18 = type metadata accessor for ModifiedContent();
  v19 = type metadata accessor for ModifiedContent();
  v24[0] = &protocol witness table for SystemScrollView<A>;
  v24[1] = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v23[0] = swift_getWitnessTable(v10, v18, v24);
  v23[1] = &protocol witness table for ResolvedScrollBehaviorModifier;
  v20 = swift_getWitnessTable(v10, v19, v23);
  v27 = v19;
  v28 = v20;
  swift_getOpaqueTypeMetadata2();
  v27 = v19;
  v28 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable(MEMORY[0x1E697F380], v21);
}

void type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResolvedScrollBehaviorModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t specialized static ResolvedScrollBehaviorModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_beginAccess();
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  PropertyList.Tracker.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.TrackedEnvironment and conformance ResolvedScrollBehaviorModifier.TrackedEnvironment();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  v31[0] = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = v2;
  v26 = v4;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ResolvedScrollBehavior?();
  lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(&v25);
  v25 = v5;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehaviorTransform and conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v8);
  static EdgeInsets.zero.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  static EdgeInsets.zero.getter();
  v25 = v7;
  v26 = v6;
  *&v27 = 0;
  DWORD2(v27) = 257;
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v31, 0, 27);
  v33 = 4;
  v34 = v9;
  v35 = v10;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v43 = 1;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v47 = v12;
  v48 = v14;
  v49 = v16;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
  lazy protocol witness table accessor for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>();
  v23 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>(&v25);
  v25 = v23;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.UpdateEnvironment and conformance ResolvedScrollBehaviorModifier.UpdateEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

unint64_t lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.TrackedEnvironment and conformance ResolvedScrollBehaviorModifier.TrackedEnvironment()
{
  result = lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.TrackedEnvironment and conformance ResolvedScrollBehaviorModifier.TrackedEnvironment;
  if (!lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.TrackedEnvironment and conformance ResolvedScrollBehaviorModifier.TrackedEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedScrollBehaviorModifier.TrackedEnvironment, &unk_1EFFE3970, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.TrackedEnvironment and conformance ResolvedScrollBehaviorModifier.TrackedEnvironment);
  }

  return result;
}

void type metadata accessor for ResolvedScrollBehavior?()
{
  if (!lazy cache variable for type metadata for ResolvedScrollBehavior?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ResolvedScrollBehavior?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior()
{
  result = lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior;
  if (!lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedScrollBehaviorModifier.MakeBehavior, &unk_1EFFE38E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior;
  if (!lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedScrollBehaviorModifier.MakeBehavior, &unk_1EFFE38E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior);
  }

  return result;
}

__n128 initializeWithCopy for ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = *(a2 + 40);
    *(a1 + 32) = v2;
    *(a1 + 40) = v3;
    (**(v2 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    result = *(a2 + 56);
    *(a1 + 56) = result;
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    result = *(a2 + 24);
    v7 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v7;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1((result + 8));
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehaviorTransform and conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform()
{
  result = lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehaviorTransform and conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform;
  if (!lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehaviorTransform and conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedScrollBehaviorModifier.MakeBehaviorTransform, &unk_1EFFE37E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.MakeBehaviorTransform and conformance ResolvedScrollBehaviorModifier.MakeBehaviorTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>()
{
  result = lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>;
  if (!lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for TransformScrollStorageEnvironment<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>;
  if (!lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
    result = swift_getWitnessTable(protocol conformance descriptor for TransformScrollStorageEnvironment<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>);
  }

  return result;
}

uint64_t outlined destroy of TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>(uint64_t a1)
{
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.UpdateEnvironment and conformance ResolvedScrollBehaviorModifier.UpdateEnvironment()
{
  result = lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.UpdateEnvironment and conformance ResolvedScrollBehaviorModifier.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.UpdateEnvironment and conformance ResolvedScrollBehaviorModifier.UpdateEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedScrollBehaviorModifier.UpdateEnvironment, &unk_1EFFE37C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedScrollBehaviorModifier.UpdateEnvironment and conformance ResolvedScrollBehaviorModifier.UpdateEnvironment);
  }

  return result;
}

id static SystemScrollView._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v167 = a5;
  v273 = *MEMORY[0x1E69E9840];
  v187 = *a1;
  v7 = a2[3];
  v261 = a2[2];
  v262 = v7;
  v263 = a2[4];
  v264 = *(a2 + 20);
  v8 = a2[1];
  v259 = *a2;
  v260 = v8;
  static EdgeInsets.zero.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  static EdgeInsets.zero.getter();
  v268[1] = 0;
  v268[0] = 0;
  v268[2] = v10;
  v268[3] = v12;
  v268[4] = v14;
  v268[5] = v16;
  *&v269 = v17;
  *(&v269 + 1) = v18;
  *&v270 = v19;
  *(&v270 + 1) = v20;
  *v272 = 0;
  v271 = 0;
  *&v272[8] = 0x8000000000000000;
  *&v272[16] = 0;
  *&v207[48] = v269;
  *&v207[64] = v270;
  *&v207[80] = 0u;
  *&v207[92] = *&v272[4];
  v191 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of SystemScrollLayoutState(v268);
  v265 = v259;
  v266 = v260;
  v267 = v261;
  *v207 = v259;
  *&v207[16] = v260;
  *&v207[32] = v261;
  v21 = _GraphInputs.scrollPhaseState.getter();
  v194 = *MEMORY[0x1E698D3F8];
  if (v21 == v194)
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v251[0]) = v207[0];
    *(v251 + 8) = *&v207[8];
    v21 = Attribute.init<A>(body:value:flags:update:)();
  }

  v190 = v21;
  v22 = v21;
  ScrollPrefetchState.init(deadline:)();
  v251[0] = *v207;
  LOBYTE(v251[1]) = v207[16];
  v173 = Attribute.init<A>(body:value:flags:update:)();
  static CGSize.invalidValue.getter();
  *v207 = v23;
  *&v207[8] = v24;
  type metadata accessor for CGSize(0);
  v185 = v25;
  v189 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = __PAIR64__(DWORD2(v265), v22);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type MainThreadRequiringScrollPhase and conformance MainThreadRequiringScrollPhase();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v156 = type metadata accessor for GraphHost();
  v183 = MEMORY[0x18D00B7D0]();
  v155 = type metadata accessor for ViewGraph();
  v172 = swift_dynamicCastClassUnconditional();
  MEMORY[0x1EEE9AC00](v172);
  v150 = a3;
  WitnessTable = a4;
  *v207 = v187;
  v170 = a4;
  v171 = a3;
  v164 = type metadata accessor for SystemScrollView(255, a3, a4, v26);
  v169 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v27 = v251[0];
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  outlined init with copy of _ViewInputs(&v259, v251);
  *v207 = specialized ScrollViewAdjustedConfiguration.init(configuration:inputs:)(v27, v207);
  *&v207[8] = v28;
  *&v207[16] = v29;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedConfiguration and conformance ScrollViewAdjustedConfiguration();
  v30 = Attribute.init<A>(body:value:flags:update:)();
  outlined init with copy of _GraphInputs(&v265, v207);
  if (one-time initialization token for scrollStorage != -1)
  {
    swift_once();
  }

  v31 = v266;
  *&v251[0] = static CachedEnvironment.ID.scrollStorage;
  swift_beginAccess();
  v177 = specialized implicit closure #1 in _GraphInputs.scrollStorage.getter;
  v180 = type metadata accessor for ScrollEnvironmentStorage(0);
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v265);
  v33 = *(v31 + 16);
  v165 = type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v34 = PropertyList.Tracker.init()();
  memset(&v207[24], 0, 73);
  v193 = v30;
  *v207 = __PAIR64__(v33, v30);
  *&v207[8] = v32;
  *&v207[16] = v34;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties();
  v35 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ScrollViewAdjustedBehaviorProperties(v207);
  *&v251[0] = static CachedEnvironment.ID.scrollStorage;
  swift_beginAccess();
  v36 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v37 = _GraphInputs.layoutDirection.getter();
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v38 = _GraphInputs.isEnabled.getter();
  *v207 = __PAIR64__(v36, v193);
  *&v207[8] = __PAIR64__(v37, v35);
  *&v207[16] = __PAIR64__(v194, v38);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties();
  v163 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v39 = _GraphInputs.scrollAnchors.getter();
  ScrollAnchorStorage.init()();
  v40 = *v207;
  v41 = v207[24];
  v42 = *&v207[8];
  *v207 = __PAIR64__(v39, v193);
  *&v207[8] = v40;
  *&v207[16] = v42;
  v207[32] = v41;
  v207[33] = 2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewDefaultAnchors and conformance ScrollViewDefaultAnchors();
  v186 = Attribute.init<A>(body:value:flags:update:)();

  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  v192 = _ViewInputs.layoutDirection.getter();
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v179 = _GraphInputs.pixelLength.getter();
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  v174 = _ViewInputs.animatedPosition()();
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  v188 = v31;
  swift_beginAccess();
  v43 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v154 = v43;
  *v207 = __PAIR64__(v193, v43);
  LODWORD(v31) = v193;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewContentFrameSize and conformance ScrollViewContentFrameSize();
  v44 = Attribute.init<A>(body:value:flags:update:)();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *v207 = __PAIR64__(v193, v44);
  v161 = OffsetAttribute2;
  *&v207[8] = __PAIR64__(v179, OffsetAttribute2);
  *&v207[16] = v194;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewContentFrame and conformance ScrollViewContentFrame();
  v46 = MEMORY[0x1E6981FC0];
  LODWORD(v40) = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v251[0]) = v40;
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v47 = lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame();
  (*(v47 + 48))(v251, v207, v46, v47);
  v178 = v251[0];
  v48 = v264;
  static ViewSize.invalidValue.getter();
  static CGSize.invalidValue.getter();
  v49 = *v207;
  v50 = *&v207[16];
  *v207 = __PAIR64__(v48, v193);
  *&v207[8] = v189;
  *&v207[16] = v49;
  *&v207[32] = v50;
  *&v207[48] = v51;
  *&v207[56] = v52;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewChildContainerSize and conformance ScrollViewChildContainerSize();
  v160 = Attribute.init<A>(body:value:flags:update:)();
  v184 = DWORD2(v263);
  *v207 = __PAIR64__(v186, v193);
  *&v207[8] = __PAIR64__(DWORD2(v263), v40);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAlignmentAdjustment and conformance ScrollViewAlignmentAdjustment();
  v196 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  outlined init with copy of _GraphInputs(&v265, v251);
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize, MEMORY[0x1E6982028]);
  static Animatable._makeAnimatable(value:inputs:)();
  v256[0] = *v207;
  v256[1] = *&v207[16];
  v256[2] = *&v207[32];
  outlined destroy of _GraphInputs(v256);
  *v207 = __PAIR64__(v186, v193);
  v182 = v40;
  *&v207[8] = __PAIR64__(v44, v40);
  *&v207[16] = v192;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewRTLAlignmentAdjustment and conformance ScrollViewRTLAlignmentAdjustment();
  LODWORD(v46) = Attribute.init<A>(body:value:flags:update:)();
  *v207 = __PAIR64__(v193, v174);
  *&v207[8] = v46;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGPoint(0);
  v54 = v53;
  lazy protocol witness table accessor for type ScrollViewAdjustedPosition and conformance ScrollViewAdjustedPosition();
  v166 = v54;
  LODWORD(v185) = Attribute.init<A>(body:value:flags:update:)();
  *v207 = __PAIR64__(v46, v44);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedSize and conformance ScrollViewAdjustedSize();
  v55 = Attribute.init<A>(body:value:flags:update:)();
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  _ViewInputs.position.getter();
  v176 = HIDWORD(v262);
  ResolvedSafeAreaInsets.init(regions:environment:size:position:transform:safeAreaInsets:)();
  *v207 = *&v251[0];
  *&v207[8] = *(v251 + 8);
  *&v207[24] = DWORD2(v251[1]);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets();
  v56 = MEMORY[0x1E697DA60];
  *v207 = Attribute.init<A>(body:value:flags:update:)();
  *&v207[4] = __PAIR64__(v196, v193);
  v168 = v196;
  v162 = v46;
  *&v207[12] = v46;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedSafeArea and conformance ScrollViewAdjustedSafeArea();
  v157 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v251[0]) = v157;
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  v57 = lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets();
  v158 = *(v57 + 48);
  v159 = v57;
  v158(v251, v207, v56);
  v184 = v251[0];
  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  LOBYTE(v249[0]) = 0;
  outlined init with copy of _GraphInputs(&v265, v251);
  LODWORD(v56) = _GraphInputs.scrollPositionBinding(kind:)();
  v257[0] = *v207;
  v257[1] = *&v207[16];
  v257[2] = *&v207[32];
  outlined destroy of _GraphInputs(v257);
  v58 = *(&v266 + 1);
  static CGSize.invalidValue.getter();
  v60 = v59;
  v62 = v61;
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  v181 = v55;
  *v207 = __PAIR64__(v31, v55);
  *&v207[8] = __PAIR64__(v191, v186);
  *&v207[16] = __PAIR64__(v178, v190);
  *&v207[28] = v58;
  *&v207[24] = v179;
  *&v207[36] = __PAIR64__(v56, v192);
  memset(&v207[48], 0, 32);
  *&v207[80] = v60;
  *&v207[88] = v62;
  memset(&v207[96], 0, 17);
  *&v207[113] = v200;
  v207[115] = v201;
  *&v207[116] = 0;
  *&v207[120] = v63;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewAdjustedState and conformance ScrollViewAdjustedState();
  v64 = Attribute.init<A>(body:value:flags:update:)();

  *v207 = v265;
  *&v207[16] = v266;
  *&v207[32] = v267;
  LOBYTE(v249[0]) = 0;
  outlined init with copy of _GraphInputs(&v265, v251);
  v186 = _GraphInputs.hasValueScrollPosition(kind:)();
  v258[0] = *v207;
  v258[1] = *&v207[16];
  v258[2] = *&v207[32];
  outlined destroy of _GraphInputs(v258);
  LODWORD(v46) = AGGraphCreateOffsetAttribute2();
  *&v249[0] = static CachedEnvironment.ID.scrollStorage;
  swift_beginAccess();
  outlined init with copy of _GraphInputs(&v265, v207);
  LODWORD(v56) = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v265);
  *v207 = __PAIR64__(v56, v46);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior();
  v65 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = __PAIR64__(v64, v191);
  LODWORD(v180) = v64;
  *&v207[8] = __PAIR64__(v194, v65);
  *&v207[16] = v194;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], 1);
  lazy protocol witness table accessor for type ScrollableProvider and conformance ScrollableProvider();
  v66 = Attribute.init<A>(body:value:flags:update:)();
  v252 = v261;
  v253 = v262;
  v254 = v263;
  v255 = v264;
  v251[0] = v259;
  v251[1] = v260;
  LODWORD(v177) = DWORD1(v267);
  v175 = v66;
  if ((BYTE4(v267) & 0x20) != 0)
  {
    outlined init with copy of _ViewInputs(&v259, v207);
    outlined init with copy of _GraphInputs(&v265, v207);
    if (one-time initialization token for isScrollViewTransformClippingEnabled != -1)
    {
      swift_once();
    }

    *&v249[0] = static CachedEnvironment.ID.isScrollViewTransformClippingEnabled;
    swift_beginAccess();
    v153 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    outlined destroy of _GraphInputs(&v265);
    CoordinateSpace.ID.init()();
    v152 = *v207;
    *v207 = __PAIR64__(v193, v157);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewChildSafeArea and conformance ScrollViewChildSafeArea();
    v69 = MEMORY[0x1E697DA60];
    v70 = Attribute.init<A>(body:value:flags:update:)();
    v71 = AGGraphCreateOffsetAttribute2();
    *v207 = __PAIR64__(v192, v70);
    *&v207[8] = v71;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewChildPosition and conformance ScrollViewChildPosition();
    v72 = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v249[0]) = v70;
    *v207 = v265;
    *&v207[16] = v266;
    *&v207[32] = v267;
    (v158)(v249, v207, v69, v159);
    v73 = v249[0];
    DWORD1(v252) = v177 | 2;
    AGGraphCreateOffsetAttribute2();
    _ViewInputs.size.setter();
    _ViewInputs.position.setter();
    ViewGraph.$zeroPoint.getter();
    _ViewInputs.containerPosition.setter();
    v255 = v160;
    *v207 = __PAIR64__(v182, v193);
    *&v207[8] = __PAIR64__(v181, v185);
    *&v207[16] = __PAIR64__(v180, v176);
    *&v207[24] = __PAIR64__(v73, v184);
    *&v207[32] = __PAIR64__(v168, v72);
    *&v207[40] = __PAIR64__(v192, v153);
    *&v207[48] = v152;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewChildTransform and conformance ScrollViewChildTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
    *v207 = __PAIR64__(v192, v70);
    *&v207[8] = v152;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewChildSafeAreaInsets and conformance ScrollViewChildSafeAreaInsets();
    HIDWORD(v254) = Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.updateScrollStateRequest.setter();
    v68 = v173;
    *v207 = v173;
    PropertyList.subscript.setter();
    v67 = v175;
  }

  else
  {
    v67 = v66;
    outlined init with copy of _ViewInputs(&v259, v207);
    v68 = v173;
  }

  v197 = v262;
  v198 = DWORD2(v262);
  *v207 = v262;
  *&v207[8] = DWORD2(v262);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    PreferenceKeys.remove(_:)();
    PreferenceKeys.add(_:)();
  }

  if (v186)
  {
    PreferenceKeys.add(_:)();
    PreferenceKeys.add(_:)();
  }

  PreferenceKeys.remove(_:)();
  _GraphInputs.convertScrollStateInputsToContent()();
  v207[0] = 0;
  _GraphInputs.resetScrollPosition(kind:)();
  _ViewInputs.scrollable.setter();
  *v207 = v194;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for WeakBox<UIView>(0);
  lazy protocol witness table accessor for type ScrollViewHostProvider and conformance ScrollViewHostProvider();
  v173 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = v173;
  lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
  PropertyList.subscript.setter();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.add(_:)();
  v74 = PreferenceKeys.add(_:)();
  MEMORY[0x1EEE9AC00](v74);
  WitnessTable = v170;
  LODWORD(v246[0]) = v187;
  _GraphValue.subscript.getter();
  v247[2] = v252;
  v247[3] = v253;
  v247[4] = v254;
  v248 = v255;
  v247[0] = v251[0];
  v247[1] = v251[1];
  *&v207[32] = v252;
  *&v207[48] = v253;
  *&v207[64] = v254;
  *&v207[80] = v255;
  *v207 = v251[0];
  *&v207[16] = v251[1];
  outlined init with copy of _ViewInputs(v247, v249);
  static View.makeDebuggableView(view:inputs:)();
  v249[2] = *&v207[32];
  v249[3] = *&v207[48];
  v249[4] = *&v207[64];
  v250 = *&v207[80];
  v249[0] = *v207;
  v249[1] = *&v207[16];
  v75 = outlined destroy of _ViewInputs(v249);
  MEMORY[0x1EEE9AC00](v75);
  v150 = &v195;
  MEMORY[0x1EEE9AC00](v76);
  AGGraphMutateAttribute();
  *v207 = v197;
  *&v207[8] = v198;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *v207 = v67;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [Scrollable](0);
    lazy protocol witness table accessor for type ScrollablePreferenceProvider and conformance ScrollablePreferenceProvider();
    Attribute.init<A>(body:value:flags:update:)();
    v207[0] = 0;
    PreferencesOutputs.subscript.setter();
  }

  v77 = _ViewOutputs.layoutComputer.getter();
  v78 = v193;
  if ((v77 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v77);
    LODWORD(v150) = v79;
    MEMORY[0x1EEE9AC00](v79);
    AGGraphMutateAttribute();
  }

  v80 = v189;
  if ((v177 & 2) != 0)
  {
    v81 = _ViewOutputs.layoutComputer.getter();
    v82 = v194;
    if ((v81 & 0x100000000) == 0)
    {
      v82 = v81;
    }

    *v207 = __PAIR64__(v161, v193);
    *&v207[8] = v82;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    v207[0] = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  *v207 = v197;
  *&v207[8] = v198;
  v83 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *v207 = v197;
  *&v207[8] = v198;
  v84 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v83 & 1) == 0 && (v84 & 1) == 0)
  {
    goto LABEL_44;
  }

  v187 = v84;
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  v199[0] = v195;
  outlined init with copy of _ViewInputs(&v259, v246);

  v85 = v164;
  MakeHostingScrollView.init(inputs:outputs:layoutState:phaseState:prefetchState:containerSize:hasScrollPosition:viewGraph:)(v207, v199, v191, v190, v68, v80, v186 & 1, v246);
  MEMORY[0x1EEE9AC00](v86);
  LODWORD(v177) = v83;
  HostingScrollView = type metadata accessor for MakeHostingScrollView(0, v85, &protocol witness table for SystemScrollView<A>, v87);
  v150 = HostingScrollView;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MakeHostingScrollView<A>, HostingScrollView);
  _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for Attribute<HostingScrollView>, type metadata accessor for HostingScrollView, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v246, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_27, v149, HostingScrollView, MEMORY[0x1E69E73E0], v89, MEMORY[0x1E69E7410], v90);
  (*(*(HostingScrollView - 8) + 8))(v246, HostingScrollView);
  v191 = *v207;
  *&v207[8] = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for HostingScrollView.PlatformContainer();
  lazy protocol witness table accessor for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer();
  v189 = Attribute.init<A>(body:value:flags:update:)();
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  v91 = _ViewInputs.containerPosition.getter();
  *v207 = __PAIR64__(v185, v78);
  v92 = v184;
  *&v207[8] = __PAIR64__(v181, v91);
  *&v207[16] = __PAIR64__(v168, v184);
  v93 = v162;
  *&v207[24] = __PAIR64__(v192, v162);
  *&v207[32] = v179;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame();
  v179 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(HostingScrollView) = AGGraphCreateOffsetAttribute2();
  v94 = *(v188 + 16);
  v95 = MEMORY[0x1E69E7CC0];
  v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v97 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v95);
  LOBYTE(v246[0]) = 0;
  static EdgeInsets.zero.getter();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = static EdgeInsets.zero.getter();
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v115 = MEMORY[0x18D007050](v202, v106);
  v116 = MEMORY[0x18D007050](v203, v115);
  v117 = MEMORY[0x18D007050](v204, v116);
  MEMORY[0x18D007050](v205, v117);
  *v207 = v194;
  *&v207[4] = __PAIR64__(v191, v194);
  LODWORD(v85) = v191;
  *&v207[12] = v193;
  *&v207[16] = __PAIR64__(v178, v163);
  *&v207[24] = __PAIR64__(v92, HostingScrollView);
  *&v207[32] = __PAIR64__(v180, v93);
  *&v207[40] = v94 | 0xFFFFFFFF00000000;
  swift_allocObject();
  *&v207[48] = PropertyList.Tracker.init()();
  *&v207[56] = 257;
  v208 = 0;
  memset(&v207[64], 0, 75);
  v209 = 4;
  v210 = v96;
  v211 = v97;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  memset(v217, 0, 11);
  v217[11] = v246[0];
  v218 = 0;
  v219 = 1;
  v222 = 0;
  v221 = 0u;
  v220 = 0u;
  v223 = v99;
  v224 = v101;
  v225 = v103;
  v226 = v105;
  v227 = v108;
  v228 = v110;
  v229 = v112;
  v230 = v114;
  *(v245 + 9) = *(v206 + 9);
  v233 = v202[2];
  v234 = v202[3];
  v231 = v202[0];
  v232 = v202[1];
  v237 = v203[2];
  v238 = v203[3];
  v235 = v203[0];
  v236 = v203[1];
  v241 = v204[2];
  v242 = v204[3];
  v239 = v204[0];
  v240 = v204[1];
  v244 = v205[1];
  v245[0] = v206[0];
  v243 = v205[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for HostingScrollView();
  lazy protocol witness table accessor for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView();
  LODWORD(v96) = Attribute.init<A>(body:value:flags:update:)();
  v118 = outlined destroy of UpdatedHostingScrollView(v207);
  MEMORY[0x1EEE9AC00](v118);
  LODWORD(v150) = v189;
  MEMORY[0x1EEE9AC00](v119);
  v189 = v96;
  v120 = v85;
  v121 = AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](v121);
  LODWORD(v150) = v85;
  MEMORY[0x1EEE9AC00](v122);
  AGGraphMutateAttribute();
  if (v177)
  {
    static Semantics.v6.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v123 = v193;
      *v207 = __PAIR64__(v185, v193);
      v124 = v184;
      *&v207[8] = v184;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition();
      v125 = Attribute.init<A>(body:value:flags:update:)();
      *v207 = __PAIR64__(v154, v123);
      *&v207[8] = v124;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type ScrollViewResponderSize and conformance ScrollViewResponderSize();
      v126 = Attribute.init<A>(body:value:flags:update:)();
    }

    else
    {
      v125 = v174;
      v126 = v154;
    }

    *v207 = v195;

    v127 = _ViewOutputs.viewResponders()();

    *&v207[32] = v261;
    *&v207[48] = v262;
    *&v207[64] = v263;
    *&v207[80] = v264;
    *v207 = v259;
    *&v207[16] = v260;
    type metadata accessor for DefaultLayoutViewResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v259, v246);
    v128 = DefaultLayoutViewResponder.init(inputs:)();
    MEMORY[0x18D00B7D0]();
    swift_dynamicCastClassUnconditional();
    *v207 = __PAIR64__(v125, v189);
    *&v207[8] = __PAIR64__(v176, v126);
    *&v207[16] = v127;
    *&v207[24] = 0;
    swift_weakInit();

    *&v207[40] = v128;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_8(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ScrollViewResponder and conformance ScrollViewResponder();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollViewResponder(v207);
    v207[0] = 0;
    PreferencesOutputs.subscript.setter();
    v120 = v191;
  }

  if (v187)
  {
    _DisplayList_Identity.init()();
    v129 = *v207;
    *&v207[32] = v261;
    *&v207[48] = v262;
    *&v207[64] = v263;
    *&v207[80] = v264;
    *v207 = v259;
    *&v207[16] = v260;
    LODWORD(v246[0]) = v129;
    _ViewInputs.pushIdentity(_:)();
    *v207 = v195;
    *&v207[8] = DWORD2(v195);
    v130 = PreferencesOutputs.subscript.getter();
    v131 = v194;
    if ((v130 & 0x100000000) == 0)
    {
      v131 = v130;
    }

    *v207 = __PAIR64__(v189, v129);
    *&v207[8] = __PAIR64__(v131, v179);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScrollViewDisplayList and conformance ScrollViewDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    v207[0] = 0;
    PreferencesOutputs.subscript.setter();
  }

  if (v186)
  {
    *&v207[32] = v261;
    *&v207[48] = v262;
    *&v207[64] = v263;
    *&v207[80] = v264;
    *v207 = v259;
    *&v207[16] = v260;
    v199[0] = v195;
    outlined init with copy of _ViewInputs(&v259, v246);

    ScrollStateEnqueueRequests.init(phaseState:scrollable:inputs:outputs:)();
    *v207 = v246[0];
    *&v207[16] = v246[1];
    *&v207[32] = v246[2];
    *&v207[48] = v246[3];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of ScrollStateEnqueueRequests(v246, v199);
    lazy protocol witness table accessor for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ScrollStateEnqueueRequests(v246);
    AGGraphSetFlags();
    outlined destroy of ScrollStateEnqueueRequests(v246);
  }

  *v207 = v197;
  *&v207[8] = v198;
  v132 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v132)
  {
    *v207 = v195;
    *&v207[8] = DWORD2(v195);
    v132 = PreferencesOutputs.subscript.getter();
    if ((v132 & 0x100000000) == 0)
    {
      v207[0] = 0;
      v132 = PreferencesOutputs.subscript.setter();
    }
  }

  *v207 = v197;
  *&v207[8] = v198;
  MEMORY[0x1EEE9AC00](v132);
  v149[0] = v120;
  v149[1] = v193;
  v133 = v181;
  v149[2] = v185;
  v149[3] = v181;
  LODWORD(v150) = v184;
  BYTE4(v150) = 0;
  outlined init with copy of PreferencesInputs(&v197, v246);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  *v207 = __PAIR64__(v182, v180);
  *&v207[8] = __PAIR64__(v192, v133);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider();
  v134 = Attribute.init<A>(body:value:flags:update:)();
  *&v207[32] = v261;
  *&v207[48] = v262;
  *&v207[64] = v263;
  *&v207[80] = v264;
  *v207 = v259;
  *&v207[16] = v260;
  _ViewInputs.position.getter();
  ScrollGeometryTransformProvider.init(position:transform:)();
  *v207 = *&v246[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider();
  v135 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v134);
  *&v207[8] = v135;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider();
  v136 = Attribute.init<A>(body:value:flags:update:)();
  *v207 = v197;
  *&v207[8] = v198;
  MEMORY[0x1EEE9AC00](v136);
  LODWORD(v150) = v137;
  outlined init with copy of PreferencesInputs(&v197, v246);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  *v207 = v197;
  *&v207[8] = v198;
  v138 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v138 & 1) == 0)
  {
LABEL_43:
    MEMORY[0x1EEE9AC00](v138);
    LODWORD(v150) = v120;
    MEMORY[0x1EEE9AC00](v144);
    AGGraphMutateAttribute();
LABEL_44:
    v145 = static ScrollTargetRole.ContentKey.defaultValue.getter();
    *v207 = v197;
    *&v207[8] = v198;
    MEMORY[0x1EEE9AC00](v145);
    v150 = &v259;
    WitnessTable = v146;
    outlined init with copy of PreferencesInputs(&v197, v246);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    *v207 = v197;
    *&v207[8] = v198;
    MEMORY[0x1EEE9AC00](v147);
    v150 = &v259;
    outlined init with copy of PreferencesInputs(&v197, v246);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    *&v246[0] = v197;
    DWORD2(v246[0]) = v198;
    MEMORY[0x1EEE9AC00](v148);
    v150 = &v259;
    outlined init with copy of PreferencesInputs(&v197, v207);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

    *&v207[32] = v252;
    *&v207[48] = v253;
    *&v207[64] = v254;
    *&v207[80] = v255;
    *v207 = v251[0];
    *&v207[16] = v251[1];
    result = outlined destroy of _ViewInputs(v207);
    *v167 = v195;
    return result;
  }

  v139 = v195;
  v140 = DWORD2(v195);
  *v207 = v197;
  *&v207[8] = v198;
  v141 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v141 & 1) == 0)
  {
LABEL_42:
    v207[0] = (v141 & 1) == 0;
    v138 = PreferencesOutputs.subscript.setter();
    goto LABEL_43;
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v143 = result;
    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c8PlatformdE0V_Tt5B5(v194, &v259, v139, v140, 1, result, v189, &type metadata for MakeAccessibilityScrollView, &protocol witness table for MakeAccessibilityScrollView, 0);

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t initializeWithCopy for SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 96);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v7);
  *(a1 + 96) = v7;
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

unint64_t outlined copy of SystemScrollLayoutState.ContentOffsetMode(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

double outlined consume of SystemScrollLayoutState.ContentOffsetMode(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MainThreadRequiringScrollPhase and conformance MainThreadRequiringScrollPhase()
{
  result = lazy protocol witness table cache variable for type MainThreadRequiringScrollPhase and conformance MainThreadRequiringScrollPhase;
  if (!lazy protocol witness table cache variable for type MainThreadRequiringScrollPhase and conformance MainThreadRequiringScrollPhase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MainThreadRequiringScrollPhase, &unk_1F001A4B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MainThreadRequiringScrollPhase and conformance MainThreadRequiringScrollPhase);
  }

  return result;
}

uint64_t closure #1 in static SystemScrollView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for SystemScrollView(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v8, &type metadata for ScrollViewConfiguration, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

unint64_t specialized ScrollViewAdjustedConfiguration.init(configuration:inputs:)(unsigned int a1, __int128 *a2)
{
  v3 = a2[3];
  v8[2] = a2[2];
  v8[3] = v3;
  v8[4] = a2[4];
  v9 = *(a2 + 20);
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  outlined init with copy of _GraphInputs(v8, v7);
  if (one-time initialization token for interactionActivityTag != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v5 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v8);
  outlined init with copy of _GraphInputs(v8, v7);
  if (one-time initialization token for contentMarginProxy != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v8);
  outlined init with copy of _GraphInputs(v8, v7);
  if (one-time initialization token for onScrollToTopGesture != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ScrollToTopGestureAction?, &type metadata for ScrollToTopGestureAction, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v8);
  outlined init with copy of _GraphInputs(v8, v7);
  if (one-time initialization token for refresh != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for RefreshAction?, &type metadata for RefreshAction, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v8);
  outlined init with copy of _GraphInputs(v8, v7);
  outlined destroy of _ViewInputs(v8);
  if (one-time initialization token for safeAreaTransitionState != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for SafeAreaTransitionState?(0);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v8);
  return a1 | (v5 << 32);
}

void type metadata accessor for MutableBox<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for SafeAreaTransitionState?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SafeAreaTransitionState?)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for SafeAreaTransitionState, &protocol descriptor for SafeAreaTransitionState, 0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SafeAreaTransitionState?);
    }
  }
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ScrollEnvironmentStorage(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScrollEnvironmentStorage;
  if (!type metadata singleton initialization cache for ScrollEnvironmentStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ScrollEnvironmentStorage(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedBehaviorProperties, &unk_1F001A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedBehaviorProperties, &unk_1F001A390, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewAdjustedBehaviorProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);

  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24, v4);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void destroy for ScrollViewAdjustedBehaviorProperties(void *a1)
{

  if (a1[6])
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 3);
  }
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedProperties, &unk_1F001A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedProperties, &unk_1F001A300, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewDefaultAnchors and conformance ScrollViewDefaultAnchors()
{
  result = lazy protocol witness table cache variable for type ScrollViewDefaultAnchors and conformance ScrollViewDefaultAnchors;
  if (!lazy protocol witness table cache variable for type ScrollViewDefaultAnchors and conformance ScrollViewDefaultAnchors)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewDefaultAnchors, &unk_1F001A278, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewDefaultAnchors and conformance ScrollViewDefaultAnchors);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewDefaultAnchors(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollViewContentFrameSize and conformance ScrollViewContentFrameSize()
{
  result = lazy protocol witness table cache variable for type ScrollViewContentFrameSize and conformance ScrollViewContentFrameSize;
  if (!lazy protocol witness table cache variable for type ScrollViewContentFrameSize and conformance ScrollViewContentFrameSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewContentFrameSize, &unk_1F001A1F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewContentFrameSize and conformance ScrollViewContentFrameSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewContentFrame and conformance ScrollViewContentFrame()
{
  result = lazy protocol witness table cache variable for type ScrollViewContentFrame and conformance ScrollViewContentFrame;
  if (!lazy protocol witness table cache variable for type ScrollViewContentFrame and conformance ScrollViewContentFrame)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewContentFrame, &unk_1F001A168, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewContentFrame and conformance ScrollViewContentFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame()
{
  result = lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame;
  if (!lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981FB8], MEMORY[0x1E6981FC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewFrame and conformance ViewFrame);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAlignmentAdjustment and conformance ScrollViewAlignmentAdjustment()
{
  result = lazy protocol witness table cache variable for type ScrollViewAlignmentAdjustment and conformance ScrollViewAlignmentAdjustment;
  if (!lazy protocol witness table cache variable for type ScrollViewAlignmentAdjustment and conformance ScrollViewAlignmentAdjustment)
  {
    result = swift_getWitnessTable("Œ\abtg\a", &unk_1F001A0E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAlignmentAdjustment and conformance ScrollViewAlignmentAdjustment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildContainerSize and conformance ScrollViewChildContainerSize()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildContainerSize and conformance ScrollViewChildContainerSize;
  if (!lazy protocol witness table cache variable for type ScrollViewChildContainerSize and conformance ScrollViewChildContainerSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildContainerSize, &unk_1EFF892F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildContainerSize and conformance ScrollViewChildContainerSize);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGSize and conformance CGSize(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ScrollViewRTLAlignmentAdjustment and conformance ScrollViewRTLAlignmentAdjustment()
{
  result = lazy protocol witness table cache variable for type ScrollViewRTLAlignmentAdjustment and conformance ScrollViewRTLAlignmentAdjustment;
  if (!lazy protocol witness table cache variable for type ScrollViewRTLAlignmentAdjustment and conformance ScrollViewRTLAlignmentAdjustment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewRTLAlignmentAdjustment, &unk_1F001A050, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewRTLAlignmentAdjustment and conformance ScrollViewRTLAlignmentAdjustment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedPosition and conformance ScrollViewAdjustedPosition()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedPosition and conformance ScrollViewAdjustedPosition;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedPosition and conformance ScrollViewAdjustedPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedPosition, &unk_1F0019FC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedPosition and conformance ScrollViewAdjustedPosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedSize and conformance ScrollViewAdjustedSize()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedSize and conformance ScrollViewAdjustedSize;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedSize and conformance ScrollViewAdjustedSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedSize, &unk_1F0019F48, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedSize and conformance ScrollViewAdjustedSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedSafeArea and conformance ScrollViewAdjustedSafeArea()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedSafeArea and conformance ScrollViewAdjustedSafeArea;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedSafeArea and conformance ScrollViewAdjustedSafeArea)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedSafeArea, &unk_1F0019EC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedSafeArea and conformance ScrollViewAdjustedSafeArea);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets()
{
  result = lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets;
  if (!lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DA58], MEMORY[0x1E697DA60], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EdgeInsets and conformance EdgeInsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedState and conformance ScrollViewAdjustedState()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedState and conformance ScrollViewAdjustedState;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedState and conformance ScrollViewAdjustedState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedState, &unk_1F0019E00, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedState and conformance ScrollViewAdjustedState);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewAdjustedState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  v5 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior()
{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedBehavior, &unk_1F0019D80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior;
  if (!lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewAdjustedBehavior, &unk_1F0019D80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewAdjustedBehavior and conformance ScrollViewAdjustedBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollableProvider and conformance ScrollableProvider()
{
  result = lazy protocol witness table cache variable for type ScrollableProvider and conformance ScrollableProvider;
  if (!lazy protocol witness table cache variable for type ScrollableProvider and conformance ScrollableProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollableProvider, &unk_1F0019CF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollableProvider and conformance ScrollableProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildSafeArea and conformance ScrollViewChildSafeArea()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildSafeArea and conformance ScrollViewChildSafeArea;
  if (!lazy protocol witness table cache variable for type ScrollViewChildSafeArea and conformance ScrollViewChildSafeArea)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildSafeArea, &unk_1F00197C8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildSafeArea and conformance ScrollViewChildSafeArea);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildPosition and conformance ScrollViewChildPosition()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildPosition and conformance ScrollViewChildPosition;
  if (!lazy protocol witness table cache variable for type ScrollViewChildPosition and conformance ScrollViewChildPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildPosition, &unk_1F0019740, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildPosition and conformance ScrollViewChildPosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildTransform and conformance ScrollViewChildTransform()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform;
  if (!lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildTransform, &unk_1EFF89548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform;
  if (!lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildTransform, &unk_1EFF89548, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildTransform and conformance ScrollViewChildTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildSafeAreaInsets and conformance ScrollViewChildSafeAreaInsets()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildSafeAreaInsets and conformance ScrollViewChildSafeAreaInsets;
  if (!lazy protocol witness table cache variable for type ScrollViewChildSafeAreaInsets and conformance ScrollViewChildSafeAreaInsets)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildSafeAreaInsets, &unk_1EFF89268, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildSafeAreaInsets and conformance ScrollViewChildSafeAreaInsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewHostProvider and conformance ScrollViewHostProvider()
{
  result = lazy protocol witness table cache variable for type ScrollViewHostProvider and conformance ScrollViewHostProvider;
  if (!lazy protocol witness table cache variable for type ScrollViewHostProvider and conformance ScrollViewHostProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewHostProvider, &unk_1F0019C70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewHostProvider and conformance ScrollViewHostProvider);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SystemScrollViewContainer<A>.EnvironmentAxesModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.EnvironmentAxesModifier, a3);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t type metadata completion function for ScrollView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #5 in static SystemScrollView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SystemScrollView(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, partial apply for closure #1 in static PointerOffset.of(_:), v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetContentMarginModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t destroy for TransformScrollStorageEnvironment(void *a1)
{

  if (a1[6])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 3);
  }
}

uint64_t initializeWithCopy for TransformScrollStorageEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);

  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24, v4);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  *(a1 + 128) = *(a2 + 128);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);
  v8 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v8;
  v9 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v9;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets()
{
  result = lazy protocol witness table cache variable for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets;
  if (!lazy protocol witness table cache variable for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697FEE0], MEMORY[0x1E697FEE8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetContentMarginModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ResetContentMarginModifier and conformance ResetContentMarginModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ResetContentMarginModifier and conformance ResetContentMarginModifier()
{
  result = lazy protocol witness table cache variable for type ResetContentMarginModifier and conformance ResetContentMarginModifier;
  if (!lazy protocol witness table cache variable for type ResetContentMarginModifier and conformance ResetContentMarginModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetContentMarginModifier, &type metadata for ResetContentMarginModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetContentMarginModifier and conformance ResetContentMarginModifier);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>(255);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>, &unk_1EFFD7FA0, &protocol witness table for ResetScrollEnvironmentModifier.ResetTransform, type metadata accessor for TransformScrollStorageModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for TransformScrollStorageModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>, TransformScrollStorageModifier<ResetScrollEnvironmentModifier.ResetTransform>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>)
  {
    type metadata accessor for _ViewModifier_Content<ResetScrollEnvironmentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ResetScrollEnvironmentModifier>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier, &type metadata for ResetScrollEnvironmentModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ResetScrollEnvironmentModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ViewModifier_Content();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ResetScrollEnvironmentModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<ResetScrollEnvironmentModifier>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier, &type metadata for ResetScrollEnvironmentModifier);
    v5[1] = &protocol witness table for ResetScrollEnvironmentModifier.AdditionalResetModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ResetScrollEnvironmentModifier>, ResetScrollEnvironmentModifier.AdditionalResetModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ScrollIndicatorFlashOnAppearModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<ResetScrollEnvironmentModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TransformScrollStorageModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[33] = *MEMORY[0x1E69E9840];
  v17[0] = *a1;
  type metadata accessor for TransformScrollStorageModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static TransformScrollStorageModifier._makeInputs(modifier:inputs:)(1, a3, a4, v7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v9) = *(v9 + 16);
  default argument 3 of TransformScrollStorageEnvironment.init(environment:transform:storage:oldProperties:)(v19);
  v17[0] = v9;
  v17[1] = OffsetAttribute2;
  v18 = 0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = type metadata accessor for TransformScrollStorageEnvironment(0, a3, a4, v11);
  v16[2] = v12;
  v16[3] = swift_getWitnessTable(protocol conformance descriptor for TransformScrollStorageEnvironment<A>, v12);
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, v16, v12, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  (*(*(v12 - 8) + 8))(v17, v12);
  return _GraphInputs.environment.setter();
}

uint64_t closure #1 in static TransformScrollStorageModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for TransformScrollStorageModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

void _s14AttributeGraph0A0Vy7SwiftUI21AccessibilityNodeListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t AutomaticLabeledContentStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  KeyPath = swift_getKeyPath();
  result = specialized Environment.wrappedValue.getter(v3, v4);
  *a1 = result == 2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = 512;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelReservedIconWidthKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI22EnvironmentPropertyKeyVyAA022LabelReservedIconWidthE033_BA61BB07629D532149CADBB7B4434E7ELLVGACyxGAA0dE0AAWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<LabelReservedIconWidthKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ListItemTintKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ListLabeledContent()
{
  v1 = v0[9];
  v23 = v0[8];
  v24 = v1;
  v25 = v0[10];
  v26 = *(v0 + 176);
  v2 = v0[5];
  v19 = v0[4];
  v20 = v2;
  v3 = v0[7];
  v21 = v0[6];
  v22 = v3;
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;
  v5 = v0[3];
  v17 = v0[2];
  v18 = v5;
  closure #1 in ListLabeledContent.body.getter(v14);
  v6 = swift_allocObject();
  v7 = v24;
  *(v6 + 144) = v23;
  *(v6 + 160) = v7;
  *(v6 + 176) = v25;
  *(v6 + 192) = v26;
  v8 = v20;
  *(v6 + 80) = v19;
  *(v6 + 96) = v8;
  v9 = v22;
  *(v6 + 112) = v21;
  *(v6 + 128) = v9;
  v10 = v16;
  *(v6 + 16) = v15;
  *(v6 + 32) = v10;
  v11 = v18;
  *(v6 + 48) = v17;
  *(v6 + 64) = v11;
  outlined init with copy of ListLabeledContent(&v15, v13);
  type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>? and conformance <A> A?(&lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>> and conformance <A> Group<A>, type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E6981600]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<HStack<SubviewsCollectionSlice>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FrameLayout>?>> and conformance <> ModifiedContent<A, B>();
  return Group.init<A, B>(subviews:transform:)();
}

uint64_t sub_18BE2C6A4()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 24), *(v0 + 32));
  outlined consume of Environment<Selector?>.Content(*(v0 + 40), *(v0 + 48));
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 72), *(v0 + 80), *(v0 + 81));
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 88), *(v0 + 96), *(v0 + 97));
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 104), *(v0 + 112), *(v0 + 113));
  outlined consume of Environment<CGFloat?>.Content(*(v0 + 120), *(v0 + 128), *(v0 + 129));
  outlined consume of Environment<ListItemTint?>.Content(*(v0 + 136), *(v0 + 144), *(v0 + 145));

  outlined consume of Environment<Selector?>.Content(*(v0 + 168), *(v0 + 176));
  outlined consume of Environment<Selector?>.Content(*(v0 + 184), *(v0 + 192));

  return swift_deallocObject();
}

uint64_t closure #1 in ListLabeledContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

double destroy for TitleAndIconLabelStyle(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  v2 = *(a1 + 32);
  v3 = *(a1 + 41);
  v4 = *(a1 + 40);

  return outlined consume of Environment<CGFloat?>.Content(v2, v4, v3);
}

uint64_t sub_18BE2C940(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for LabelStyleWritingModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for LabelStyleModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>(255);
  v10 = type metadata accessor for ModifiedContent();
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v14[1] = &protocol witness table for LabelStyleModifier<A>;
  v11 = MEMORY[0x1E697E858];
  v13[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v14);
  v13[1] = lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<EffectiveLabelStyle?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(v11, v10, v13);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>)
  {
    type metadata accessor for CoreInteractionViewParentGestureContainerProxy?(255, &lazy cache variable for type metadata for EffectiveLabelStyle?, &type metadata for EffectiveLabelStyle, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>);
    }
  }
}

void type metadata accessor for CoreInteractionViewParentGestureContainerProxy?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t instantiation function for generic protocol witness table for LabelStyleConfiguration.Icon(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon()
{
  result = lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon;
  if (!lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon;
  if (!lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle;
  if (!lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabelStyle, &type metadata for ResolvedLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle;
  if (!lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabelStyle, &type metadata for ResolvedLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabelStyle and conformance ResolvedLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate, &type metadata for CreatesToolbarSafeAreaInsetPredicate, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedLabelStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>> and conformance <> StaticIf<A, B, C>();
    v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>()
{
  if (!lazy cache variable for type metadata for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for LabelStyleConfiguration.Title;
    v4[1] = &type metadata for LabelStyleConfiguration.Icon;
    v4[2] = &protocol witness table for LabelStyleConfiguration.Title;
    v4[3] = &protocol witness table for LabelStyleConfiguration.Icon;
    v2 = type metadata accessor for Label(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>);
    }
  }
}

void type metadata accessor for StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    type metadata accessor for PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>>)
  {
    type metadata accessor for StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>(255);
    type metadata accessor for StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>, StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(&lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, protocol conformance descriptor for Label<A, B>);
    v5[1] = &protocol witness table for AccessibilityFrameModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>(255);
    v5[0] = &type metadata for LabelStyleConfiguration.Icon;
    v5[1] = v2;
    v5[2] = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
    v5[3] = lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for StaticSourceWriter(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for StaticSourceWriter<LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for LabelStyleConfiguration.Icon;
    v5[1] = lazy protocol witness table accessor for type StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AccessibilityHidesLabelIcon and conformance AccessibilityHidesLabelIcon();
    v5[1] = &protocol witness table for AccessibilityAttachmentModifier;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AccessibilityHidesLabelIcon, AccessibilityAttachmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel();
    v5[1] = lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(&lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, protocol conformance descriptor for Label<A, B>);
    v5[2] = lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(&lazy protocol witness table cache variable for type PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>> and conformance PlatformItemLabelView<A, B, C>, type metadata accessor for PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>, protocol conformance descriptor for PlatformItemLabelView<A, B, C>);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>> and conformance <> StaticIf<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, type metadata accessor for (ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>));
    v5[2] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _ContainerValueWritingModifier<LabelItemRole?>(255);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for _ContainerValueWritingModifier<LabelItemRole?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContainerValueWritingModifier<LabelItemRole?>)
  {
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(255, &lazy cache variable for type metadata for LabelItemRole?, &type metadata for LabelItemRole, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContainerValueWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContainerValueWritingModifier<LabelItemRole?>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, &type metadata for LabelStyleConfiguration.Icon, &type metadata for LabelIconPlatformItemModifier, MEMORY[0x1E697E830]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for FocusGroupIdentifier?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance HStack<A>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E69817F8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance HStack<A>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LabelStyleConfiguration.Icon(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance AccessibilityHidesLabelIcon(uint64_t *a1)
{
  lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon();

  PropertyList.subscript.getter();
  if (v4 == 1)
  {

    v1 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
    PropertyList.subscript.getter();

    v1 = v3 ^ 1;
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput()
{
  result = lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput;
  if (!lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsPlatformItemListSourceInput, &type metadata for IsPlatformItemListSourceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput;
  if (!lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsPlatformItemListSourceInput, &type metadata for IsPlatformItemListSourceInput, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LabelStyleConfiguration.Title(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t Label.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
  v3 = a1[3];
  v33 = a1[5];
  v53 = &type metadata for LabelStyleConfiguration.Icon;
  v54 = v3;
  v55 = v37;
  v56 = v33;
  type metadata accessor for StaticSourceWriter(255, &v53);
  v4 = type metadata accessor for ModifiedContent();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = a1[2];
  v36 = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
  v8 = a1[4];
  v53 = &type metadata for LabelStyleConfiguration.Title;
  v54 = v7;
  v32 = v7;
  v55 = v36;
  v56 = v8;
  v9 = v8;
  v31 = v8;
  type metadata accessor for StaticSourceWriter(255, &v53);
  v10 = type metadata accessor for ModifiedContent();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v34 = &v29 - v17;
  *&v18 = v7;
  *(&v18 + 1) = v3;
  v30 = v18;
  *&v19 = v9;
  *(&v19 + 1) = v33;
  v29 = v19;
  v47 = v18;
  v48 = v19;
  v20 = v35;
  v49 = v35;
  v21 = lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for LabelStyleConfiguration.Icon, partial apply for closure #1 in Label.body.getter, v46, &type metadata for ResolvedLabelStyle, &type metadata for LabelStyleConfiguration.Icon, v3, v21);
  v44 = v29;
  v43 = v30;
  v45 = v20;
  v52[0] = v21;
  v52[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v22 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v52);
  View.viewAlias<A, B>(_:_:)(&type metadata for LabelStyleConfiguration.Title, partial apply for closure #2 in Label.body.getter, v42, v4, &type metadata for LabelStyleConfiguration.Title, v32, WitnessTable);
  (*(v39 + 8))(v6, v4);
  v51[0] = WitnessTable;
  v51[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v24 = swift_getWitnessTable(v22, v10, v51);
  View.allowsToolbarItemBridging(options:role:)(2, 2, v10, v24);
  (*(v38 + 8))(v12, v10);
  v25 = _s7SwiftUI8StaticIfVyAA26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetH0VGACyAA019StyleContextAcceptsH0VyAA0jnO0VGACyAA16_SemanticFeatureVyAA12Semantics_v5VGAA06AllowsJ20ItemBridgingModifierVAA05EmptyX0VGAVGAVGACyxq_q0_GAA0fX0A2A0fgH0RzAAA_R_AAA_R0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v50[0] = v24;
  v50[1] = v25;
  swift_getWitnessTable(v22, v13, v50);
  v26 = v34;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v40 + 8);
  v27(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v26, v13);
}

void type metadata completion function for AsyncImage(uint64_t a1)
{
  type metadata accessor for State<LoadingState>(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<LoadingState>(319, &lazy cache variable for type metadata for State<LoadingState>, type metadata accessor for LoadingState, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t LabelStyleWritingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v4 = *(a2 + 16);
  Description = v4[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LabelStyleModifier(0, v4, *(v8 + 24), v9);
  v36 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, a2, v11);
  v14 = type metadata accessor for _ViewModifier_Content();
  v15 = type metadata accessor for ModifiedContent();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  type metadata accessor for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>(255);
  v18 = type metadata accessor for ModifiedContent();
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v35 = &v34 - v23;
  Description[2](v7, v37, v4, v22);
  (Description[4])(v13, v7, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v14);
  MEMORY[0x18D00A570](v13, v14, v10, WitnessTable);
  (*(v36 + 8))(v13, v10);
  swift_getKeyPath();
  if (v4 == &type metadata for TitleOnlyLabelStyle || v4 == &type metadata for TitleAndIconLabelStyle || v4 == &type metadata for IconOnlyLabelStyle)
  {
    v27 = v4;
  }

  else
  {
    v27 = 0;
  }

  v42[0] = WitnessTable;
  v42[1] = &protocol witness table for LabelStyleModifier<A>;
  v42[2] = v27;
  v28 = MEMORY[0x1E697E858];
  v29 = swift_getWitnessTable(MEMORY[0x1E697E858], v15, v42);
  View.environment<A>(_:_:)();

  (*(v38 + 8))(v17, v15);
  v30 = lazy protocol witness table accessor for type LabelStyleModifier<DefaultLabelStyle> and conformance LabelStyleModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<EffectiveLabelStyle?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<EffectiveLabelStyle?>, MEMORY[0x1E6980A18]);
  v41[0] = v29;
  v41[1] = v30;
  swift_getWitnessTable(v28, v18, v41);
  v31 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v39 + 8);
  v32(v20, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v32)(v31, v18);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for TitleAndIconLabelStyle(uint64_t *a1, uint64_t *a2)
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
  v10 = *(a2 + 25);
  v11 = a1[2];
  v12 = *(a1 + 25);
  a1[2] = a2[2];
  v13 = *(a1 + 24);
  *(a1 + 24) = v9;
  *(a1 + 25) = v10;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  v14 = *(a2 + 40);
  v15 = *(a2 + 41);
  v16 = a1[4];
  v17 = *(a1 + 41);
  a1[4] = a2[4];
  v18 = *(a1 + 40);
  *(a1 + 40) = v14;
  *(a1 + 41) = v15;
  outlined consume of Environment<CGFloat?>.Content(v16, v18, v17);
  return a1;
}

uint64_t LabelStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v2 + 24))(v8);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v11 = *(v4 + 8);
  v11(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v11)(v10, AssociatedTypeWitness);
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance TitleAndIconLabelStyle@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18 = *v1;
  *v19 = v3;
  *&v19[10] = *(v1 + 26);
  v4 = specialized Environment.wrappedValue.getter(v3, v19[8] | (v19[9] << 8));
  if (v5)
  {
    v6 = specialized Environment.wrappedValue.getter(*&v19[16], v19[24] | (v19[25] << 8));
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = 0;
  }

  closure #1 in TitleAndIconLabelStyle.makeBody(configuration:)(v15);
  closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)(v6, v8 & 1, &v18, v16);
  v9 = v17[0];
  *(a1 + 160) = v16[8];
  *(a1 + 176) = v9;
  *(a1 + 185) = *(v17 + 9);
  v10 = v16[5];
  *(a1 + 96) = v16[4];
  *(a1 + 112) = v10;
  v11 = v16[7];
  *(a1 + 128) = v16[6];
  *(a1 + 144) = v11;
  v12 = v16[1];
  *(a1 + 32) = v16[0];
  *(a1 + 48) = v12;
  v13 = v16[3];
  *(a1 + 64) = v16[2];
  *(a1 + 80) = v13;
  result = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in TitleAndIconLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 1;
  return result;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(uint64_t a1)
{
  type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>));
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ListLabeledContent.titleAndContent(_:hasIcon:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 144);
  v40 = *(v3 + 128);
  v41 = v7;
  v42 = *(v3 + 160);
  v8 = *(v3 + 176);
  v9 = *(v3 + 80);
  v36 = *(v3 + 64);
  v37 = v9;
  v10 = *(v3 + 112);
  v38 = *(v3 + 96);
  v39 = v10;
  v11 = *(v3 + 16);
  v34[0] = *v3;
  v34[1] = v11;
  v12 = *(v3 + 48);
  v34[2] = *(v3 + 32);
  v35 = v12;
  v13 = 0.0;
  v43 = v8;
  if ((a2 & 1) != 0 && (specialized Environment.wrappedValue.getter(*(&v41 + 1), v42) & 1) == 0)
  {
    specialized Environment.wrappedValue.getter(*(&v36 + 1), v37 | (BYTE1(v37) << 8));
    if (v14)
    {
      v15 = *(v3 + 24);
      __src[0] = *(v3 + 8);
      __src[1] = v15;
      *(&__src[1] + 9) = *(v3 + 33);
      _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
      ScaledMetric.wrappedValue.getter();
    }

    specialized Environment.wrappedValue.getter(*(&v37 + 1), v38 | (BYTE1(v38) << 8));
    if (v16)
    {
      specialized Environment.wrappedValue.getter(*(&v35 + 1), v36 | (BYTE1(v36) << 8));
      if (v17)
      {
        static _GraphInputs.defaultInterfaceIdiom.getter();
        static Solarium.isEnabled(for:)();
      }
    }
  }

  v18 = specialized Environment.wrappedValue.getter(*(&v41 + 1), v42) & a2;
  v19 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(&v38 + 1), v39 | (BYTE1(v39) << 8)));
  if ((v20 & 1) == 0)
  {
    v13 = v19;
  }

  v21 = specialized Environment.wrappedValue.getter(*(&v41 + 1), v42);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v22 = static Solarium.isEnabled(for:)();
  v23 = 2.0;
  *&__src[0] = 0x4020000000000000;
  if (v22)
  {
    v23 = 4.0;
  }

  *(__src + 1) = v23;
  *&__src[1] = v13;
  BYTE8(__src[1]) = v21 & 1;
  *(&__src[1] + 9) = *(v34 + 1);
  closure #1 in ListLabeledContent.titleAndContent(_:hasIcon:)(v18 & 1, v34, a1, &__src[2]);
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = memcpy(a3, __src, 0x158uLL);
  *(a3 + 344) = 2;
  *(a3 + 352) = v25;
  *(a3 + 360) = v27;
  *(a3 + 368) = v29;
  *(a3 + 376) = v31;
  *(a3 + 384) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ListLabeledContent.titleAndContent(_:hasIcon:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v6 = a1[1];
  if (result == v6)
  {
    *&v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
  }

  else
  {
    if (result >= v6)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    _VariadicView_Children.subscript.getter();
  }

  v7 = MEMORY[0x1E6981A60];
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for Subview?(0, &lazy cache variable for type metadata for Subview?, MEMORY[0x1E6981A60], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type Subview? and conformance <A> A?();
  View.bodyHeadOutdent(_:)();
  outlined destroy of Subview?(&v30, &lazy cache variable for type metadata for Subview?, v7, v8, type metadata accessor for Subview?);
  EdgeInsets.init(_all:)();
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v30 = v17;
  v31 = v18;
  v37 = v24;
  v32 = v19;
  v33 = v20;
  LOBYTE(v25[0]) = 0;
  v38 = 2;
  *&v39[3] = *(&v17 + 3);
  *v39 = v17;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v44 = 0;
  result = outlined init with copy of SubviewsCollectionSlice(a1, &v17);
  v13 = v17;
  if (*(&v17 + 1) < v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFSUB__(*(&v17 + 1), v17))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(&v17 + 1) == v17)
  {
LABEL_11:
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v25[0] = v13;
    v25[1] = *(&v17 + 1);
    v15 = MEMORY[0x1E697E5E0];
    outlined init with copy of ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>(&v30, &v17, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, MEMORY[0x1E697E5E0], type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>);
    outlined init with copy of SubviewsCollectionSlice(v25, v16);
    outlined init with copy of ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>(&v17, a2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, v15, type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>);
    outlined init with copy of SubviewsCollectionSlice(v16, a2 + 168);
    outlined destroy of SubviewsCollectionSlice(v25);
    outlined destroy of Subview?(&v30, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, v15, type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>);
    outlined destroy of SubviewsCollectionSlice(v16);
    return outlined destroy of Subview?(&v17, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, type metadata accessor for ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, v15, type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<TitleAndContentLayout>, TupleView<(VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, ModifiedContent<VStack<LabeledContentStyleConfiguration.Content>, _EnvironmentKeyWritingModifier<Color?>>)>>, _PaddingLayout>);
  }

  v14 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_15;
  }

  if (v14 >= v17)
  {
    v13 = v17 + 1;
    if (*(&v17 + 1) >= v14)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Subview? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Subview? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Subview? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for Subview?(255, &lazy cache variable for type metadata for Subview?, MEMORY[0x1E6981A60], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E6981A58];
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Subview? and conformance <A> A?);
  }

  return result;
}

void *ListLabeledContent.icon(_:)@<X0>(void *result@<X0>, _OWORD *a2@<X8>)
{
  if (*result == result[1])
  {
    a2[9] = 0u;
    a2[10] = 0u;
    a2[7] = 0u;
    a2[8] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    v25 = *(v2 + 8);
    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    v4 = *(v2 + 40);
    v21 = *(v2 + 48);
    v22 = *(v2 + 32);
    v5 = *(v2 + 72);
    v6 = *(v2 + 80);
    v7 = *(v2 + 81);
    v8 = *(v2 + 168);
    v9 = *(v2 + 176);
    v10 = *(v2 + 144);
    v11 = *(v2 + 136);
    v12 = result;
    v26 = static VerticalAlignment.center.getter();
    LOBYTE(v27[0]) = 1;
    outlined init with copy of SubviewsCollectionSlice(v12, v27 + 8);
    *(&v28 + 1) = specialized Environment.wrappedValue.getter(v11, v10);
    specialized Environment.wrappedValue.getter(v8, v9, &v30);
    if (v30 > 8u)
    {
      v13 = 0;
    }

    else
    {
      specialized Environment.wrappedValue.getter(v8, v9, &v30);
      if (v30 >= 7u)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    *&v29 = swift_getKeyPath();
    BYTE8(v29) = v13;
    specialized Environment.wrappedValue.getter(v5, v6 | (v7 << 8));
    if (v14)
    {
      *&v30 = v25;
      BYTE8(v30) = v24;
      *&v31 = v23;
      BYTE8(v31) = v22;
      *&v32 = v4;
      BYTE8(v32) = v21;
      _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
      ScaledMetric.wrappedValue.getter();
    }

    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    v15 = v32;
    v16 = v31;
    a2[8] = v30;
    a2[9] = v16;
    a2[10] = v15;
    v17 = v27[4];
    a2[4] = v27[3];
    a2[5] = v17;
    v18 = v29;
    a2[6] = v28;
    a2[7] = v18;
    v19 = v27[0];
    *a2 = v26;
    a2[1] = v19;
    v20 = v27[2];
    a2[2] = v27[1];
    a2[3] = v20;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLabeledContentContentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabeledContentContentModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t LabelGroup.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content();
  v6 = *(a1 + 24);
  v23[0] = &type metadata for LabelGroupStyleConfiguration.Content;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  type metadata accessor for StaticSourceWriter(255, v23);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v19 = v4;
  v20 = v6;
  v21 = v2;
  v14 = lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for LabelGroupStyleConfiguration.Content, partial apply for closure #1 in LabelGroup.body.getter, v18, &type metadata for ResolvedLabelGroupStyle, &type metadata for LabelGroupStyleConfiguration.Content, v4, v14);
  v22[0] = v14;
  v22[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v13, v7);
}

uint64_t outlined destroy of Binding<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVySbGMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI7BindingVySbGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI7BindingVySbGWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI7BindingVySbGWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVySbGMaTm_10(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t initializeWithCopy for SwipeActions.Value(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v11 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    v14 = *(a2 + 136);
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);

  if (v5)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v5;
    *(a1 + 48) = *(a2 + 48);

    v6 = *(a2 + 64);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    v10 = *(a2 + 104);
LABEL_10:
    *(a1 + 104) = v10;
    v14 = *(a2 + 136);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_7:
    v15 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v15;
    *(a1 + 208) = *(a2 + 208);
    v16 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v16;
    v17 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v17;
    return a1;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v8 = (a2 + 72);

  if (v7 == 1)
  {
    v9 = *(a2 + 88);
    *(a1 + 72) = *v8;
    *(a1 + 88) = v9;
    v10 = *(a2 + 104);
    goto LABEL_10;
  }

  *(a1 + 72) = *v8;
  if (v7)
  {
    v23 = *(a2 + 88);
    *(a1 + 80) = v7;
    *(a1 + 88) = v23;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v25 = *(a2 + 96);
  if (v25)
  {
    v26 = *(a2 + 104);
    *(a1 + 96) = v25;
    *(a1 + 104) = v26;

    v14 = *(a2 + 136);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 136);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v14;
  v18 = *(a2 + 152);

  if (v18)
  {
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v18;
    *(a1 + 160) = *(a2 + 160);

    v19 = *(a2 + 176);
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_16:
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    return a1;
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  v19 = *(a2 + 176);
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_13:
  v20 = *(a2 + 192);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v19;
  v21 = (a2 + 184);

  if (v20 == 1)
  {
    v22 = *(a2 + 200);
    *(a1 + 184) = *v21;
    *(a1 + 200) = v22;
    *(a1 + 216) = *(a2 + 216);
  }

  else
  {
    *(a1 + 184) = *v21;
    if (v20)
    {
      v24 = *(a2 + 200);
      *(a1 + 192) = v20;
      *(a1 + 200) = v24;
    }

    else
    {
      *(a1 + 192) = *(a2 + 192);
    }

    v27 = *(a2 + 208);
    if (v27)
    {
      v28 = *(a2 + 216);
      *(a1 + 208) = v27;
      *(a1 + 216) = v28;
    }

    else
    {
      *(a1 + 208) = *(a2 + 208);
    }
  }

  return a1;
}

uint64_t closure #1 in LabelGroupStyleModifier.styleBody(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v53 = a4;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v6;
  v8 = type metadata accessor for LabelGroupChildEnvironmentModifier(0, v6, v7, v7);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(0, v11);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v15;
  v16 = v8;
  v17 = type metadata accessor for ModifiedContent();
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>, &type metadata for LabelPlatformItemListFlags, &protocol witness table for LabelPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v20 = type metadata accessor for ModifiedContent();
  v44 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v41 - v23;
  *&v24 = *a1;
  v41 = v24;
  v26 = a1[1];
  v25 = a1[2];
  v60 = v25;
  v58 = 0uLL;
  v59 = -1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v57 == 255)
  {
    v28 = v41;
    v27 = v41;
  }

  else
  {
    v58 = v56;
    v59 = v57 & 1;
    v27 = ViewContentOffset.offset.getter();
    v28 = v41;
  }

  *&v56 = v28;
  *(&v56 + 1) = v26;
  v57 = v25;
  MappedViewElement.view.getter();
  v30 = v51;
  v29 = v52;
  v31 = v48;
  (*(v51 + 16))(v48, v49, v52);
  (*(v30 + 32))(v10, v31, v29);
  *&v10[*(v16 + 36)] = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v47;
  MEMORY[0x18D00A570](v10, v47, v16, OpaqueTypeConformance2);
  (*(v50 + 8))(v10, v16);
  (*(v45 + 8))(v14, v33);
  v55[0] = OpaqueTypeConformance2;
  v55[1] = &protocol witness table for LabelGroupChildEnvironmentModifier<A>;
  v34 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v55);
  v36 = v42;
  v37 = View.platformItemHierarchicalLevel(_:)(v27, v17, WitnessTable);
  (*(v46 + 8))(v19, v17, v37);
  v54[0] = WitnessTable;
  v54[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  swift_getWitnessTable(v34, v20, v54);
  v38 = v43;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v44 + 8);
  v39(v36, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v20);
}

uint64_t initializeWithCopy for ListLabeledContent(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 48) = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 65);
  v10 = *(v2 + 64);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 65) = v9;
  v11 = *(v2 + 72);
  v12 = *(v2 + 81);
  v13 = *(v2 + 80);
  outlined copy of Environment<CGFloat?>.Content(v11, v13, v12);
  *(a1 + 72) = v11;
  *(a1 + 80) = v13;
  *(a1 + 81) = v12;
  v14 = *(v2 + 88);
  v15 = *(v2 + 97);
  v16 = *(v2 + 96);
  outlined copy of Environment<CGFloat?>.Content(v14, v16, v15);
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  *(a1 + 97) = v15;
  v17 = *(v2 + 104);
  v18 = *(v2 + 113);
  v19 = *(v2 + 112);
  outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 113) = v18;
  v20 = *(v2 + 120);
  v21 = *(v2 + 129);
  v22 = *(v2 + 128);
  outlined copy of Environment<ListItemTint?>.Content(v20, v22, v21);
  *(a1 + 120) = v20;
  *(a1 + 128) = v22;
  *(a1 + 129) = v21;
  v23 = *(v2 + 144);
  *(a1 + 136) = *(v2 + 136);
  *(a1 + 144) = v23;
  v24 = *(v2 + 152);
  v25 = *(v2 + 160);

  outlined copy of Environment<Selector?>.Content(v24, v25);
  *(a1 + 152) = v24;
  *(a1 + 160) = v25;
  v26 = *(v2 + 168);
  LOBYTE(v2) = *(v2 + 176);
  outlined copy of Environment<Selector?>.Content(v26, v2);
  *(a1 + 168) = v26;
  *(a1 + 176) = v2;
  return a1;
}

uint64_t destroy for ListLabeledContent(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 56), *(a1 + 64), *(a1 + 65));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 72), *(a1 + 80), *(a1 + 81));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 88), *(a1 + 96), *(a1 + 97));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 104), *(a1 + 112), *(a1 + 113));
  outlined consume of Environment<ListItemTint?>.Content(*(a1 + 120), *(a1 + 128), *(a1 + 129));

  outlined consume of Environment<Selector?>.Content(*(a1 + 152), *(a1 + 160));
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelVerticalTitlePadding>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey>, &type metadata for DefaultLabelIconToTitleSpacingKey, &protocol witness table for DefaultLabelIconToTitleSpacingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultLabelIconToTitleSpacingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithCopy for TitleAndIconLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = a2[2];
  v8 = *(a2 + 25);
  v9 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v7, v9, v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 25) = v8;
  v10 = a2[4];
  v11 = *(a2 + 41);
  v12 = *(a2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v10, v12, v11);
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 41) = v11;
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LabelStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LabeledContentStyleConfiguration.Label(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance LabelVisibilityConfigured(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t instantiation function for generic protocol witness table for LabelStyleConfiguration.Title(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title()
{
  result = lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title;
  if (!lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title;
  if (!lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title);
  }

  return result;
}

uint64_t sub_18BE306F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v14 = &type metadata for LabelStyleConfiguration.Icon;
  v15 = v2;
  v16 = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
  v17 = v4;
  type metadata accessor for StaticSourceWriter(255, &v14);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
  v14 = &type metadata for LabelStyleConfiguration.Title;
  v15 = v1;
  v16 = v6;
  v17 = v3;
  type metadata accessor for StaticSourceWriter(255, &v14);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v13[0] = lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle();
  v13[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v9 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v13);
  v12[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v11[0] = swift_getWitnessTable(v9, v7, v12);
  v11[1] = _s7SwiftUI8StaticIfVyAA26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetH0VGACyAA019StyleContextAcceptsH0VyAA0jnO0VGACyAA16_SemanticFeatureVyAA12Semantics_v5VGAA06AllowsJ20ItemBridgingModifierVAA05EmptyX0VGAVGAVGACyxq_q0_GAA0fX0A2A0fgH0RzAAA_R_AAA_R0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  return swift_getWitnessTable(v9, v8, v11);
}

void type metadata accessor for PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>)
  {
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>(255);
    v5[0] = &type metadata for TextPlatformItemListFlags;
    v5[1] = &type metadata for LabelStyleConfiguration.Title;
    v5[2] = v2;
    v5[3] = &protocol witness table for TextPlatformItemListFlags;
    v5[4] = &protocol witness table for LabelStyleConfiguration.Title;
    v5[5] = lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier> and conformance <> ModifiedContent<A, B>();
    v3 = type metadata accessor for PlatformItemLabelView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for PlatformItemLabelView<TextPlatformItemListFlags, LabelStyleConfiguration.Title, ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, AccessibilityFrameModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityHidesLabelIcon and conformance AccessibilityHidesLabelIcon()
{
  result = lazy protocol witness table cache variable for type AccessibilityHidesLabelIcon and conformance AccessibilityHidesLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityHidesLabelIcon and conformance AccessibilityHidesLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityHidesLabelIcon, &type metadata for AccessibilityHidesLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityHidesLabelIcon and conformance AccessibilityHidesLabelIcon);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance MultiViewLabel(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type MultiViewLabel and conformance MultiViewLabel();
  PropertyList.subscript.getter();
  return v3;
}

void type metadata accessor for StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, type metadata accessor for (ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>));
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<MultiViewLabel, TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>))
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>));
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>));
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>));
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>(255);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>));
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance <> StaticIf<A, B, C>)
  {
    v8 = v0;
    v9 = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v6 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance HStack<A>();
    v7 = v6;
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, &v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon()
{
  result = lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon;
  if (!lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon);
  }

  return result;
}

uint64_t closure #1 in Label.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for Label(0, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t closure #2 in Label.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

void type metadata accessor for State<LoadingState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for LoadingState(uint64_t a1)
{
  type metadata accessor for State<LoadingState>(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *ResolvedLabelStyle.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v8 = 0;
  v10 = 1;
  memset(v4, 0, 24);
  v4[3] = 1;
  v4[4] = 0;
  v4[5] = 0;
  v6 = 0x400000004;
  v7 = 0;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v17);
  *&__src[96] = v17[6];
  *&__src[112] = v17[7];
  *&__src[128] = v17[8];
  __src[144] = v18;
  *&__src[32] = v17[2];
  *&__src[48] = v17[3];
  *&__src[64] = v17[4];
  *&__src[80] = v17[5];
  *__src = v17[0];
  *&__src[16] = v17[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  outlined init with copy of AccessibilityProperties(v16, v4);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v16);
  type metadata accessor for CoreInteractionViewParentGestureContainerProxy?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v2 = swift_allocObject();
  result = memcpy((v2 + 16), __src, 0x128uLL);
  *a1 = v2;
  a1[1] = 0;
  return result;
}

double _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x100) == 0)
  {
    v3 = result;

    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F650, v8);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(v3, a2, 0);

    return v8[2];
  }

  return result;
}

double outlined consume of Environment<CGFloat?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in TitleAndIconLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Environment.wrappedValue.getter(*a1, *(a1 + 8) | (*(a1 + 9) << 8));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(ModifiedContent<LabelStyleConfiguration.Icon, _ContainerValueWritingModifier<LabelItemRole?>>, ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in ListLabeledContent.titleAndContent(_:hasIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    specialized Environment.wrappedValue.getter(*(a2 + 72), *(a2 + 80) | (*(a2 + 81) << 8));
    if (v7)
    {
      v8 = *(a2 + 24);
      __dst[0] = *(a2 + 8);
      __dst[1] = v8;
      *(&__dst[1] + 9) = *(a2 + 33);
      _s7SwiftUI21ViewInputFlagModifierVyAA41ListLabeledContentPrefersHorizontalLayout33_2076B144509B2EE42BE09458ED88A0ECLLVGMaTm_0(0, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
      ScaledMetric.wrappedValue.getter();
    }

    specialized Environment.wrappedValue.getter(*(a2 + 88), *(a2 + 96) | (*(a2 + 97) << 8));
    if (v9)
    {
      specialized Environment.wrappedValue.getter(*(a2 + 56), *(a2 + 64) | (*(a2 + 65) << 8));
      if (v10)
      {
        static _GraphInputs.defaultInterfaceIdiom.getter();
        static Solarium.isEnabled(for:)();
      }
    }
  }

  if (*a3 == a3[1])
  {
    memset(__dst, 0, 272);
  }

  else
  {
    v11 = static HorizontalAlignment.leading.getter();
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v12 = static Solarium.isEnabled(for:)();
    v13 = 0x4010000000000000;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    __src[0] = v11;
    __src[1] = v13;
    LOBYTE(__src[2]) = (v12 & 1) == 0;
    closure #1 in closure #1 in closure #1 in ListLabeledContent.titleAndContent(_:hasIcon:)(a3, &__src[3]);
    memcpy(__dst, __src, 0x110uLL);
  }

  v25 = static HorizontalAlignment.leading.getter();
  v26 = 0;
  v27 = 1;
  static Color.secondary.getter();
  type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(0, &lazy cache variable for type metadata for VStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E6981860]);
  lazy protocol witness table accessor for type VStack<LabeledContentStyleConfiguration.Content> and conformance VStack<A>();
  View.defaultForegroundColor(_:)();

  v14 = v21[0];
  v15 = v21[1];
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = MEMORY[0x1E69E6720];
  outlined init with copy of ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>(__dst, v21, &lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, type metadata accessor for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>, MEMORY[0x1E69E6720], type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>);
  outlined init with copy of ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>(v21, a4, &lazy cache variable for type metadata for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?, type metadata accessor for VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>, v19, type metadata accessor for Group<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Label, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, ViewInputFlagModifier<MultiViewLabel>>>);
  *(a4 + 272) = v14;
  *(a4 + 280) = v15;
  *(a4 + 288) = v16;
  *(a4 + 296) = v17;
  *(a4 + 304) = v18;

  outlined destroy of VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?(__dst);

  return outlined destroy of VStack<LabelGroup<TupleView<(ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, SubviewsCollectionSlice)>>>?(v21);
}