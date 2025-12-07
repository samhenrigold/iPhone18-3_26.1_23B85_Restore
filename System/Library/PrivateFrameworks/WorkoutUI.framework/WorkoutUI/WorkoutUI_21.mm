void closure #2 in closure #1 in ManagedConfigurationsAllView.body.getter(uint64_t a1@<X8>)
{
  v40 = type metadata accessor for Date();
  v2 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &countAndFlagsBits - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v43._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._object = 0x800000020CB9B680;
  v7._countAndFlagsBits = 0xD000000000000024;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v43)._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5DA80;
  v10 = dispatch thunk of ExternalProvider.sourceName.getter();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = objc_opt_self();
  ExternalProvider.syncStartDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v40);
  v17 = [v15 stringWithDayNameAndShortMonthFromDate_];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v18;
    *(v9 + 80) = v20;
    v21 = String.init(format:_:)();
    v23 = v22;

    v41 = v21;
    v42 = v23;
    lazy protocol witness table accessor for type String and conformance String();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    static Color.secondary.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    outlined consume of Text.Storage(v24, v26, v28 & 1);

    v36 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMR) + 36));
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v38 = type metadata accessor for Text.Case();
    (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
    *v36 = swift_getKeyPath();
    *a1 = v29;
    *(a1 + 8) = v31;
    *(a1 + 16) = v33 & 1;
    *(a1 + 24) = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMR);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMR);
  MEMORY[0x28223BE20](v12);
  v14 = (v47 - v13);
  static ButtonRole.destructive.getter();
  v15 = type metadata accessor for ButtonRole();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = swift_allocObject();
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v18 = a1[5];
  v16[5] = a1[4];
  v16[6] = v18;
  v19 = a1[1];
  v16[1] = *a1;
  v16[2] = v19;
  outlined init with copy of ManagedConfigurationsAllView(a1, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMR);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAGtGGMR, MEMORY[0x277CE1138]);
  Button.init(role:action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, Spacer)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAItGGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v20 = v50;
  v21 = v52;
  View.buttonStyle<A>(_:)();
  v53[1](v6, v21);
  (*(v51 + 8))(v11, v20);
  v56 = static Color.clear.getter();
  v22 = AnyView.init<A>(_:)();
  v52 = v12;
  v53 = v14;
  *(v14 + *(v12 + 36)) = v22;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = WorkoutUIBundle.super.isa;
  v60._object = 0xE000000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._object = 0x800000020CB9B600;
  v25._countAndFlagsBits = 0xD000000000000035;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v60);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20CB5DA70;
  v28 = dispatch thunk of ExternalProvider.sourceName.getter();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v31 = String.init(format:_:)();
  v33 = v32;

  v56 = v31;
  v57 = v33;
  lazy protocol witness table accessor for type String and conformance String();
  v51 = Text.init<A>(_:)();
  v50 = v34;
  v36 = v35;
  v49 = v37;
  v55 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v38 = State.projectedValue.getter();
  v48 = v47;
  v47[3] = v58;
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_MR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR);
  v40 = type metadata accessor for BorderedProminentButtonStyle();
  v41 = lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR, MEMORY[0x277CDF028]);
  v42 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v56 = v39;
  v57 = v40;
  v58 = v41;
  v59 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  v44 = v51;
  v45 = v50;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  outlined consume of Text.Storage(v44, v45, v36 & 1);

  return sub_20C68878C(v43);
}

double closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v14 = 1;
  closure #1 in closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter(&v9);
  v16 = v10;
  v17 = v11;
  v18[0] = v12[0];
  *(v18 + 9) = *(v12 + 9);
  v15 = v9;
  v19[2] = v11;
  v20[0] = v12[0];
  *(v20 + 9) = *(v12 + 9);
  v19[0] = v9;
  v19[1] = v10;
  outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(&v15, v8, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMR);
  outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(v19, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAEtGMR);
  *&v13[7] = v15;
  *&v13[64] = *(v18 + 9);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v4 = *v13;
  *(a2 + 33) = *&v13[16];
  v5 = *&v13[48];
  *(a2 + 49) = *&v13[32];
  *(a2 + 65) = v5;
  result = *&v13[64];
  *(a2 + 81) = *&v13[64];
  v7 = v14;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  return result;
}

double closure #1 in closure #2 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  outlined copy of Text.Storage(v3, v5, v7 & 1);

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  return result;
}

uint64_t closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  static ButtonRole.destructive.getter();
  v14 = type metadata accessor for ButtonRole();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  v15 = swift_allocObject();
  v16 = a1[3];
  v15[3] = a1[2];
  v15[4] = v16;
  v17 = a1[5];
  v15[5] = a1[4];
  v15[6] = v17;
  v18 = a1[1];
  v15[1] = *a1;
  v15[2] = v18;
  outlined init with copy of ManagedConfigurationsAllView(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  Button.init(role:action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

void closure #1 in closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    v2 = v1;
    dispatch thunk of WorkoutConfigurationOccurrenceStore.stopSyncing(for:)();
  }

  else
  {
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in closure #3 in closure #3 in closure #1 in ManagedConfigurationsAllView.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t closure #1 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)(uint64_t a1, _OWORD *a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = a2[3];
  v3[3] = a2[2];
  v3[4] = v4;
  v5 = a2[5];
  v3[5] = a2[4];
  v3[6] = v5;
  v6 = a2[1];
  v3[1] = *a2;
  v3[2] = v6;

  outlined init with copy of ManagedConfigurationsAllView(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR, MEMORY[0x277D83980]);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50], MEMORY[0x277D85378]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[4];
  if (!v5)
  {
    _sSo13HKHealthStoreCMaTm_1(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
    v31 = v4;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  v6 = a2[6];
  if (!v6)
  {
LABEL_7:
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
    v32 = v4;
    v33 = v5;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  _sSo13HKHealthStoreCMaTm_1(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  v11 = EnvironmentObject.init()();
  v38 = v12;
  v39 = v11;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v13 = EnvironmentObject.init()();
  v36 = v14;
  v37 = v13;
  type metadata accessor for WorkoutConfiguration();
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
  v15 = v8;
  v16 = ObservedObject.init(wrappedValue:)();
  v34 = v17;
  v35 = v16;
  v18 = v9;
  v19 = v10;
  v20 = FIActivityMoveModeUserDefault();
  type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v21 = v19;
  v22 = RaceRouteDataStore.init(healthStore:)();
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v18;
  v23[6] = v22;
  v24 = *a2;
  if (!*a2)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v25 = v23;
  v26 = v24;
  v27 = static ObservableObject.environmentStore.getter();
  v28 = a2[2];
  if (v28)
  {
    v29 = v27;

    result = static ObservableObject.environmentStore.getter();
    *a3 = v39;
    *(a3 + 8) = v38;
    *(a3 + 16) = v37;
    *(a3 + 24) = v36;
    *(a3 + 32) = v20;
    *(a3 + 40) = v18;
    *(a3 + 48) = v21;
    *(a3 + 56) = 0;
    *(a3 + 64) = partial apply for implicit closure #1 in ManagedWorkoutConfigurationRow.init(workoutConfiguration:healthStore:occurrenceStore:presentationSize:);
    *(a3 + 72) = v25;
    *(a3 + 80) = 0;
    *(a3 + 88) = v35;
    *(a3 + 96) = v34;
    *(a3 + 104) = v29;
    *(a3 + 112) = v24;
    *(a3 + 120) = result;
    *(a3 + 128) = v28;
    return result;
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double closure #1 in closure #2 in ManagedConfigurationsAllView.view(for:leadingTitle:trailingTitle:)@<D0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedUppercase.getter();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  if (a4)
  {
    v30 = v7;

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v31 = v10;
    v17 = v16;
    static Font.Weight.light.getter();
    a4 = Text.fontWeight(_:)();
    v19 = v18;
    v32 = v8;
    v20 = v12;
    v22 = v21;
    v24 = v23;
    v25 = v17 & 1;
    v10 = v31;
    outlined consume of Text.Storage(v13, v15, v25);

    v26 = v22 & 1;
    v12 = v20;
    v8 = v32;
    outlined copy of Text.Storage(a4, v19, v26);

    outlined consume of Text.Storage(a4, v19, v26);

    outlined copy of Text.Storage(a4, v19, v26);

    v7 = v30;
    v27 = 1;
  }

  else
  {
    v27 = 0;
    v19 = 0;
    v26 = 0;
    v24 = 0;
  }

  v28 = v7 & 1;
  v33 = v7 & 1;
  outlined copy of Text.Storage(v8, v10, v7 & 1);

  outlined copy of TupleView<(Spacer, Text)>?(0, v27, a4, v19, v26, v24);
  outlined consume of TupleView<(Spacer, Text)>?(0, v27, a4, v19, v26, v24);
  *a5 = v8;
  *(a5 + 8) = v10;
  *(a5 + 16) = v33;
  *(a5 + 24) = v12;
  *(a5 + 32) = 0;
  *(a5 + 40) = v27;
  *(a5 + 48) = a4;
  *(a5 + 56) = v19;
  *(a5 + 64) = v26;
  *(a5 + 72) = v24;
  outlined consume of TupleView<(Spacer, Text)>?(0, v27, a4, v19, v26, v24);
  outlined consume of Text.Storage(v8, v10, v28);

  return result;
}

double protocol witness for View.body.getter in conformance ManagedConfigurationsAllView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  v5 = v0[3];
  v14[2] = v0[2];
  v14[3] = v5;
  v6 = v0[5];
  v14[4] = v0[4];
  v14[5] = v6;
  v7 = v0[1];
  v14[0] = *v0;
  v14[1] = v7;
  v11 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMR);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,( &lazy protocol witness table cache variable for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<Empt,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMd,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA6HStackVyACyAA4TextV_ACyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyD0VGSg_A15_A15_AEyA13_A13_AWyAIA0_yAI4CaseOSgGGGAEyA13_AA0D0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAI_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA22_Rd__lFQOyAWyA23_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyACyAK_AWyAWyAIA0_yAA0G9AlignmentOGGAX15BodyHyphenationVGAKtGGG_AA19BorderedButtonStyleVQo_AA06_TraittU0VyAA04Listq15BackgroundTraitS0VGG_A23_AAEA33_yQrqd__AAA34_Rd__lFQOyA36_yA43_G_AA28BorderedProminentButtonStyleVQo_Qo_A13_GtGMR,  MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  v12 = dispatch thunk of ExternalProvider.sourceName.getter();
  v13 = v8;
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,( &lazy protocol witness table cache variable for type List<Never, TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, ,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMR,  MEMORY[0x277CDE5A0]);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();
  (*(v2 + 8))(v4, v1);

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMR);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow();
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow and conformance ManagedWorkoutConfigurationRow);
  }

  return result;
}

uint64_t outlined init with take of Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AItGSgtGGAA7ForEachVySay11WorkoutCore0K13ConfigurationCGAtA15ModifiedContentVyAWy0kB007ManagedkM3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA0_yAX0M15NavigationModelCSgGGGAA05EmptyF0VGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMR);
    lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(Text, TupleView<(Spacer, Text)>?)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double outlined copy of TupleView<(Spacer, Text)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    outlined copy of Text.Storage(a3, a4, a5 & 1);
  }

  return result;
}

double outlined consume of TupleView<(Spacer, Text)>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    outlined consume of Text.Storage(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t objectdestroyTm_47()
{

  return swift_deallocObject();
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_1(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSo13HKHealthStoreCMaTm_1(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo13HKHealthStoreCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationExpandedRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationExpandedRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ManagedWorkoutConfigurationExpandedRow.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-v3];
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = *(v0 + 112);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  v15 = v0;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(v0, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v16 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v9 = swift_allocObject();
  v10 = *(v0 + 80);
  *(v9 + 80) = *(v0 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v0 + 96);
  *(v9 + 128) = *(v0 + 112);
  v11 = *(v0 + 16);
  *(v9 + 16) = *v0;
  *(v9 + 32) = v11;
  v12 = *(v0 + 48);
  *(v9 + 48) = *(v0 + 32);
  *(v9 + 64) = v12;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(v0, &v17);
  type metadata accessor for LocationDisambiguation(0);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMR, MEMORY[0x277CDF028]);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation, &protocol conformance descriptor for LocationDisambiguation);
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v2 + 8))(v4, v1);
}

void closure #1 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v33 = *(a1 + 48);
  v5 = *(&v33 + 1);
  if (WorkoutConfiguration.requiresDisambiguation.getter())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v33, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR);
      v31 = *(a1 + 104);
      v29 = *(a1 + 104);
      v32 = *(&v31 + 1);
      outlined init with copy of ObservedObject<WorkoutConfiguration>(&v32, &v28, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.getter();
      v28 = v31;
      v27[15] = (v30 & 1) == 0;
      State.wrappedValue.setter();
      v7 = &v31;
      v8 = &_s7SwiftUI5StateVySbGMd;
      v9 = &_s7SwiftUI5StateVySbGMR;
    }

    else
    {
      swift_getObjectType();
      *&v31 = v5;
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
      outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v18 = v29;
      if (v29)
      {
        v19 = *(a1 + 16);
        if (v19)
        {
          v20 = *(a1 + 80);
          swift_beginAccess();
          v21 = *(v19 + 16);

          v22 = v18;
          v23 = v21;
          LOBYTE(v21) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

          if (v21)
          {
            v24 = 8;
          }

          else
          {
            v24 = v20;
          }

          v25 = *(v19 + 16);
          dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

          v26 = *(v19 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

          v26(v22, v24);

          outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v33, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR);

          return;
        }

LABEL_22:
        type metadata accessor for ConfigurationNavigationModel(0);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
        EnvironmentObject.error()();
        __break(1u);
        return;
      }

      v8 = &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd;
      v9 = &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR;
      v7 = &v33;
    }

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, v8, v9);
    return;
  }

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v33, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR);
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 80);
  swift_beginAccess();
  v12 = *(v10 + 16);

  v13 = v12;
  LOBYTE(v12) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

  if (v12)
  {
    v14 = 8;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v10 + 16);
  dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

  v16 = *(v10 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

  v16(v5, v14);
}

uint64_t closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyC0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationC0VA24_028IntervalWorkoutConfigurationC0VGAQyA24_025PacerWorkoutConfigurationC0VA24_024RaceWorkoutConfigurationC0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AGyAIyAA4TextV_AKyAKyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyC0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationC0VA24_028IntervalWorkoutConfigurationC0VGAQyA24_025PacerWorkoutConfigurationC0VA24_024RaceWorkoutConfigurationC0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AGyAIyAA4TextV_AKyAKyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_MR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = static HorizontalAlignment.leading.getter();
  if (one-time initialization token for iconToNameSpacing != -1)
  {
    v24 = v15;
    swift_once();
    v15 = v24;
  }

  v16 = static RowLayoutConstants.iconToNameSpacing;
  *v10 = v15;
  *(v10 + 1) = v16;
  v10[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationD0VA24_028IntervalWorkoutConfigurationD0VGAQyA24_025PacerWorkoutConfigurationD0VA24_024RaceWorkoutConfigurationD0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AA0F0VyAIyAA4TextV_AKyAKyA79_AUyAS5ScaleOGGA13_GtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationD0VA24_028IntervalWorkoutConfigurationD0VGAQyA24_025PacerWorkoutConfigurationD0VA24_024RaceWorkoutConfigurationD0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AA0F0VyAIyAA4TextV_AKyAKyA79_AUyAS5ScaleOGGA13_GtGGtGGMR);
  closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v10[*(v17 + 44)]);
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationG0VA20_028IntervalWorkoutConfigurationG0VGAMyA20_025PacerWorkoutConfigurationG0VA20_024RaceWorkoutConfigurationG0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_AEyAGyAA4TextV_ACyACyA73_AQyAO5ScaleOGGA9_GtGGtGGAA09_TagTraitnO0Vy10Foundation4UUIDVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6HStackVyAGyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationG0VA20_028IntervalWorkoutConfigurationG0VGAMyA20_025PacerWorkoutConfigurationG0VA20_024RaceWorkoutConfigurationG0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_AEyAGyAA4TextV_ACyACyA73_AQyAO5ScaleOGGA9_GtGGtGGAA09_TagTraitnO0Vy10Foundation4UUIDVGGMR) + 36)];
  (*(v5 + 32))(v18, v7, v4);
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_TagTraitWritingModifierVy10Foundation4UUIDVGMd, &_s7SwiftUI24_TagTraitWritingModifierVy10Foundation4UUIDVGMR) + 36)] = 1;
  sub_20C688910(v10, v14);
  v19 = *(a1 + 32);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  if (v19)
  {
    v20 = v19;
    v21 = static ObservableObject.environmentStore.getter();
    (*(v12 + 32))(a2, v14, v11);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMR);
    v23 = (a2 + *(result + 36));
    *v23 = v21;
    v23[1] = v19;
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMR);
  MEMORY[0x28223BE20](v31);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  *v9 = static VerticalAlignment.top.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAMyAOyAOy07WorkoutB0024GoalWorkoutConfigurationD0VA22_028IntervalWorkoutConfigurationD0VGAOyA22_025PacerWorkoutConfigurationD0VA22_024RaceWorkoutConfigurationD0VGGSgGASy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGASyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGA1_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAXA11_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAMyAOyAOy07WorkoutB0024GoalWorkoutConfigurationD0VA22_028IntervalWorkoutConfigurationD0VGAOyA22_025PacerWorkoutConfigurationD0VA22_024RaceWorkoutConfigurationD0VGGSgGASy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGASyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGA1_GAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAXA11_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMR);
  closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v9[*(v16 + 44)]);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v36._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000020CB9B6B0;
  v19._countAndFlagsBits = 0xD00000000000001DLL;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v36);

  v35 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 80);
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = v23;
  *(v22 + 112) = *(a1 + 96);
  *(v22 + 128) = *(a1 + 112);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v25;
  outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v34);
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM( &lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance HStack<A>,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMR,  MEMORY[0x277CE1138]);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityAction<A>(named:_:)();

  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationE0VA18_028IntervalWorkoutConfigurationE0VGAKyA18_025PacerWorkoutConfigurationE0VA18_024RaceWorkoutConfigurationE0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGMR);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMR);
  closure #3 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(a1, &v7[*(v26 + 44)]);
  sub_20C688980(v15, v12);
  v27 = v33;
  outlined init with copy of ObservedObject<WorkoutConfiguration>(v7, v33, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMR);
  v28 = v32;
  sub_20C688980(v12, v32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VG_AA6VStackVyAGyAA4TextV_ACyACyA73_AOyAM5ScaleOGGA7_GtGGtMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VG_AA6VStackVyAGyAA4TextV_ACyACyA73_AOyAM5ScaleOGGA7_GtGGtMR);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(v27, v28 + *(v29 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMR);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v27, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAKyAA5ColorVSgGGtGGMR);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMR);
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGG_AA05PlaingE0VQo_MR);
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v77);
  v72 = &v72 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalH0VyAKy07WorkoutB004Goalk13ConfigurationF0VAL08IntervalkmF0VGAKyAL05PacerkmF0VAL04RacekmF0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mC5ModelCSgGGGMd, &_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalH0VyAKy07WorkoutB004Goalk13ConfigurationF0VAL08IntervalkmF0VGAKyAL05PacerkmF0VAL04RacekmF0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mC5ModelCSgGGGMR);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMR);
  MEMORY[0x28223BE20](v19 - 8);
  v75 = &v72 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v73);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v90 = &v72 - v26;
  closure #1 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(&v107);
  v27 = *(a1 + 56);
  WorkoutConfiguration.displayColor.getter();
  v92 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (*a1)
  {
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = *a1;
    closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v27, v30, v28, 0, v29, v13);

    v31 = *(a1 + 32);
    if (v31)
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      v32 = v31;
      v33 = static ObservableObject.environmentStore.getter();
      outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v13, v16, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
      v34 = &v16[*(v14 + 36)];
      *v34 = v33;
      v34[1] = v31;
      v35 = *(a1 + 16);
      if (v35)
      {
        type metadata accessor for ConfigurationNavigationModel(0);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

        v36 = static ObservableObject.environmentStore.getter();
        v37 = v72;
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v16, v72, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
        v38 = (v37 + *(v77 + 36));
        *v38 = v36;
        v38[1] = v35;
        v94[0] = *(a1 + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.projectedValue.getter();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
        v39 = v74;
        NavigationLink.init(destination:isActive:label:)();
        v40 = v75;
        (*(v76 + 32))(v75, v39, v78);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v40, v24, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGMR);
        v41 = &v24[*(v73 + 36)];
        v42 = v105;
        *v41 = v104;
        *(v41 + 1) = v42;
        *(v41 + 2) = v106;
        v43 = v90;
        outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v24, v90, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
        v44 = swift_allocObject();
        *(v44 + 128) = *(a1 + 112);
        v45 = *(a1 + 80);
        *(v44 + 80) = *(a1 + 64);
        *(v44 + 96) = v45;
        *(v44 + 112) = *(a1 + 96);
        v46 = *(a1 + 16);
        *(v44 + 16) = *a1;
        *(v44 + 32) = v46;
        v47 = *(a1 + 48);
        *(v44 + 48) = *(a1 + 32);
        *(v44 + 64) = v47;
        MEMORY[0x28223BE20](v44);
        outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMR);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
        v48 = v81;
        Button.init(action:label:)();
        v49 = v84;
        PlainButtonStyle.init()();
        lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGGMR, MEMORY[0x277CDF028]);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        v50 = v93;
        v51 = v83;
        v52 = v86;
        View.buttonStyle<A>(_:)();
        (*(v85 + 8))(v49, v52);
        (*(v82 + 8))(v48, v51);
        v53 = v43;
        v54 = v79;
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v53, v79, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
        v56 = v87;
        v55 = v88;
        v57 = *(v88 + 16);
        v58 = v89;
        v57(v87, v50, v89);
        v95 = v111;
        v96 = v112;
        v97 = v113;
        v94[0] = v107;
        v94[1] = v108;
        v94[2] = v109;
        v94[3] = v110;
        *&v98[0] = v114;
        *(&v98[0] + 1) = KeyPath;
        *&v98[1] = v92;
        BYTE8(v98[1]) = 1;
        v59 = v107;
        v60 = v108;
        v61 = v110;
        v62 = v80;
        *(v80 + 32) = v109;
        *(v62 + 48) = v61;
        *v62 = v59;
        *(v62 + 16) = v60;
        v63 = v95;
        v64 = v96;
        *(v62 + 121) = *(v98 + 9);
        v65 = v98[0];
        *(v62 + 96) = v97;
        *(v62 + 112) = v65;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 144) = 0;
        *(v62 + 152) = 1;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAEyAGyAGy07WorkoutB0024GoalWorkoutConfigurationZ0VA14_028IntervalWorkoutConfigurationZ0VGAGyA14_025PacerWorkoutConfigurationZ0VA14_024RaceWorkoutConfigurationZ0VGGSgGAKy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAKyA14_013ConfigurationW5ModelCSgGGGAA07_HiddenK0VGAUGAA0Z0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAPA3_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAEyAGyAGy07WorkoutB0024GoalWorkoutConfigurationZ0VA14_028IntervalWorkoutConfigurationZ0VGAGyA14_025PacerWorkoutConfigurationZ0VA14_024RaceWorkoutConfigurationZ0VGGSgGAKy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAKyA14_013ConfigurationW5ModelCSgGGGAA07_HiddenK0VGAUGAA0Z0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAPA3_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tMR);
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v54, v62 + *(v66 + 64), &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
        v57((v62 + *(v66 + 80)), v56, v58);
        outlined init with copy of ObservedObject<WorkoutConfiguration>(v94, v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMR);
        v67 = *(v55 + 8);
        v67(v93, v58);
        outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v90, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
        v67(v56, v58);
        outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v54, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
        v99[4] = v111;
        v99[5] = v112;
        v99[6] = v113;
        v99[0] = v107;
        v99[1] = v108;
        v99[2] = v109;
        v99[3] = v110;
        v100 = v114;
        v101 = KeyPath;
        v102 = v92;
        v103 = 1;
        return outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMR);
      }

      type metadata accessor for ConfigurationNavigationModel(0);
      v69 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
      v70 = type metadata accessor for ConfigurationNavigationModel;
      v71 = &protocol conformance descriptor for ConfigurationNavigationModel;
    }

    else
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      v69 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
      v70 = MEMORY[0x277D7DC28];
      v71 = MEMORY[0x277D7DC20];
    }
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    v69 = &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
    v70 = type metadata accessor for FIUIFormattingManager;
    v71 = &protocol conformance descriptor for FIUIFormattingManager;
  }

  _s10Foundation4UUIDVACSHAAWlTm_0(v69, v70, v71);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v10 = [v9 symbolName];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Image.init(_internalSystemName:)();
    if (one-time initialization token for displayImageSize != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v8, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    KeyPath = swift_getKeyPath();
    *&v34[5] = v29;
    v35 = v30;
    *v36 = v31[0];
    *&v36[9] = *(v31 + 9);
    *&v34[1] = v27;
    v41 = 0;
    v32 = v11;
    v33 = KeyPath;
    v34[0] = v13;
    *&v34[3] = v28;
    v37 = 0;
    goto LABEL_7;
  }

  v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v16 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v16)
  {
    v17 = [v16 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v40 = 1;
    *&v39[6] = v27;
    *&v39[22] = v28;
    *&v39[38] = v29;
    v19 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v41 = 0;
    v38 = 1;
    v32 = v18;
    v33 = 0;
    LOWORD(v34[0]) = 1;
    *(v34 + 2) = *v39;
    *(&v34[2] + 2) = *&v39[16];
    *(&v34[4] + 2) = *&v39[32];
    v34[6] = *&v39[46];
    LOBYTE(v35) = v19;
    *(&v35 + 1) = v20;
    *v36 = v21;
    *&v36[8] = v22;
    *&v36[16] = v23;
    v36[24] = 0;
    v37 = 1;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v24;
    *(a1 + 96) = v48;
    *(a1 + 112) = v49;
    v25 = v43;
    *a1 = v42;
    *(a1 + 16) = v25;
    v26 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v26;
    return;
  }

  __break(1u);
}

uint64_t closure #3 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1)
{
  v3 = *(a1 + 88);
  v2[1] = *(a1 + 88);
  v4 = *(&v3 + 1);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v3, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t closure #4 in closure #1 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v8 = type metadata accessor for SymbolRenderingMode();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = Image.symbolRenderingMode(_:)();

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v7, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  if (one-time initialization token for ellipsisSize != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  WorkoutConfiguration.displayColor.getter();
  v13 = Color.init(uiColor:)();
  result = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v11;
  *(a1 + 24) = result;
  *(a1 + 32) = v13;
  *(a1 + 40) = 256;
  return result;
}

void closure #3 in closure #1 in closure #2 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v76[0] = a1;
  v87 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v76[1] = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v81);
  v84 = v76 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v83);
  v86 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = v76 - v8;
  MEMORY[0x28223BE20](v9);
  v85 = v76 - v10;
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v2 + 48);
  v15 = *(&v90 + 1);
  v16 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v17 = [v16 localizedName];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v88 = v18;
  v89 = v20;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v2) = v24;
  static Font.body.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v11);
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v14) = v28;

  outlined consume of Text.Storage(v21, v23, v2 & 1);

  static Font.Weight.bold.getter();
  v29 = Text.fontWeight(_:)();
  v31 = v30;
  v77 = v32;
  v34 = v33;
  outlined consume of Text.Storage(v25, v27, v14 & 1);

  if (*v76[0])
  {
    v35 = *v76[0];
    v36 = WorkoutConfiguration.displayDetail(_:)();
    if (!v37)
    {
      v36 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v38 = v36;
    v39 = v37;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
    type metadata accessor for RaceWorkoutConfiguration();
    v41 = swift_dynamicCastClass();
    v80 = v34;
    if (!v41)
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v42._countAndFlagsBits = 32;
    v42._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
    v43._countAndFlagsBits = v38;
    v43._object = v39;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v43);

    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
    LocalizedStringKey.init(stringInterpolation:)();
    v45 = Text.init(_:tableName:bundle:comment:)();
    v47 = v46;
    v49 = v48;
    type metadata accessor for IntervalWorkoutConfiguration();
    v50 = swift_dynamicCastClass();
    v78 = v31;
    v79 = v29;
    if (v50 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v73 = v15, v74 = GoalWorkoutConfiguration.goal.getter(), v75 = [v74 goalTypeIdentifier], outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(&v90, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR), v74, !v75))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v51 = Text.font(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;

    outlined consume of Text.Storage(v45, v47, v49 & 1);

    v58 = v84;
    v59 = &v84[*(v81 + 36)];
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v61 = *MEMORY[0x277CE1050];
    v62 = type metadata accessor for Image.Scale();
    (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
    *v59 = swift_getKeyPath();
    *v58 = v51;
    *(v58 + 8) = v53;
    *(v58 + 16) = v55 & 1;
    *(v58 + 24) = v57;
    WorkoutConfiguration.displayColor.getter();
    v63 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v65 = v82;
    outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v58, v82, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    v66 = (v65 + *(v83 + 36));
    *v66 = KeyPath;
    v66[1] = v63;
    v67 = v85;
    outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(v65, v85, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    v68 = v86;
    outlined init with copy of ObservedObject<WorkoutConfiguration>(v67, v86, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    v69 = v87;
    v71 = v78;
    v70 = v79;
    *v87 = v79;
    v69[1] = v71;
    LOBYTE(v65) = v77 & 1;
    *(v69 + 16) = v77 & 1;
    v69[3] = v80;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMR);
    outlined init with copy of ObservedObject<WorkoutConfiguration>(v68, v69 + *(v72 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    outlined copy of Text.Storage(v70, v71, v65);

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v67, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v68, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    outlined consume of Text.Storage(v70, v71, v65);
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager, &protocol conformance descriptor for FIUIFormattingManager);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *(a1 + 48);
  v4 = *(&v14 + 1);
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LocationDisambiguation(0);
  v10 = v9[6];
  *(a2 + v10) = 0;
  v11 = (a2 + v9[7]);
  *(a2 + v9[5]) = v4;
  *(a2 + v10) = 0;
  *v11 = partial apply for closure #1 in closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter;
  v11[1] = v5;
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v14, v13, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR);
  return outlined init with copy of ManagedWorkoutConfigurationExpandedRow(a1, v13);
}

void closure #1 in closure #3 in ManagedWorkoutConfigurationExpandedRow.body.getter(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a2[10];
    swift_beginAccess();
    v5 = *(v2 + 16);

    v6 = v5;
    v7 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = v4;
    }

    v9 = *(v2 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v10 = *(v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v10(a1, v8);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAKyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAsA18_AspectRatioLayoutVGAA06_FrameV0VGAA08_PaddingV0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyAOyAQyAQy07WorkoutB0024GoalWorkoutConfigurationE0VA24_028IntervalWorkoutConfigurationE0VGAQyA24_025PacerWorkoutConfigurationE0VA24_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA24_28ConfigurationNavigationModelCSgGGGAA07_HiddenR0VGA3_GAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyAZA13_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentR0VG_AIyAKyAA4TextV_ACyACyA75_AUyAS5ScaleOGGA13_GtGGtGG_10Foundation4UUIDVQo_A42_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMR);
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM( &lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWr,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMR,  MEMORY[0x277CE1198]);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_48()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ObservedObject<WorkoutConfiguration>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationCompactRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationCompactRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in ManagedWorkoutConfigurationCompactRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  if (*a1)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = *a1;
    closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v10, v13, v11, 0, v12, v6);

    v14 = *(a1 + 32);
    if (v14)
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      v15 = v14;
      v16 = static ObservableObject.environmentStore.getter();
      _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v6, v9, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
      v17 = &v9[*(v7 + 36)];
      *v17 = v16;
      v17[1] = v14;
      v18 = *(a1 + 16);
      if (v18)
      {
        type metadata accessor for ConfigurationNavigationModel(0);
        _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

        v19 = static ObservableObject.environmentStore.getter();
        _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v9, a2, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMR);
        v21 = (a2 + *(result + 36));
        *v21 = v19;
        v21[1] = v18;
        return result;
      }

      type metadata accessor for ConfigurationNavigationModel(0);
      v22 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
      v23 = type metadata accessor for ConfigurationNavigationModel;
      v24 = &protocol conformance descriptor for ConfigurationNavigationModel;
    }

    else
    {
      type metadata accessor for WorkoutConfigurationDataSource();
      v22 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
      v23 = MEMORY[0x277D7DC28];
      v24 = MEMORY[0x277D7DC20];
    }
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    v22 = &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
    v23 = type metadata accessor for FIUIFormattingManager;
    v24 = &protocol conformance descriptor for FIUIFormattingManager;
  }

  _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(v22, v23, v24);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMR);
  v6 = a2 + v5[13];
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6VStackVyAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAOyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQyAA5ColorVSgGGtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA6VStackVyAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAOyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAQyAA5ColorVSgGGtGGGMR) + 44);
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAOyAA5ColorVSgGGtGGMR);
  closure #1 in closure #1 in closure #2 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(a1, (v7 + *(v8 + 44)));
  *(a2 + v5[14]) = 0x4022000000000000;
  *(a2 + v5[15]) = v4;
}

void closure #1 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v7 = FIUIStaticScalableWorkoutIconImage();

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v14 = 1;
    *&v13[8] = v15;
    *&v13[24] = v16;
    *&v13[40] = v17;
    WorkoutConfiguration.displayColor.getter();
    v10 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    *a1 = v9;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v12 = *&v13[18];
    *(a1 + 18) = *&v13[2];
    *(a1 + 34) = v12;
    *(a1 + 50) = *&v13[34];
    *(a1 + 64) = *&v13[48];
    *(a1 + 72) = KeyPath;
    *(a1 + 80) = v10;
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in closure #1 in closure #2 in closure #2 in ManagedWorkoutConfigurationCompactRow.body.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v67);
  v73 = &v65[-v5];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v72);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v71 = &v65[-v9];
  MEMORY[0x28223BE20](v10);
  v12 = &v65[-v11];
  v79 = *(a1 + 48);
  v13 = *(&v79 + 1);
  v14 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v15 = [v14 localizedName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v77 = v16;
  v78 = v18;
  lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v68 = v21;
  v69 = v19;
  v66 = v22;
  if (*a1)
  {
    v23 = v20;
    v24 = *a1;
    v25 = WorkoutConfiguration.displayDetail(_:)();
    if (!v26)
    {
      v25 = WorkoutConfiguration.displayName(formattingManager:)();
    }

    v27 = v25;
    v28 = v26;

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
    type metadata accessor for RaceWorkoutConfiguration();
    v30 = swift_dynamicCastClass();
    v70 = v23;
    if (!v30)
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    Image.init(_internalSystemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
    v32._countAndFlagsBits = v27;
    v32._object = v28;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v32);

    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    LocalizedStringKey.init(stringInterpolation:)();
    v34 = Text.init(_:tableName:bundle:comment:)();
    v36 = v35;
    v38 = v37;
    type metadata accessor for IntervalWorkoutConfiguration();
    v39 = swift_dynamicCastClass();
    v75 = v7;
    v76 = a2;
    v74 = v12;
    if (v39 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v62 = v13, v63 = GoalWorkoutConfiguration.goal.getter(), v64 = [v63 goalTypeIdentifier], outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(&v79, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR), v63, !v64))
    {
      static Font.caption2.getter();
    }

    else
    {
      static Font.caption2.getter();
      Font.lowercaseSmallCaps()();
    }

    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;
    v46 = v45;

    outlined consume of Text.Storage(v34, v36, v38 & 1);

    v47 = v73;
    v48 = &v73[*(v67 + 36)];
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v50 = *MEMORY[0x277CE1050];
    v51 = type metadata accessor for Image.Scale();
    (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
    *v48 = swift_getKeyPath();
    *v47 = v40;
    *(v47 + 8) = v42;
    *(v47 + 16) = v44 & 1;
    *(v47 + 24) = v46;
    WorkoutConfiguration.displayColor.getter();
    v52 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v54 = v71;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v47, v71, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    v55 = &v54[*(v72 + 36)];
    *v55 = KeyPath;
    v55[1] = v52;
    v56 = v74;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(v54, v74, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    v57 = v75;
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v56, v75);
    v58 = v76;
    v60 = v68;
    v59 = v69;
    *v76 = v69;
    v58[1] = v60;
    LOBYTE(v54) = v66 & 1;
    *(v58 + 16) = v66 & 1;
    v58[3] = v70;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGtMR);
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v57, v58 + *(v61 + 48));
    outlined copy of Text.Storage(v59, v60, v54);

    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v56, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(v57, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    outlined consume of Text.Storage(v59, v60, v54);
  }

  else
  {
    type metadata accessor for FIUIFormattingManager();
    _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager, &protocol conformance descriptor for FIUIFormattingManager);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t protocol witness for View.body.getter in conformance ManagedWorkoutConfigurationCompactRow()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v1);
  v2 = v0[3];
  v8[2] = v0[2];
  v8[3] = v2;
  v8[4] = v0[4];
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v7 = v8;
  closure #1 in ManagedWorkoutConfigurationCompactRow.body.getter(v8, &v6[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMR);
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAFyAD5ImageVAD18_AspectRatioLayoutVGAD06_FrameM0VGAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD6HStackVyAD6VStackVyAD05TupleG0VyAD4TextV_AFyAFyA1_APyAH5ScaleOGGATGtGGGGMR, &protocol conformance descriptor for AlignedLeadingAccessoryContentView<A, B>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  return NavigationLink.init(destination:label:)();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s9WorkoutUI08IntervalA17ConfigurationViewVAC05SwiftB00E0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, HStack<VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>)>>>> and conformance AlignedLeadingAccessoryContentView<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *ManagedConfigurationsUpcomingView.init(provider:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  *a3 = EnvironmentObject.init()();
  *(a3 + 8) = v6;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *(a3 + 16) = EnvironmentObject.init()();
  *(a3 + 24) = v7;
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  *(a3 + 32) = EnvironmentObject.init()();
  *(a3 + 40) = v8;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
  *(a3 + 48) = EnvironmentObject.init()();
  *(a3 + 56) = v9;
  result = State.init(wrappedValue:)();
  *(a3 + 80) = v11;
  *(a3 + 88) = v12;
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  return result;
}

uint64_t _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_5(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_5(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedM0VyARyARyARyARyARyAnA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGATyAN4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGGAA06_TraitqR0VyAA0g13RowBackgroundyP0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA23_ARyARy07WorkoutB0027ManagedWorkoutConfigurationZ0VATySo21FIUIFormattingManagerCSgGGATyA25_28ConfigurationNavigationModelCSgGGGGAA05EmptyC0VG_ALyA41_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyARyARyAA14NavigationLinkVyA41_ARyARyARyARyA25_024ManagedConfigurationsAllC0VA31_GA36_GATySo13HKHealthStoreCSgGGATyA21_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenR0VGAA01_vW0VG_ARyAXA25_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_ATyAA13AnyShapeStyleVSgGGA17_GA41_GtGG_SSQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedM0VyARyARyARyARyARyAnA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGATyAN4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGGAA06_TraitqR0VyAA0g13RowBackgroundyP0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA23_ARyARy07WorkoutB0027ManagedWorkoutConfigurationZ0VATySo21FIUIFormattingManagerCSgGGATyA25_28ConfigurationNavigationModelCSgGGGGAA05EmptyC0VG_ALyA41_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyARyARyAA14NavigationLinkVyA41_ARyARyARyARyA25_024ManagedConfigurationsAllC0VA31_GA36_GATySo13HKHealthStoreCSgGGATyA21_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenR0VGAA01_vW0VG_ARyAXA25_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_ATyAA13AnyShapeStyleVSgGGA17_GA41_GtGG_SSQo_MR);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = v1[3];
  v32[2] = v1[2];
  v32[3] = v10;
  v11 = v1[5];
  v32[4] = v1[4];
  v32[5] = v11;
  v12 = v1[1];
  v32[0] = *v1;
  v32[1] = v12;
  v27 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>( &lazy protocol witness table cache variable for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMd,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedH0VyAKyAKyAKyAKyAKyAgA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAMyAG4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGGAA06_TraitlM0VyAA017ListRowBackgroundtK0VGGAA7ForEachVySay11WorkoutCore0Z13ConfigurationCGA16_AKyAKy0zB007Managedz13ConfigurationV0VAMySo21FIUIFormattingManagerCSgGGAMyA18_28ConfigurationNavigationModelCSgGGGGAA05EmptyD0VG_AEyA34_AKyAKyAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyAKyAKyAA14NavigationLinkVyA34_AKyAKyAKyAKyA18_024ManagedConfigurationsAllD0VA24_GA29_GAMySo13HKHealthStoreCSgGGAMyA14_0Z28ConfigurationOccurrenceStoreCSgGGGAA07_HiddenM0VGAA01_qR0VG_AKyAQA18_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AMyAA13AnyShapeStyleVSgGGA10_GA34_GtGMR,  MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  v28 = dispatch thunk of ExternalProvider.sourceName.getter();
  v29 = v13;
  v14 = lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>( &lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)>> and conformance List<A, B>,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMR,  MEMORY[0x277CDE5A0]);
  v15 = lazy protocol witness table accessor for type String and conformance String();
  v16 = MEMORY[0x277D837D0];
  View.navigationTitle<A>(_:)();

  (*(v5 + 8))(v7, v4);
  v17 = v24;
  v18 = v25;
  (*(v24 + 104))(v3, *MEMORY[0x277CDDDC0], v25);
  v28 = v4;
  v29 = v16;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v3, v18);
  return (*(v23 + 8))(v9, v19);
}

uint64_t closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA05TupleE0VyAGyAGyAA14NavigationLinkVyAeGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAVyAR013ConfigurationM5ModelCSgGGAVySo13HKHealthStoreCSgGGAVy0O4Core0oY15OccurrenceStoreCSgGGGAA07_HiddenV0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAVyAA13TextAlignmentOGGAR15BodyHyphenationVGtGG_AA017BorderedProminentkI0VQo_AVyAA08AnyShapeI0VSgGGAA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA05TupleE0VyAGyAGyAA14NavigationLinkVyAeGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAVyAR013ConfigurationM5ModelCSgGGAVySo13HKHealthStoreCSgGGAVy0O4Core0oY15OccurrenceStoreCSgGGGAA07_HiddenV0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAVyAA13TextAlignmentOGGAR15BodyHyphenationVGtGG_AA017BorderedProminentkI0VQo_AVyAA08AnyShapeI0VSgGGAA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGAEGMR);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVGMd, &_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v43 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v44 = Text.init(_:tableName:bundle:comment:)();
  v45 = v14;
  v46 = v15 & 1;
  v47 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>();
  v17 = v12;
  v37 = v12;
  v18 = Section<>.init(header:content:)();
  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  v19 = v39;
  Section<>.init(content:)();
  v35 = *(v8 + 16);
  v20 = v38;
  v21 = v7;
  v35(v38, v17, v7);
  v22 = v3;
  v36 = *(v3 + 16);
  v23 = v40;
  v24 = v42;
  v36(v40, v19, v42);
  v25 = v21;
  v26 = v8;
  v27 = v19;
  v28 = v23;
  v29 = v41;
  v30 = v25;
  (v35)(v41, v20);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVG_ACyA32_AIyAIyAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA9TupleViewVyAIyAIyAA14NavigationLinkVyA32_AIyAIyAIyAIyA16_28ManagedConfigurationsAllViewVA22_GA27_GAKySo13HKHealthStoreCSgGGAKyA12_0xZ15OccurrenceStoreCSgGGGAA07_HiddenK0VGAA01_oP0VG_AIyAOA16_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AKyAA13AnyShapeStyleVSgGGA8_GA32_GtMd, &_s7SwiftUI7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedF0VyAIyAIyAIyAIyAIyAeA30_EnvironmentKeyWritingModifierVyAA0D9AlignmentOGGAKyAE4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AIyAIy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGGGAA9EmptyViewVG_ACyA32_AIyAIyAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAA9TupleViewVyAIyAIyAA14NavigationLinkVyA32_AIyAIyAIyAIyA16_28ManagedConfigurationsAllViewVA22_GA27_GAKySo13HKHealthStoreCSgGGAKyA12_0xZ15OccurrenceStoreCSgGGGAA07_HiddenK0VGAA01_oP0VG_AIyAOA16_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AKyAA13AnyShapeStyleVSgGGA8_GA32_GtMR);
  v36((v29 + *(v31 + 48)), v28, v24);
  v32 = *(v22 + 8);
  v32(v27, v24);
  v33 = *(v26 + 8);
  v33(v37, v30);
  v32(v28, v24);
  return (v33)(v20, v30);
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCGAfA15ModifiedContentVyAIy0eB007ManagedeG3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0G15NavigationModelCSgGGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v71 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AGyAGy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAKyAA4FontVSgGGAKySiSgGGAA06_TraitjK0VyAA017ListRowBackgroundrI0VGGAA7ForEachVySay11WorkoutCore0X13ConfigurationCGA14_AGyAGy0xB007ManagedxzT0VAKySo21FIUIFormattingManagerCSgGGAKyA16_0Z15NavigationModelCSgGGG_GMR);
  MEMORY[0x28223BE20](v81);
  v82 = v71 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v73);
  v10 = v71 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v74);
  v79 = v71 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v77);
  v78 = v71 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
  MEMORY[0x28223BE20](v75);
  v14 = v71 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMR);
  MEMORY[0x28223BE20](v80);
  v76 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v71 - v17;
  v19 = dispatch thunk of ManagedConfigurationsViewModel.upNextConfigurations.getter();
  if (v19 >> 62)
  {
    v72 = v14;
    v26 = __CocoaSet.count.getter();
    v14 = v72;

    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v20)
    {
LABEL_3:
      v84 = dispatch thunk of ManagedConfigurationsViewModel.upNextConfigurations.getter();
      swift_getKeyPath();
      v21 = swift_allocObject();
      v22 = a1[3];
      v21[3] = a1[2];
      v21[4] = v22;
      v23 = a1[5];
      v21[5] = a1[4];
      v21[6] = v23;
      v24 = a1[1];
      v21[1] = *a1;
      v21[2] = v24;
      outlined init with copy of ManagedConfigurationsUpcomingView(a1, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE16ConfigurationRowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
      lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR, MEMORY[0x277D83980]);
      _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50], MEMORY[0x277D85378]);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      ForEach<>.init(_:id:content:)();
      (*(v5 + 16))(v82, v7, v4);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
      _ConditionalContent<>.init(storage:)();
      return (*(v5 + 8))(v7, v4);
    }
  }

  v72 = v14;
  v71[0] = v18;
  v71[1] = a2;
  v71[2] = v4;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = WorkoutUIBundle.super.isa;
  v86._object = 0xE000000000000000;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._object = 0x800000020CB9B780;
  v29._countAndFlagsBits = 0xD000000000000028;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v28, v27, v30, v86);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  v32 = dispatch thunk of ExternalProvider.sourceName.getter();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = String.init(format:_:)();
  v37 = v36;

  *&v85[0] = v35;
  *(&v85[0] + 1) = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  static Color.secondary.getter();
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  outlined consume of Text.Storage(v38, v40, v42 & 1);

  KeyPath = swift_getKeyPath();
  v51 = &v10[*(v73 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
  v53 = type metadata accessor for Text.Case();
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *v51 = swift_getKeyPath();
  *v10 = v43;
  *(v10 + 1) = v45;
  v10[16] = v47 & 1;
  *(v10 + 3) = v49;
  *(v10 + 4) = KeyPath;
  v10[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v10;
  v55 = v79;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v54, v79, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  v56 = (v55 + *(v74 + 36));
  v57 = v85[5];
  v56[4] = v85[4];
  v56[5] = v57;
  v56[6] = v85[6];
  v58 = v85[1];
  *v56 = v85[0];
  v56[1] = v58;
  v59 = v85[3];
  v56[2] = v85[2];
  v56[3] = v59;
  v60 = static Font.caption2.getter();
  v61 = swift_getKeyPath();
  v62 = v55;
  v63 = v78;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v62, v78, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  v64 = (v63 + *(v77 + 36));
  *v64 = v61;
  v64[1] = v60;
  v65 = swift_getKeyPath();
  v66 = v72;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v63, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  v67 = v66 + *(v75 + 36);
  *v67 = v65;
  *(v67 + 8) = 0;
  *(v67 + 16) = 1;
  v83 = static Color.clear.getter();
  v68 = AnyView.init<A>(_:)();
  v69 = v76;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v66, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
  *(v69 + *(v80 + 36)) = v68;
  v70 = v71[0];
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v69, v71[0], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v70, v82, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[4];
  if (!v5)
  {
    _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
    v31 = v4;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  v6 = a2[6];
  if (!v6)
  {
LABEL_7:
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
    v32 = v4;
    v33 = v5;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  v8 = v4;
  v9 = v6;
  v10 = v5;
  v11 = EnvironmentObject.init()();
  v38 = v12;
  v39 = v11;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v13 = EnvironmentObject.init()();
  v36 = v14;
  v37 = v13;
  type metadata accessor for WorkoutConfiguration();
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
  v15 = v8;
  v16 = ObservedObject.init(wrappedValue:)();
  v34 = v17;
  v35 = v16;
  v18 = v9;
  v19 = v10;
  v20 = FIActivityMoveModeUserDefault();
  type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v21 = v19;
  v22 = RaceRouteDataStore.init(healthStore:)();
  v23 = swift_allocObject();
  v23[2] = v15;
  v23[3] = v20;
  v23[4] = v21;
  v23[5] = v18;
  v23[6] = v22;
  v24 = *a2;
  if (!*a2)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v25 = v23;
  v26 = v24;
  v27 = static ObservableObject.environmentStore.getter();
  v28 = a2[2];
  if (v28)
  {
    v29 = v27;

    result = static ObservableObject.environmentStore.getter();
    *a3 = v39;
    *(a3 + 8) = v38;
    *(a3 + 16) = v37;
    *(a3 + 24) = v36;
    *(a3 + 32) = v20;
    *(a3 + 40) = v18;
    *(a3 + 48) = v21;
    *(a3 + 56) = 1;
    *(a3 + 64) = _s9WorkoutUI07ManagedA16ConfigurationRowV07workoutD011healthStore010occurrenceH016presentationSizeAC0A4Core0aD0C_So08HKHealthH0CAH0ad10OccurrenceH0CAC012PresentationK0OtcfcAH0aD10DataSourceCycfu_TA_0;
    *(a3 + 72) = v25;
    *(a3 + 80) = 0;
    *(a3 + 88) = v35;
    *(a3 + 96) = v34;
    *(a3 + 104) = v29;
    *(a3 + 112) = v24;
    *(a3 + 120) = result;
    *(a3 + 128) = v28;
    return result;
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v13 = a1[5];
  v11[5] = a1[4];
  v11[6] = v13;
  v14 = a1[1];
  v11[1] = *a1;
  v11[2] = v14;
  v25 = a1;
  outlined init with copy of ManagedConfigurationsUpcomingView(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA14NavigationLinkVyAA05EmptyD0VAEyAEyAEyAEy07WorkoutB0024ManagedConfigurationsAllD0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ013ConfigurationG5ModelCSgGGANySo13HKHealthStoreCSgGGANy0J4Core0jt10OccurrenceW0CSgGGGAA07_HiddenQ0VGAA12_FrameLayoutVG_AEyAEyAA4TextVANyAA13TextAlignmentOGGAJ15BodyHyphenationVGtGMR, MEMORY[0x277CE14C0]);
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMR, MEMORY[0x277CDF028]);
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v15 = v24;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v16 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v17 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v26[0] = v17;
  v19 = AnyShapeStyle.init<A>(_:)();
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMR) + 36));
  *v20 = KeyPath;
  v20[1] = v19;
  v26[0] = static Color.clear.getter();
  v21 = AnyView.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMR);
  *(v15 + *(result + 36)) = v21;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2[1] = *(a1 + 80);
  v4 = *(&v3 + 1);
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(&v4, v2, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(&v3, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t closure #2 in closure #3 in closure #1 in ManagedConfigurationsUpcomingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllF0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationC5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGMd, &_s7SwiftUI14NavigationLinkVyAA9EmptyViewVAA15ModifiedContentVyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllF0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationC5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGMR);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = v50 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v65);
  v71 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = v50 - v8;
  MEMORY[0x28223BE20](v9);
  v70 = v50 - v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  v63 = v11;

  v62 = v12;

  v61 = EnvironmentObject.init()();
  v60 = v13;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v59 = EnvironmentObject.init()();
  v58 = v14;
  _sSo21FIUIFormattingManagerCMaTm_5(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_2(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v57 = EnvironmentObject.init()();
  v56 = v15;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v16 = _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
  v55 = EnvironmentObject.init()();
  v54 = v17;
  v73 = 0;
  State.init(wrappedValue:)();
  v18 = *a1;
  if (!*a1)
  {
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v53 = v75;
  v52 = *(&v75 + 1);
  v19 = v18;
  v51 = static ObservableObject.environmentStore.getter();
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_9:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_10;
  }

  v50[1] = v16;

  v21 = static ObservableObject.environmentStore.getter();
  v22 = *(a1 + 32);
  if (!v22)
  {
LABEL_10:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_11;
  }

  v23 = v21;
  v24 = v22;
  v25 = static ObservableObject.environmentStore.getter();
  v26 = *(a1 + 48);
  if (!v26)
  {
LABEL_11:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v27 = v25;
  v28 = v26;
  v29 = static ObservableObject.environmentStore.getter();
  *&v75 = v61;
  *(&v75 + 1) = v60;
  *&v76 = v59;
  *(&v76 + 1) = v58;
  *&v77 = v57;
  *(&v77 + 1) = v56;
  v78 = v55;
  v79 = v54;
  v80 = v63;
  v81 = v62;
  v82 = v53;
  v83 = v52;
  v84 = v51;
  v85 = v18;
  v86 = v23;
  v87 = v20;
  v88 = v27;
  v89 = v22;
  v90 = v29;
  v91 = v26;
  v74 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  v30 = v66;
  NavigationLink.init(destination:isActive:label:)();
  v31 = v67;
  (*(v68 + 32))(v67, v30, v69);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = v31;
  v33 = v64;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v32, v64, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGMR);
  v34 = (v33 + *(v65 + 36));
  v35 = v76;
  *v34 = v75;
  v34[1] = v35;
  v34[2] = v77;
  v36 = v70;
  outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(v33, v70, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = WorkoutUIBundle.super.isa;
  v38 = Text.init(_:tableName:bundle:comment:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  KeyPath = swift_getKeyPath();
  v46 = v71;
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v36, v71, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
  v47 = v72;
  outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v46, v72, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVG_ACyACyAA4TextVALyAA13TextAlignmentOGGAH15BodyHyphenationVGtMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVG_ACyACyAA4TextVALyAA13TextAlignmentOGGAH15BodyHyphenationVGtMR) + 48);
  *v48 = v38;
  *(v48 + 8) = v40;
  v42 &= 1u;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = KeyPath;
  *(v48 + 40) = 1;
  outlined copy of Text.Storage(v38, v40, v42);

  outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v36, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
  outlined consume of Text.Storage(v38, v40, v42);

  return outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(v46, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyACyACy07WorkoutB0024ManagedConfigurationsAllH0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGALyAH013ConfigurationE5ModelCSgGGALySo13HKHealthStoreCSgGGALy0I4Core0is10OccurrenceV0CSgGGGAA07_HiddenP0VGAA12_FrameLayoutVGMR);
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationsUpcomingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedConfigurationsUpcomingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAIyAG4CaseOSgGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIySiSgGGAA06_TraitiJ0VyAA017ListRowBackgroundqH0VGGAA7ForEachVySay11WorkoutCore0W13ConfigurationCGA12_AEyAEy0wB007ManagedwyS0VAIySo21FIUIFormattingManagerCSgGGAIyA14_0Y15NavigationModelCSgGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGAA06_TraithI0VyAA017ListRowBackgroundpG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGAA06_TraittU0VyAA022ListRowBackgroundTraitS0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA05TupleE0VyACyACyAA14NavigationLinkVyAA05EmptyE0VACyACyACyACy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGATyAP013ConfigurationK5ModelCSgGGATySo13HKHealthStoreCSgGGATy0N4Core0nX15OccurrenceStoreCSgGGGAA07_HiddenU0VGAA12_FrameLayoutVG_ACyACyAA4TextVATyAA13TextAlignmentOGGAP15BodyHyphenationVGtGG_AA017BorderedProminentiG0VQo_ATyAA08AnyShapeG0VSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<TupleView<(ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMd, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA15ModifiedContentVyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAGyAGy07WorkoutB0024ManagedConfigurationsAllE0VAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAPyAL013ConfigurationH5ModelCSgGGAPySo13HKHealthStoreCSgGGAPy0K4Core0ku10OccurrenceX0CSgGGGAA07_HiddenR0VGAA12_FrameLayoutVG_AGyAGyAA4TextVAPyAA13TextAlignmentOGGAL15BodyHyphenationVGtGGMR, MEMORY[0x277CDF028]);
    _s11WorkoutCore0A13ConfigurationCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0ep10OccurrenceT0CSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G28ConfigurationOccurrenceStoreCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G28ConfigurationOccurrenceStoreCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<HKHealthStore?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo13HKHealthStoreCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo13HKHealthStoreCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB028ManagedConfigurationsAllViewVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMR);
    lazy protocol witness table accessor for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView();
    lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView()
{
  result = lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationsAllView and conformance ManagedConfigurationsAllView);
  }

  return result;
}

uint64_t objectdestroyTm_49()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsAllView, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>>>, _HiddenModifier>, _FrameLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ManagedWorkoutConfigurationRow.PresentationSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManagedWorkoutConfigurationRow.PresentationSize(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t implicit closure #1 in ManagedWorkoutConfigurationRow.init(workoutConfiguration:healthStore:occurrenceStore:presentationSize:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  dispatch thunk of WorkoutConfiguration.activityType.getter();
  type metadata accessor for RaceRouteDataStore();
  type metadata accessor for PreviewChecker();

  MEMORY[0x20F3051E0](v7);
  objc_allocWithZone(type metadata accessor for WorkoutConfigurationDataSource());
  v8 = a3;
  v9 = a4;
  return WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
}

uint64_t ManagedWorkoutConfigurationRow.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    v88 = *(v1 + 88);
    v65 = *(v1 + 32);
    v4 = *(v1 + 48);
    outlined init with copy of ObservedObject<WorkoutConfiguration>(&v88, v89);
    type metadata accessor for FIUIFormattingManager();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager, &protocol conformance descriptor for FIUIFormattingManager);
    v63 = v4;
    v5 = EnvironmentObject.init()();
    v59 = v6;
    v61 = v5;
    type metadata accessor for ConfigurationNavigationModel(0);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    v7 = EnvironmentObject.init()();
    v55 = v8;
    v57 = v7;
    type metadata accessor for WorkoutConfigurationDataSource();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    v9 = EnvironmentObject.init()();
    v51 = v10;
    v53 = v9;
    type metadata accessor for WorkoutConfiguration();
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
    v11 = ObservedObject.init(wrappedValue:)();
    v48 = v12;
    v49 = v11;
    State.init(wrappedValue:)();
    v47 = v89[0];
    v46 = *(&v89[0] + 1);
    LOBYTE(v67) = 0;
    State.init(wrappedValue:)();
    v45 = v89[0];
    v13 = *(&v89[0] + 1);
    v14 = StateObject.wrappedValue.getter();
    v15 = static ObservableObject.environmentStore.getter();
    v16 = *v2;
    if (!*v2)
    {
LABEL_10:
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_11;
    }

    v17 = v15;
    v18 = v16;
    v19 = static ObservableObject.environmentStore.getter();
    v20 = *(v2 + 16);
    if (v20)
    {
      v21 = v19;

      v67 = v61;
      v68 = v59;
      v69 = v57;
      v70 = v55;
      v71 = v53;
      v72 = v51;
      v73 = v49;
      v74 = v48;
      v75 = v65;
      v76 = v63;
      v77 = 14;
      LOBYTE(v78) = v47;
      v79 = v46;
      LOBYTE(v80) = v45;
      v81 = v13;
      v82 = v17;
      v83 = v14;
      v84 = v21;
      v85 = v16;
      v86 = static ObservableObject.environmentStore.getter();
      v87 = v20;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy07WorkoutB007ManagedG23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGALySo21FIUIFormattingManagerCSgGGALyAH0I15NavigationModelCSgGGAGyAGyAGyAH0hgi8ExpandedK0VAQGAVGA_G_GWOi0_(&v67);
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      result = _ConditionalContent<>.init(storage:)();
      v40 = v90[0];
      a1[8] = v89[8];
      a1[9] = v40;
      *(a1 + 153) = *(v90 + 9);
      v41 = v89[5];
      a1[4] = v89[4];
      a1[5] = v41;
      v42 = v89[7];
      a1[6] = v89[6];
      a1[7] = v42;
      v43 = v89[1];
      *a1 = v89[0];
      a1[1] = v43;
      v44 = v89[3];
      a1[2] = v89[2];
      a1[3] = v44;
      return result;
    }

LABEL_9:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_10;
  }

  v88 = *(v1 + 88);
  v66 = *(v1 + 32);
  v22 = *(v1 + 48);
  outlined init with copy of ObservedObject<WorkoutConfiguration>(&v88, v89);
  type metadata accessor for FIUIFormattingManager();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, type metadata accessor for FIUIFormattingManager, &protocol conformance descriptor for FIUIFormattingManager);
  v64 = v22;
  v23 = EnvironmentObject.init()();
  v60 = v24;
  v62 = v23;
  type metadata accessor for ConfigurationNavigationModel(0);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v25 = EnvironmentObject.init()();
  v56 = v26;
  v58 = v25;
  type metadata accessor for WorkoutConfigurationDataSource();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v27 = EnvironmentObject.init()();
  v52 = v28;
  v54 = v27;
  type metadata accessor for WorkoutConfiguration();
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
  v29 = ObservedObject.init(wrappedValue:)();
  v50 = v30;
  v31 = StateObject.wrappedValue.getter();
  v32 = static ObservableObject.environmentStore.getter();
  v33 = *v2;
  if (*v2)
  {
    v34 = v32;
    v35 = v33;
    v36 = static ObservableObject.environmentStore.getter();
    v37 = *(v2 + 16);
    if (v37)
    {
      v38 = v36;

      v67 = v62;
      v68 = v60;
      v69 = v58;
      v70 = v56;
      v71 = v54;
      v72 = v52;
      v73 = v29;
      v74 = v50;
      v75 = v66;
      v76 = v64;
      v77 = v34;
      v78 = v31;
      v79 = v38;
      v80 = v33;
      v81 = static ObservableObject.environmentStore.getter();
      v82 = v37;
      _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGy07WorkoutB007ManagedG23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGALySo21FIUIFormattingManagerCSgGGALyAH0I15NavigationModelCSgGGAGyAGyAGyAH0hgi8ExpandedK0VAQGAVGA_G_GWOi_(&v67);
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_11:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of ObservedObject<WorkoutConfiguration>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E13ConfigurationCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMR);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationCompactRow and conformance ManagedWorkoutConfigurationCompactRow);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGAHyAD0G15NavigationModelCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGAHySo21FIUIFormattingManagerCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FIUIFormattingManager?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB007ManagedE24ConfigurationExpandedRowVAA30_EnvironmentKeyWritingModifierVy0E4Core0eG10DataSourceCSgGGMR);
    lazy protocol witness table accessor for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationExpandedRow and conformance ManagedWorkoutConfigurationExpandedRow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedWorkoutConfigurationRow.PresentationSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedWorkoutConfigurationRow.PresentationSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy07WorkoutB007ManagedF23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0F4Core0fH10DataSourceCSgGGAJySo21FIUIFormattingManagerCSgGGAJyAF0H15NavigationModelCSgGGAEyAEyAEyAF0gfh8ExpandedJ0VAOGATGAYGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEy07WorkoutB007ManagedF23ConfigurationCompactRowVAA30_EnvironmentKeyWritingModifierVy0F4Core0fH10DataSourceCSgGGAJySo21FIUIFormattingManagerCSgGGAJyAF0H15NavigationModelCSgGGAEyAEyAEyAF0gfh8ExpandedJ0VAOGATGAYGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationCompactRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationExpandedRow, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize()
{
  result = lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize;
  if (!lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedWorkoutConfigurationRow.PresentationSize and conformance ManagedWorkoutConfigurationRow.PresentationSize);
  }

  return result;
}

uint64_t WorkoutAlertList.init(onWorkoutAlertSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for WorkoutAlertList(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t type metadata accessor for WorkoutAlertList(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutAlertList;
  if (!type metadata singleton initialization cache for WorkoutAlertList)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutAlertList.dismiss.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutAlertList(0);
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutAlertList.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMR, MEMORY[0x277CE14C0]);
  return List<>.init(content:)();
}

uint64_t closure #1 in WorkoutAlertList.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVGMR);
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v73 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v60 - v6;
  MEMORY[0x28223BE20](v7);
  v71 = &v60 - v8;
  MEMORY[0x28223BE20](v9);
  v81 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v68 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v67 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v66 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = &v60 - v20;
  MEMORY[0x28223BE20](v21);
  v64 = &v60 - v22;
  MEMORY[0x28223BE20](v23);
  v63 = &v60 - v24;
  MEMORY[0x28223BE20](v25);
  v79 = &v60 - v26;
  MEMORY[0x28223BE20](v27);
  v77 = &v60 - v28;
  MEMORY[0x28223BE20](v29);
  v75 = &v60 - v30;
  MEMORY[0x28223BE20](v31);
  v76 = &v60 - v32;
  MEMORY[0x28223BE20](v33);
  v78 = &v60 - v34;
  MEMORY[0x28223BE20](v35);
  v80 = &v60 - v36;
  MEMORY[0x28223BE20](v37);
  v61 = &v60 - v38;
  MEMORY[0x28223BE20](v39);
  v62 = &v60 - v40;
  MEMORY[0x28223BE20](v41);
  v70 = &v60 - v42;
  LocalizedStringKey.init(stringLiteral:)();
  v91 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMR);
  lazy protocol witness table accessor for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>();
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v90 = a1;
  v43 = v62;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v89 = a1;
  v44 = v61;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v88 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v87 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v86 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v85 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v84 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v83 = a1;
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v82 = a1;
  v45 = v63;
  Section<>.init(_:content:)();
  v46 = *(v74 + 16);
  v47 = v64;
  v46(v64, v70, v3);
  v48 = v65;
  v46(v65, v43, v3);
  v49 = v66;
  v46(v66, v44, v3);
  v50 = v67;
  v46(v67, v80, v3);
  v46(v68, v78, v3);
  v51 = v69;
  v46(v69, v76, v3);
  v46(v81, v75, v3);
  v46(v71, v77, v3);
  v46(v72, v79, v3);
  v46(v73, v45, v3);
  v52 = v60;
  v46(v60, v47, v3);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVG_A9TtMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00G11AlertTesterC04TestgH0VGSSAA6ButtonVyAEGGAA9EmptyViewVG_A9TtMR);
  v46(&v52[v53[12]], v48, v3);
  v46(&v52[v53[16]], v49, v3);
  v46(&v52[v53[20]], v50, v3);
  v54 = v68;
  v46(&v52[v53[24]], v68, v3);
  v46(&v52[v53[28]], v51, v3);
  v46(&v52[v53[32]], v81, v3);
  v55 = v71;
  v46(&v52[v53[36]], v71, v3);
  v56 = v72;
  (v46)(&v52[v53[40]]);
  v57 = v73;
  (v46)(&v52[v53[44]]);
  v58 = *(v74 + 8);
  v58(v63, v3);
  v58(v79, v3);
  v58(v77, v3);
  v58(v75, v3);
  v58(v76, v3);
  v58(v78, v3);
  v58(v80, v3);
  v58(v61, v3);
  v58(v62, v3);
  v58(v70, v3);
  v58(v57, v3);
  v58(v56, v3);
  v58(v55, v3);
  v58(v81, v3);
  v58(v69, v3);
  v58(v54, v3);
  v58(v67, v3);
  v58(v66, v3);
  v58(v65, v3);
  return (v58)(v64, v3);
}

uint64_t closure #1 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for basicAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.basicAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #2 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for paceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.paceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #3 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for speedAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.speedAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #4 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for cadenceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.cadenceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #5 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for powerAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.powerAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #6 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for heartRateAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.heartRateAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #7 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for intervalAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.intervalAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #8 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for raceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.raceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #9 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for trackAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.trackAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #10 in closure #1 in WorkoutAlertList.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutAlertList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (one-time initialization token for cyclingCadenceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static WorkoutAlertTester.cyclingCadenceAlerts;
  outlined init with copy of WorkoutAlertList(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of WorkoutAlertList(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type [WorkoutAlertTester.TestWorkoutAlert] and conformance [A], &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMd, &_sSay9WorkoutUI0A11AlertTesterC04TestaC0VGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for WorkoutAlertList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v17[0] = v10;
  v17[1] = v9;
  outlined init with copy of WorkoutAlertList(a2, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  outlined init with take of WorkoutAlertList(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v10;
  v14[1] = v9;
  v14[2] = v11;
  lazy protocol witness table accessor for type String and conformance String();
  swift_bridgeObjectRetain_n();
  v15 = v11;
  return Button<>.init<A>(_:action:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter(void (**a1)(uint64_t, double), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*a1)(a4, v8);
  WorkoutAlertList.dismiss.getter(v10);
  DismissAction.callAsFunction()();
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for View.body.getter in conformance WorkoutAlertList()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySay07WorkoutB00I11AlertTesterC04TestiJ0VGSSAA6ButtonVyAGGGAA05EmptyD0VG_A9VtGMR, MEMORY[0x277CE14C0]);
  return List<>.init(content:)();
}

void type metadata completion function for WorkoutAlertList(uint64_t a1)
{
  type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMd, &_s7SwiftUI7ForEachVySay07WorkoutB00E11AlertTesterC04TesteF0VGSSAA6ButtonVyAA4TextVGGMR);
    lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutAlertList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAlertList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutAlertList(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAlertList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>, Section<Text, ForEach<[WorkoutAlertTester.TestWorkoutAlert], String, Button<Text>>, EmptyView>)> and c(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert;
  if (!lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertTester.TestWorkoutAlert and conformance WorkoutAlertTester.TestWorkoutAlert);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #10 in closure #1 in WorkoutAlertList.body.getter()
{
  v1 = *(type metadata accessor for WorkoutAlertList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in closure #1 in closure #1 in closure #1 in WorkoutAlertList.body.getter((v0 + v2), *v3, v3[1], v3[2]);
}

uint64_t objectdestroyTm_50()
{
  v1 = (type metadata accessor for WorkoutAlertList(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for WorkoutAlertList(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void EnergyPicker.init(goal:formattingManager:lastWorkoutValue:color:editMode:context:)(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t *a11)
{
  v16 = a11[1];
  v30 = a11[2];
  v28 = *a11;
  v29 = a11[3];
  v27 = *(a11 + 32);
  type metadata accessor for EnergyPickerViewModel(0);
  swift_allocObject();
  v31 = a5;

  v17 = a3;
  v18 = a4;

  EnergyPickerViewModel.init(goal:formattingManager:lastWorkoutValue:)(v19, a2, v17, v18, a5);
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();
  v20 = ObservedObject.init(wrappedValue:)();
  v22 = v21;

  if (v16 == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    v16 = a6;
  }

  else
  {

    v25 = v29;
    v24 = v30;
    v23 = v28;
    v26 = v27;
  }

  *a9 = v20;
  *(a9 + 8) = v22;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10 & 1;
  *(a9 + 40) = v23 & 1;
  *(a9 + 48) = v16;
  *(a9 + 56) = v24;
  *(a9 + 64) = v25;
  *(a9 + 72) = v26 & 1;
}

void EnergyPicker.body.getter(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 48);
  if (static Platform.current.getter())
  {
    type metadata accessor for EnergyPickerViewModel(0);
    lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();

    ObservedObject.init(wrappedValue:)();
LABEL_9:
    lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone();
    lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch();
    _ConditionalContent<>.init(storage:)();
    *(a2 + 64) = v16;
    *(a2 + 80) = v17;
    *(a2 + 96) = v18;
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
    return;
  }

  *&v12 = v4;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  type metadata accessor for EnergyPickerViewModel(0);
  lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel();

  ObservedObject.init(wrappedValue:)();
  if (v7)
  {

LABEL_8:

    goto LABEL_9;
  }

  v8 = objc_opt_self();

  v9 = [v8 energyColors];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 nonGradientTextColor];

    if (v11)
    {
      Color.init(uiColor:)();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type EnergyPickerViewModel and conformance EnergyPickerViewModel()
{
  result = lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel;
  if (!lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel)
  {
    type metadata accessor for EnergyPickerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerViewModel and conformance EnergyPickerViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone()
{
  result = lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone;
  if (!lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerPhone and conformance EnergyPickerPhone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch()
{
  result = lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch;
  if (!lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnergyPickerWatch and conformance EnergyPickerWatch);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnergyPicker(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EnergyPicker(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB017EnergyPickerPhoneVAD0fG5WatchVGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB017EnergyPickerPhoneVAD0fG5WatchVGMR);
    lazy protocol witness table accessor for type EnergyPickerPhone and conformance EnergyPickerPhone();
    lazy protocol witness table accessor for type EnergyPickerWatch and conformance EnergyPickerWatch();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EnergyPickerPhone, EnergyPickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t CatalogLockupBridge.catalogLockup.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v4 = type metadata accessor for CatalogLockup();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t outlined init with copy of MediaTagStringBuilding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id CatalogLockupBridge.__allocating_init(catalogLockup:mediaTagStringBuilder:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v7 = type metadata accessor for CatalogLockup();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  outlined init with copy of MediaTagStringBuilding(a2, &v5[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id CatalogLockupBridge.init(catalogLockup:mediaTagStringBuilder:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___SMCatalogLockup_catalogLockup;
  v6 = type metadata accessor for CatalogLockup();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  outlined init with copy of MediaTagStringBuilding(a2, &v2[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CatalogLockupBridge(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for CatalogLockupBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for CatalogLockupBridge;
  if (!type metadata singleton initialization cache for CatalogLockupBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc CatalogLockupBridge.title.getter(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for MediaTagStringBuilderOptions();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder], *&a1[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder + 24]);
  v9 = a1;
  a3();
  static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  v10 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t CatalogLockupBridge.title.getter(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for MediaTagStringBuilderOptions();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder), *(v1 + OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder + 24));
  a1();
  static MediaTagStringBuilderOptions.defaultWithOverrides(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)();
  v7 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  (*(v4 + 8))(v6, v3);
  return v7;
}

id CatalogLockupBridge.artwork.getter()
{
  v0 = type metadata accessor for StandardArtworkDescriptor();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArtworkDescriptor();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  CatalogLockup.artworkDescriptor.getter();
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  outlined destroy of ArtworkDescriptor(v6, v14);
  StandardArtworkDescriptor.artwork.getter();
  (*(v1 + 8))(v3, v0);
  v15 = *(v8 + 16);
  v15(v10, v13, v7);
  v16 = type metadata accessor for ArtworkBridge(0);
  v17 = objc_allocWithZone(v16);
  v15(&v17[OBJC_IVAR___SMArtwork_artwork], v10, v7);
  v21.receiver = v17;
  v21.super_class = v16;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  return v18;
}

uint64_t outlined destroy of ArtworkDescriptor(uint64_t a1, double a2)
{
  v3 = type metadata accessor for ArtworkDescriptor();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id CatalogLockupBridge.mediaTypeRawValue.getter()
{
  v0 = CatalogLockup.mediaType.getter();
  if (v2 != -1)
  {
    if (v2)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    outlined consume of PortableEnum<CatalogMediaType>?(v0, v1, v2);
  }

  return 0;
}

double outlined consume of PortableEnum<CatalogMediaType>?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of PortableEnum<CatalogMediaType>(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t CatalogLockupBridge.mediaType.getter()
{
  v0 = CatalogLockup.mediaType.getter();
  if (v2 == -1)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    outlined consume of PortableEnum<CatalogMediaType>?(v0, v1, v2);
    return 0;
  }

  v3 = 2;
  v4 = 3;
  if (v0 != 2)
  {
    v4 = 4;
  }

  if (!v0)
  {
    v3 = 1;
  }

  if (v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t CatalogLockupBridge.assetLoadStatus.getter()
{
  v0 = CatalogLockup.bundleLoadStatus.getter();
  if (v1 == -1)
  {
    return 5;
  }

  if (v1)
  {
    return qword_20CB77CD8[v0];
  }

  return 6;
}

unint64_t CatalogLockupBridge.bundleReason.getter()
{
  CatalogLockup.bundleReason.getter();
  if (v0 == -1 || (v0 & 1) == 0)
  {
    return 2;
  }

  result = AssetBundle.Reason.rawValue.getter();
  if (result >= 2)
  {
    return 2;
  }

  return result;
}

id @objc CatalogLockupBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

id CatalogLockupBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogLockupBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogLockupBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static CatalogLockupBridge.guidedWalkCanonical(mediaTagStringBuilder:)(uint64_t a1)
{
  v73 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore13TextAttributeVSgMd, &_s11SeymourCore13TextAttributeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore11CatalogLinkOSgMd, &_s11SeymourCore11CatalogLinkOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19AssetBundleProgressVSgMd, &_s11SeymourCore19AssetBundleProgressVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - v15;
  v65 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v66 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17ArtworkDescriptorOSgMd, &_s11SeymourCore17ArtworkDescriptorOSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v62 - v24;
  v67 = &v62 - v24;
  v26 = type metadata accessor for CatalogLockup();
  v27 = *(v26 - 8);
  v70 = v26;
  v71 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v68 = &v62 - v31;
  static CatalogLockup.canonical()();
  v32 = type metadata accessor for ArtworkDescriptor();
  (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v34(v22, 1, 1, v33);
  v35 = type metadata accessor for AssetBundleProgress();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  v62 = v19;
  v34(v19, 1, 1, v33);
  v36 = type metadata accessor for CatalogLink();
  v37 = v13;
  (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
  v38 = type metadata accessor for Artwork();
  v39 = *(*(v38 - 8) + 56);
  v64 = v10;
  v39(v10, 1, 1, v38);
  v40 = type metadata accessor for URL();
  v41 = *(*(v40 - 8) + 56);
  v63 = v7;
  v41(v7, 1, 1, v40);
  v42 = type metadata accessor for TextAttribute();
  v43 = *(*(v42 - 8) + 56);
  v44 = v69;
  v43(v69, 1, 1, v42);
  v45 = v72;
  v43(v72, 1, 1, v42);
  v46 = v37;
  v47 = v65;
  v49 = v67;
  v48 = v68;
  v50 = v66;
  CatalogLockup.copyWith(accessibilityTitle:actionTags:artworkDescriptor:availableAudioLanguages:bundleDateRequested:bundleLoadStatus:bundleProgress:bundleReason:completedCount:contentRating:contextMenuSubtitleTags:contextMenuTitleTags:dateBookmarked:detailTags:duration:dynamicBrickDisplayStyle:editorialCardIdentifier:healthKitActivityTypes:identifier:isIncompletePlanWorkout:link:mediaType:recencyTag:referenceType:sampleContentIdentifier:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:subtitleTags:subtitleTextAttribute:titleTags:titleTextAttribute:)();
  outlined destroy of TextAttribute?(v45, &_s11SeymourCore13TextAttributeVSgMd, &_s11SeymourCore13TextAttributeVSgMR);
  outlined destroy of TextAttribute?(v44, &_s11SeymourCore13TextAttributeVSgMd, &_s11SeymourCore13TextAttributeVSgMR);
  outlined destroy of TextAttribute?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of TextAttribute?(v64, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  outlined destroy of TextAttribute?(v46, &_s11SeymourCore11CatalogLinkOSgMd, &_s11SeymourCore11CatalogLinkOSgMR);
  outlined destroy of TextAttribute?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of TextAttribute?(v47, &_s11SeymourCore19AssetBundleProgressVSgMd, &_s11SeymourCore19AssetBundleProgressVSgMR);
  outlined destroy of TextAttribute?(v50, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of TextAttribute?(v49, &_s11SeymourCore17ArtworkDescriptorOSgMd, &_s11SeymourCore17ArtworkDescriptorOSgMR);
  v52 = v70;
  v51 = v71;
  v53 = *(v71 + 8);
  v53(v29, v70);
  v54 = *(v51 + 16);
  v55 = v48;
  v56 = v48;
  v57 = v52;
  v54(v29, v56, v52);
  outlined init with copy of MediaTagStringBuilding(v73, v75);
  v58 = type metadata accessor for CatalogLockupBridge(0);
  v59 = objc_allocWithZone(v58);
  v54(&v59[OBJC_IVAR___SMCatalogLockup_catalogLockup], v29, v57);
  outlined init with copy of MediaTagStringBuilding(v75, &v59[OBJC_IVAR___SMCatalogLockup_mediaTagStringBuilder]);
  v74.receiver = v59;
  v74.super_class = v58;
  v60 = objc_msgSendSuper2(&v74, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v53(v29, v57);
  v53(v55, v57);
  return v60;
}

uint64_t outlined destroy of TextAttribute?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for CatalogLockupBridge(uint64_t a1)
{
  result = type metadata accessor for CatalogLockup();
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

uint64_t OvernightMetricsViewModel.overnightVitalsState.getter@<X0>(char *a1@<X8>)
{
  result = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  if (result == 2 || (result & 1) == 0)
  {
    result = OvernightMetricsViewModel.changeDetectedCountToday.getter();
    if (result)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v5;
    }
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t WorkoutTypeImage.init(workoutType:iconSize:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double WorkoutTypeImage.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = FIUIStaticScalableWorkoutIconImage();
  if (!v8)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  FIUIIconSize();
  v9 = [v8 imageWithRenderingMode_];
  Image.init(uiImage:)();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = v7;
  v12 = v14[2];
  *(a1 + 40) = v14[1];
  *(a1 + 56) = v12;
  result = *&v15;
  *(a1 + 72) = v15;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutTypeImage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for WorkoutTypeImage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConfigurationType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E120]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E128]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

{
  v3 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0], MEMORY[0x277D7DCD8]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError, MEMORY[0x277D7DCD0], MEMORY[0x277D7DCE0]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void Array<A>.removeTargetZone(primaryType:)(uint64_t a1)
{
  v67 = a1;
  v2 = type metadata accessor for TargetZone.PrimaryType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v75 = &v64 - v10;
  v68 = v1;
  v11 = *v1;
  v77 = MEMORY[0x277D84F90];
  if (v11 >> 62)
  {
    goto LABEL_123;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v64 = v5;
    v65 = v3;
    v66 = v2;
    v3 = 0;
    v74 = v11 & 0xC000000000000001;
    v72 = v12;
    v73 = v11 & 0xFFFFFFFFFFFFFF8;
    LODWORD(v71) = *MEMORY[0x277D7DE78];
    v70 = (v69 + 104);
    v5 = v69 + 8;
    while (1)
    {
      if (v74)
      {
        MEMORY[0x20F30C990](v3, v11, v9);
        v14 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v13 = v77;
          v3 = v65;
          v2 = v66;
          v5 = v64;
          break;
        }
      }

      else
      {
        if (v3 >= *(v73 + 16))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          v12 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v14 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      v15 = v11;
      v16 = v75;
      TargetZone.type.getter();
      v17 = v6;
      v18 = v16;
      v19 = v76;
      (*v70)(v76, v71, v17);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *v5;
      v21 = v19;
      v22 = v18;
      v6 = v17;
      (*v5)(v21, v17);
      v20(v22, v17);
      if (v2)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v11 = v15;
      ++v3;
      if (v14 == v72)
      {
        goto LABEL_15;
      }
    }
  }

  v23 = v67;
  *v68 = v13;
  (*(v3 + 16))(v5, v23, v2);
  v24 = (*(v3 + 88))(v5, v2);
  v25 = *MEMORY[0x277D7DEC0];
  v74 = v13;
  if (v24 != v25)
  {
    goto LABEL_32;
  }

  v77 = MEMORY[0x277D84F90];
  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(v13 + 16);
  }

  v2 = MEMORY[0x277D84F90];
  if (v11)
  {
    v3 = 0;
    v73 = v13 & 0xC000000000000001;
    LODWORD(v72) = *MEMORY[0x277D7DE48];
    v71 = (v69 + 104);
    v26 = (v69 + 8);
    do
    {
      if (v73)
      {
        v24 = MEMORY[0x20F30C990](v3, v13);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_117;
        }

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          if (v24 == *MEMORY[0x277D7DED0])
          {
            v77 = MEMORY[0x277D84F90];
            if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
            {
              v11 = __CocoaSet.count.getter();
            }

            else
            {
              v11 = *(v13 + 16);
            }

            v2 = MEMORY[0x277D84F90];
            if (v11)
            {
              v3 = 0;
              v73 = v13 & 0xC000000000000001;
              LODWORD(v72) = *MEMORY[0x277D7DE70];
              v70 = v11;
              v71 = (v69 + 104);
              v31 = (v69 + 8);
              do
              {
                if (v73)
                {
                  MEMORY[0x20F30C990](v3, v13);
                  v2 = v3 + 1;
                  if (__OFADD__(v3, 1))
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v3 >= *(v13 + 16))
                  {
                    goto LABEL_119;
                  }

                  v2 = v3 + 1;
                  if (__OFADD__(v3, 1))
                  {
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }
                }

                v32 = v75;
                TargetZone.type.getter();
                v33 = v76;
                (*v71)(v76, v72, v6);
                lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
                v34 = dispatch thunk of static Equatable.== infix(_:_:)();
                v5 = *v31;
                (*v31)(v33, v6);
                (v5)(v32, v6);
                if (v34)
                {
                }

                else
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  v13 = v74;
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                v11 = v70;
                ++v3;
              }

              while (v2 != v70);
              v5 = v77;
              v2 = MEMORY[0x277D84F90];
            }

            else
            {
              v5 = MEMORY[0x277D84F90];
            }

            v77 = v2;
            if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
            {
              v45 = __CocoaSet.count.getter();
              if (!v45)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v45 = *(v5 + 16);
              if (!v45)
              {
                goto LABEL_145;
              }
            }

            v3 = 0;
            v73 = v45;
            v74 = v5 & 0xC000000000000001;
            LODWORD(v72) = *MEMORY[0x277D7DE58];
            v71 = (v69 + 104);
            v46 = (v69 + 8);
            while (1)
            {
              if (v74)
              {
                MEMORY[0x20F30C990](v3, v5);
                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                if (v3 >= *(v5 + 16))
                {
                  goto LABEL_120;
                }

                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
LABEL_97:
                  __break(1u);
                  goto LABEL_98;
                }
              }

              v47 = v75;
              TargetZone.type.getter();
              v48 = v76;
              (*v71)(v76, v72, v6);
              lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
              v11 = dispatch thunk of static Equatable.== infix(_:_:)();
              v49 = *v46;
              (*v46)(v48, v6);
              v49(v47, v6);
              if (v11)
              {
              }

              else
              {
                v11 = &v77;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              ++v3;
              if (v2 == v73)
              {
                goto LABEL_114;
              }
            }
          }

          if (v24 != *MEMORY[0x277D7DEC8])
          {
            (*(v3 + 8))(v5, v2);
            return;
          }

          v77 = MEMORY[0x277D84F90];
          if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
          {
            v11 = __CocoaSet.count.getter();
          }

          else
          {
            v11 = *(v13 + 16);
          }

          v2 = MEMORY[0x277D84F90];
          if (v11)
          {
            v3 = 0;
            v73 = v13 & 0xC000000000000001;
            LODWORD(v72) = *MEMORY[0x277D7DE68];
            v70 = v11;
            v71 = (v69 + 104);
            v35 = (v69 + 8);
            do
            {
              if (v73)
              {
                MEMORY[0x20F30C990](v3, v13);
                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
                  goto LABEL_64;
                }
              }

              else
              {
                if (v3 >= *(v13 + 16))
                {
                  goto LABEL_121;
                }

                v2 = v3 + 1;
                if (__OFADD__(v3, 1))
                {
LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }
              }

              v36 = v75;
              TargetZone.type.getter();
              v37 = v76;
              (*v71)(v76, v72, v6);
              lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
              v38 = dispatch thunk of static Equatable.== infix(_:_:)();
              v5 = *v35;
              (*v35)(v37, v6);
              (v5)(v36, v6);
              if (v38)
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v13 = v74;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              v11 = v70;
              ++v3;
            }

            while (v2 != v70);
LABEL_98:
            v5 = v77;
            v2 = MEMORY[0x277D84F90];
          }

          else
          {
            v5 = MEMORY[0x277D84F90];
          }

          v77 = v2;
          if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
          {
            v50 = __CocoaSet.count.getter();
            if (!v50)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v50 = *(v5 + 16);
            if (!v50)
            {
              goto LABEL_145;
            }
          }

          v3 = 0;
          v73 = v50;
          v74 = v5 & 0xC000000000000001;
          LODWORD(v72) = *MEMORY[0x277D7DE50];
          v71 = (v69 + 104);
          v51 = (v69 + 8);
          while (1)
          {
            if (v74)
            {
              MEMORY[0x20F30C990](v3, v5);
              v2 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_113;
              }
            }

            else
            {
              if (v3 >= *(v5 + 16))
              {
                goto LABEL_122;
              }

              v2 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
LABEL_113:
                __break(1u);
LABEL_114:
                v2 = v77;
                goto LABEL_145;
              }
            }

            v52 = v75;
            TargetZone.type.getter();
            v53 = v76;
            (*v71)(v76, v72, v6);
            lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
            v11 = dispatch thunk of static Equatable.== infix(_:_:)();
            v54 = *v51;
            (*v51)(v53, v6);
            v54(v52, v6);
            if (v11)
            {
            }

            else
            {
              v11 = &v77;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            ++v3;
            if (v2 == v73)
            {
              goto LABEL_114;
            }
          }
        }
      }

      v2 = v11;
      v27 = v75;
      TargetZone.type.getter();
      v28 = v76;
      (*v71)(v76, v72, v6);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *v26;
      (*v26)(v28, v6);
      v30(v27, v6);
      if (v29)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v13 = v74;
      v11 = v2;
      ++v3;
    }

    while (v5 != v2);
LABEL_48:
    v5 = v77;
    v2 = MEMORY[0x277D84F90];
  }

  else
  {
LABEL_65:
    v5 = v2;
  }

  v77 = v2;
  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v39 = __CocoaSet.count.getter();
    if (v39)
    {
      goto LABEL_69;
    }

LABEL_126:
    v44 = v2;
    goto LABEL_127;
  }

  v39 = *(v5 + 16);
  if (!v39)
  {
    goto LABEL_126;
  }

LABEL_69:
  v3 = 0;
  v73 = v39;
  v74 = v5 & 0xC000000000000001;
  LODWORD(v72) = *MEMORY[0x277D7DE40];
  v71 = (v69 + 104);
  v40 = (v69 + 8);
  while (v74)
  {
    MEMORY[0x20F30C990](v3, v5);
    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_79;
    }

LABEL_75:
    v41 = v75;
    TargetZone.type.getter();
    v42 = v76;
    (*v71)(v76, v72, v6);
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v40;
    (*v40)(v42, v6);
    v43(v41, v6);
    if (v11)
    {
    }

    else
    {
      v11 = &v77;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v3;
    if (v2 == v73)
    {
      goto LABEL_80;
    }
  }

  if (v3 >= *(v5 + 16))
  {
    goto LABEL_118;
  }

  v2 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_75;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  v44 = v77;
  v2 = MEMORY[0x277D84F90];
LABEL_127:

  v77 = v2;
  if (v44 < 0 || (v44 & 0x4000000000000000) != 0)
  {
LABEL_143:
    v55 = __CocoaSet.count.getter();
    if (v55)
    {
      goto LABEL_130;
    }
  }

  else
  {
    v55 = *(v44 + 16);
    if (v55)
    {
LABEL_130:
      v56 = 0;
      v74 = v44 & 0xC000000000000001;
      LODWORD(v73) = *MEMORY[0x277D7DE60];
      v71 = v55;
      v72 = (v69 + 104);
      v57 = (v69 + 8);
      while (1)
      {
        if (v74)
        {
          MEMORY[0x20F30C990](v56, v44);
          v58 = (v56 + 1);
          if (__OFADD__(v56, 1))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            v2 = v77;
            goto LABEL_145;
          }
        }

        else
        {
          if (v56 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_143;
          }

          v58 = (v56 + 1);
          if (__OFADD__(v56, 1))
          {
            goto LABEL_140;
          }
        }

        v59 = v44;
        v60 = v75;
        TargetZone.type.getter();
        v61 = v76;
        (*v72)(v76, v73, v6);
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *v57;
        (*v57)(v61, v6);
        v63(v60, v6);
        if (v62)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v44 = v59;
        ++v56;
        if (v58 == v71)
        {
          goto LABEL_141;
        }
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_145:

  *v68 = v2;
}

uint64_t AlertConfigurationType.localizedTitle(activityType:)(void *a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v5 = "ION_POWER_ZONES_TITLE";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = WorkoutUIBundle.super.isa;
        v16 = 0xE000000000000000;
        v8 = 0x617A696C61636F4CLL;
        v9 = 0xEB00000000656C62;
        v11 = 0xD000000000000026;
      }

      else
      {
        v5 = "ason";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v7 = WorkoutUIBundle.super.isa;
        v16 = 0xE000000000000000;
        v8 = 0x617A696C61636F4CLL;
        v9 = 0xEB00000000656C62;
        v11 = 0xD000000000000025;
      }

      goto LABEL_37;
    }

    if (a2 != 4)
    {
      v5 = "iled with error: %@";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD000000000000022;
      goto LABEL_37;
    }

    v6 = "undleProgressUpdated %@ ";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
LABEL_33:
      swift_once();
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if ([a1 effectiveTypeIdentifier] == 13)
        {
          v5 = "ION_CADENCE_TITLE_PEDOMETER";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v7 = WorkoutUIBundle.super.isa;
          v16 = 0xE000000000000000;
          v8 = 0x617A696C61636F4CLL;
          v9 = 0xEB00000000656C62;
          v11 = 0xD000000000000029;
        }

        else
        {
          v5 = "ALERT_CONFIGURATION_POWER_TITLE";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v7 = WorkoutUIBundle.super.isa;
          v16 = 0xE000000000000000;
          v8 = 0x617A696C61636F4CLL;
          v9 = 0xEB00000000656C62;
          v11 = 0xD00000000000002BLL;
        }

        goto LABEL_37;
      }

      v5 = "ION_TRACK_ALERTS_TITLE";
      v4 = one-time initialization token for WorkoutUIBundle;
      goto LABEL_26;
    }

    if (a2)
    {
      v5 = "ION_CADENCE_TITLE_CYCLING";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD000000000000024;
      goto LABEL_37;
    }

    v2 = FIUIDistanceTypeForActivityType();
    v3 = MEMORY[0x20F30D340](v2);
    v4 = one-time initialization token for WorkoutUIBundle;
    if (v3 == 4)
    {
      v5 = "ALERT_CONFIGURATION_PACE_TITLE";
LABEL_26:
      if (v4 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = WorkoutUIBundle.super.isa;
      v16 = 0xE000000000000000;
      v8 = 0x617A696C61636F4CLL;
      v9 = 0xEB00000000656C62;
      v11 = 0xD00000000000001FLL;
LABEL_37:
      v10 = v5 | 0x8000000000000000;
      goto LABEL_38;
    }

    v6 = "ION_HEART_RATE_TITLE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      goto LABEL_33;
    }
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v16 = 0xE000000000000000;
  v8 = 0x617A696C61636F4CLL;
  v9 = 0xEB00000000656C62;
  v10 = v6 | 0x8000000000000000;
  v11 = 0xD00000000000001ELL;
LABEL_38:
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v8, v7, v12, *(&v16 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t AlertConfigurationType.navigationTitle(activityType:context:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for AlertConfigurationContext();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D7E4B8])
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for ConfigurationType();
    (*(*(v12 - 8) + 8))(v10, v12);
    return 0;
  }

  else if (v11 == *MEMORY[0x277D7E4C0])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v24._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._object = 0x800000020CB9BAB0;
    v16._countAndFlagsBits = 0xD000000000000024;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20CB5DA70;
    v19 = AlertConfigurationType.localizedTitle(activityType:)(a1, a3);
    v21 = v20;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = static String.localizedStringWithFormat(_:_:)();

    return v22;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AlertConfigurationType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AlertConfigurationType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AlertConfigurationType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AlertConfigurationType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL AlertConfigurationView.configurationTypeIsSupported(_:configurationContext:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfigurationContext();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        (*(v5 + 104))(v8, *MEMORY[0x277D7E4C0], v4, v6);
        v13 = static AlertConfigurationContext.== infix(_:_:)();
        (*(v5 + 8))(v8, v4);
        if (v13)
        {
          v26 = v10;
          v27 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
          State.wrappedValue.getter();
          v14 = *(v25 + 16);

          v15 = FIUIWorkoutActivityType.supportedSplits.getter();

          v16 = 2;
LABEL_17:
          v20 = specialized Set.contains(_:)(v16, v15);

          return v20;
        }
      }

      else
      {
        (*(v5 + 104))(v8, *MEMORY[0x277D7E4C0], v4, v6);
        v21 = static AlertConfigurationContext.== infix(_:_:)();
        (*(v5 + 8))(v8, v4);
        if (v21)
        {
          v26 = v10;
          v27 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
          State.wrappedValue.getter();
          v22 = *(v25 + 16);

          v15 = FIUIWorkoutActivityType.supportedSplits.getter();

          v16 = 1;
          goto LABEL_17;
        }
      }

      return 0;
    }

    if (a1 == 6)
    {
      (*(v5 + 104))(v8, *MEMORY[0x277D7E4C0], v4, v6);
      v17 = static AlertConfigurationContext.== infix(_:_:)();
      (*(v5 + 8))(v8, v4);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v26 = v10;
      v27 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      v18 = *(v25 + 16);

      v19 = [v18 supportsTrackRunning];
    }

    else
    {
      v26 = *v2;
      v27 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      v18 = *(v25 + 16);

      v19 = FIUIWorkoutActivityType.supportsPowerZoneAlerts()();
    }

    v20 = v19;

    return v20;
  }

  if (a1 > 1u)
  {
    v26 = *v2;
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v11 = *(v25 + 16);

    v26 = v10;
    v27 = v9;
    State.wrappedValue.getter();

    if (a1 == 2)
    {
      v12 = FIUIWorkoutActivityType.supportsCadenceAlerts(activityMoveMode:configurationContext:)();
    }

    else
    {
      v12 = FIUIWorkoutActivityType.supportsPowerAlerts(activityMoveMode:configurationContext:)();
    }

    goto LABEL_20;
  }

  if (!a1)
  {
    v26 = *v2;
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v11 = *(v25 + 16);

    v26 = v10;
    v27 = v9;
    State.wrappedValue.getter();

    v12 = FIUIWorkoutActivityType.supportsPaceAlerts(activityMoveMode:configurationContext:)();
LABEL_20:
    v20 = v12;

    return v20;
  }

  return 1;
}

Swift::Bool __swiftcall AlertConfigurationView.configurationTypeIsEnabled(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for PowerZonesAlertZoneType();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - v6;
  v8 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v56 - v15);
  v17 = type metadata accessor for HeartRateZoneType();
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = v1[1];
  if (a1 <= WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_cadence)
      {
        v27 = v1[6];
        v26 = v1[7];
      }

      else
      {
        v27 = v1[8];
        v26 = v1[9];
      }

      goto LABEL_19;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_pace)
    {
      v27 = v1[4];
      v26 = v1[5];
LABEL_19:
      v58 = v27;
      v59 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
      State.wrappedValue.getter();
      v40 = dispatch thunk of TargetZone.enabled.getter();
      goto LABEL_27;
    }

    v58 = *v1;
    v59 = v25;
    v29 = v21;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v31 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v33 = v32;
    v35 = v34;

    v58 = v31;
    v59 = v33;
    v60 = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v61, v36);
    v37 = v61;

    HeartRateTargetZone.type.getter();

    (*(v30 + 104))(v19, *MEMORY[0x277D7E138], v29);
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150], MEMORY[0x277D7E158]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v30 + 8);
    v39(v19, v29);
    v39(v24, v29);
    goto LABEL_22;
  }

  if (a1 > WorkoutUI_AlertConfigurationType_distance)
  {
    if (a1 != WorkoutUI_AlertConfigurationType_trackAlerts)
    {
      v58 = *v1;
      v59 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      v41 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
      v43 = v42;
      v45 = v44;

      v58 = v41;
      v59 = v43;
      v60 = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
      MEMORY[0x20F30B100](&v61, v46);
      v47 = v61;

      dispatch thunk of PowerZonesAlertTargetZone.type.getter();

      v49 = v56;
      v48 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x277D7E418], v3);
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *(v48 + 8);
      v50(v49, v3);
      v50(v7, v3);
LABEL_22:
      v40 = v38 ^ 1;
      return v40 & 1;
    }

    v58 = *v1;
    v59 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v10);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v10;
      goto LABEL_17;
    }

    v53 = *v10;
    swift_getKeyPath();
    v58 = v53;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();

    v40 = dispatch thunk of TrackAlerts.enabled.getter();

LABEL_27:

    return v40 & 1;
  }

  if (a1 != WorkoutUI_AlertConfigurationType_time)
  {
    v58 = *v1;
    v59 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v13);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v13;
      goto LABEL_17;
    }

    v54 = *v13;
    swift_getKeyPath();
    v58 = v54;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v52 = v54[6];
    goto LABEL_26;
  }

  v58 = *v1;
  v59 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v61 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v16);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = *v16;
    swift_getKeyPath();
    v58 = v51;
    lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v52 = v51[5];
LABEL_26:
    v40 = [v52 enabled];
    goto LABEL_27;
  }

  v28 = v16;
LABEL_17:
  outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v28);
  v40 = 0;
  return v40 & 1;
}

void AlertConfigurationView.enableAlertConfigurationType(_:configurationContext:)(unsigned __int8 a1, uint64_t a2)
{
  v47 = a2;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v48);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v46 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = type metadata accessor for HeartRateZoneType();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = *v2;
  v20 = v2[1];
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v53 = *v2;
        v54 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v49 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v8);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v8);
          return;
        }

        v44 = *v8;
        swift_getKeyPath();
        v53 = v44;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        dispatch thunk of TrackAlerts.lapChangeEnabled.setter();
      }

      else
      {
        v53 = *v2;
        v54 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        v36 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v38 = v37;
        v40 = v39;

        v53 = v36;
        v54 = v38;
        v55 = v40;
        static PowerZonesAlertZoneType.defaultTarget(for:)(v47, v6);
        v41 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v49 = PowerZonesAlertTargetZone.init(type:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
        Binding.wrappedValue.setter();
      }
    }

    else
    {
      if (a1 == 4)
      {
        v53 = *v2;
        v54 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v49 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v14);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v14);
          return;
        }

        v42 = *v14;
        swift_getKeyPath();
        v53 = v42;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v43 = v42[5];
      }

      else
      {
        v53 = *v2;
        v54 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v49 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v11);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v11);
          return;
        }

        v45 = *v11;
        swift_getKeyPath();
        v53 = v45;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v43 = v45[6];
      }

      [v43 setEnabled_];
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v22 = v2[6];
        v21 = v2[7];
      }

      else
      {
        v22 = v2[8];
        v21 = v2[9];
      }

      v53 = v22;
      v54 = v21;
      goto LABEL_19;
    }

    if (!a1)
    {
      v22 = v2[4];
      v21 = v2[5];
      v53 = v22;
      v54 = v21;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
      State.wrappedValue.getter();
      TargetZone.type.getter();

      v53 = v22;
      v54 = v21;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.min.getter();

      v53 = v22;
      v54 = v21;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.max.getter();

      type metadata accessor for TargetZone();
      swift_allocObject();
      v35 = TargetZone.init(type:min:max:enabled:)();
      v53 = v22;
      v54 = v21;
      v49 = v35;
      State.wrappedValue.setter();
      return;
    }

    v53 = *v2;
    v54 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v23 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v47 = v24;
    v48 = v23;
    v25 = v24;
    v27 = v26;

    v53 = v23;
    v54 = v25;
    v55 = v27;
    (*(v46 + 104))(v17, *MEMORY[0x277D7E148], v15);
    v49 = v19;
    v50 = v20;
    State.wrappedValue.getter();
    v28 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v30 = v29;
    v32 = v31;

    v49 = v28;
    v50 = v30;
    v51 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v52);
    v33 = v52;

    dispatch thunk of HeartRateTargetZone.defaultZones.getter();

    v34 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v49 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
    Binding.wrappedValue.setter();
  }
}

uint64_t outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall AlertConfigurationView.disableAlertConfigurationType(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for PowerZonesAlertZoneType();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v49);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v45 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for HeartRateZoneType();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TargetZone.ZoneType();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = *v1;
  v18 = v1[1];
  if (a1 > WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_distance)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_trackAlerts)
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v7);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v7);
          return;
        }

        v43 = *v7;
        swift_getKeyPath();
        v54 = v43;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        dispatch thunk of TrackAlerts.lapChangeEnabled.setter();
      }

      else
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        v35 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v37 = v36;
        v39 = v38;

        v54 = v35;
        v55 = v37;
        v56 = v39;
        (*(v47 + 104))(v5, *MEMORY[0x277D7E418], v48);
        v40 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
        v50 = PowerZonesAlertTargetZone.init(type:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
        Binding.wrappedValue.setter();
      }
    }

    else
    {
      if (a1 == WorkoutUI_AlertConfigurationType_time)
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v13);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v13);
          return;
        }

        v41 = *v13;
        swift_getKeyPath();
        v54 = v41;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v42 = v41[5];
      }

      else
      {
        v54 = *v1;
        v55 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v50 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v10);

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v10);
          return;
        }

        v44 = *v10;
        swift_getKeyPath();
        v54 = v44;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v42 = v44[6];
      }

      [v42 setEnabled_];
    }
  }

  else
  {
    if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
    {
      if (a1 == WorkoutUI_AlertConfigurationType_cadence)
      {
        v21 = v1[6];
        v20 = v1[7];
      }

      else
      {
        v21 = v1[8];
        v20 = v1[9];
      }

      v54 = v21;
      v55 = v20;
      goto LABEL_19;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_pace)
    {
      v21 = v1[4];
      v20 = v1[5];
      v54 = v21;
      v55 = v20;
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
      State.wrappedValue.getter();
      TargetZone.type.getter();

      v54 = v21;
      v55 = v20;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.min.getter();

      v54 = v21;
      v55 = v20;
      State.wrappedValue.getter();
      dispatch thunk of TargetZone.max.getter();

      type metadata accessor for TargetZone();
      swift_allocObject();
      v34 = TargetZone.init(type:min:max:enabled:)();
      v54 = v21;
      v55 = v20;
      v50 = v34;
      State.wrappedValue.setter();
      return;
    }

    v54 = *v1;
    v55 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v22 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v49 = v22;
    v24 = v23;
    v26 = v25;

    v54 = v22;
    v55 = v24;
    v56 = v26;
    (*(v46 + 104))(v16, *MEMORY[0x277D7E138], v14);
    v50 = v19;
    v51 = v18;
    State.wrappedValue.getter();
    v27 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v29 = v28;
    v31 = v30;

    v50 = v27;
    v51 = v29;
    v52 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](&v53);
    v32 = v53;

    dispatch thunk of HeartRateTargetZone.defaultZones.getter();

    v33 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    v50 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
    Binding.wrappedValue.setter();
  }
}

Swift::String __swiftcall AlertConfigurationView.valueForConfigurationType(_:)(WorkoutUI::AlertConfigurationType a1)
{
  v3 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  MEMORY[0x28223BE20](v3);
  v5 = (v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (v86 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (v86 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (v86 - v13);
  v16 = *v1;
  v15 = v1[1];
  if (a1 > WorkoutUI_AlertConfigurationType_power)
  {
    if (a1 > WorkoutUI_AlertConfigurationType_distance)
    {
      if (a1 != WorkoutUI_AlertConfigurationType_trackAlerts)
      {
        v94 = *v1;
        v95 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
        State.wrappedValue.getter();
        v41 = AlertConfigurationViewModel.powerZonesAlertTargetZone.getter();
        v43 = v42;
        v45 = v44;

        v94 = v41;
        v95 = v43;
        v96 = v45;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
        MEMORY[0x20F30B100](v87, v46);
        v32 = v87[0];

        v92 = v16;
        v93 = v15;
        State.wrappedValue.getter();
        v33 = *(v86[0] + 24);

        v92 = v16;
        v93 = v15;
        State.wrappedValue.getter();
        v34 = *(v86[0] + 16);

        v35 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
        goto LABEL_22;
      }

      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v5);

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v70 = *v5;
        swift_getKeyPath();
        v94 = v70;
        lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();

        countAndFlagsBits = TrackAlerts.displayString.getter();
        object = v71;

        goto LABEL_52;
      }

      v23 = v5;
LABEL_18:
      outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v23);
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      goto LABEL_52;
    }

    if (a1 == WorkoutUI_AlertConfigurationType_time)
    {
      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v11);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v11;
        goto LABEL_18;
      }

      v64 = *v11;
      v94 = v16;
      v95 = v15;
      State.wrappedValue.getter();
      v33 = *(v92 + 24);

      swift_getKeyPath();
      v94 = v64;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v65 = *(v64 + 40);
      [v65 value];
      if (v66 > 0.0)
      {
        v67 = v66;
        if ([v65 enabled])
        {
          specialized FIUIFormattingManager.timeSplitsDisplayString(time:)(v67);
LABEL_46:
          countAndFlagsBits = v68;
          object = v69;
LABEL_50:

          goto LABEL_51;
        }
      }
    }

    else
    {
      v94 = *v1;
      v95 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
      State.wrappedValue.getter();
      outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v8);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v8;
        goto LABEL_18;
      }

      v72 = *v8;
      v94 = v16;
      v95 = v15;
      State.wrappedValue.getter();
      v33 = *(v92 + 24);

      swift_getKeyPath();
      v94 = v72;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v73 = *(v72 + 48);
      v92 = v16;
      v93 = v15;
      v65 = v73;
      State.wrappedValue.getter();
      v74 = *(v87[0] + 16);

      v75 = FIUIDistanceTypeForActivityType();

      [v65 value];
      if (v76 > 0.0)
      {
        v77 = v76;
        if ([v65 enabled])
        {
          v68 = FIUIFormattingManager.distanceSplitsDisplayString(distanceInMeters:distanceType:)(v75, v77);
          goto LABEL_46;
        }
      }
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v78 = WorkoutUIBundle.super.isa;
    v99._object = 0xE000000000000000;
    v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v79.value._object = 0xEB00000000656C62;
    v80._object = 0x800000020CB9BAE0;
    v80._countAndFlagsBits = 0xD000000000000010;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v99._countAndFlagsBits = 0;
    v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v79, v78, v81, v99);
    countAndFlagsBits = v82._countAndFlagsBits;
    object = v82._object;

    goto LABEL_50;
  }

  if (a1 > WorkoutUI_AlertConfigurationType_heartRateZones)
  {
    if (a1 == WorkoutUI_AlertConfigurationType_cadence)
    {
      v25 = v1[6];
      v24 = v1[7];
    }

    else
    {
      v25 = v1[8];
      v24 = v1[9];
    }

    v94 = v25;
    v95 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
    State.wrappedValue.getter();
    v94 = v16;
    v95 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v33 = *(v92 + 24);

    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v39 = *(v92 + 16);

    countAndFlagsBits = TargetZone.displayString(formattingManager:activityType:)();
    object = v40;

    goto LABEL_51;
  }

  if (a1)
  {
    v94 = *v1;
    v95 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
    State.wrappedValue.getter();
    v26 = AlertConfigurationViewModel.heartRateTargetZone.getter();
    v28 = v27;
    v30 = v29;

    v94 = v26;
    v95 = v28;
    v96 = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMR);
    MEMORY[0x20F30B100](v87, v31);
    v32 = v87[0];

    v92 = v16;
    v93 = v15;
    State.wrappedValue.getter();
    v33 = *(v86[0] + 24);

    v92 = v16;
    v93 = v15;
    State.wrappedValue.getter();
    v34 = *(v86[0] + 16);

    v35 = MEMORY[0x20F305B10](v33, v34);
LABEL_22:
    countAndFlagsBits = v35;
    object = v36;

LABEL_51:
    goto LABEL_52;
  }

  v17 = v1[5];
  v94 = v1[4];
  v95 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneCGMR);
  State.wrappedValue.getter();
  v94 = v16;
  v95 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMd, &_s7SwiftUI5StateVy07WorkoutB027AlertConfigurationViewModelCGMR);
  State.wrappedValue.getter();
  v18 = *(v92 + 24);

  v94 = v16;
  v95 = v15;
  State.wrappedValue.getter();
  v19 = *(v92 + 16);

  v20 = TargetZone.displayString(formattingManager:activityType:)();
  v22 = v21;

  v90 = v20;
  v91 = v22;
  v94 = v16;
  v95 = v15;
  State.wrappedValue.getter();
  outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(v92 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, v14);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v14);
  }

  else
  {
    v47 = *v14;
    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v48 = *(v92 + 16);

    v49 = FIUIWorkoutActivityType.supportsPacerAlerts.getter();

    if (v49)
    {
      v94 = 10;
      v95 = 0xE100000000000000;
      swift_getKeyPath();
      v92 = v47;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();

      if (dispatch thunk of PacerAlerts.aheadBehindAlertsEnabled.getter())
      {
        v50 = 0xEE004E4F5F545245;
      }

      else
      {
        v50 = 0xEF46464F5F545245;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v51 = WorkoutUIBundle.super.isa;
      v97._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0x4C415F5245434150;
      v53.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v53.value._object = 0xEB00000000656C62;
      v52._object = v50;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v97._countAndFlagsBits = 0;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v97);

      MEMORY[0x20F30BC00](v55._countAndFlagsBits, v55._object);

      MEMORY[0x20F30BC00](v94, v95);
    }

    v94 = v16;
    v95 = v15;
    State.wrappedValue.getter();
    v56 = *(v92 + 16);

    v57 = [v56 supportsRaceRoute];

    if (v57)
    {
      v88 = 10;
      v89 = 0xE100000000000000;
      swift_getKeyPath();
      v94 = v47;
      lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(&lazy protocol witness table cache variable for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel, type metadata accessor for ActivityPersistingViewModel, &protocol conformance descriptor for ActivityPersistingViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();

      if (dispatch thunk of RaceAlerts.aheadBehindAlertsEnabled.getter())
      {
        v58 = 0xED00004E4F5F5452;
      }

      else
      {
        v58 = 0xEE0046464F5F5452;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v59 = WorkoutUIBundle.super.isa;
      v98._object = 0xE000000000000000;
      v60._countAndFlagsBits = 0x454C415F45434152;
      v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v61.value._object = 0xEB00000000656C62;
      v60._object = v58;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v98._countAndFlagsBits = 0;
      v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v98);

      MEMORY[0x20F30BC00](v63._countAndFlagsBits, v63._object);

      MEMORY[0x20F30BC00](v88, v89);
    }
  }

  countAndFlagsBits = v90;
  object = v91;
LABEL_52:
  v83 = countAndFlagsBits;
  v84 = object;
  result._object = v84;
  result._countAndFlagsBits = v83;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertConfigurationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AlertConfigurationType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI22AlertConfigurationTypeOGMd, &_sSay9WorkoutUI22AlertConfigurationTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlertConfigurationType and conformance AlertConfigurationType()
{
  result = lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType;
  if (!lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType;
  if (!lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertConfigurationType and conformance AlertConfigurationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActivityPersistingViewModel and conformance ActivityPersistingViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized AlertConfigurationType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t HKWorkoutActivityType.accessibilityIdentifier.getter(uint64_t a1)
{
  v1 = _HKWorkoutActivityNameForActivityType();
  if (!v1)
  {
    return 0xD000000000000010;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x800000020CB96FD0;
  v6._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v6))
  {
    v7 = String.count.getter();
    v9 = specialized Collection.dropFirst(_:)(v7, v3, v5, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v3 = MEMORY[0x20F30BBA0](v9, v11, v13, v15);
  }

  return v3;
}

uint64_t type metadata accessor for TrainingLoadDayEntry(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadDayEntry;
  if (!type metadata singleton initialization cache for TrainingLoadDayEntry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadDayEntry(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t protocol witness for TimelineEntry.date.getter in conformance TrainingLoadDayEntry@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutSafetyCheckInTipDetailView.layoutDirection.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void one-time initialization function for imageFrameHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB781F8[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static WorkoutSafetyCheckInTipDetailView.Layout.imageFrameHeight = *&v3;
}

void one-time initialization function for imagePadding()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB78250[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static WorkoutSafetyCheckInTipDetailView.Layout.imagePadding = *&v3;
}

uint64_t WorkoutSafetyCheckInTipDetailView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WorkoutSafetyCheckInTipDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v20 = v1;
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVANyANyANyAJyANyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA01_eV0VGGAA05_FlexwV0VGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAxVtGG_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGG_AA6SpacerVANyANyANyAJyANyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameV0VGAA01_eV0VGGAA05_FlexwV0VGAA016_BackgroundStyleP0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAxVtGG_Qo_MR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMR);
  v9 = lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMR, MEMORY[0x277CE1198]);
  v21 = v8;
  v22 = v9;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v12;
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMR, MEMORY[0x277CDD6E0]);
  lazy protocol witness table accessor for type String and conformance String();
  v13 = v19;
  View.navigationTitle<A>(_:)();

  (*(v5 + 8))(v7, v4);
  v14 = static Color.black.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMR) + 36);
  *v15 = v14;
  *(v15 + 8) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMR);
  v17 = (v13 + *(result + 36));
  *v17 = closure #2 in WorkoutSafetyCheckInTipDetailView.body.getter;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA6SpacerVAKyAKyAKyAA0F0VyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGAA05_FlexuG0VGAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAuStGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG_AA6SpacerVAKyAKyAKyAA0F0VyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGAA05_FlexuG0VGAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAuStGGMR);
  closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(a1, &v4[*(v5 + 44)]);
  static Edge.Set.horizontal.getter();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMR, MEMORY[0x277CE1198]);
  View.scenePadding(_:)();
  return outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v4, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG_AA6SpacerVAGyAGyAGyACyAGyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGAA05_FlexsR0VGAA016_BackgroundStyleL0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAqOtGGMR);
}

double closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v72 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v64 = objc_opt_self();
  v17 = [v64 bundleForClass_];
  v62 = v13;
  static Locale.current.getter();
  *&v93[0] = String.init(localized:table:bundle:locale:comment:)();
  *(&v93[0] + 1) = v18;
  v63 = lazy protocol witness table accessor for type String and conformance String();
  v19 = Text.init<A>(_:)();
  v67 = v20;
  v68 = v19;
  v71 = v21;
  v66 = v22;
  KeyPath = swift_getKeyPath();
  v60 = static HorizontalAlignment.center.getter();
  v83 = 1;
  closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(&v74);
  v89 = v78;
  v90 = v79;
  v91 = v80;
  v92 = v81;
  v85 = v74;
  v86 = v75;
  v87 = v76;
  v88 = v77;
  v93[0] = v74;
  v93[1] = v75;
  v93[2] = v76;
  v93[3] = v77;
  v93[4] = v78;
  v93[5] = v79;
  v93[6] = v80;
  v94 = v81;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(&v85, v73, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v93, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
  *&v82[71] = v89;
  *&v82[87] = v90;
  *&v82[103] = v91;
  v82[119] = v92;
  *&v82[7] = v85;
  *&v82[23] = v86;
  *&v82[39] = v87;
  *&v82[55] = v88;
  LODWORD(v59) = v83;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v84[55] = v77;
  *&v84[71] = v78;
  *&v84[87] = v79;
  *&v84[103] = v80;
  *&v84[7] = v74;
  *&v84[23] = v75;
  *&v84[39] = v76;
  v23 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = Color.init(uiColor:)();
  LOBYTE(ObjCClassFromMetadata) = static Edge.Set.all.getter();
  v25 = &v7[*(v3 + 44)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #10.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  *(v7 + 81) = *&v82[64];
  *(v7 + 97) = *&v82[80];
  *(v7 + 113) = *&v82[96];
  *(v7 + 17) = *v82;
  *(v7 + 33) = *&v82[16];
  *(v7 + 49) = *&v82[32];
  *(v7 + 65) = *&v82[48];
  v34 = *&v84[80];
  *(v7 + 201) = *&v84[64];
  *(v7 + 217) = v34;
  *(v7 + 233) = *&v84[96];
  v35 = *&v84[16];
  *(v7 + 137) = *v84;
  *(v7 + 153) = v35;
  v36 = *&v84[48];
  *(v7 + 169) = *&v84[32];
  *v7 = v60;
  *(v7 + 1) = 0;
  v7[16] = v59;
  *(v7 + 129) = *&v82[112];
  v37 = *&v84[111];
  *(v7 + 185) = v36;
  *(v7 + 31) = v37;
  *(v7 + 32) = v24;
  v7[264] = ObjCClassFromMetadata;
  v58 = v10;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(v7, v10);
  String.LocalizationValue.init(stringLiteral:)();
  v38 = [v64 bundleForClass_];
  static Locale.current.getter();
  v73[0] = String.init(localized:table:bundle:locale:comment:)();
  v73[1] = v39;
  v40 = Text.init<A>(_:)();
  v62 = v41;
  v63 = v40;
  LODWORD(v64) = v42;
  v65 = v43;
  v61 = swift_getKeyPath();
  LOBYTE(ObjCClassFromMetadata) = v66 & 1;
  LOBYTE(v73[0]) = v66 & 1;
  v44 = v10;
  v45 = v72;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v44, v72, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v47 = v68;
  v46 = v69;
  v48 = KeyPath;
  v49 = v71;
  *v69 = v68;
  v46[1] = v49;
  *(v46 + 16) = ObjCClassFromMetadata;
  v46[3] = v67;
  v46[4] = v48;
  *(v46 + 40) = 0;
  v46[6] = 0;
  *(v46 + 56) = 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVACyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGAA05_FlexqP0VGAA016_BackgroundStyleI0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAmKtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG_AA6SpacerVACyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAA08_PaddingP0VGGAA05_FlexqP0VGAA016_BackgroundStyleI0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAmKtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(v45, v46 + v50[16], &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v51 = v46 + v50[20];
  *v51 = 0;
  v51[8] = 1;
  v52 = v46 + v50[24];
  v53 = v62;
  v54 = v63;
  *v52 = v63;
  *(v52 + 1) = v53;
  LOBYTE(v45) = v64 & 1;
  v52[16] = v64 & 1;
  v55 = v61;
  *(v52 + 3) = v65;
  *(v52 + 4) = v55;
  v52[40] = 0;
  outlined copy of Text.Storage(v47, v49, ObjCClassFromMetadata);

  outlined copy of Text.Storage(v54, v53, v45);

  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v58, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  outlined consume of Text.Storage(v54, v53, v45);

  outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v72, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  outlined consume of Text.Storage(v47, v71, v73[0]);

  return result;
}

void closure #1 in closure #1 in closure #1 in WorkoutSafetyCheckInTipDetailView.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-v11];
  WorkoutSafetyCheckInTipDetailView.layoutDirection.getter(&v24[-v11]);
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA90], v6);
  static LayoutDirection.== infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v12, v6);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v14 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  if (one-time initialization token for imageFrameHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = 1;
  *&v25[6] = v27;
  *&v25[22] = v28;
  *&v25[38] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v16 = static Edge.Set.top.getter();
  *(inited + 32) = v16;
  v17 = static Edge.Set.bottom.getter();
  *(inited + 33) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  if (one-time initialization token for imagePadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v19 = *&v25[16];
  *(a1 + 18) = *v25;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v19;
  *(a1 + 50) = *&v25[32];
  *(a1 + 64) = *&v25[46];
  *(a1 + 72) = v18;
  *(a1 + 80) = v20;
  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = 0;
}

uint64_t type metadata accessor for WorkoutSafetyCheckInTipDetailView(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutSafetyCheckInTipDetailView;
  if (!type metadata singleton initialization cache for WorkoutSafetyCheckInTipDetailView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutSafetyCheckInTipDetailView(uint64_t a1)
{
  type metadata accessor for Environment<LayoutDirection>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GAA017_AppearanceActionS0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleE0VyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGG_AA6SpacerVACyACyACyAOyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGAA01_jY0VGGAA05_FlexzY0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGA_AYtGG_Qo_G_SSQo_A19_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA6VStackVyAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG_AA6SpacerVAPyAPyAPyALyAPyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGAA01_fW0VGGAA05_FlexxW0VGAA016_BackgroundStyleQ0VyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAzXtGG_Qo_GMR, MEMORY[0x277CDD6E0]);
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.navigationTitle<A>(_:)>>.0, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA08_PaddingI0VGGAA05_FlexjI0VGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, Spacer, ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void CurrentStepMetricView.init(intervalsMetricsPublisher:workoutStatePublisher:step:formattingManager:activityType:)(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for IntervalsMetricsPublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);

  *a6 = ObservedObject.init(wrappedValue:)();
  a6[1] = v10;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;

  a6[2] = v11;
  a6[3] = v13;
  a6[4] = a3;
  a6[5] = a4;
  a6[6] = a5;
}

void CurrentStepMetricView.distanceRemaining.getter(uint64_t a1)
{
  v1 = WorkoutStep.goal.getter();
  v2 = [v1 goalTypeIdentifier];

  if (v2 == 1 && (v3 = WorkoutStep.goal.getter(), v4 = [v3 value], v3, v4))
  {
    v5 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit_];

    IntervalsMetricsPublisher.intervalDistance.getter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void CurrentStepMetricView.timeAndDistanceGoalDistanceRemaining.getter(uint64_t a1)
{
  v1 = WorkoutStep.goal.getter();
  v2 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

  if (v2 && (v3 = WorkoutStep.goal.getter(), v4 = [v3 requiredDistance], v3, v4))
  {
    v5 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit_];

    IntervalsMetricsPublisher.intervalDistance.getter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t CurrentStepMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v46 - v5;
  v56 = type metadata accessor for IntervalTimeMetricView(0);
  MEMORY[0x28223BE20](v56);
  v48 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB027DistanceRemainingMetricViewVAF012IntervalTimeiJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB027DistanceRemainingMetricViewVAF012IntervalTimeiJ0V_GMR);
  MEMORY[0x28223BE20](v53);
  v55 = &v46 - v9;
  v54 = type metadata accessor for DistanceRemainingMetricView(0);
  MEMORY[0x28223BE20](v54);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v51 = &v46 - v13;
  v15 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v18 = v1[5];
  v20 = v1[6];

  v21 = WorkoutStep.goal.getter();
  v22 = [v21 goalTypeIdentifier];

  if (v22 == 1)
  {

    v58 = v15;
    v59 = v14;
    v60 = v16;
    v61 = v17;
    v62 = v19;
    v63 = v18;
    v64 = v20;
    CurrentStepMetricView.distanceRemaining.getter(v23);
    v25 = v24;
    v26 = WorkoutStep.goal.getter();
    v27 = [v26 value];

    if (!v27 || (v28 = [v27 _unit], v27, !v28))
    {
      v28 = [objc_opt_self() meterUnit];
    }

    v29 = v54;
    WorkoutStep.stepType.getter();
    v30 = v18;
    v31 = FIUIDistanceTypeForActivityType();
    *v11 = v25;
    v11[1] = v28;
    *(v11 + *(v29 + 28)) = v30;
    *(v11 + *(v29 + 32)) = v31;
    v32 = type metadata accessor for DistanceRemainingMetricView;
    v33 = v51;
    outlined init with take of IntervalTimeMetricView(v11, v51, type metadata accessor for DistanceRemainingMetricView);
    outlined init with copy of IntervalTimeMetricView(v33, v55, type metadata accessor for DistanceRemainingMetricView);
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView, &protocol conformance descriptor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView, &protocol conformance descriptor for IntervalTimeMetricView);
  }

  else
  {
    v46 = v15;
    v47 = v16;
    v51 = v18;

    v34 = v49;
    IntervalsMetricsPublisher.intervalStartDate.getter();

    v35 = WorkoutStatePublisher.pauseTimes.getter();

    v36 = v50;
    WorkoutStatePublisher.lastUnbalancedPauseStart.getter();

    v37 = WorkoutStep.goal.getter();
    v38 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

    v40 = 0;
    if (v38)
    {
      v58 = v46;
      v59 = v14;
      v60 = v47;
      v61 = v17;
      v62 = v19;
      v63 = v51;
      v64 = v20;
      CurrentStepMetricView.timeAndDistanceGoalDistanceRemaining.getter(v39);
      v40 = v41;
    }

    v42 = v48;
    *v48 = v19;
    v43 = v56;
    outlined init with take of Date?(v34, v42 + *(v56 + 20));
    *(v42 + v43[6]) = v35;
    outlined init with take of Date?(v36, v42 + v43[7]);
    v44 = v42 + v43[8];
    *v44 = v40;
    *(v44 + 8) = !v38;
    v32 = type metadata accessor for IntervalTimeMetricView;
    v33 = v52;
    outlined init with take of IntervalTimeMetricView(v42, v52, type metadata accessor for IntervalTimeMetricView);
    outlined init with copy of IntervalTimeMetricView(v33, v55, type metadata accessor for IntervalTimeMetricView);
    swift_storeEnumTagMultiPayload();
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView, &protocol conformance descriptor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView, &protocol conformance descriptor for IntervalTimeMetricView);
  }

  _ConditionalContent<>.init(storage:)();
  return outlined destroy of IntervalTimeMetricView(v33, v32);
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of IntervalTimeMetricView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of IntervalTimeMetricView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of IntervalTimeMetricView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CurrentStepMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CurrentStepMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB027DistanceRemainingMetricViewVAD012IntervalTimehI0VGMd, "Py\b");
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type DistanceRemainingMetricView and conformance DistanceRemainingMetricView, type metadata accessor for DistanceRemainingMetricView, &protocol conformance descriptor for DistanceRemainingMetricView);
    _s11WorkoutCore25IntervalsMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_3(&lazy protocol witness table cache variable for type IntervalTimeMetricView and conformance IntervalTimeMetricView, type metadata accessor for IntervalTimeMetricView, &protocol conformance descriptor for IntervalTimeMetricView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistanceRemainingMetricView, IntervalTimeMetricView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectedRow.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.__allocating_init(inferenceClient:voiceAssetsObserver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WorkoutVoiceOnboardingPickerViewModel.init(inferenceClient:voiceAssetsObserver:)(a1, a2);
  return v4;
}

char *WorkoutVoiceOnboardingPickerViewModel.voices.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = type metadata accessor for AudioSynthesisVoice();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v24 - v8;
  MEMORY[0x28223BE20](v9);
  v25 = &v24 - v10;
  v33 = type metadata accessor for AudioSynthesisVoiceAsset();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  v32 = *(result + 2);
  if (v32)
  {
    v15 = 0;
    v31 = v6;
    v16 = (v4 + 32);
    v28 = (v4 + 56);
    v29 = v11 + 16;
    v24 = v4;
    v26 = (v4 + 48);
    v27 = v11 + 8;
    v35 = MEMORY[0x277D84F90];
    v30 = result;
    while (v15 < *(result + 2))
    {
      v17 = v33;
      (*(v11 + 16))(v13, &result[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15], v33);
      v18 = v34;
      AudioSynthesisVoiceAsset.voice.getter();
      v19 = *v16;
      (*v16)(v2, v18, v3);
      (*v28)(v2, 0, 1, v3);
      (*(v11 + 8))(v13, v17);
      if ((*v26)(v2, 1, v3) == 1)
      {
        outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v2, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
      }

      else
      {
        v20 = v25;
        v19(v25, v2, v3);
        v19(v31, v20, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
        }

        v22 = *(v35 + 2);
        v21 = *(v35 + 3);
        if (v22 >= v21 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v35);
        }

        v23 = v35;
        *(v35 + 2) = v22 + 1;
        v19(&v23[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v31, v3);
      }

      ++v15;
      result = v30;
      if (v32 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
LABEL_13:

    return v35;
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.title(_:)(uint64_t a1)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v8._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB93CD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CB5DA70;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v7;
    *(result + 32) = a1 + 1;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    return Text.init<A>(_:)();
  }

  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.subtitle(_:)(unint64_t a1, double a2)
{
  v3 = type metadata accessor for AudioSynthesisVoice();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AudioSynthesisVoiceAsset();
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v39 - v14;
  v15 = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v15 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v6;
  v40 = v4;
  v41 = v3;
  v42 = a1;
  v44 = v11;
  v18 = *(v11 + 16);
  v16 = (v11 + 16);
  v17 = v18;
  v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
  v20 = *(v16 + 7) * a1;
  v18(v45, v15 + v19 + v20, v46);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D0A528])
  {
    (*(v8 + 96))(v10, v7);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v10, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
    v11 = "WORKOUT_BUDDY_VOICES";
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_5:
      swift_beginAccess();
      v21 = WorkoutUIBundle.super.isa;
      v50._object = 0xE000000000000000;
      v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v22.value._object = 0xEB00000000656C62;
      v23._object = (v11 | 0x8000000000000000);
      v23._countAndFlagsBits = 0xD000000000000019;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v50._countAndFlagsBits = 0;
      v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v50);

      v47 = v25;
      lazy protocol witness table accessor for type String and conformance String();
      v26 = Text.init<A>(_:)();
      (*(v44 + 8))(v45, v46);
      return v26;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  (*(v8 + 8))(v10, v7);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if (*(result + 16) > v42)
  {
    v28 = result + v19 + v20;
    v29 = v43;
    v30 = v46;
    v17(v43, v28, v46);

    v31 = v39;
    AudioSynthesisVoiceAsset.voice.getter();
    v32 = *(v44 + 8);
    v32(v29, v30);
    v33 = AudioSynthesisVoice.name.getter();
    v35 = v34;
    (*(v40 + 8))(v31, v41);
    v48 = v33;
    v49 = v35;
    lazy protocol witness table accessor for type String and conformance String();
    v36 = StringProtocol.capitalized.getter();
    v38 = v37;

    v48 = v36;
    v49 = v38;
    v26 = Text.init<A>(_:)();
    v32(v45, v30);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = type metadata accessor for Logger();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for AudioSynthesisVoice();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for AudioSynthesisVoiceAsset();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[28] = v7;
  v2[29] = v6;

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v7, v6);
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(__n128 a1)
{
  v28 = v1;
  v2 = *(v1 + 80);
  *(v1 + 240) = *(*(v1 + 88) + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_voiceAssetsObserver);
  v3 = *(dispatch thunk of VoiceAssetsObserver.assets.getter() + 16);

  if (v3 > v2)
  {
    v4 = *(v1 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 16) = v4;
    *(v1 + 24) = 0;

    static Published.subscript.setter();
    result = dispatch thunk of VoiceAssetsObserver.assets.getter();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v1 + 80);
      if (*(result + 16) > v6)
      {
        v7 = *(v1 + 208);
        v8 = *(v1 + 176);
        v9 = *(v1 + 184);
        v10 = *(v9 + 16);
        v9 += 16;
        v11 = result + ((*(v9 + 64) + 32) & ~*(v9 + 64)) + *(v9 + 56) * v6;
        *(v1 + 248) = v10;
        *(v1 + 256) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v10(v7, v11, v8);

        AudioSynthesisVoiceAsset.voice.getter();
        v26 = (*MEMORY[0x277D7E328] + MEMORY[0x277D7E328]);
        v12 = swift_task_alloc();
        *(v1 + 264) = v12;
        *v12 = v1;
        v12[1] = WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);
        v13 = *(v1 + 168);

        return v26(v13);
      }
    }

    __break(1u);
    return result;
  }

  static WOLog.app.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v1 + 128);
  v18 = *(v1 + 104);
  v19 = *(v1 + 112);
  if (v16)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v22 = _typeName(_:qualified:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_20C66F000, v14, v15, "%s Attempted to select initial voice when assets are empty. Returning.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F30E080](v21, -1, -1);
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  (*(v19 + 8))(v17, v18);

  v25 = *(v1 + 8);

  return v25();
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)()
{
  v2 = *v1;
  v3 = *v1;
  v2[34] = v0;

  v4 = v2[21];
  v5 = v2[19];
  v6 = v2[18];
  if (v0)
  {
    v7 = *(v5 + 8);
    v2[37] = v7;
    v2[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v8 = v2[28];
    v9 = v2[29];

    return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v8, v9);
  }

  else
  {
    v10 = *(v5 + 8);
    v2[35] = v10;
    v10(v4, v6);
    v13 = (*MEMORY[0x277D7E338] + MEMORY[0x277D7E338]);
    v11 = swift_task_alloc();
    v2[36] = v11;
    *v11 = v3;
    v11[1] = WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);

    return v13();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:), v3, v2);
}

{
  v37 = v0;

  v35 = v0[35];
  v1 = v0[31];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[22];
  static WOLog.app.getter();
  v1(v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  if (v7)
  {
    v34 = v0[26];
    v12 = v0[20];
    v30 = v0[18];
    v31 = v0[14];
    v32 = v0[13];
    v33 = v0[17];
    v29 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v36);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v18 = AudioSynthesisVoice.name.getter();
    v20 = v19;
    v35(v12, v30);
    v21 = *(v10 + 8);
    v21(v9, v29);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v36);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_20C66F000, v5, v6, "%s selecting initial voice asset %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v14, -1, -1);
    MEMORY[0x20F30E080](v13, -1, -1);

    (*(v31 + 8))(v33, v32);
    v21(v34, v29);
  }

  else
  {
    v23 = v0[17];
    v24 = v0[13];
    v25 = v0[14];

    v26 = *(v10 + 8);
    v26(v9, v11);
    (*(v25 + 8))(v23, v24);
    v26(v8, v11);
  }

  v27 = v0[1];

  return v27();
}

{
  v81 = v0;
  v1 = v0;
  v2 = *(v0 + 272);
  v75 = *(v0 + 248);
  v3 = *(v0 + 192);
  v69 = *(v0 + 176);
  v72 = *(v0 + 208);

  v4 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v4;
  *(v0 + 40) = v6 & 1;

  static Published.subscript.setter();
  static WOLog.app.getter();
  v75(v3, v72, v69);

  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v62 = *(v1 + 296);
    v11 = *(v1 + 184);
    v10 = *(v1 + 192);
    v63 = *(v1 + 176);
    v12 = *(v1 + 160);
    v13 = *(v1 + 144);
    v73 = *(v1 + 112);
    v76 = *(v1 + 104);
    v78 = *(v1 + 120);
    v66 = *(v1 + 272);
    v14 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v80 = v70;
    *v14 = 136315906;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v80);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v18 = AudioSynthesisVoice.name.getter();
    v20 = v19;
    v62(v12, v13);
    (*(v11 + 8))(v10, v63);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v80);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2112;
    v22 = v66;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v23;
    *v65 = v23;
    *(v14 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v1 + 48));

    *(v1 + 64) = *(v1 + 48);
    *(v1 + 72) = *(v1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v24 = Optional.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v80);

    *(v14 + 34) = v26;
    _os_log_impl(&dword_20C66F000, v8, v9, "%s error electing voice: %s, error: %@. Reverting back to last successful userSelectedAssetIndex %s", v14, 0x2Au);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v65, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v70, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    (*(v73 + 8))(v78, v76);
  }

  else
  {
    v27 = *(v1 + 272);
    v29 = *(v1 + 184);
    v28 = *(v1 + 192);
    v30 = *(v1 + 176);
    v32 = *(v1 + 112);
    v31 = *(v1 + 120);
    v33 = *(v1 + 104);

    (*(v29 + 8))(v28, v30);
    (*(v32 + 8))(v31, v33);
  }

  v79 = *(v1 + 296);
  v34 = *(v1 + 248);
  v36 = *(v1 + 200);
  v35 = *(v1 + 208);
  v37 = *(v1 + 176);
  static WOLog.app.getter();
  v34(v36, v35, v37);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v42 = *(v1 + 200);
  v41 = *(v1 + 208);
  v44 = *(v1 + 176);
  v43 = *(v1 + 184);
  if (v40)
  {
    v45 = *(v1 + 160);
    v67 = *(v1 + 144);
    v71 = *(v1 + 112);
    v74 = *(v1 + 104);
    v77 = *(v1 + 136);
    v64 = *(v1 + 176);
    v46 = swift_slowAlloc();
    v68 = v41;
    v47 = swift_slowAlloc();
    v80 = v47;
    *v46 = 136315394;
    v48 = _typeName(_:qualified:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v80);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v51 = AudioSynthesisVoice.name.getter();
    v53 = v52;
    v79(v45, v67);
    v54 = *(v43 + 8);
    v54(v42, v64);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v80);

    *(v46 + 14) = v55;
    _os_log_impl(&dword_20C66F000, v38, v39, "%s selecting initial voice asset %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v47, -1, -1);
    MEMORY[0x20F30E080](v46, -1, -1);

    (*(v71 + 8))(v77, v74);
    v54(v68, v64);
  }

  else
  {
    v56 = *(v1 + 136);
    v58 = *(v1 + 104);
    v57 = *(v1 + 112);

    v59 = *(v43 + 8);
    v59(v42, v44);
    (*(v57 + 8))(v56, v58);
    v59(v41, v44);
  }

  v60 = *(v1 + 8);

  return v60();
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.electVoice()()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = type metadata accessor for Logger();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for AudioSynthesisVoice();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for AudioSynthesisVoiceAsset();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[30] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[31] = v6;
  v1[32] = v5;

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.electVoice(), v6, v5);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 16));

  if (*(v0 + 24) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 16);
  *(v0 + 264) = *(*(v0 + 96) + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_voiceAssetsObserver);
  result = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= *(result + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v6 + 16);
  v6 += 16;
  v8 = result + ((*(v6 + 64) + 32) & ~*(v6 + 64)) + *(v6 + 56) * v3;
  *(v0 + 272) = v7;
  *(v0 + 280) = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v8, v5);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;

  static Published.subscript.setter();
  AudioSynthesisVoiceAsset.voice.getter();
  v11 = (*MEMORY[0x277D7E328] + MEMORY[0x277D7E328]);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v10 = *(v0 + 184);

  return v11(v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v2[37] = v0;

  v6 = *(v4 + 8);
  v2[38] = v6;
  v2[39] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[32];
  v8 = v2[31];
  if (v0)
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  else
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return MEMORY[0x2822009F8](WorkoutVoiceOnboardingPickerViewModel.electVoice(), v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v2[46] = v0;

  v2[47] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);
  v7 = v2[32];
  v8 = v2[31];
  if (v0)
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  else
  {
    v9 = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

{
  v1 = v0[44];
  v2 = v0[29];
  v3 = v0[24];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

{
  v43 = v0;
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[24];

  static WOLog.app.getter();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v0[44];
    v38 = v0[43];
    v9 = v0[26];
    v33 = v0[38];
    v39 = v0[29];
    v40 = v0[24];
    v10 = v0[22];
    v32 = v0[19];
    v35 = v0[46];
    v36 = v0[14];
    v37 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v11 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v42);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v17 = AudioSynthesisVoice.name.getter();
    v19 = v18;
    v33(v10, v32);
    v34(v9, v40);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v42);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2112;
    v21 = v35;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_20C66F000, v7, v8, "%s error previewing voice: %s, error: %@.", v11, 0x20u);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v13, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);

    v38(v37, v36);
    v34(v39, v40);
  }

  else
  {
    v23 = v0[46];
    v25 = v0[43];
    v24 = v0[44];
    v41 = v0[29];
    v26 = v0[26];
    v27 = v0[24];
    v28 = v0[16];
    v29 = v0[14];

    v24(v26, v27);
    v25(v28, v29);
    v24(v41, v27);
  }

  v30 = v0[1];

  return v30();
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.electVoice()(uint64_t a1)
{
  v38 = v1;
  v2 = v1[34];
  v3 = v1[28];
  v4 = v1[29];
  v5 = v1[24];
  static WOLog.app.getter();
  v2(v3, v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[38];
    v9 = v1[28];
    v10 = v1[25];
    v31 = v1[24];
    v11 = v1[22];
    v30 = v1[19];
    v33 = v1[15];
    v34 = v1[14];
    v35 = v1[18];
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v37);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v16 = AudioSynthesisVoice.name.getter();
    v18 = v17;
    v8(v11, v30);
    v19 = *(v10 + 8);
    v19(v9, v31);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v37);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_20C66F000, v6, v7, "%s elected voice asset %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v32, -1, -1);
    MEMORY[0x20F30E080](v12, -1, -1);

    v21 = *(v33 + 8);
    v21(v35, v34);
  }

  else
  {
    v22 = v1[28];
    v23 = v1[24];
    v24 = v1[25];
    v25 = v1[18];
    v26 = v1[14];
    v27 = v1[15];

    v19 = *(v24 + 8);
    v19(v22, v23);
    v21 = *(v27 + 8);
    v21(v25, v26);
  }

  v1[40] = v21;
  v1[41] = v19;
  v36 = (*MEMORY[0x277D7E338] + MEMORY[0x277D7E338]);
  v28 = swift_task_alloc();
  v1[42] = v28;
  *v28 = v1;
  v28[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();

  return v36();
}

{
  *(v1 + 344) = *(v1 + 320);
  AudioSynthesisVoiceAsset.voice.getter();
  v2 = swift_task_alloc();
  *(v1 + 360) = v2;
  *v2 = v1;
  v2[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v3 = *(v1 + 168);

  return MEMORY[0x282160A88](v3);
}

{
  v52 = v1;
  v2 = v1;
  v3 = *(v1 + 296);
  v48 = *(v1 + 272);
  v4 = *(v1 + 216);
  v44 = *(v1 + 192);
  v46 = *(v1 + 232);
  v5 = dispatch thunk of VoiceAssetsObserver.userSelectedAssetIndex.getter();
  v7 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 48) = v5;
  *(v1 + 56) = v7 & 1;

  static Published.subscript.setter();
  static WOLog.app.getter();
  v48(v4, v46, v44);

  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v40 = *(v1 + 304);
    v11 = *(v1 + 216);
    v12 = *(v1 + 200);
    v41 = *(v1 + 192);
    v13 = *(v1 + 176);
    v14 = *(v1 + 152);
    v47 = *(v1 + 120);
    v49 = *(v1 + 112);
    v50 = *(v1 + 136);
    v43 = *(v1 + 296);
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v15 = 136315906;
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v51);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    AudioSynthesisVoiceAsset.voice.getter();
    v19 = AudioSynthesisVoice.name.getter();
    v21 = v20;
    v40(v13, v14);
    v22 = *(v12 + 8);
    v22(v11, v41);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v51);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2112;
    v24 = v43;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v25;
    *v42 = v25;
    *(v15 + 32) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v2 + 64));

    *(v2 + 80) = *(v2 + 64);
    *(v2 + 88) = *(v2 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v26 = Optional.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v51);

    *(v15 + 34) = v28;
    _os_log_impl(&dword_20C66F000, v9, v10, "%s error electing voice: %s, error: %@. Reverting back to last successful userSelectedAssetIndex %s", v15, 0x2Au);
    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v42, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v45, -1, -1);
    MEMORY[0x20F30E080](v15, -1, -1);

    v29 = *(v47 + 8);
    v29(v50, v49);
  }

  else
  {
    v30 = *(v1 + 296);
    v31 = *(v1 + 216);
    v32 = *(v2 + 192);
    v33 = *(v2 + 200);
    v34 = *(v2 + 136);
    v35 = *(v2 + 112);
    v36 = *(v2 + 120);

    v22 = *(v33 + 8);
    v22(v31, v32);
    v29 = *(v36 + 8);
    v29(v34, v35);
  }

  *(v2 + 344) = v29;
  *(v2 + 352) = v22;
  AudioSynthesisVoiceAsset.voice.getter();
  v37 = swift_task_alloc();
  *(v2 + 360) = v37;
  *v37 = v2;
  v37[1] = WorkoutVoiceOnboardingPickerViewModel.electVoice();
  v38 = *(v2 + 168);

  return MEMORY[0x282160A88](v38);
}

void WorkoutVoiceOnboardingPickerViewModel.selectedVoiceIcon(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATGGAU_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATGGAU_GMR);
  MEMORY[0x28223BE20](v54);
  v56 = &v47 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyN0VATG_GMR);
  MEMORY[0x28223BE20](v52);
  v53 = (&v47 - v7);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMR);
  MEMORY[0x28223BE20](v55);
  v9 = &v47 - v8;
  v10 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMR);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v47 - v17;
  v18 = type metadata accessor for AudioSynthesisVoiceAsset();
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v59 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v64);

  v20 = 1;
  if ((v65 & 1) != 0 || v64 != a1)
  {
    goto LABEL_15;
  }

  v21 = dispatch thunk of VoiceAssetsObserver.assets.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v21 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v9;
  v48 = a2;
  v49 = v4;
  v22 = v59;
  (*(v60 + 16))(v59, v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * a1, v61);

  AudioSynthesisVoiceAsset.downloadStatus.getter();
  v23 = v58;
  v24 = *(v58 + 88);
  v25 = v24(v15, v10);
  v26 = *MEMORY[0x277D0A520];
  v27 = *(v23 + 8);
  v27(v15, v10);
  if (v25 != v26)
  {
    AudioSynthesisVoiceAsset.downloadStatus.getter();
    if (v24(v12, v10) == *MEMORY[0x277D0A528])
    {
      (*(v58 + 96))(v12, v10);
      outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v12, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
      v38 = v50;
      ProgressView<>.init<>()();
      v39 = v51;
      v40 = v49;
      (*(v51 + 16))(v53, v38, v49);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
      lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
      v41 = v47;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(v41, v56);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
      v32 = v57;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v41, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMR);
      (*(v39 + 8))(v38, v40);
      v37 = 0;
      a2 = v48;
    }

    else
    {
      v27(v12, v10);
      v42 = AudioSynthesisVoiceAsset.userSelected.getter();
      a2 = v48;
      v43 = v49;
      if (v42)
      {
        v37 = 1;
        v32 = v57;
      }

      else
      {
        v44 = v50;
        ProgressView<>.init<>()();
        v45 = v51;
        (*(v51 + 16))(v56, v44, v43);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
        _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
        v32 = v57;
        _ConditionalContent<>.init(storage:)();
        (*(v45 + 8))(v44, v43);
        v37 = 0;
      }
    }

    goto LABEL_14;
  }

  v28 = Image.init(systemName:)();
  v29 = [objc_opt_self() keyColors];
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 nonGradientTextColor];

  v32 = v57;
  if (v31)
  {
    v33 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v35 = v53;
    *v53 = v28;
    v35[1] = KeyPath;
    v35[2] = v33;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
    v36 = v47;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(v36, v56);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of AudioSynthesisVoiceAsset.DownloadProgress?(v36, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMR);
    v37 = 0;
    a2 = v48;
    v22 = v59;
LABEL_14:
    (*(v60 + 8))(v22, v61);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGMR);
    (*(*(v46 - 8) + 56))(v32, v37, 1, v46);
    outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?(v32, a2);
    v20 = 0;
LABEL_15:
    (*(v62 + 56))(a2, v20, 1, v63);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__selectedRow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__indicatedRow, v4);
  return v0;
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__selectedRow;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__indicatedRow, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutVoiceOnboardingPickerViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutVoiceOnboardingPickerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void key path getter for WorkoutVoiceOnboardingPickerViewModel.indicatedRow : WorkoutVoiceOnboardingPickerViewModel(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v5;
  *a2 = v4;
  *(a2 + 8) = v3;
}

uint64_t key path setter for WorkoutVoiceOnboardingPickerViewModel.indicatedRow : WorkoutVoiceOnboardingPickerViewModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of _ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGASGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12ProgressViewVyAA05EmptyM0VARGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:)(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of WorkoutVoiceOnboardingPickerViewModel.selectInitialVoice(index:);

  return v6(a1);
}