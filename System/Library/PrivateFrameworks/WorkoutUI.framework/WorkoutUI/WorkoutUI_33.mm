uint64_t closure #1 in closure #1 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for PacerDurationValuePicker(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v61 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (v52 - v7);
  v9 = type metadata accessor for PacerDistanceValuePicker(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v52 - v13);
  v59 = a1;
  v71 = *(a1 + 32);
  v52[1] = *(&v71 + 1);
  v15 = *(a1 + 48);
  v58 = *(a1 + 72);
  v74[0] = *(a1 + 96);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(&v71, &v76, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  v16 = v15;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(&v71, &v76, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  v17 = v16;
  v52[0] = v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v54 = *(&v76 + 1);
  v55 = v76;
  v53 = v77;
  *v14 = swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v18 = (v14 + v10[7]);
  v52[5] = type metadata accessor for WorkoutConfigurationDataSource();
  v52[4] = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  *v18 = EnvironmentObject.init()();
  v18[1] = v19;
  v20 = (v14 + v10[8]);
  v52[3] = type metadata accessor for ConfigurationNavigationModel(0);
  v52[2] = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *v20 = EnvironmentObject.init()();
  v20[1] = v21;
  v22 = v14 + v10[12];
  *v22 = FocusState.init<>()() & 1;
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  v25 = (v14 + v10[9]);
  type metadata accessor for PacerWorkoutConfiguration();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968], MEMORY[0x277D7DA48]);
  *v25 = ObservedObject.init(wrappedValue:)();
  v25[1] = v26;
  *(v14 + v10[10]) = v17;
  v27 = v58;
  *(v14 + v10[11]) = v58;
  v28 = v14 + v10[13];
  v29 = v54;
  *v28 = v55;
  *(v28 + 1) = v29;
  v28[16] = v53;
  v74[0] = *(v59 + 112);
  State.projectedValue.getter();
  v30 = *(&v76 + 1);
  v59 = v76;
  LODWORD(v57) = v77;
  *v8 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v31 = (v8 + v4[7]);
  *v31 = EnvironmentObject.init()();
  v31[1] = v32;
  v33 = (v8 + v4[8]);
  *v33 = EnvironmentObject.init()();
  v33[1] = v34;
  v35 = (v8 + v4[9]);
  *v35 = ObservedObject.init(wrappedValue:)();
  v35[1] = v36;
  v37 = v52[0];
  *(v8 + v4[10]) = v52[0];
  *(v8 + v4[11]) = v27;
  v38 = v8 + v4[12];
  *v38 = v59;
  *(v38 + 1) = v30;
  v38[16] = v57;
  static PacerDurationValuePicker.paceDescriptionView(workoutConfiguration:formattingManager:)(v37, v72);
  v39 = v60;
  outlined init with copy of RoundedRectangle(v14, v60, type metadata accessor for PacerDistanceValuePicker);
  v40 = v61;
  outlined init with copy of RoundedRectangle(v8, v61, type metadata accessor for PacerDurationValuePicker);
  v67 = v72[4];
  v68 = v72[5];
  v69 = v72[6];
  v70 = v73;
  v63 = v72[0];
  v64 = v72[1];
  v65 = v72[2];
  v66 = v72[3];
  v41 = v62;
  outlined init with copy of RoundedRectangle(v39, v62, type metadata accessor for PacerDistanceValuePicker);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24PacerDistanceValuePickerV_AA0c8DurationeF0V05SwiftB019_ConditionalContentVyAF4TextVAF08ModifiedJ0VyAA023AlignedLeadingAccessoryJ4ViewVyAF5ImageVAF05TupleP0VyAJ_AF6SpacerVAJtGGAF24_ForegroundStyleModifierVyAF5ColorVGGGtMd, &_s9WorkoutUI24PacerDistanceValuePickerV_AA0c8DurationeF0V05SwiftB019_ConditionalContentVyAF4TextVAF08ModifiedJ0VyAA023AlignedLeadingAccessoryJ4ViewVyAF5ImageVAF05TupleP0VyAJ_AF6SpacerVAJtGGAF24_ForegroundStyleModifierVyAF5ColorVGGGtMR);
  outlined init with copy of RoundedRectangle(v40, v41 + *(v42 + 48), type metadata accessor for PacerDurationValuePicker);
  v43 = v41 + *(v42 + 64);
  v44 = v67;
  v45 = v68;
  v74[4] = v67;
  v74[5] = v68;
  v46 = v69;
  v74[6] = v69;
  v47 = v70;
  v75 = v70;
  v48 = v63;
  v49 = v64;
  v74[0] = v63;
  v74[1] = v64;
  v50 = v66;
  v74[2] = v65;
  v74[3] = v66;
  *(v43 + 32) = v65;
  *(v43 + 48) = v50;
  *v43 = v48;
  *(v43 + 16) = v49;
  *(v43 + 112) = v47;
  *(v43 + 80) = v45;
  *(v43 + 96) = v46;
  *(v43 + 64) = v44;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v74, &v76, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMR);
  outlined destroy of RoundedRectangle(v8, type metadata accessor for PacerDurationValuePicker);
  outlined destroy of RoundedRectangle(v14, type metadata accessor for PacerDistanceValuePicker);
  v80 = v67;
  v81 = v68;
  v82 = v69;
  v83 = v70;
  v76 = v63;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(&v76, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0Vy07WorkoutB0023AlignedLeadingAccessoryD4ViewVyAA5ImageVAA05TupleK0VyAE_AA6SpacerVAEtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGMR);
  outlined destroy of RoundedRectangle(v40, type metadata accessor for PacerDurationValuePicker);
  return outlined destroy of RoundedRectangle(v39, type metadata accessor for PacerDistanceValuePicker);
}

void closure #2 in closure #1 in PacerWorkoutConfigurationView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
  }
}

void closure #3 in closure #1 in PacerWorkoutConfigurationView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.setter();
  }
}

uint64_t closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVG07WorkoutB009UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA9TupleViewVyAK05StartI6ButtonV_AK08SaveCopyY0VSgAK05Sharei13ConfigurationY0VSgAK06DeleteY0VSgtGAGSgGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA4TextVAA12_FrameLayoutVG07WorkoutB009UnstackedC15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAA9TupleViewVyAK05StartI6ButtonV_AK08SaveCopyY0VSgAK05Sharei13ConfigurationY0VSgAK06DeleteY0VSgtGAGSgGMR);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v58 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v47 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA19_ConditionalContentVyAA08ModifiedG0VyAIy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGANyAJ0R15NavigationModelCSgGGAIyAJ08EmbeddedjrE0VAJ017ListRowBackgroundeP0VGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA19_ConditionalContentVyAA08ModifiedG0VyAIy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0I4Core0I23ConfigurationDataSourceCSgGGANyAJ0R15NavigationModelCSgGGAIyAJ08EmbeddedjrE0VAJ017ListRowBackgroundeP0VGGAEGMR);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    MEMORY[0x28223BE20](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _Environme();
    Section<>.init(content:)();
    (*(v9 + 32))(v16, v11, v8);
    v18 = (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    v18 = (*(v9 + 56))(v16, 1, 1, v8);
  }

  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>();
  v19 = Section<>.init(content:)();
  MEMORY[0x28223BE20](v19);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v64 = v20;
  v65 = v22;
  v66 = v24 & 1;
  v67 = v26;
  if (WorkoutConfiguration.isOpenGoal.getter())
  {
    v27 = 0;
LABEL_8:
    v29 = 0;
    v32 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  v27 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  if (!v27)
  {
    goto LABEL_8;
  }

  v60 = WorkoutConfiguration.saveConfigurationFooterText.getter();
  v61 = v28;
  lazy protocol witness table accessor for type String and conformance String();
  v27 = Text.init<A>(_:)();
  v32 = v31 & 1;
LABEL_9:
  v60 = v27;
  v61 = v29;
  v62 = v32;
  v63 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVG07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA12_FrameLayoutVG07WorkoutB031UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FrameLayout>, UnstackedSectionSpacingModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(StartWorkoutButton, SaveCopyButton?, ShareWorkoutConfigurationButton?, DeleteButton?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB005StartE6ButtonV_AD08SaveCopyG0VSgAD05Sharee13ConfigurationG0VSgAD06DeleteG0VSgtGMR, MEMORY[0x277CE14C0]);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v33 = v57;
  Section<>.init(header:footer:content:)();
  v34 = v55;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v16, v55, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMR);
  v49 = v16;
  v35 = v50;
  v48 = *(v50 + 16);
  v36 = v56;
  v37 = v51;
  v48(v56, v59, v51);
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v54;
  v39(v58, v33, v54);
  v41 = v53;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v34, v53, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSg_ACyAeMyAGyAGyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAGyA10_026EmbeddedPacerConfigurationE0VA10_0z13RowBackgroundeO0VGGAEGACyAGyAGyAoA01_sT0VGA10_09Unstackedc7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGAKyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSg_ACyAeMyAGyAGyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAGyA10_026EmbeddedPacerConfigurationE0VA10_0z13RowBackgroundeO0VGGAEGACyAGyAGyAoA01_sT0VGA10_09Unstackedc7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGAKyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtMR);
  v48((v41 + *(v42 + 48)), v36, v37);
  v43 = v58;
  v39((v41 + *(v42 + 64)), v58, v40);
  v44 = *(v38 + 8);
  v44(v57, v40);
  v45 = *(v35 + 8);
  v45(v59, v37);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v49, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMR);
  v44(v43, v40);
  v45(v56, v37);
  return outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v55, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAGyAA6VStackVyAA05TupleE0VyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAEGSgMR);
}

uint64_t closure #1 in closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v11[0] = *(a1 + 32);
  *(&v11[0] + 1);
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v11, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);

    v4 = *(a1 + 48);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>();
    result = _ConditionalContent<>.init(storage:)();
    v8 = v11[4];
    v9 = v12[0];
    v10 = v11[2];
    a2[2] = v11[3];
    a2[3] = v8;
    a2[4] = v9;
    *(a2 + 73) = *(v12 + 9);
    *a2 = v11[1];
    a2[1] = v10;
    return result;
  }

  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v11, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  v5 = *(a1 + 48);
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v5;
  EnvironmentObject.init()();
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  EnvironmentObject.init()();
  type metadata accessor for PacerWorkoutConfiguration();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968], MEMORY[0x277D7DA48]);
  ObservedObject.init(wrappedValue:)();
  if (*a1)
  {
    v6 = *a1;
    static ObservableObject.environmentStore.getter();
    if (*(a1 + 16))
    {

      static ObservableObject.environmentStore.getter();
      goto LABEL_6;
    }
  }

  else
  {
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #3 in PacerWorkoutConfigurationView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = type metadata accessor for DeleteButton(0);
  v4 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v64 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v73 = a1;
  v124[0] = *(a1 + 2);
  v12 = *(&v124[0] + 1);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v124, &v100, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v124, &v100, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v13 = v12;
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v17 = type metadata accessor for WorkoutConfigurationDataSource();
  v65 = lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v66 = v17;
  v18 = EnvironmentObject.init()();
  v85 = v19;
  v86 = v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v125._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._object = 0x800000020CB93C90;
  v22._countAndFlagsBits = 0xD00000000000001ALL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v125._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v125);
  object = v24._object;
  countAndFlagsBits = v24._countAndFlagsBits;

  LOBYTE(v91) = 0;
  State.init(wrappedValue:)();
  v81 = v100;
  v82 = v101;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v26 = 15;
  if (v25)
  {
    v26 = 19;
  }

  *&v91 = v26;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v79 = v101;
  v80 = v100;
  v121 = 0;
  v27 = WorkoutConfiguration.isOpenGoal.getter();
  v87 = v16;
  if ((v27 & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v124, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    v89 = 0;
    v90 = 0;
    v77 = 0;
    v78 = 0;
    v74 = 0;
    v75 = 0;
  }

  else
  {

    if (!*v73)
    {
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v28 = *v73;
    v29 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v90 = EnvironmentObject.init()();
    v78 = v30;
    LOBYTE(v91) = 0;
    State.init(wrappedValue:)();
    v77 = v100;
    v74 = v13;
    v75 = v101;
    v89 = v29 & 1;
  }

  v88 = v14;
  v31 = v8;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v124, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);

    v71 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 0;
  }

  else
  {
    v32 = v73[6];
    type metadata accessor for WorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
    v73 = v32;
    v33 = ObservedObject.init(wrappedValue:)();
    v71 = v34;
    v72 = v33;
    v70 = 256;
  }

  v35 = v76;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v124, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);

    v36 = 1;
  }

  else
  {
    v37 = EnvironmentObject.init()();
    v38 = v64;
    *v64 = v37;
    *(v38 + 8) = v39;
    v40 = v35[5];
    *(v38 + v40) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
    swift_storeEnumTagMultiPayload();
    v41 = v38 + v35[7];
    LOBYTE(v91) = 0;
    State.init(wrappedValue:)();
    v42 = v101;
    *v41 = v100;
    *(v41 + 8) = v42;
    *(v38 + v35[6]) = v13;
    outlined init with take of DeleteButton(v38, v11);
    v36 = 0;
  }

  v68 = v13;
  (*(v4 + 56))(v11, v36, 1, v35);
  v69 = v11;
  v67 = v31;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v11, v31, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  *&v91 = v88;
  *(&v91 + 1) = v87;
  *&v92 = v86;
  *(&v92 + 1) = v85;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = *v123;
  DWORD1(v93) = *&v123[3];
  *(&v93 + 1) = countAndFlagsBits;
  *&v94 = object;
  *(&v94 + 1) = v13;
  LOBYTE(v95) = v81;
  *(&v95 + 1) = *v122;
  DWORD1(v95) = *&v122[3];
  *(&v95 + 1) = v82;
  *&v96 = v80;
  v76 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v96 + 1) = v79;
  *&v97 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v97 + 1) = 0;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = *v120;
  DWORD1(v98) = *&v120[3];
  *(&v98 + 1) = 0;
  v99 = 0;
  v43 = v91;
  v44 = v92;
  v45 = v96;
  *(a2 + 64) = v95;
  *(a2 + 80) = v45;
  v46 = v94;
  *(a2 + 32) = v93;
  *(a2 + 48) = v46;
  *a2 = v43;
  *(a2 + 16) = v44;
  v47 = v98;
  *(a2 + 96) = v97;
  *(a2 + 112) = v47;
  v49 = v89;
  v48 = v90;
  *(a2 + 128) = 0;
  *(a2 + 136) = v48;
  v89 = v49;
  v90 = v48;
  v50 = v77;
  v52 = v74;
  v51 = v75;
  *(a2 + 144) = v78;
  *(a2 + 152) = v52;
  *(a2 + 160) = v49;
  *(a2 + 168) = 0;
  *(a2 + 176) = v50;
  *(a2 + 184) = v51;
  v53 = v71;
  v54 = v72;
  *(a2 + 192) = v72;
  *(a2 + 200) = v53;
  v55 = v73;
  *(a2 + 208) = v73;
  *(a2 + 216) = v70;
  v56 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI05StartA6ButtonV_AA08SaveCopyD0VSgAA05Sharea13ConfigurationD0VSgAA06DeleteD0VSgtMd, &_s9WorkoutUI05StartA6ButtonV_AA08SaveCopyD0VSgAA05Sharea13ConfigurationD0VSgAA06DeleteD0VSgtMR) + 80);
  v57 = v67;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v67, v56, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  outlined init with copy of StartWorkoutButton(&v91, &v100);
  v58 = v48;
  v59 = v78;
  v60 = v49;
  v61 = v77;
  outlined copy of SaveCopyButton?(v58, v78, v52, v60, 0, v77, v51);
  outlined copy of ShareWorkoutConfigurationButton?(v54, v53, v55);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v69, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v57, &_s9WorkoutUI12DeleteButtonVSgMd, &_s9WorkoutUI12DeleteButtonVSgMR);
  outlined consume of ShareWorkoutConfigurationButton?(v54, v53, v55);
  outlined consume of SaveCopyButton?(v90, v59, v52, v89, 0, v61, v51);
  v100 = v88;
  v101 = v87;
  v102 = v86;
  v103 = v85;
  v104 = 0;
  *v105 = *v123;
  *&v105[3] = *&v123[3];
  v106 = countAndFlagsBits;
  v107 = object;
  v108 = v68;
  v109 = v81;
  *v110 = *v122;
  *&v110[3] = *&v122[3];
  v111 = v82;
  v112 = v80;
  v113 = v79;
  v114 = v76;
  v115 = 0;
  v116 = 0;
  *v117 = *v120;
  *&v117[3] = *&v120[3];
  v118 = 0;
  v119 = 0;
  return outlined destroy of StartWorkoutButton(&v100);
}

void *closure #2 in PacerWorkoutConfigurationView.body.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_71()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView);
  }

  return result;
}

uint64_t _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0F4Core0F23ConfigurationDataSourceCSgGGAJyAF0O15NavigationModelCSgGGAEyAF08EmbeddedgO4ViewVAF017ListRowBackgrounduM0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGAHyAD0N15NavigationModelCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017PacerValuesButtonVAA30_EnvironmentKeyWritingModifierVy0E4Core0E23ConfigurationDataSourceCSgGGMR);
    lazy protocol witness table accessor for type PacerValuesButton and conformance PacerValuesButton();
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerValuesButton, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacerValuesButton and conformance PacerValuesButton()
{
  result = lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton;
  if (!lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerValuesButton and conformance PacerValuesButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD017ListRowBackgroundI8ModifierVGMR);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    lazy protocol witness table accessor for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedPacerConfigurationView, ListRowBackgroundViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ObservedObject<PacerWorkoutConfiguration>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id VignetteView.init(cornerRadius:)(double a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for VignetteView();
  v3 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setAlpha_];
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  [v3 setClipsToBounds_];
  v6 = [v3 layer];
  v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v6 setCompositingFilter_];

  v8 = [v3 layer];
  [v8 setCornerRadius_];

  v9 = [v3 layer];
  [v9 setCornerCurve_];

  v10 = [v3 layer];
  [v10 setInvertsShadow_];

  v11 = [v3 layer];
  v12 = [v4 whiteColor];
  v13 = [v12 CGColor];

  [v11 setShadowColor_];
  v14 = [v3 layer];
  [v14 setShadowOffset_];

  v15 = [v3 layer];
  [v15 setShadowRadius_];

  v16 = [v3 layer];
  LODWORD(v17) = 1.0;
  [v16 setShadowOpacity_];

  v18 = [v3 layer];
  [v18 setShadowPathIsBounds_];

  return v3;
}

Swift::Void __swiftcall VignetteView.update(with:)(UIUserInterfaceActiveAppearance with)
{
  if (with)
  {
    v2 = [v1 layer];
    v3 = [objc_opt_self() whiteColor];
  }

  else
  {
    v2 = [v1 layer];
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.882352941 alpha:1.0];
  }

  v4 = v3;
  v5 = [v3 CGColor];

  [v2 setShadowColor_];
}

id VignetteView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VignetteView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VignetteView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *WorkoutCountdownAnimatedView.__allocating_init(diameter:thickness:isOpaque:topColor:bottomColor:)(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v8 = a1;
  v11 = objc_allocWithZone(v5);
  return WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(v8, a2, a3, a4, a5);
}

Swift::Void __swiftcall WorkoutCountdownAnimatedView.prepare()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView);
  v2 = OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator;
  [*&v1[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_animator] setCountdownView_];
  [*&v1[v2] prepareToAnimate];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel) setHidden_];

  [v1 setHidden_];
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownStep : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutCountdownStep) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4, v5);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownStep : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutCountdownStep) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3, v4);
  return sub_20C691F38(v8, v9);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownWindUp : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4, v5);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownWindUp : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3, v4);
  return sub_20C691F38(v8, v9);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownFadeOut : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4, v5);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownFadeOut : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3, v4);
  return sub_20C691F38(v8, v9);
}

uint64_t key path getter for WorkoutCountdownAnimatedView.onCountdownCompleted : WorkoutCountdownAnimatedView@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_2;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v4, v5);
}

uint64_t key path setter for WorkoutCountdownAnimatedView.onCountdownCompleted : WorkoutCountdownAnimatedView(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(v3, v4);
  return sub_20C691F38(v8, v9);
}

uint64_t WorkoutCountdownAnimatedView.onCountdownStep.getter(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t WorkoutCountdownAnimatedView.onCountdownStep.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void one-time initialization function for readyFont(double a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D74418];
  v6 = *MEMORY[0x277D74368];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemFontOfSize:a1 weight:v5];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = v8;
  v14 = [v10 fontDescriptorWithDesign_];

  if (v14)
  {

    v10 = v14;
  }

  v15 = [v7 fontWithDescriptor:v10 size:0.0];

  *a3 = v15;
}

char *WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(char a1, void *a2, void *a3, double a4, double a5)
{
  v6 = v5;
  v9 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for readyFont != -1)
  {
    swift_once();
  }

  [v14 setFont_];
  [v14 setTextAlignment_];
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  [v14 setTextColor_];

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = WorkoutUIBundle.super.isa;
  v143._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x574F44544E554F43;
  v18._object = 0xEF59444145525F4ELL;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v143._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v143);

  v22 = MEMORY[0x20F30BAD0](v21._countAndFlagsBits, v21._object);
  [v14 setText_];

  [v14 setMinimumScaleFactor_];
  [v14 setAdjustsFontSizeToFitWidth_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v13] = v14;
  v23 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for numberFont != -1)
  {
    swift_once();
  }

  v134 = static WorkoutCountdownAnimatedView.Layout.numberFont;
  [v24 setFont_];
  [v24 setTextAlignment_];
  v25 = [v15 labelColor];
  [v24 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D83B88];
  *(v26 + 16) = xmmword_20CB5DA70;
  v28 = MEMORY[0x277D83C10];
  *(v26 + 56) = v27;
  *(v26 + 64) = v28;
  *(v26 + 32) = 1;
  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  v32 = MEMORY[0x20F30BAD0](v29, v31);
  [v24 setText_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v23] = v24;
  v132 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v33 &selRef:v134 dictionaryForKey:?];
  [v33 setTextAlignment_];
  v34 = [v15 labelColor];
  [v33 setTextColor_];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20CB5DA70;
  *(v35 + 56) = MEMORY[0x277D83B88];
  *(v35 + 64) = MEMORY[0x277D83C10];
  *(v35 + 32) = 2;
  v36 = static String.localizedStringWithFormat(_:_:)();
  v38 = v37;

  v39 = MEMORY[0x20F30BAD0](v36, v38);
  [v33 setText_];

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v132] = v33;
  v40 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  v41 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v41 &selRef:v134 dictionaryForKey:?];
  [v41 setTextAlignment_];
  v42 = [v15 labelColor];
  [v41 setTextColor_];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20CB5DA70;
  *(v43 + 56) = MEMORY[0x277D83B88];
  *(v43 + 64) = MEMORY[0x277D83C10];
  *(v43 + 32) = 3;
  v44 = static String.localizedStringWithFormat(_:_:)();
  v46 = v45;

  v47 = MEMORY[0x20F30BAD0](v44, v46);
  [v41 setText_];

  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v40] = v41;
  v50 = objc_allocWithZone(type metadata accessor for WorkoutCountdownRingView());
  v140 = a2;
  v141 = a3;
  v48 = a4;
  v49 = a5;
  v51 = WorkoutCountdownRingView.init(diameter:thickness:topColor:bottomColor:isOpaque:)(v140, v141, a1 & 1, v48, v49);
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView] = v51;
  v142.receiver = v6;
  v142.super_class = type metadata accessor for WorkoutCountdownAnimatedView();
  v52 = objc_msgSendSuper2(&v142, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v53 = *&v52[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView];
  v54 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = &v53[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownCompleted];
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  *v56 = partial apply for closure #1 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v56[1] = v55;
  v59 = v52;
  v60 = v53;

  sub_20C691F38(v57, v58);

  v61 = *&v52[v54];
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = &v61[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownStep];
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  *v63 = partial apply for closure #2 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v63[1] = v62;
  v66 = v61;

  sub_20C691F38(v64, v65);

  v67 = *&v52[v54];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = &v67[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownFadeOut];
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[1];
  *v69 = partial apply for closure #3 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v69[1] = v68;
  v72 = v67;

  sub_20C691F38(v70, v71);

  v73 = *&v52[v54];
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = v73;

  v76 = &v75[OBJC_IVAR____TtC9WorkoutUI24WorkoutCountdownRingView_onCountdownWindUp];
  swift_beginAccess();
  v77 = *v76;
  v78 = v76[1];
  *v76 = partial apply for closure #4 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:);
  v76[1] = v74;

  sub_20C691F38(v77, v78);

  v79 = v59;
  v80 = *&v52[v54];
  v81 = v79;
  [v81 addSubview_];
  v82 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  [v81 addSubview_];
  v83 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  [v81 addSubview_];
  v133 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  [v81 addSubview_];
  v135 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  [v81 addSubview_];
  v138 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_20CB83930;
  v85 = [*&v81[v82] centerXAnchor];
  v86 = [v81 centerXAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v84 + 32) = v87;
  v88 = [*&v81[v82] centerYAnchor];
  v89 = [v81 centerYAnchor];

  v90 = [v88 constraintEqualToAnchor_];
  *(v84 + 40) = v90;
  v91 = [*&v81[v82] widthAnchor];
  v92 = [v91 constraintEqualToConstant_];

  *(v84 + 48) = v92;
  v93 = [*&v81[v83] centerXAnchor];
  v94 = [v81 centerXAnchor];

  v95 = [v93 constraintEqualToAnchor_];
  *(v84 + 56) = v95;
  v96 = [*&v81[v83] centerYAnchor];
  v97 = [v81 centerYAnchor];

  v98 = [v96 constraintEqualToAnchor_];
  *(v84 + 64) = v98;
  v99 = [*&v81[v133] centerXAnchor];
  v100 = [v81 centerXAnchor];

  v101 = [v99 constraintEqualToAnchor_];
  *(v84 + 72) = v101;
  v102 = [*&v81[v133] centerYAnchor];
  v103 = [v81 centerYAnchor];

  v104 = [v102 constraintEqualToAnchor_];
  *(v84 + 80) = v104;
  v105 = [*&v81[v135] centerXAnchor];
  v106 = [v81 centerXAnchor];

  v107 = [v105 constraintEqualToAnchor_];
  *(v84 + 88) = v107;
  v108 = [*&v81[v135] centerYAnchor];
  v109 = [v81 centerYAnchor];

  v110 = [v108 constraintEqualToAnchor_];
  *(v84 + 96) = v110;
  v111 = [*&v52[v54] leadingAnchor];
  v112 = [v81 leadingAnchor];

  v113 = [v111 &selRef:v112 getCoordinates:? range:? + 5];
  *(v84 + 104) = v113;
  v114 = [*&v52[v54] trailingAnchor];
  v115 = [v81 trailingAnchor];

  v116 = [v114 &selRef:v115 getCoordinates:? range:? + 5];
  *(v84 + 112) = v116;
  v117 = [*&v52[v54] topAnchor];
  v118 = [v81 topAnchor];

  v119 = [v117 &selRef:v118 getCoordinates:? range:? + 5];
  *(v84 + 120) = v119;
  v120 = [*&v52[v54] bottomAnchor];
  v121 = [v81 bottomAnchor];

  v122 = [v120 &selRef:v121 getCoordinates:? range:? + 5];
  *(v84 + 128) = v122;
  v123 = [v81 widthAnchor];

  v124 = [v123 constraintEqualToConstant_];
  *(v84 + 136) = v124;
  v125 = [v81 heightAnchor];

  v126 = [v81 widthAnchor];
  v127 = [v125 &selRef:v126 getCoordinates:? range:? + 5];

  *(v84 + 144) = v127;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v138 activateConstraints_];

  v129 = swift_allocObject();
  *(v129 + 16) = v81;
  v130 = v81;
  specialized static Spring.animate(animations:)(partial apply for closure #1 in WorkoutCountdownAnimatedView.showNone(), v129);

  [*&v52[v54] setAlpha_];

  return v130;
}

void closure #2 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      if (v2 == 1)
      {
        WorkoutCountdownAnimatedView.showTwo()();
      }

      else
      {
        WorkoutCountdownAnimatedView.showThree()();
      }
    }

    else
    {
      WorkoutCountdownAnimatedView.showOne()();
    }

    [v4 accessibilityUpdateCountdownToStep_];
    v5 = &v4[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep];
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 1);
      v8 = v2;

      v6(&v8);

      sub_20C691F38(v6, v7);
    }

    else
    {
    }
  }
}

void closure #1 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);

      sub_20C691F38(v6, v7);
    }

    else
    {
    }
  }
}

void closure #4 in WorkoutCountdownAnimatedView.init(diameter:thickness:isOpaque:topColor:bottomColor:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    WorkoutCountdownAnimatedView.showReadyWithDuration(_:)(0.7);
    v3 = &v2[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp];
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 1);

      v4(v6);

      sub_20C691F38(v4, v5);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall WorkoutCountdownAnimatedView.showReadyWithDuration(_:)(Swift::Double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_countdownRingView];
  [v3 setOpaque_];
  [v3 setAlpha_];
  v4 = *&v1[OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel];
  [v4 setHidden_];
  [v4 setAlpha_];
  CGAffineTransformMakeScale(&v14, 0.01, 0.01);
  [v4 setTransform_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = objc_opt_self();
  *&v14.tx = partial apply for closure #1 in WorkoutCountdownAnimatedView.showReadyWithDuration(_:);
  *&v14.ty = v5;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v14.d = &block_descriptor_96;
  v7 = _Block_copy(&v14);
  v8 = v1;

  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *&v14.tx = partial apply for closure #1 in static Spring.animate(tension:friction:animations:completion:);
  *&v14.ty = v9;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ();
  *&v14.d = &block_descriptor_102_0;
  v10 = _Block_copy(&v14);

  [v6 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v10);
  _Block_release(v7);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *&v14.tx = partial apply for closure #2 in WorkoutCountdownAnimatedView.showReadyWithDuration(_:);
  *&v14.ty = v11;
  *&v14.a = MEMORY[0x277D85DD0];
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v14.d = &block_descriptor_108;
  v12 = _Block_copy(&v14);
  v13 = v8;

  [v6 animateWithDuration:0x20000 delay:v12 options:0 animations:a1 - a1 * 0.5 completion:a1 * 0.5];
  _Block_release(v12);
}

void closure #1 in WorkoutCountdownAnimatedView.showThree()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_78;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_84;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showThree();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_90;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void closure #1 in WorkoutCountdownAnimatedView.showTwo()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_54_0;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_60_0;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showTwo();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_66;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

void WorkoutCountdownAnimatedView.showThree()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[*a1];
  CGAffineTransformMakeScale(&v12, 0.01, 0.01);
  [v7 setTransform_];
  [v7 setAlpha_];
  [v7 setHidden_];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *&v12.tx = a3;
  *&v12.ty = v9;
  *&v12.a = MEMORY[0x277D85DD0];
  *&v12.b = 1107296256;
  *&v12.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v12.d = a4;
  v10 = _Block_copy(&v12);
  v11 = v4;

  [v8 animateKeyframesWithDuration:0 delay:v10 options:0 animations:0.35 completion:0.0];
  _Block_release(v10);
}

void closure #1 in WorkoutCountdownAnimatedView.showOne()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = partial apply for closure #1 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_30_1;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = partial apply for closure #2 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_36;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.4 animations:0.3];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showOne();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_42;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.7 animations:0.3];
  _Block_release(v10);
}

id closure #1 in closure #1 in WorkoutCountdownAnimatedView.showThree()(uint64_t a1, void *a2, CGFloat a3, double a4)
{
  v5 = *(a1 + *a2);
  CGAffineTransformMakeScale(&v7, a3, a3);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id closure #1 in WorkoutCountdownAnimatedView.showNone()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v2 setTransform_];
  [v2 setAlpha_];
  v3 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v3 setTransform_];
  [v3 setAlpha_];
  v4 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v4 setTransform_];
  [v4 setAlpha_];
  v5 = *(a1 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel);
  CGAffineTransformMakeScale(&v7, 0.01, 0.01);
  [v5 setTransform_];
  return [v5 setAlpha_];
}

id WorkoutCountdownAnimatedView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutCountdownAnimatedView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutCountdownAnimatedView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void specialized static Spring.animate(animations:)(uint64_t (*a1)(), uint64_t a2)
{
  v4 = objc_opt_self();
  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed () -> ();
  v11 = &block_descriptor_139_0;
  v5 = _Block_copy(&v8);

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v12 = closure #1 in static Spring.animate(tension:friction:animations:completion:)partial apply;
  v13 = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @unowned Bool) -> ();
  v11 = &block_descriptor_146;
  v7 = _Block_copy(&v8);

  [v4 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

double block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id partial apply for closure #3 in closure #1 in WorkoutCountdownAnimatedView.showOne()(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  return [v2 setTransform_];
}

void specialized WorkoutCountdownAnimatedView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownStep);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownWindUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownFadeOut);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_onCountdownCompleted);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_readyLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for readyFont != -1)
  {
    swift_once();
  }

  [v6 setFont_];
  [v6 setTextAlignment_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v6 setTextColor_];

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v43._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x574F44544E554F43;
  v10._object = 0xEF59444145525F4ELL;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v43);

  v14 = MEMORY[0x20F30BAD0](v13._countAndFlagsBits, v13._object);
  [v6 setText_];

  [v6 setMinimumScaleFactor_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v15 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_oneLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (one-time initialization token for numberFont != -1)
  {
    swift_once();
  }

  v42 = static WorkoutCountdownAnimatedView.Layout.numberFont;
  [v16 setFont_];
  [v16 setTextAlignment_];
  v17 = v7;
  v18 = [v7 labelColor];
  [v16 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_20CB5DA70;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = 1;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  v25 = MEMORY[0x20F30BAD0](v22, v24);
  [v16 setText_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  v26 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_twoLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 &selRef:v42 dictionaryForKey:?];
  [v27 setTextAlignment_];
  v28 = [v17 labelColor];
  [v27 setTextColor_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CB5DA70;
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = MEMORY[0x277D83C10];
  *(v29 + 32) = 2;
  v30 = static String.localizedStringWithFormat(_:_:)();
  v32 = v31;

  v33 = MEMORY[0x20F30BAD0](v30, v32);
  [v27 setText_];

  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v26) = v27;
  v34 = OBJC_IVAR____TtC9WorkoutUI28WorkoutCountdownAnimatedView_threeLabel;
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v35 setFont_];
  [v35 setTextAlignment_];
  v36 = [v17 labelColor];
  [v35 setTextColor_];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20CB5DA70;
  *(v37 + 56) = MEMORY[0x277D83B88];
  *(v37 + 64) = MEMORY[0x277D83C10];
  *(v37 + 32) = 3;
  v38 = static String.localizedStringWithFormat(_:_:)();
  v40 = v39;

  v41 = MEMORY[0x20F30BAD0](v38, v40);
  [v35 setText_];

  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v34) = v35;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t objectdestroy_98Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static Spring.animate(tension:friction:animations:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id MockWorkoutGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockWorkoutGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockWorkoutGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MockWorkoutGenerator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MockWorkoutGenerator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void specialized LazyMapSequence.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    outlined init with take of Any(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      outlined destroy of (key: String, value: Any)(v20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id specialized static MockWorkoutGenerator.defaultOutdoorRun(goalType:)(uint64_t a1)
{
  v1 = [objc_opt_self() defaultOutdoorRunWithGoalType_];
  v2 = [v1 metadata];
  v3 = MEMORY[0x277D84F98];
  if (v2)
  {
    v4 = v2;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  type metadata accessor for GoalWorkoutConfiguration();
  v6 = MEMORY[0x20F303500]();
  v7 = WorkoutConfiguration.metadata()();
  if (v7)
  {
    v3 = v7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 _setMetadata_];

  return v1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  specialized LazyMapSequence.Iterator.next()(&v47);
  v12 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    goto LABEL_25;
  }

  v13 = v47;
  outlined init with take of Any(v48, v46);
  v14 = *a5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * v15;
    outlined init with copy of Any(*(*a5 + 56) + 32 * v15, v45);
    __swift_destroy_boxed_opaque_existential_0(v46);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0((v25 + v24));
    outlined init with take of Any(v45, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  v28 = (v27[6] + 16 * v15);
  *v28 = v13;
  v28[1] = v12;
  outlined init with take of Any(v46, (v27[7] + 32 * v15));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v47);
    v12 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v47;
        outlined init with take of Any(v48, v46);
        v34 = *a5;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v37 = *(v34 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v34 + 24) < v39)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, 1);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * v35;
          outlined init with copy of Any(*(*a5 + 56) + 32 * v35, v45);
          __swift_destroy_boxed_opaque_existential_0(v46);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0((v33 + v32));
          outlined init with take of Any(v45, (v33 + v32));
        }

        else
        {
          v41 = *a5;
          *(*a5 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v42 = (v41[6] + 16 * v35);
          *v42 = v13;
          v42[1] = v12;
          outlined init with take of Any(v46, (v41[7] + 32 * v35));
          v43 = v41[2];
          v19 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v44;
        }

        specialized LazyMapSequence.Iterator.next()(&v47);
        v12 = *(&v47 + 1);
      }

      while (*(&v47 + 1));
    }

LABEL_25:
    outlined consume of [String : Any].Iterator._Variant(v49);

    return;
  }

LABEL_27:
  __break(1u);
}

id specialized static MockWorkoutGenerator.defaultIncompleteRaceRoute()()
{
  v0 = [objc_opt_self() defaultOutdoorRunWithGoalType_];
  v1 = [v0 metadata];
  v2 = MEMORY[0x277D84F98];
  if (v1)
  {
    v3 = v1;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  type metadata accessor for RaceWorkoutConfiguration();
  v5 = MEMORY[0x20F303820]();
  v6 = WorkoutConfiguration.metadata()();
  if (v6)
  {
    v2 = v6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 _setMetadata_];

  return v0;
}

uint64_t outlined destroy of (key: String, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WorkoutUI::TrainingLoadDayWidget __swiftcall TrainingLoadDayWidget.init(healthStore:)(HKHealthStore healthStore)
{
  v1->super.isa = 0xD000000000000015;
  v1[1].super.isa = 0x800000020CB83990;
  v1[2].super.isa = healthStore.super.isa;
  result.kind._countAndFlagsBits = healthStore.super.isa;
  return result;
}

WorkoutUI::TrainingLoadDayWidget __swiftcall TrainingLoadDayWidget.init()()
{
  v1 = v0;
  *v0 = 0xD000000000000015;
  v0[1] = 0x800000020CB83990;
  v2 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v1[2] = v2;
  result.healthStore.super.isa = v4;
  result.kind._object = v3;
  result.kind._countAndFlagsBits = v2;
  return result;
}

uint64_t TrainingLoadDayWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMd, &_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMR);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v3 = &v50 - v2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo_Md, &_s7SwiftUI19WidgetConfigurationP0C3KitE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo_MR);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v50 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo_Md, &_s7SwiftUI19WidgetConfigurationP0C3KitE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo_MR);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v50 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo_Md, &_s7SwiftUI19WidgetConfigurationP0C3KitE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo_MR);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v51 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE17supportedFamiliesyQrSayAD0C6FamilyOGFQOyAcDE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo__Qo_Md, &_s7SwiftUI19WidgetConfigurationP0C3KitE17supportedFamiliesyQrSayAD0C6FamilyOGFQOyAcDE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo__Qo_MR);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - v9;
  v64._countAndFlagsBits = *(v1 + 16);
  countAndFlagsBits = v64._countAndFlagsBits;
  type metadata accessor for TrainingLoadDayWidgetEntryView(0);
  lazy protocol witness table accessor for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView();
  lazy protocol witness table accessor for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider();

  v11 = countAndFlagsBits;
  StaticConfiguration.init<A>(kind:provider:content:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v68._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x800000020CB9BD90;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v68);

  v64 = v16;
  DayWidgetEntry = lazy protocol witness table accessor for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>();
  v18 = lazy protocol witness table accessor for type String and conformance String();
  v19 = MEMORY[0x277D837D0];
  v20 = v53;
  WidgetConfiguration.configurationDisplayName<A>(_:)();

  (*(v50 + 8))(v3, v20);
  v21 = WorkoutUIBundle.super.isa;
  v69._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000020;
  v22._object = 0x800000020CBA1170;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v69._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v69);

  v67 = v25;
  v64._countAndFlagsBits = v20;
  v64._object = v19;
  v65 = DayWidgetEntry;
  v66 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v52;
  v28 = v56;
  WidgetConfiguration.description<A>(_:)();

  (*(v54 + 8))(v5, v28);
  v64._countAndFlagsBits = v28;
  v64._object = v19;
  v65 = OpaqueTypeConformance2;
  v66 = v18;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v51;
  v31 = v57;
  WidgetConfiguration.enableContentMarginsForFirstParty(_:)();
  (*(v55 + 8))(v27, v31);
  v32 = FIIsTinkerVegaOrFitnessJunior();
  v33 = MEMORY[0x277CE3B68];
  if ((v32 & 1) != 0 || (v34 = MEMORY[0x20F30BAD0](0xD000000000000011, 0x800000020CBA11A0), v35 = MGGetSInt32Answer(), v34, v35 == 3))
  {
    v36 = v33;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMd, &_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMR);
    v37 = type metadata accessor for WidgetFamily();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20CB5DA70;
    v36 = v33;
    (*(v38 + 104))(v40 + v39, *v33, v37);
  }

  v64._countAndFlagsBits = v31;
  v64._object = v29;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = v60;
  WidgetConfiguration.supportedFamilies(_:)();

  (*(v58 + 8))(v30, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D8LocationVGMd, &_ss23_ContiguousArrayStorageCy9WidgetKit0D8LocationVGMR);
  type metadata accessor for WidgetLocation();
  *(swift_allocObject() + 16) = xmmword_20CB5DA80;
  MEMORY[0x20F30B920]();
  static WidgetLocation.carPlay.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMd, &_ss23_ContiguousArrayStorageCy9WidgetKit0D6FamilyOGMR);
  v44 = type metadata accessor for WidgetFamily();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20CB5DA70;
  (*(v45 + 104))(v47 + v46, *v36, v44);
  v64._countAndFlagsBits = v43;
  v64._object = v41;
  swift_getOpaqueTypeConformance2();
  v48 = v62;
  WidgetConfiguration.disfavoredLocations(_:for:)();

  return (*(v61 + 8))(v42, v48);
}

uint64_t closure #1 in TrainingLoadDayWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TrainingLoadDayEntry(a1, a2);
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for TrainingLoadDayWidgetEntryView(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMd, &_s7SwiftUI11EnvironmentV7ContentOy9WidgetKit0E6FamilyO_GMR);

  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView()
{
  result = lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView;
  if (!lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView)
  {
    type metadata accessor for TrainingLoadDayWidgetEntryView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadDayWidgetEntryView and conformance TrainingLoadDayWidgetEntryView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider()
{
  result = lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider;
  if (!lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadWidgetTimelineProvider and conformance TrainingLoadWidgetTimelineProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>()
{
  result = lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>;
  if (!lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMd, &_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>);
  }

  return result;
}

id protocol witness for Widget.init() in conformance TrainingLoadDayWidget@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000015;
  a1[1] = 0x800000020CB83990;
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  a1[2] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadDayWidget(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TrainingLoadDayWidget(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t WorkoutConfigurationView.dismiss.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutConfigurationView(0);
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 36), v9);
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

id WorkoutConfigurationView.init(workoutConfiguration:formattingManager:showAddButton:showStartWorkoutButton:overrideSaveWorkoutAction:startWorkoutAction:overrideDismissAction:referenceIntervalWorkoutConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  specialized static PairedDeviceUtilities.deviceIsPaired.getter();
  State.init(wrappedValue:)();
  *(a9 + 24) = v29;
  *(a9 + 32) = v30;
  v16 = type metadata accessor for WorkoutConfigurationView(0);
  v17 = v16[9];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v18 = (a9 + v16[10]);
  v19 = (a9 + v16[11]);
  v20 = v16[13];
  v21 = (a9 + v16[12]);
  v22 = v16[14];
  result = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *(a9 + v22) = result;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *v18 = a5;
  v18[1] = a6;
  *v19 = a7;
  v19[1] = a8;
  *v21 = a10;
  v21[1] = a11;
  *(a9 + v20) = a12;
  return result;
}

uint64_t WorkoutConfigurationView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd, &_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMR);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  closure #1 in WorkoutConfigurationView.body.getter(v0, &v5[-v2]);
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMR);
  lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMR, MEMORY[0x277CDDF68]);
  View.toolbar<A>(content:)();
  return outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(v3);
}

id closure #1 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  WorkoutConfigurationView.embeddedConfigurationView()(&v31);
  v24 = v31;
  v23 = v32;
  v22 = v33;
  v7 = *(a1 + 32);
  v29 = *(a1 + 24);
  v30 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
  State.projectedValue.getter();
  v8 = v26;
  v21 = v27;
  v9 = v28;
  v10 = *a1;
  v25 = *(a1 + 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  outlined init with copy of WorkoutConfigurationView(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
  *a2 = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v22;
  v14 = v21;
  *(a2 + 32) = v8;
  *(a2 + 40) = v14;
  *(a2 + 48) = v9;
  v15 = v25;
  *(a2 + 56) = v10;
  *(a2 + 64) = v15;
  *(a2 + 72) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter;
  *(a2 + 80) = v12;
  *(a2 + 88) = partial apply for implicit closure #4 in implicit closure #3 in closure #1 in WorkoutConfigurationView.body.getter;
  *(a2 + 96) = v13;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMd, &_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMR) + 56);
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v17 = v10;
  v18 = v25;

  return v18;
}

void WorkoutConfigurationView.embeddedConfigurationView()(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for GoalWorkoutConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v1 + 8);
    v28 = v4;
    v30 = v5;
    v33 = 0;
    v35 = 0;
    v6 = v4;
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    v7 = v3;
    v8 = v5;
    v9 = v6;
    v10 = v8;
    _ConditionalContent<>.init(storage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_5;
  }

  type metadata accessor for IntervalWorkoutConfiguration();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v28 = v11;
    v30 = *(v1 + 8);
    v33 = *(v1 + *(type metadata accessor for WorkoutConfigurationView(0) + 52));
    v35 = 1;
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    v7 = v3;
    v12 = v30;
    v13 = v33;
    v9 = v28;
    v10 = v12;
    v14 = v13;
    _ConditionalContent<>.init(storage:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

LABEL_5:
    v15 = v28;
    v16 = v30;
    v17 = v33;
    v18 = v35;
    if (v36)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_8;
  }

  type metadata accessor for PacerWorkoutConfiguration();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v1 + 8);
    v29 = v21;
    v31 = v22;
    LOBYTE(v32) = 0;
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v20 = -256;
      goto LABEL_9;
    }

    v22 = *(v1 + 8);
    v29 = v21;
    v31 = v22;
    LOBYTE(v32) = 1;
  }

  v23 = v21;
  lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
  lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView();
  v24 = v3;
  v25 = v22;
  v26 = v23;
  v27 = v25;
  _ConditionalContent<>.init(storage:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMR);
  lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();

  v15 = v29;
  v16 = v31;
  v17 = v32;
  v18 = v34;
  if (v36)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

LABEL_8:
  v20 = v19 | v18;
LABEL_9:
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v20;
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WorkoutConfigurationView(0);
  v9 = a2 + *(v8 + 40);
  v10 = *v9;
  if (!*v9)
  {
    return WorkoutConfigurationView.save(configuration:)(a1);
  }

  v11 = v8;
  v12 = *(v9 + 8);

  v10(a1);
  v13 = a2 + *(v11 + 48);
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 8);

    v14(v16);
    sub_20C6925F8(v10, v12);

    return sub_20C6925F8(v14, v15);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v7);
    DismissAction.callAsFunction()();
    sub_20C6925F8(v10, v12);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t WorkoutConfigurationView.performLaunchButtonAction()()
{
  v1 = v0;
  v2 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for WorkoutConfigurationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = WorkoutConfiguration.serializedCompositionData.getter();
  v7 = *(v0 + *(v3 + 56));
  v8 = v6;
  v10 = v9;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined init with copy of WorkoutConfigurationView(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationView.performLaunchButtonAction();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_33;
  v14 = _Block_copy(aBlock);

  [v7 _startWatchAppWithWorkoutPlanData_completion_];
  _Block_release(v14);

  return outlined consume of Data._Representation(v8, v10);
}

uint64_t closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AcDyQrxAaERzlFZQOy_AGyytAIyAKyAA4TextVGATGGQo_SgtMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AcDyQrxAaERzlFZQOy_AGyytAIyAKyAA4TextVGATGGQo_SgtMR);
  MEMORY[0x28223BE20](v67);
  v66 = v52 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_MR);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = v52 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  v56 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_MR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - v12;
  v14 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v52 - v24;
  v26 = *(a1 + 32);
  v60 = *(a1 + 24);
  LOBYTE(v70) = v60;
  v59 = v26;
  v71 = v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
  State.wrappedValue.getter();
  v54 = v16;
  if ((v69 & 0xFB) != 0)
  {
    (*(v11 + 56))(v22, 1, 1, v10);
    v27 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, MEMORY[0x277CDD7A8]);
    v70 = v17;
    v71 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = v25;
    MEMORY[0x20F309920](v22, v10, OpaqueTypeConformance2);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  }

  else
  {
    v30 = static ToolbarItemPlacement.cancellationAction.getter();
    v52[1] = v52;
    MEMORY[0x28223BE20](v30);
    v52[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    v52[0] = v13;
    lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    ToolbarItem<>.init(placement:content:)();
    v31 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, MEMORY[0x277CDD7A8]);
    v32 = v52[0];
    MEMORY[0x20F3098F0](v19, v17, v31);
    (*(v11 + 16))(v22, v32, v10);
    (*(v11 + 56))(v22, 0, 1, v10);
    v70 = v17;
    v71 = v31;
    v33 = swift_getOpaqueTypeConformance2();
    v29 = v25;
    MEMORY[0x20F309920](v22, v10, v33);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v22, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
    (*(v11 + 8))(v32, v10);
    (*(v53 + 8))(v19, v17);
  }

  LOBYTE(v70) = v60;
  v71 = v59;
  State.wrappedValue.getter();
  v34 = v64;
  if ((v69 & 0xFB) != 0)
  {
    v35 = static ToolbarItemPlacement.confirmationAction.getter();
    MEMORY[0x28223BE20](v35);
    v52[-2] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v37 = v55;
    ToolbarItem<>.init(placement:content:)();
    v38 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, MEMORY[0x277CDD7A8]);
    v39 = v57;
    v40 = v63;
    MEMORY[0x20F3098F0](v37, v63, v38);
    v42 = v61;
    v41 = v62;
    v43 = v65;
    (*(v62 + 16))(v61, v39, v65);
    (*(v41 + 56))(v42, 0, 1, v43);
    v70 = v40;
    v71 = v38;
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v42, v43, v44);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v42, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
    (*(v41 + 8))(v39, v43);
    (*(v56 + 8))(v37, v40);
  }

  else
  {
    v45 = v61;
    v46 = v65;
    (*(v62 + 56))(v61, 1, 1, v65);
    v47 = lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR, MEMORY[0x277CDD7A8]);
    v70 = v63;
    v71 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    MEMORY[0x20F309920](v45, v46, v48);
    outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v45, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  }

  v49 = v66;
  v50 = *(v67 + 48);
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v29, v66, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  outlined init with copy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v34, v49 + v50, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  TupleToolbarContent.init(_:)();
  outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v34, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
  return outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(v29, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMR);
}

uint64_t closure #1 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  Button.init(action:label:)();
  v9 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 104))(v10, *MEMORY[0x277D7E0E8], v6, v8);
  MEMORY[0x20F305830](v11, v10);
  (*(v7 + 8))(v10, v6);
  v12 = a1 + *(type metadata accessor for WorkoutConfigurationView(0) + 48);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    return sub_20C6925F8(v13, v14);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t closure #2 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #2 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  outlined init with copy of WorkoutConfigurationView(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of WorkoutConfigurationView(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  Button.init(action:label:)();
  v9 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v9;
  return result;
}

uint64_t closure #1 in closure #2 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1 + *(type metadata accessor for WorkoutConfigurationView(0) + 48);
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);

    v7(v9);

    return sub_20C6925F8(v7, v8);
  }

  else
  {
    WorkoutConfigurationView.dismiss.getter(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t closure #2 in closure #2 in closure #2 in WorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x5455425F454E4F44;
  v3._object = 0xEB000000004E4F54;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t WorkoutConfigurationView.save(configuration:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for WorkoutConfigurationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = WorkoutConfiguration.serializedCompositionData.getter();
  v10 = v9;
  v11 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined init with copy of WorkoutConfigurationView(v2, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  outlined init with take of WorkoutConfigurationView(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationView.save(configuration:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  [v11 saveWorkoutCompositionData:isa completion:v15];
  _Block_release(v15);

  return outlined consume of Data._Representation(v8, v10);
}

uint64_t closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutConfigurationView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  _sSo21FIUIFormattingManagerCMaTm_10(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  outlined init with copy of WorkoutConfigurationView(a3, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of WorkoutConfigurationView(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v23 + 8))(v7, v5);
  return (*(v21 + 8))(v10, v22);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA70;
    v30 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.error.getter();
    specialized static Log.print(_:type:_:)("WorkoutKitXPCServiceHelper failed to open workout app. Error: %@", 64, 2, v18, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    v19 = *a2;
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0D0], v8);
    MEMORY[0x20F305830](v19, v12);
    (*(v9 + 8))(v12, v8);
    v20 = a2[4];
    LOBYTE(v30) = *(a2 + 24);
    v31 = v20;
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
    return State.wrappedValue.setter();
  }

  else
  {
    v22 = *a2;
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0E0], v8, v10);
    MEMORY[0x20F305830](v22, v12);
    (*(v9 + 8))(v12, v8);
    v23 = a2[4];
    LOBYTE(v30) = *(a2 + 24);
    v31 = v23;
    v29 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
    State.wrappedValue.setter();
    v24 = a2 + *(type metadata accessor for WorkoutConfigurationView(0) + 48);
    v25 = *v24;
    if (*v24)
    {
      v26 = *(v24 + 1);

      v25(v27);
      return sub_20C6925F8(v25, v26);
    }

    else
    {
      WorkoutConfigurationView.dismiss.getter(v7);
      DismissAction.callAsFunction()();
      return (*(v5 + 8))(v7, v4);
    }
  }
}

void closure #1 in WorkoutConfigurationView.save(configuration:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WOAnalyticsEvent.SharingEngagementType();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (a1 & 1) != 0)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0C8], v8, v10);
    MEMORY[0x20F305830](a3, v12);
    (*(v9 + 8))(v12, v8);
    v21 = *(a4 + 32);
    v24 = *(a4 + 24);
    v25 = v21;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
    State.wrappedValue.setter();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA70;
    swift_getErrorValue();
    v14 = a2;
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = static os_log_type_t.error.getter();
    specialized static Log.print(_:type:_:)("WorkoutKitXPCServiceHelper failed to save workout plan. Error: %@", 65, 2, v18, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    (*(v9 + 104))(v12, *MEMORY[0x277D7E0D0], v8);
    MEMORY[0x20F305830](a3, v12);
    (*(v9 + 8))(v12, v8);
    v19 = *(a4 + 24);
    v20 = *(a4 + 32);
    v24 = v19;
    v25 = v20;
    v23 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMd, &_s7SwiftUI5StateVy07WorkoutB00d19ConfigurationViewerC0OGMR);
    State.wrappedValue.setter();
  }
}

uint64_t protocol witness for View.body.getter in conformance WorkoutConfigurationView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd, &_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMR);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  closure #1 in WorkoutConfigurationView.body.getter(v0, &v5[-v2]);
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMR);
  lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMR, MEMORY[0x277CDDF68]);
  View.toolbar<A>(content:)();
  return outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(v3);
}

uint64_t type metadata accessor for WorkoutConfigurationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfigurationView;
  if (!type metadata singleton initialization cache for WorkoutConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd, &_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMR);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>, &_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMd, &_s9WorkoutUI0A20ConfigurationViewIOSVy05SwiftB019_ConditionalContentVyAFyAA012EmbeddedGoalcD0VAA0i8IntervalcD0VGAFyAA0i5PacercD0VAA0i10MultiSportcD0VGGSgGMR, &protocol conformance descriptor for WorkoutConfigurationViewIOS<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t outlined destroy of Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd, &_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for WorkoutConfigurationView(uint64_t a1)
{
  type metadata accessor for WorkoutConfiguration();
  if (v1 <= 0x3F)
  {
    _sSo21FIUIFormattingManagerCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<WorkoutConfigurationViewerState>();
      if (v3 <= 0x3F)
      {
        _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (())?(319);
          if (v5 <= 0x3F)
          {
            _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(319, &lazy cache variable for type metadata for IntervalWorkoutConfiguration?, MEMORY[0x277D7D9A0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              _sSo21FIUIFormattingManagerCMaTm_10(319, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for State<WorkoutConfigurationViewerState>()
{
  if (!lazy cache variable for type metadata for State<WorkoutConfigurationViewerState>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<WorkoutConfigurationViewerState>);
    }
  }
}

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Image>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutConfigurationView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in WorkoutConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutConfigurationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(void *a1)
{
  v3 = *(type metadata accessor for WorkoutConfigurationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return implicit closure #2 in implicit closure #1 in closure #1 in WorkoutConfigurationView.body.getter(a1, v4);
}

uint64_t objectdestroyTm_72()
{
  v1 = type metadata accessor for WorkoutConfigurationView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  if (*(v2 + v1[10]))
  {
  }

  if (*(v2 + v1[11]))
  {
  }

  if (*(v2 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutConfigurationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(a1, a2, v6);
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_10(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()()
{
  v1 = *(type metadata accessor for WorkoutConfigurationView(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return closure #1 in closure #1 in WorkoutConfigurationView.performLaunchButtonAction()(v2, v3);
}

uint64_t lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void partial apply for closure #1 in WorkoutConfigurationView.save(configuration:)(char a1, void *a2)
{
  v5 = *(type metadata accessor for WorkoutConfigurationView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  closure #1 in WorkoutConfigurationView.save(configuration:)(a1, a2, v6, v7);
}

unint64_t lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029EmbeddedGoalConfigurationViewVAD0f8IntervalhI0VGMR);
    lazy protocol witness table accessor for type EmbeddedGoalConfigurationView and conformance EmbeddedGoalConfigurationView();
    lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView()
{
  result = lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView;
  if (!lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbeddedIntervalConfigurationView and conformance EmbeddedIntervalConfigurationView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB030EmbeddedPacerConfigurationViewVAD0f10MultiSporthI0VGMR);
    lazy protocol witness table accessor for type EmbeddedPacerConfigurationView and conformance EmbeddedPacerConfigurationView();
    lazy protocol witness table accessor for type EmbeddedMultiSportConfigurationView and conformance EmbeddedMultiSportConfigurationView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t BreadcrumbMapView.init(locationPositionPublisher:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationPositionPublisher();
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(&lazy protocol witness table cache variable for type LocationPositionPublisher and conformance LocationPositionPublisher, MEMORY[0x277D7E528], MEMORY[0x277D7E520]);
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id BreadcrumbMapView.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for WKUIBreadcrumbMapView());

  WKUIBreadcrumbMapView.init(locationPositionPublisher:)(v1);
  v3 = v2;
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setCornerCurve_];

  [v3 setZoomEnabled_];
  return v3;
}

double BreadcrumbMapView.updateUIView(_:context:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in BreadcrumbMapView.updateUIView(_:context:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v10 = _Block_copy(aBlock);
  a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v7, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v2);
  (*(v5 + 8))(v7, v14);

  v11 = LocationPositionPublisher.locations.getter();

  WKUIBreadcrumbMapView.update(locations:)(v11);

  v12 = LocationPositionPublisher.routePoints.getter();

  WKUIBreadcrumbMapView.set(routePoints:)(v12);

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance BreadcrumbMapView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BreadcrumbMapView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance BreadcrumbMapView(uint64_t a1)
{
  lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type LocationPositionPublisher and conformance LocationPositionPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t instantiation function for generic protocol witness table for BreadcrumbMapView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BreadcrumbMapView and conformance BreadcrumbMapView();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BreadcrumbMapView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for BreadcrumbMapView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double PowerZonesEntryViewModel.target.getter@<D0>(void *a3@<X8>)
{
  return PowerZonesEntryViewModel.target.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t PowerZonesEntryViewModel.init(configurationContext:)(uint64_t a1)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMd, &_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMR);
  v82 = *(v1 - 8);
  v83 = v1;
  MEMORY[0x28223BE20](v1);
  v81 = &v64 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v64 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v64 - v6;
  v86 = type metadata accessor for TargetZone.ZoneType();
  v67 = *(v86 - 8);
  v7 = v67;
  MEMORY[0x28223BE20](v86);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v64 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
  v97 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v12 = &v64 - v11;
  v13 = type metadata accessor for PowerZonesAlertZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v70 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__target;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
  *v19 = 0x405E000000000000;
  v66 = *MEMORY[0x277D7DE50];
  v21 = *(v7 + 104);
  v87 = v7 + 104;
  v88 = v21;
  v21(&v19[v20]);
  v22 = *MEMORY[0x277D7E428];
  v93 = v14[13];
  v93(v19, v22, v13);
  v94 = v14 + 13;
  v90 = v14[2];
  v91 = v14 + 2;
  v90(v16, v19, v13);
  Published.init(initialValue:)();
  v96 = v14[1];
  v96(v19, v13);
  v95 = v14 + 1;
  v85 = *(v97 + 32);
  v97 += 32;
  v23 = v68;
  v24 = v92;
  v85(v68 + v70, v12, v92);
  v65 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__automatic;
  *v19 = 0;
  *(v19 + 1) = 0;
  LODWORD(v70) = *MEMORY[0x277D7E430];
  v25 = v93;
  (v93)(v19);
  v89 = v16;
  v26 = v90;
  v90(v16, v19, v13);
  v27 = v12;
  Published.init(initialValue:)();
  v28 = v96;
  v96(v19, v13);
  v29 = v85;
  v85(v23 + v65, v27, v24);
  v65 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__custom;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
  *v19 = xmmword_20CB80540;
  v88(&v19[v30], *MEMORY[0x277D7DE68], v86);
  v25(v19, *MEMORY[0x277D7E420], v13);
  v26(v89, v19, v13);
  Published.init(initialValue:)();
  v28(v19, v13);
  v31 = v27;
  v32 = v27;
  v33 = v92;
  v29(v23 + v65, v31, v92);
  v64 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__off;
  LODWORD(v65) = *MEMORY[0x277D7E418];
  v34 = v93;
  (v93)(v19);
  v90(v89, v19, v13);
  Published.init(initialValue:)();
  v35 = v96;
  v96(v19, v13);
  v36 = v33;
  v37 = v85;
  v85(v23 + v64, v32, v36);
  v38 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_activityMoveMode;
  *(v23 + v38) = FIActivityMoveModeUserDefault();
  v39 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedType;
  v34(v19, v65, v13);
  v90(v89, v19, v13);
  Published.init(initialValue:)();
  v35(v19, v13);
  v37(v23 + v39, v32, v92);
  v40 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedTargetMode;
  v41 = v69;
  v42 = v86;
  v88(v69, v66, v86);
  v43 = v67;
  (*(v67 + 16))(v71, v41, v42);
  v44 = v72;
  Published.init(initialValue:)();
  (*(v43 + 8))(v41, v42);
  (*(v73 + 32))(v23 + v40, v44, v74);
  v45 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__targetValue;
  v98 = 0x405E000000000000;
  v46 = v75;
  Published.init(initialValue:)();
  v47 = *(v76 + 32);
  v48 = v77;
  v47(v23 + v45, v46, v77);
  v49 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedIndex;
  v98 = 0;
  v50 = v78;
  Published.init(initialValue:)();
  (*(v79 + 32))(v23 + v49, v50, v80);
  v51 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__zones;
  v98 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd, &_sSay11WorkoutCore16CyclingPowerZoneCGSgMR);
  v52 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(v23 + v51, v52, v83);
  v53 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedLowerBound;
  v98 = 0x4059000000000000;
  Published.init(initialValue:)();
  v47(v23 + v53, v46, v48);
  v54 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedUpperBound;
  v98 = 0x405E000000000000;
  Published.init(initialValue:)();
  v47(v23 + v54, v46, v48);
  *v19 = 0;
  *(v19 + 1) = 0;
  v93(v19, v70, v13);
  v55 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  v56 = PowerZonesAlertTargetZone.init(type:)();
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();
  v57 = v84;
  v58 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(v84);
  v96(v19, v13);
  *(v23 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) = v58;
  v59 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext;
  v60 = type metadata accessor for AlertConfigurationContext();
  v61 = *(v60 - 8);
  (*(v61 + 16))(v23 + v59, v57, v60);
  *(v23 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone) = v56;
  v62 = v56;

  dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

  (*(v61 + 8))(v57, v60);
  return v23;
}

uint64_t PowerZonesEntryViewModel.selectedType.setter(void *a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    PowerZonesEntryViewModel.updateDefaultValues()();
  }

  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t PowerZonesEntryViewModel.selectedTargetMode.didset(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PowerZonesAlertZoneType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = (&v57 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v57 - v12);
  MEMORY[0x28223BE20](v14);
  v63 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v60 = &v57 - v17;
  MEMORY[0x28223BE20](v18);
  v59 = (&v57 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = (&v57 - v21);
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v2;
  static Published.subscript.getter(v22);

  v23 = *(v7 + 88);
  v68 = v6;
  v24 = v23(v22, v6);
  v25 = *MEMORY[0x277D7E428];
  v66 = v7;
  v61 = v5;
  if (v24 == v25)
  {
    v26 = v24;
    (*(v7 + 96))(v22, v68);
    v27 = *v22;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    v28 = *(v64 + 8);
    v28(v22 + *(v57 + 48), v3);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28(v5, v3);
    if ((v29 & 1) == 0)
    {
      v30 = *(v57 + 48);
      v31 = v59;
      *v59 = v27;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter((v31 + v30));

      v32 = v66;
      v33 = v68;
      (*(v66 + 104))(v31, v26, v68);
      swift_getKeyPath();
      swift_getKeyPath();
      v34 = v60;
      static Published.subscript.getter(v60);

      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v63;
      (*(v32 + 16))(v63, v31, v33);

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v35);

      lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v32 + 8);
      v37(v35, v33);
      if ((v36 & 1) == 0)
      {
        PowerZonesEntryViewModel.updateDefaultValues()();
      }

      v38 = v68;
      v37(v34, v68);
      return (v37)(v31, v38);
    }
  }

  else
  {
    (*(v7 + 8))(v22, v68);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  v40 = v23(v13, v68);
  if (v40 != *MEMORY[0x277D7E420])
  {
    return (*(v66 + 8))(v13, v68);
  }

  v41 = v40;
  v42 = v66;
  (*(v66 + 96))(v13, v68);
  v43 = *v13;
  v44 = v13[1];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
  v46 = *(v64 + 8);
  v46(v13 + *(v45 + 48), v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v61;
  static Published.subscript.getter(v61);

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v46)(v47, v3);
  if ((v48 & 1) == 0)
  {
    v49 = *(v45 + 48);
    v50 = v62;
    *v62 = v43;
    v50[1] = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v50 + v49));

    v51 = v68;
    (*(v42 + 104))(v50, v41, v68);
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v58;
    static Published.subscript.getter(v58);

    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v63;
    (*(v42 + 16))(v63, v50, v51);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v53);

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();
    v55 = *(v42 + 8);
    v55(v53, v51);
    if ((v54 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()();
    }

    v56 = v68;
    v55(v52, v68);
    return (v55)(v62, v56);
  }

  return result;
}

uint64_t PowerZonesEntryViewModel.targetValue.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v28 = (&v24 - v7);
  MEMORY[0x28223BE20](v8);
  v27 = (&v24 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 != *MEMORY[0x277D7E428])
  {
    return (*(v3 + 8))(v12, v2);
  }

  v26 = v17;
  (*(v3 + 96))(v12, v2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
  (*(v14 + 32))(v16, &v12[*(v18 + 48)], v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v19.n128_f64[0] = v29;
  if (v29 != a1)
  {
    v25 = *(v18 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    v20 = v27;
    *v27 = v29;
    (*(v14 + 16))(v20 + v25, v16, v13);
    (*(v3 + 104))(v20, v26, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v28);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v5, v20, v2);

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v3 + 8);
    v22(v5, v2);
    if ((v21 & 1) == 0)
    {
      PowerZonesEntryViewModel.updateDefaultValues()();
    }

    v22(v28, v2);
    v22(v27, v2);
  }

  return (*(v14 + 8))(v16, v13, v19);
}

void PowerZonesEntryViewModel.selectedIndex.didset(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v21 - v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  v15 = (*(v3 + 88))(v14, v2);
  if (v15 == *MEMORY[0x277D7E430])
  {
    v16 = v15;
    v21 = v8;
    (*(v3 + 96))(v14, v2);
    v17 = v14[1];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v22);

    if (v22 == a1)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v22);

      *v11 = v22;
      v11[1] = v17;
      (*(v3 + 104))(v11, v16, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v21;
      static Published.subscript.getter(v21);

      swift_getKeyPath();
      swift_getKeyPath();
      (*(v3 + 16))(v5, v11, v2);

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v5);

      lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v3 + 8);
      v20(v5, v2);
      if ((v19 & 1) == 0)
      {
        PowerZonesEntryViewModel.updateDefaultValues()();
      }

      v20(v18, v2);
      v20(v11, v2);
    }
  }

  else
  {
    (*(v3 + 8))(v14, v2);
  }
}

uint64_t PowerZonesEntryViewModel.selectedIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void PowerZonesEntryViewModel.zones.didset(unint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v21 - v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  v15 = (*(v3 + 88))(v14, v2);
  if (v15 != *MEMORY[0x277D7E430])
  {
    (*(v3 + 8))(v14, v2);
    return;
  }

  v16 = v15;
  (*(v3 + 96))(v14, v2);
  v21 = *v14;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v22);

  if (a1)
  {
    if (v22)
    {
      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(a1, v22);

      if (v17)
      {
        return;
      }
    }
  }

  else
  {
    if (!v22)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v22);

  v18 = v22;
  *v11 = v21;
  v11[1] = v18;
  (*(v3 + 104))(v11, v16, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, v11, v2);

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v3 + 8);
  v20(v5, v2);
  if ((v19 & 1) == 0)
  {
    PowerZonesEntryViewModel.updateDefaultValues()();
  }

  v20(v8, v2);
  v20(v11, v2);
}

uint64_t PowerZonesEntryViewModel.zones.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void PowerZonesEntryViewModel.selectedLowerBound.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v28 = &v25[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-v11];
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 == *MEMORY[0x277D7E420])
  {
    v26 = v17;
    (*(v3 + 96))(v12, v2);
    v18 = v12[1];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    (*(v14 + 32))(v16, v12 + *(v19 + 48), v13);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    v20.n128_f64[0] = v29;
    if (v29 == a1)
    {
LABEL_9:
      (*(v14 + 8))(v16, v13, v20);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    if (v18 <= v29)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v29);

      v18 = v29 + 5.0;
    }

    v21 = *(v19 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    if (v29 <= v18)
    {
      *v9 = v29;
      v9[1] = v18;
      (*(v14 + 16))(v9 + v21, v16, v13);
      (*(v3 + 104))(v9, v26, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v28);

      swift_getKeyPath();
      swift_getKeyPath();
      v22 = v27;
      (*(v3 + 16))(v27, v9, v2);

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v22);

      lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v3 + 8);
      v24(v22, v2);
      if ((v23 & 1) == 0)
      {
        PowerZonesEntryViewModel.updateDefaultValues()();
      }

      v24(v28, v2);
      v24(v9, v2);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v12, v2);
  }
}

void PowerZonesEntryViewModel.selectedUpperBound.didset(double a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v28 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v29 = &v26[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-v11];
  v13 = type metadata accessor for TargetZone.ZoneType();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v17 = (*(v3 + 88))(v12, v2);
  if (v17 == *MEMORY[0x277D7E420])
  {
    v27 = v17;
    (*(v3 + 96))(v12, v2);
    v18 = *v12;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    (*(v14 + 32))(v16, v12 + *(v19 + 48), v13);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v30);

    v20.n128_f64[0] = v30;
    if (v30 == a1)
    {
LABEL_9:
      (*(v14 + 8))(v16, v13, v20);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v30);

    if (v30 <= v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v30);

      v18 = v30 + -5.0;
    }

    v21 = *(v19 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v30);

    v22 = v30;
    if (v18 <= v30)
    {
      *v9 = v18;
      v9[1] = v22;
      (*(v14 + 16))(v9 + v21, v16, v13);
      (*(v3 + 104))(v9, v27, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v29);

      swift_getKeyPath();
      swift_getKeyPath();
      v23 = v28;
      (*(v3 + 16))(v28, v9, v2);

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v23);

      lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v3 + 8);
      v25(v23, v2);
      if ((v24 & 1) == 0)
      {
        PowerZonesEntryViewModel.updateDefaultValues()();
      }

      v25(v29, v2);
      v25(v9, v2);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v12, v2);
  }
}

double PowerZonesEntryViewModel.targetValue.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t PowerZonesEntryViewModel.selectableTypes(canDisable:)(int a1)
{
  v19 = a1;
  v18 = type metadata accessor for PowerZonesAlertZoneType();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_activityMoveMode) == 2)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  v5 = v20;
  if (!v20)
  {
    goto LABEL_7;
  }

  if (v20 >> 62)
  {
    type metadata accessor for Zone();

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Zone();
    v6 = v5;
  }

  type metadata accessor for CyclingPowerZonesConfigurationEditor();
  v7 = MEMORY[0x20F306B50](v6);

  if (v7)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5DA80;
    v11 = (v10 + ((v9 + 32) & ~v9));
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v11);

    v12 = (v11 + v8);
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
    v8 = *(v2 + 72);
    v9 = *(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5EA80;
    v13 = (v10 + ((v9 + 32) & ~v9));
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v13);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v13 + v8));

    v12 = (v13 + 2 * v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v4);

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 16) = v15 + 1;
    (*(v2 + 32))(v10 + ((v9 + 32) & ~v9) + v8 * v15, v4, v18);
  }

  return v10;
}

void PowerZonesEntryViewModel.updateDefaultValues()()
{
  v1 = v0;
  v75 = type metadata accessor for TargetZone.ZoneType();
  v2 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = (&v65 - v5);
  MEMORY[0x28223BE20](v6);
  v71 = &v65 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for PowerZonesAlertZoneType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v65 - v19);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);
  v21 = v11;

  v22 = (*(v12 + 88))(v20, v11);
  v23 = *MEMORY[0x277D7E428];
  v73 = v10;
  v74 = v2;
  v72 = v17;
  if (v22 == v23)
  {
    (*(v12 + 96))(v20, v11);
    v24 = *v20;
    v25 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    v26 = v75;
    (*(v2 + 32))(v10, v25, v75);
    swift_getKeyPath();
    v67 = v11;
    swift_getKeyPath();
    static Published.subscript.getter(v17);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v14, v17, v11);

    static Published.subscript.setter();
    v68 = *(v12 + 8);
    v69 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v17, v11);
    v27 = v74;
    v28 = *(v74 + 16);
    v29 = v71;
    v28(v71, v10, v26);
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v70;
    static Published.subscript.getter(v70);

    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v75;
    v28(v66, v29, v75);

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v30);
    v32 = *(v27 + 8);
    v32(v30, v31);
    v32(v29, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v76);

    v33 = *&v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v24;

    v21 = v67;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.targetValue.didset(v33);
    v34 = v68;
    v32(v73, v31);
    v35 = v72;
LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v35);

    v49 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext);
    v34(v35, v21);
    *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) = v49;

    return;
  }

  if (v22 == *MEMORY[0x277D7E430])
  {
    (*(v12 + 96))(v20, v11);
    v36 = v20[1];
    v65 = *v20;
    v66 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v11;
    v35 = v72;
    static Published.subscript.getter(v72);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v14, v35, v11);

    static Published.subscript.setter();
    v68 = *(v12 + 8);
    v69 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v35, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v76);

    v37 = v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v65;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedIndex.didset(v37);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v76);

    v38 = v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v66;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.zones.didset(v38);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v35);

    v39 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
    v40 = PowerZonesAlertTargetZone.init(type:)();
    v41 = *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone);
    *(v1 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone) = v40;
    v42 = v40;

    dispatch thunk of PowerZonesAlertTargetZone.defaultZonesDidLoad.setter();

    v44 = v73;
    v43 = v74;
    v45 = v75;
    (*(v74 + 104))(v73, *MEMORY[0x277D7DE68], v75);
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v71;
    static Published.subscript.getter(v71);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v43 + 16))(v70, v44, v45);

    v21 = v67;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v46);
    v47 = *(v43 + 8);
    v47(v46, v45);
    v48 = v45;
    v34 = v68;
    v47(v44, v48);
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D7E420])
  {
    (*(v12 + 96))(v20, v11);
    v51 = *v20;
    v50 = v20[1];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
    v53 = v73;
    v54 = v20 + *(v52 + 48);
    v55 = v75;
    (*(v74 + 32))(v73, v54);
    swift_getKeyPath();
    v56 = v11;
    v67 = v11;
    swift_getKeyPath();
    v57 = v72;
    static Published.subscript.getter(v72);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v14, v57, v56);

    static Published.subscript.setter();
    v68 = *(v12 + 8);
    v69 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v57, v56);
    v65 = *(v74 + 16);
    v58 = v71;
    v59 = v53;
    v60 = v55;
    (v65)(v71, v59, v55);
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v70;
    static Published.subscript.getter(v70);

    v35 = v57;

    swift_getKeyPath();
    swift_getKeyPath();
    (v65)(v66, v58, v60);

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedTargetMode.didset(v61);
    v62 = *(v74 + 8);
    v62(v61, v60);
    v62(v58, v60);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v76);

    v63 = *&v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v51;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedLowerBound.didset(v63);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v76);

    v64 = *&v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v50;

    v21 = v67;
    static Published.subscript.setter();
    PowerZonesEntryViewModel.selectedUpperBound.didset(v64);
    v62(v73, v60);
    v34 = v68;
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D7E418])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v72;
    static Published.subscript.getter(v72);

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v12 + 16))(v14, v35, v11);

    static Published.subscript.setter();
    v34 = *(v12 + 8);
    v34(v35, v21);
    goto LABEL_5;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PowerZonesEntryViewModel.powerZonesDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone;
  v13 = *(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_powerTargetZone);
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();

  if ((*(v3 + 88))(v11, v2) == *MEMORY[0x277D7E430])
  {
    (*(v3 + 96))(v11, v2);
    v14 = *(v11 + 1);
    v15 = *(v1 + v12);
    dispatch thunk of PowerZonesAlertTargetZone.type.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v3 + 16))(v5, v8, v2);

    static Published.subscript.setter();
    (*(v3 + 8))(v8, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v18);

    v16 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v14;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.zones.didset(v16);
  }

  else
  {
    (*(v3 + 8))(v11, v2);
  }
}

uint64_t PowerZonesEntryViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__target;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__automatic, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__custom, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__off, v2);

  v4 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_configurationContext;
  v5 = type metadata accessor for AlertConfigurationContext();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedType, v2);
  v6 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedTargetMode;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMd, &_s7Combine9PublishedVy11WorkoutCore10TargetZoneC0F4TypeOGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__targetValue;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedIndex;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__zones;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMd, &_s7Combine9PublishedVySay11WorkoutCore16CyclingPowerZoneCGSgGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v10(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedLowerBound, v9);
  v10(v0 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel__selectedUpperBound, v9);
  return v0;
}

uint64_t PowerZonesEntryViewModel.__deallocating_deinit()
{
  PowerZonesEntryViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PowerZonesEntryViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerZonesEntryViewModel;
  if (!type metadata singleton initialization cache for PowerZonesEntryViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PowerZonesEntryViewModel(uint64_t a1)
{
  type metadata accessor for Published<PowerZonesAlertZoneType>(319, &lazy cache variable for type metadata for Published<PowerZonesAlertZoneType>, MEMORY[0x277D7E438]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AlertConfigurationContext();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<PowerZonesAlertZoneType>(319, &lazy cache variable for type metadata for Published<TargetZone.ZoneType>, MEMORY[0x277D7DE80]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<[CyclingPowerZone]?>(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<PowerZonesAlertZoneType>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<Double>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<[CyclingPowerZone]?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[CyclingPowerZone]?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd, &_sSay11WorkoutCore16CyclingPowerZoneCGSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[CyclingPowerZone]?>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PowerZonesEntryViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PowerZonesEntryViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double key path getter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel@<D0>(void *a4@<X8>)
{
  return key path getter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a4);

  return result;
}

uint64_t key path setter for PowerZonesEntryViewModel.selectedTargetMode : PowerZonesEntryViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v17 = *(v4 + 16);
  v17(&v16 - v12, a1, v3, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  swift_getKeyPath();
  swift_getKeyPath();
  (v17)(v6, v13, v3);

  static Published.subscript.setter();
  PowerZonesEntryViewModel.selectedTargetMode.didset(v9);
  v14 = *(v4 + 8);
  v14(v9, v3);
  return v14(v13, v3);
}

double key path getter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel@<D0>(double *a4@<X8>)
{
  return key path getter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

void key path getter for PowerZonesEntryViewModel.selectedIndex : PowerZonesEntryViewModel(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void key path setter for PowerZonesEntryViewModel.selectedIndex : PowerZonesEntryViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  static Published.subscript.setter();
  PowerZonesEntryViewModel.selectedIndex.didset(v3);
}

uint64_t key path setter for PowerZonesEntryViewModel.targetValue : PowerZonesEntryViewModel(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, double))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v9 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v8;

  v10 = static Published.subscript.setter();
  return a7(v10, v9);
}

uint64_t key path setter for PowerZonesEntryViewModel.target : PowerZonesEntryViewModel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = type metadata accessor for PowerZonesAlertZoneType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = *(v8 + 16);
  v15(&v17 - v13, a1, v7, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  (v15)(v10, v14, v7);

  static Published.subscript.setter();
  return (*(v8 + 8))(v14, v7);
}

uint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for TrackEntryView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TrackEntryView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in TrackEntryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v49._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x800000020CBA1430;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v49);

  v48 = v11;
  v47 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v12 = WorkoutUIBundle.super.isa;
  v50._object = 0xE000000000000000;
  v13._object = 0x800000020CBA1450;
  v13._countAndFlagsBits = 0xD000000000000013;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v50);

  v46 = v16;
  v38 = Text.init<A>(_:)();
  v18 = v17;
  v40 = v19;
  v41 = v20;
  v46._countAndFlagsBits = static Color.black.getter();
  v21 = AnyView.init<A>(_:)();
  v22 = static Color.gray.getter();
  KeyPath = swift_getKeyPath();
  v25 = v42;
  v24 = v43;
  v26 = v6;
  v39 = v6;
  v27 = *(v43 + 16);
  v28 = v45;
  v27(v42, v26, v45);
  v29 = v44;
  v27(v44, v25, v28);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVG_AA15ModifiedContentVyAHyAeA21_TraitWritingModifierVyAA017ListRowBackgroundG3KeyVGGAA012_EnvironmentmhI0VyAA5ColorVSgGGtMd, &_s7SwiftUI6ToggleVyAA4TextVG_AA15ModifiedContentVyAHyAeA21_TraitWritingModifierVyAA017ListRowBackgroundG3KeyVGGAA012_EnvironmentmhI0VyAA5ColorVSgGGtMR) + 48)];
  v31 = v38;
  *v30 = v38;
  *(v30 + 1) = v18;
  v32 = v18;
  v37 = v18;
  v33 = v40;
  LOBYTE(v29) = v40 & 1;
  v30[16] = v40 & 1;
  *(v30 + 3) = v41;
  *(v30 + 4) = v21;
  *(v30 + 5) = KeyPath;
  *(v30 + 6) = v22;
  v34 = v31;
  outlined copy of Text.Storage(v31, v32, v33 & 1);
  v35 = *(v24 + 8);

  v35(v39, v28);
  outlined consume of Text.Storage(v34, v37, v29);

  return (v35)(v25, v28);
}

uint64_t closure #2 in TrackEntryView.body.getter(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  type metadata accessor for TrackAlerts();
  swift_allocObject();
  TrackAlerts.init(lapChangeEnabled:)();
  static TrackAlertsStore.save(trackAlerts:activityType:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMd, &_s7SwiftUI7BindingVy11WorkoutCore11TrackAlertsCGMR);
  return Binding.wrappedValue.setter();
}

uint64_t protocol witness for View.body.getter in conformance TrackEntryView()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-v2];
  v4 = v0[1];
  v12 = *v0;
  *v13 = v4;
  *&v13[16] = v0[2];
  closure #1 in TrackEntryView.body.getter(&v12, &v10[-v2]);
  v14 = *&v13[8];
  v11 = *&v13[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v10[15] = v15;
  v15 = v12;
  v5 = *&v13[24];
  v6 = swift_allocObject();
  v7 = *v13;
  v6[1] = v12;
  v6[2] = v7;
  v6[3] = *&v13[16];
  outlined init with copy of Transaction(&v15, &v11);

  outlined init with copy of State<Bool>(&v14, &v11);
  lazy protocol witness table accessor for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>();
  v8 = v5;
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>>(v3);
}

uint64_t outlined init with copy of State<Bool>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMR);
    lazy protocol witness table accessor for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyAJyAgA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAA012_EnvironmentojK0VyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyAJyAgA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAA012_EnvironmentojK0VyAA5ColorVSgGGtGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t outlined destroy of Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t MirroredStartCurrentView.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000022;
    case 1:
      return 0xD000000000000019;
    case 2:
      return 0xD00000000000001DLL;
  }

  _StringGuts.grow(_:)(27);
  MEMORY[0x20F30BC00](0xD000000000000018, 0x800000020CBA1550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F30BC00](41, 0xE100000000000000);
  return 0;
}

void *MirroredStartViewModel.currentView.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  outlined copy of MirroredStartCurrentView(v1);
  return v1;
}

void closure #1 in MirroredStartViewModel.currentView.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  outlined copy of MirroredStartCurrentView(a2);
  outlined consume of MirroredStartCurrentView(v2);
}

uint64_t MirroredStartViewModel.displayingSafetyCheckIn.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

void key path getter for MirroredStartViewModel.displayingSafetyCheckIn : MirroredStartViewModel(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 96);
}

void MirroredStartViewModel.displayingSafetyCheckIn.setter(char a1)
{
  if (*(v1 + 96) == (a1 & 1))
  {
    *(v1 + 96) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id *MirroredStartViewModel.deinit()
{
  outlined consume of MirroredStartCurrentView(v0[3]);

  v1 = OBJC_IVAR____TtC9WorkoutUI22MirroredStartViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MirroredStartViewModel.__deallocating_deinit()
{
  MirroredStartViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MirroredStartViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MirroredStartViewModel;
  if (!type metadata singleton initialization cache for MirroredStartViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MirroredStartViewModel(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_9WorkoutUI24MirroredStartCurrentViewO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MirroredStartCurrentView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredStartCurrentView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MirroredStartCurrentView(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredStartViewModel and conformance MirroredStartViewModel()
{
  result = lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel;
  if (!lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel)
  {
    type metadata accessor for MirroredStartViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredStartViewModel and conformance MirroredStartViewModel);
  }

  return result;
}

uint64_t static PowerZonesAlertZoneType.defaultTarget(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = type metadata accessor for PowerZonesAlertZoneType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR);
  v13 = *(v23 + 48);
  *v12 = 0x405E000000000000;
  (*(v4 + 104))(&v12[v13], *MEMORY[0x277D7DE68], v3);
  v14 = *MEMORY[0x277D7E428];
  v15 = *(v10 + 104);
  v15(v12, v14, v9);
  v16 = PowerZonesAlertZoneType.supportedZoneTypes(for:)(a1);
  if (*(v16 + 16))
  {
    (*(v4 + 16))(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

    (*(v10 + 8))(v12, v9);
    v17 = *(v4 + 32);
    v18 = v24;
    v17(v24, v6, v3);
    v19 = *(v23 + 48);
    v20 = v25;
    *v25 = 0x405E000000000000;
    v17(&v20[v19], v18, v3);
    return (v15)(v20, v14, v9);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PowerZonesAlertZoneType.supportedZoneTypes(for:)(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for AlertConfigurationContext();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfigurationType();
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for PowerZonesAlertZoneType();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v2, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D7E428])
  {
    (*(v14 + 96))(v17, v13);
    v19 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
    v20 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR;
    goto LABEL_3;
  }

  if (v18 == *MEMORY[0x277D7E430])
  {
    (*(v14 + 8))(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMR);
    v31 = type metadata accessor for TargetZone.ZoneType();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20CB5DA70;
    (*(v32 + 104))(v28 + v33, *MEMORY[0x277D7DE68], v31);
    return v28;
  }

  if (v18 == *MEMORY[0x277D7E420])
  {
    (*(v14 + 96))(v17, v13);
    v19 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
    v20 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR;
LABEL_3:
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v19, v20) + 48);
    v22 = type metadata accessor for TargetZone.ZoneType();
    v23 = *(v22 - 8);
    (*(v23 + 8))(&v17[v21], v22);
    (*(v4 + 16))(v6, v40, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D7E4B8])
    {
      (*(v4 + 96))(v6, v3);
      v24 = v39;
      (*(v39 + 32))(v12, v6, v7);
      (*(v24 + 104))(v9, *MEMORY[0x277D7E110], v7);
      lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E130]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v25 = *(v24 + 8);
      v25(v9, v7);
      if (v42 == v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMR);
        v26 = *(v23 + 72);
        v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_20CB5DA80;
        v29 = v28 + v27;
        v30 = *(v23 + 104);
        v30(v29, *MEMORY[0x277D7DE50], v22);
        v30(v29 + v26, *MEMORY[0x277D7DE68], v22);
        v25(v12, v7);
        return v28;
      }

      v25(v12, v7);
    }

    else
    {
      (*(v4 + 8))(v6, v3);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10TargetZoneC0G4TypeOGMR);
    v34 = *(v23 + 72);
    v35 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20CB5DA80;
    v36 = v28 + v35;
    v37 = *(v23 + 104);
    v37(v36, *MEMORY[0x277D7DE50], v22);
    v37(v36 + v34, *MEMORY[0x277D7DE68], v22);
    return v28;
  }

  if (v18 == *MEMORY[0x277D7E418])
  {
    return MEMORY[0x277D84F90];
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void one-time initialization function for powerZonesShortDescription()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CBA17C0;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static PowerZonesEntryView.powerZonesShortDescription = v4;
}

void implicit closure #2 in implicit closure #1 in PowerZonesEntryView.init(powerZonesAlertTargetZone:activityType:dataModel:configurationContext:formattingManager:)(uint64_t a1)
{
  v1 = type metadata accessor for PowerZonesAlertZoneType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PowerZonesEntryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D7E430])
  {
    (*(v2 + 96))(v4, v1);
    v5 = v4[1];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v8);

    v6 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v5;

    static Published.subscript.setter();
    PowerZonesEntryViewModel.zones.didset(v6);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t type metadata accessor for PowerZonesEntryView(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerZonesEntryView;
  if (!type metadata singleton initialization cache for PowerZonesEntryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PowerZonesEntryView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19[1] = v5;
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PowerZonesAlertZoneType();
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMR);
  MEMORY[0x28223BE20](v21);
  v12 = v19 - v11;
  closure #1 in PowerZonesEntryView.body.getter(v1, v19 - v11);
  v20 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  outlined init with copy of PowerZonesEntryView(v1, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v6, v14 + v13);
  lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
  v15 = v22;
  View.onChange<A>(of:initial:_:)();

  (*(v23 + 8))(v10, v15);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v12, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMR);
  outlined init with copy of PowerZonesEntryView(v20, v6);
  v16 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v6, v16 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleE0VyAeAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0N7BuilderV0D0VyAU_AA7ForEachVySayAUGAuA09_DisablednD0VyAA0N6OptionVyAuRGGGGG_AA06InlinenM0VQo__AeAEAMyQrqd__AaNRd__lFQOyAPyArS06TargetU0C0uV0OA_ySayA16_GA16_ARGG_A11_Qo_SgAA7SectionVyAR0pB00R16NavigationButtonVAA05EmptyE0VGSgA23_yAreAEAMyQrqd__AaNRd__lFQOyAPyA28_SiA_ySnySiGSiAA6HStackVyALyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGA2RtGGGG_A11_Qo_A28_GSgA23_yArLyA26__A26_tGA28_GSgtGG_AUQo_AA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleE0VyAeAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0N7BuilderV0D0VyAU_AA7ForEachVySayAUGAuA09_DisablednD0VyAA0N6OptionVyAuRGGGGG_AA06InlinenM0VQo__AeAEAMyQrqd__AaNRd__lFQOyAPyArS06TargetU0C0uV0OA_ySayA16_GA16_ARGG_A11_Qo_SgAA7SectionVyAR0pB00R16NavigationButtonVAA05EmptyE0VGSgA23_yAreAEAMyQrqd__AaNRd__lFQOyAPyA28_SiA_ySnySiGSiAA6HStackVyALyACyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_ACyAA6SpacerVAA12_FrameLayoutVGA2RtGGGG_A11_Qo_A28_GSgA23_yArLyA26__A26_tGA28_GSgtGG_AUQo_AA25_AppearanceActionModifierVGMR);
  v18 = (a1 + *(result + 36));
  *v18 = 0;
  v18[1] = 0;
  v18[2] = partial apply for closure #3 in PowerZonesEntryView.body.getter;
  v18[3] = v16;
  return result;
}

uint64_t closure #1 in PowerZonesEntryView.body.getter@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGMR);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v150 = &v140 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v167 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v180 = &v140 - v7;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGMR);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v140 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v166 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = &v140 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGMR);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v149 = &v140 - v13;
  v175 = type metadata accessor for PowerZonesAlertZoneType();
  v173 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v170 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v160 = (&v140 - v16);
  MEMORY[0x28223BE20](v17);
  v148 = (&v140 - v18);
  MEMORY[0x28223BE20](v19);
  v159 = &v140 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v179 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v185 = &v140 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  MEMORY[0x28223BE20](v25 - 8);
  v144 = &v140 - v26;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMR);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v140 - v27;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_Md, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_MR);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v143 = &v140 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v184 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = &v140 - v32;
  v169 = type metadata accessor for InlinePickerStyle();
  v182 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v34 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
  MEMORY[0x28223BE20](v35 - 8);
  v176 = &v140 - v36;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMR);
  v156 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v38 = &v140 - v37;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo_Md, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo_MR);
  v163 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v140 - v41;
  v43 = type metadata accessor for AlertConfigurationContext();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v140 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &a1[*(type metadata accessor for PowerZonesEntryView(0) + 32)];
  v48 = *(v47 + 1);
  (*(v44 + 104))(v46, *MEMORY[0x277D7E4C0], v43);
  v49 = static AlertConfigurationContext.== infix(_:_:)();
  (*(v44 + 8))(v46, v43);
  v50 = PowerZonesEntryViewModel.selectableTypes(canDisable:)(v49 & 1);
  v154 = LocalizedStringKey.init(stringLiteral:)();
  v153 = v51;
  v151 = v52;
  v152 = v53;
  v54 = *v47;
  v55 = type metadata accessor for PowerZonesEntryViewModel(0);
  v56 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);
  v142 = v54;
  v141 = v55;
  MEMORY[0x20F308920](v54, v48, v55, v56);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v186 = v50;
  v187 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMR);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E440]);
  lazy protocol witness table accessor for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>();
  v57 = v175;
  Picker<>.init<A>(_:selection:content:)();

  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, PowerZonesAlertZoneType, PickerBuilder<PowerZonesAlertZoneType>.Content<ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0C7BuilderV7ContentVyAH_AA7ForEachVySayAHGAhA09_DisabledcM0VyAA0C6OptionVyAhEGGGGGMR, MEMORY[0x277CDF038]);
  v176 = v42;
  v58 = v169;
  v59 = v155;
  View.pickerStyle<A>(_:)();
  v60 = *(v182 + 8);
  v154 = v34;
  v182 += 8;
  v60(v34, v58);
  (*(v156 + 8))(v38, v59);
  if (*(*(v48 + OBJC_IVAR____TtC9WorkoutUI24PowerZonesEntryViewModel_selectableTargetModes) + 16) < 2uLL)
  {
    v71 = 1;
    v72 = v183;
    v73 = v158;
    v74 = v157;
  }

  else
  {
    v156 = LocalizedStringKey.init(stringLiteral:)();
    v155 = v61;
    v153 = v62;
    MEMORY[0x20F308920](v142, v48, v141, v56);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    MEMORY[0x28223BE20](v63);
    type metadata accessor for TargetZone.ZoneType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMR);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
    lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>();
    v64 = v145;
    v57 = v175;
    Picker<>.init(_:selection:content:)();
    v65 = v154;
    InlinePickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjEGGMR, MEMORY[0x277CDF038]);
    v66 = v143;
    v67 = v147;
    View.pickerStyle<A>(_:)();
    v60(v65, v58);
    (*(v146 + 8))(v64, v67);
    v68 = v157;
    v69 = v183;
    v70 = v158;
    (*(v157 + 32))(v183, v66, v158);
    v71 = 0;
    v72 = v69;
    v73 = v70;
    v74 = v68;
  }

  (*(v74 + 56))(v72, v71, 1, v73);
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v159;
  static Published.subscript.getter(v159);

  v76 = v173;
  v182 = *(v173 + 88);
  v77 = (v182)(v75, v57);
  v78 = v170;
  v79 = v162;
  if (v77 == *MEMORY[0x277D7E428])
  {
    (*(v76 + 96))(v75, v57);
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    v81 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v81 - 8) + 8))(&v75[v80], v81);
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = v148;
    static Published.subscript.getter(v148);

    v83 = PowerZonesAlertZoneType.displayString.getter();
    v85 = v84;
    v86 = *(v76 + 8);
    (v86)(v82, v57);
    v192._countAndFlagsBits = v83;
    v192._object = v85;
    lazy protocol witness table accessor for type String and conformance String();
    v192._countAndFlagsBits = Text.init<A>(_:)();
    v192._object = v87;
    v193 = v88 & 1;
    v194 = v89;
    MEMORY[0x28223BE20](v192._countAndFlagsBits);
    lazy protocol witness table accessor for type PowerNavigationButton and conformance PowerNavigationButton();
    v90 = v149;
    Section<>.init(header:content:)();
    v91 = v161;
    v92 = v185;
    v161[4](v185, v90, v79);
    v93 = 0;
  }

  else
  {
    v86 = *(v76 + 8);
    (v86)(v75, v57);
    v93 = 1;
    v92 = v185;
    v91 = v161;
  }

  v94 = v91[7];
  v95 = 1;
  (v94)(v92, v93, 1, v79);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v160;
  static Published.subscript.getter(v160);

  v97 = (v182)(v96, v57);
  v98 = *MEMORY[0x277D7E430];
  (v86)(v96, v57);
  v99 = v86;
  if (v97 == v98)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v192);

    if (v192._countAndFlagsBits)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v162 = v48;
      static Published.subscript.getter(&v192);

      countAndFlagsBits = v192._countAndFlagsBits;
      if (!v192._countAndFlagsBits)
      {
        goto LABEL_14;
      }

      if (v192._countAndFlagsBits >> 62)
      {
        type metadata accessor for Zone();

        v101 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for Zone();
        v101 = countAndFlagsBits;
      }

      type metadata accessor for CyclingPowerZonesConfigurationEditor();
      v102 = MEMORY[0x20F306B50](v101);

      if (v102)
      {

        v95 = 1;
        v57 = v175;
      }

      else
      {
LABEL_14:
        v161 = v86;
        LocalizedStringKey.init(stringLiteral:)();
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v103 = WorkoutUIBundle.super.isa;
        v192._countAndFlagsBits = Text.init(_:tableName:bundle:comment:)();
        v192._object = v104;
        v193 = v105 & 1;
        v194 = v106;
        MEMORY[0x28223BE20](v192._countAndFlagsBits);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0q10AttachmentX0VG_ARyAA6SpacerVAA12_FrameLayoutVGAA4TextVA14_tGGGG_AA06InlinefE0VQo_Md, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA05EmptyC0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0q10AttachmentX0VG_ARyAA6SpacerVAA12_FrameLayoutVGAA4TextVA14_tGGGG_AA06InlinefE0VQo_MR);
        v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMR);
        v108 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMR, MEMORY[0x277CDF038]);
        v188 = v107;
        v189 = v169;
        v190 = v108;
        v191 = MEMORY[0x277CDDDA0];
        swift_getOpaqueTypeConformance2();
        v109 = v140;
        Section<>.init(header:content:)();

        (*(v171 + 32))(v181, v109, v172);
        v95 = 0;
        v78 = v170;
        v57 = v175;
        v99 = v161;
      }
    }

    else
    {
      v95 = 1;
    }
  }

  (*(v171 + 56))(v181, v95, 1, v172);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v78);

  if ((v182)(v78, v57) == *MEMORY[0x277D7E420])
  {
    (*(v173 + 96))(v78, v57);
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    v111 = type metadata accessor for TargetZone.ZoneType();
    v112 = (*(*(v111 - 8) + 8))(&v78[v110], v111);
    MEMORY[0x28223BE20](v112);
    v113 = v164;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v114 = WorkoutUIBundle.super.isa;
    v195._object = 0xE000000000000000;
    v115.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v115.value._object = 0xEB00000000656C62;
    v116._object = 0x800000020CB94530;
    v116._countAndFlagsBits = 0xD00000000000002ALL;
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    v195._countAndFlagsBits = 0;
    v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v116, v115, v114, v117, v195);

    v192 = v118;
    lazy protocol witness table accessor for type String and conformance String();
    v192._countAndFlagsBits = Text.init<A>(_:)();
    v192._object = v119;
    v193 = v120 & 1;
    v194 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMR);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(PowerNavigationButton, PowerNavigationButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB021PowerNavigationButtonV_AFtGMR, MEMORY[0x277CE14C0]);
    v122 = v150;
    Section<>.init(header:content:)();
    v123 = v180;
    v124 = v122;
    v125 = v165;
    (*(v113 + 32))(v180, v124, v165);
    v126 = 0;
  }

  else
  {
    (v99)(v78, v57);
    v126 = 1;
    v123 = v180;
    v125 = v165;
    v113 = v164;
  }

  (*(v113 + 56))(v123, v126, 1, v125);
  v127 = v163;
  v128 = *(v163 + 16);
  v129 = v177;
  v130 = v178;
  v128(v177, v176, v178);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v183, v184, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMR);
  v131 = v179;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v185, v179, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMR);
  v132 = v181;
  v133 = v166;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v181, v166, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMR);
  v134 = v167;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v123, v167, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMR);
  v135 = v168;
  v128(v168, v129, v130);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo__AcAEADyQrqd__AaERd__lFQOyAGyAiJ06TargetM0C0mN0OARySayA7_GA7_AIGG_A2_Qo_SgAA7SectionVyAI0hB00J16NavigationButtonVAA05EmptyC0VGSgA14_yAicAEADyQrqd__AaERd__lFQOyAGyA19_SiARySnySiGSiAA6HStackVyAA05TupleC0VyAA08ModifiedP0VyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2ItGGGG_A2_Qo_A19_GSgA14_yAIA26_yA17__A17_tGA19_GSgtMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0F7BuilderV7ContentVyAL_AA7ForEachVySayALGAlA09_DisabledfP0VyAA0F6OptionVyAlIGGGGG_AA06InlinefE0VQo__AcAEADyQrqd__AaERd__lFQOyAGyAiJ06TargetM0C0mN0OARySayA7_GA7_AIGG_A2_Qo_SgAA7SectionVyAI0hB00J16NavigationButtonVAA05EmptyC0VGSgA14_yAicAEADyQrqd__AaERd__lFQOyAGyA19_SiARySnySiGSiAA6HStackVyAA05TupleC0VyAA08ModifiedP0VyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2ItGGGG_A2_Qo_A19_GSgA14_yAIA26_yA17__A17_tGA19_GSgtMR);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v184, &v135[v136[12]], &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMR);
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v131, &v135[v136[16]], &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMR);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v133, &v135[v136[20]], &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMR);
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v134, &v135[v136[24]], &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v180, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v132, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMR);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v185, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMR);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v183, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMR);
  v137 = *(v127 + 8);
  v138 = v178;
  v137(v176, v178);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v134, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB021PowerNavigationButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v133, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0s10AttachmentZ0VG_AVyAA6SpacerVAA12_FrameLayoutVGA2EtGGGG_AA06InlinehG0VQo_AMGSgMR);
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v179, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMd, &_s7SwiftUI7SectionVyAA4TextV07WorkoutB021PowerNavigationButtonVAA9EmptyViewVGSgMR);
  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v184, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnIGG_AA06InlinefE0VQo_SgMR);
  return (v137)(v177, v138);
}

double key path getter for PowerZonesEntryViewModel.selectedType : PowerZonesEntryViewModel@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for PowerZonesEntryViewModel.selectedType : PowerZonesEntryViewModel(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5, a1, v3);
  return PowerZonesEntryViewModel.selectedType.setter(v5);
}

uint64_t closure #1 in closure #1 in PowerZonesEntryView.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  outlined init with copy of PowerZonesEntryView(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  outlined init with take of PowerZonesEntryView(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMR);
  type metadata accessor for PowerZonesAlertZoneType();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [PowerZonesAlertZoneType] and conformance [A], &_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMd, &_sSay11WorkoutCore23PowerZonesAlertZoneTypeOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E440]);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>> and conformance _DisabledPickerContent<A>, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMR, MEMORY[0x277CDE1C8]);
  return ForEach<>.init<A>(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[0] = a2;
  v26[1] = a3;
  v4 = type metadata accessor for PowerZonesAlertZoneType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMd, &_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMR);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = *(v5 + 16);
  v16(v10, a1, v4, v13);
  v28 = a1;
  v17 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E440]);
  MEMORY[0x20F3084F0](v10, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter, v27, v4, MEMORY[0x277CE0BD8], v17, MEMORY[0x277CE0BC8]);
  (v16)(v7, a1, v4);
  v18 = (*(v5 + 88))(v7, v4);
  if (v18 != *MEMORY[0x277D7E428])
  {
    if (v18 == *MEMORY[0x277D7E430])
    {
      (*(v5 + 8))(v7, v4);
      type metadata accessor for PowerZonesEntryView(0);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v29);

      v24 = v29;
      if (!v29)
      {
        goto LABEL_4;
      }

      if (!(v29 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for Zone();
        v25 = v24;
LABEL_9:

        type metadata accessor for CyclingPowerZonesConfigurationEditor();
        MEMORY[0x20F306B50](v25);

        goto LABEL_4;
      }
    }

    else
    {
      if (v18 == *MEMORY[0x277D7E420])
      {
        (*(v5 + 96))(v7, v4);
        v19 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
        v20 = &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR;
        goto LABEL_3;
      }

      if (v18 == *MEMORY[0x277D7E418])
      {
        goto LABEL_4;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    type metadata accessor for Zone();

    v25 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  (*(v5 + 96))(v7, v4);
  v19 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd;
  v20 = &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR;
LABEL_3:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v19, v20) + 48);
  v22 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v22 - 8) + 8))(&v7[v21], v22);
LABEL_4:
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type PickerOption<PowerZonesAlertZoneType, Text> and conformance PickerOption<A, B>, &_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMd, &_s7SwiftUI12PickerOptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGMR, MEMORY[0x277CDD7E8]);
  PickerContent.disabled(_:)();
  return (*(v12 + 8))(v15, v11);
}

uint64_t PowerZonesAlertZoneType.displayString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7E428])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = WorkoutUIBundle.super.isa;
    v32._object = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x800000020CBA17A0;
    v11._countAndFlagsBits = 0xD000000000000017;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v32)._countAndFlagsBits;

    v14 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v14 - 8) + 8))(&v6[v8], v14);
    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E430])
  {
    (*(v3 + 8))(v6, v2);
    v15 = "POWER_ZONES_TYPE_CUSTOM_RANGE";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = WorkoutUIBundle.super.isa;
    v30 = 0xE000000000000000;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v19 = 0xD000000000000020;
LABEL_17:
    v26 = v15 | 0x8000000000000000;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, *&v17, v16, v27, *(&v30 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E420])
  {
    (*(v3 + 96))(v6, v2);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd, &_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMR) + 48);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v33._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._countAndFlagsBits = 0xD00000000000001DLL;
    v23._object = 0x800000020CBA1750;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v33)._countAndFlagsBits;

    v25 = type metadata accessor for TargetZone.ZoneType();
    (*(*(v25 - 8) + 8))(&v6[v20], v25);
    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7E418])
  {
    v15 = "esAlertZoneType case";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = WorkoutUIBundle.super.isa;
    v30 = 0xE000000000000000;
    v17 = 0x617A696C61636F4CLL;
    v18 = 0xEB00000000656C62;
    v19 = 0xD00000000000001BLL;
    goto LABEL_17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in PowerZonesEntryView.body.getter(uint64_t a1)
{
  type metadata accessor for PowerZonesEntryView(0);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance [A], &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t TargetZone.ZoneType.pickerDisplayString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7DE68])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v17 = 0xE000000000000000;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v11 = 0xD000000000000028;
    v12 = 0x800000020CBA16A0;
LABEL_9:
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v8, v13, *(&v17 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == *MEMORY[0x277D7DE50])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v17 = 0xE000000000000000;
    v9 = 0x617A696C61636F4CLL;
    v10 = 0xEB00000000656C62;
    v12 = 0x800000020CBA16D0;
    v11 = 0xD000000000000022;
    goto LABEL_9;
  }

  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  MEMORY[0x20F30BC00](0xD00000000000003CLL, 0x800000020CBA1660);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #3 in closure #1 in PowerZonesEntryView.body.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PowerZonesEntryView(0);
  v6 = *(a1 + *(v5 + 28));
  v7 = (a1 + *(v5 + 32));
  v8 = *v7;
  v9 = v7[1];
  v10 = type metadata accessor for PowerZonesEntryViewModel(0);
  v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);
  v12 = v4;
  v13 = v6;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v15 = v14;
  static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v19;
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = v15;
  a2[8] = v16;
}

uint64_t closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v21 = a3;
  v20 = type metadata accessor for InlinePickerStyle();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = (a1 + *(type metadata accessor for PowerZonesEntryView(0) + 32));
  v13 = *v11;
  v12 = v11[1];
  v14 = type metadata accessor for PowerZonesEntryViewModel(0);
  v15 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);
  MEMORY[0x20F308920](v13, v12, v14, v15);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v22 = v19;
  v23 = a1;
  v24 = v26;
  v25 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMd, &_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMR);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA6HStackVyAA05TupleE0VyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0o10AttachmentV0VG_ANyAA6SpacerVAA12_FrameLayoutVGAA4TextVA12_tGGGGMR, MEMORY[0x277CDF038]);
  v16 = v20;
  View.pickerStyle<A>(_:)();
  (*(v4 + 8))(v6, v16);
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v10[0] = 0;
    v10[1] = result;
    swift_getKeyPath();
    outlined init with copy of PowerZonesEntryView(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    outlined init with take of PowerZonesEntryView(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMR);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMR, MEMORY[0x277CE1138]);
    return ForEach<>.init(_:id:content:)();
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0n10AttachmentU0VG_AKyAA6SpacerVAA06_FrameG0VGAA4TextVA9_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0n10AttachmentU0VG_AKyAA6SpacerVAA06_FrameG0VGAA4TextVA9_tGGMR);
  return closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(v7, a2, a3, a4 + *(v8 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v91 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v90 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_MR);
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x28223BE20](v21);
  v24 = &v75 - v23;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v82 = v10;
  v83 = v8;
  v80 = a1 + 1;
  v94[0] = a1 + 1;
  v98 = dispatch thunk of CustomStringConvertible.description.getter();
  v99 = v25;
  MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
  result = Image.init(systemName:)();
  v10 = result;
  v85 = v20;
  v92 = v24;
  v84 = v9;
  v77 = a2;
  v76 = a1;
  v75 = a2 + 8 * a1;
  v81 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_14:
    MEMORY[0x20F30C990](a1, a2, v22);
    goto LABEL_6;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v27 = CyclingPowerZone.color.getter();

  KeyPath = swift_getKeyPath();
  v98 = v10;
  v99 = KeyPath;
  v100 = v27;
  static AccessibilityChildBehavior.ignore.getter();
  a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  v20 = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v14, v86);

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  v29 = WorkoutUIBundle.super.isa;
  v104._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0x4D414E5F454E4F5ALL;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v30._object = 0xE900000000000045;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v104._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20CB5DA70;
  v34 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v34;
  *(v33 + 32) = v80;
  v35 = String.init(format:_:)();
  v37 = v36;

  v98 = v35;
  v99 = v37;
  *&v93 = a2;
  *(&v93 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v38 = v92;
  v39 = v88;
  View.accessibilityLabel<A>(_:)();

  (*(v87 + 8))(v17, v39);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v86 = v98;
  v80 = v100;
  v79 = v102;
  v78 = v103;
  v97 = 1;
  v96 = v99;
  v95 = v101;
  v40 = v84;
  if (v81)
  {
    MEMORY[0x20F30C990](v76, v77);
  }

  else
  {
  }

  v41 = v83;
  v42 = PowerZonesEntryView.rangeString(zone:)();
  v44 = v43;

  *&v93 = v42;
  *(&v93 + 1) = v44;
  v45 = Text.init<A>(_:)();
  v87 = v46;
  v88 = v45;
  LODWORD(v83) = v47;
  v89 = v48;
  if (one-time initialization token for powerZonesShortDescription != -1)
  {
    swift_once();
  }

  v93 = static PowerZonesEntryView.powerZonesShortDescription;

  v49 = Text.init<A>(_:)();
  v51 = v50;
  v53 = v52;
  v54 = v82;
  v55 = v90;
  (*(v82 + 104))(v90, *MEMORY[0x277CE0A68], v40);
  v56 = type metadata accessor for Font.Design();
  (*(*(v56 - 8) + 56))(v41, 1, 1, v56);
  static Font.system(_:design:weight:)();
  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v41, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v54 + 8))(v55, v40);
  Font.smallCaps()();

  v57 = Text.font(_:)();
  v59 = v58;
  LODWORD(v84) = v60;
  v90 = v61;

  outlined consume of Text.Storage(v49, v51, v53 & 1);

  v62 = v85;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v38, v85, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMR);
  v63 = v97;
  LOBYTE(v51) = v96;
  v64 = v95;
  v65 = v83 & 1;
  LOBYTE(v93) = v83 & 1;
  v66 = v91;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v62, v91, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMR);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VG_ACyAA6SpacerVAA12_FrameLayoutVGAA4TextVA1_tMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VG_ACyAA6SpacerVAA12_FrameLayoutVGAA4TextVA1_tMR);
  v68 = v66 + v67[12];
  *v68 = 0;
  *(v68 + 8) = v63;
  *(v68 + 16) = v86;
  *(v68 + 24) = v51;
  *(v68 + 32) = v80;
  *(v68 + 40) = v64;
  v69 = v78;
  *(v68 + 48) = v79;
  *(v68 + 56) = v69;
  v70 = v66 + v67[16];
  v72 = v87;
  v71 = v88;
  *v70 = v88;
  *(v70 + 8) = v72;
  *(v70 + 16) = v65;
  *(v70 + 24) = v89;
  v73 = v66 + v67[20];
  *v73 = v57;
  *(v73 + 8) = v59;
  v74 = v84 & 1;
  *(v73 + 16) = v84 & 1;
  *(v73 + 24) = v90;
  outlined copy of Text.Storage(v71, v72, v65);

  outlined copy of Text.Storage(v57, v59, v74);

  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v92, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMR);
  outlined consume of Text.Storage(v57, v59, v74);

  outlined consume of Text.Storage(v71, v72, v93);

  return outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMR);
}

uint64_t PowerZonesEntryView.rangeString(zone:)()
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_9(0, &lazy cache variable for type metadata for NSNumberFormatter, 0x277CCABB8);
  v0 = static NSNumberFormatter.integralFormatter.getter();
  v1 = CyclingPowerZone.lowerBound.getter();
  if (v1)
  {
    v2 = v1;
    v3 = CyclingPowerZone.upperBound.getter();
    if (v3)
    {
      v4 = v3;
      v5 = objc_opt_self();
      v6 = [v5 wattUnit];
      [v2 doubleValueForUnit_];
      v8 = v7;

      v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v10 = [v0 stringFromNumber_];

      if (v10)
      {
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v54 = 0;
        v12 = 0xE000000000000000;
      }

      v29 = [v5 wattUnit];
      [v4 doubleValueForUnit_];
      v31 = v30;

      v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v33 = [v0 stringFromNumber_];

      if (v33)
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v37 = WorkoutUIBundle.super.isa;
      v38._countAndFlagsBits = 0xD00000000000001DLL;
      v55._object = 0xE000000000000000;
      v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v39.value._object = 0xEB00000000656C62;
      v38._object = 0x800000020CB946D0;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20CB5DA80;
      v42 = MEMORY[0x277D837D0];
      *(v41 + 56) = MEMORY[0x277D837D0];
      v43 = lazy protocol witness table accessor for type String and conformance String();
      *(v41 + 32) = v54;
      *(v41 + 40) = v12;
      *(v41 + 96) = v42;
      *(v41 + 104) = v43;
      *(v41 + 64) = v43;
      *(v41 + 72) = v34;
      *(v41 + 80) = v36;
      v44 = String.init(format:_:)();

      v0 = v2;
LABEL_26:

      return v44;
    }
  }

  v13 = CyclingPowerZone.lowerBound.getter();
  if (v13)
  {
    v4 = v13;
    v14 = [objc_opt_self() wattUnit];
    [v4 doubleValueForUnit_];
    v16 = v15;

    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v18 = [v0 stringFromNumber_];

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 9666786;
      v21 = 0xA300000000000000;
    }

    v45 = "ALERT_CONFIGURATION_ROW_LOWER_BOUND";
LABEL_23:
    v46 = v45 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v47 = WorkoutUIBundle.super.isa;
    v56._object = 0xE000000000000000;
    v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v48.value._object = 0xEB00000000656C62;
    v49._object = (v46 | 0x8000000000000000);
    v49._countAndFlagsBits = 0xD000000000000023;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_20CB5DA70;
    *(v51 + 56) = MEMORY[0x277D837D0];
    *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v51 + 32) = v19;
    *(v51 + 40) = v21;
    v44 = String.init(format:_:)();
    goto LABEL_26;
  }

  v22 = CyclingPowerZone.upperBound.getter();
  if (v22)
  {
    v4 = v22;
    v23 = [objc_opt_self() wattUnit];
    [v4 doubleValueForUnit_];
    v25 = v24;

    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v27 = [v0 stringFromNumber_];

    if (v27)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v28;
    }

    else
    {
      v19 = 9666786;
      v21 = 0xA300000000000000;
    }

    v45 = "ALERT_CONFIGURATION_ROW_UPPER_BOUND";
    goto LABEL_23;
  }

  _StringGuts.grow(_:)(46);

  type metadata accessor for CyclingPowerZone();
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone, MEMORY[0x277D7E068], MEMORY[0x277D7E700]);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v53);

  MEMORY[0x20F30BC00](0xD000000000000027, 0x800000020CB94640);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #5 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for PowerZonesEntryView(0);
  v6 = *(v5 + 32);
  v7 = *(a1 + *(v5 + 28));
  v8 = *(a1 + v6);
  v9 = *(a1 + v6 + 8);
  v10 = type metadata accessor for PowerZonesEntryViewModel(0);
  v11 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);
  v12 = v4;
  v13 = v7;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v42 = *(&v57 + 1);
  v43 = v57;
  v14 = v58;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = WorkoutUIBundle.super.isa;
  v64._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._object = 0x800000020CB945C0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v64);

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v21 = v20;
  static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  v23 = v22;
  v24 = v12;
  v25 = v13;
  MEMORY[0x20F308920](v8, v9, v10, v11);
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v26 = *(&v57 + 1);
  v41 = v57;
  v27 = v58;
  v28 = WorkoutUIBundle.super.isa;
  v65._object = 0xE000000000000000;
  v29._object = 0x800000020CB945E0;
  v29._countAndFlagsBits = 0xD000000000000011;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v65);

  static CyclingPowerZonesConstants.minFunctionalThresholdPower.getter();
  v34 = v33 + 5.0;
  static CyclingPowerZonesConstants.maxFunctionalThresholdPower.getter();
  v36 = v35 + 5.0;
  *&v45[0] = v24;
  *(&v45[0] + 1) = v25;
  v45[1] = v57;
  *&v46 = v58;
  *(&v46 + 1) = v19._countAndFlagsBits;
  *&v47 = v19._object;
  *(&v47 + 1) = v21;
  v48 = v23;
  *v44 = v23;
  *&v49[0] = v24;
  *(&v49[0] + 1) = v25;
  v49[1] = v57;
  *&v50 = v58;
  *(&v50 + 1) = v32._countAndFlagsBits;
  *&v51 = v32._object;
  *(&v51 + 1) = v34;
  v52 = v36;
  *&v44[8] = v49[0];
  *&v44[72] = v36;
  *&v44[56] = v51;
  *&v44[40] = v50;
  *&v44[24] = v57;
  v37 = v45[0];
  v38 = v57;
  v39 = v47;
  a2[2] = v46;
  a2[3] = v39;
  *a2 = v37;
  a2[1] = v38;
  a2[7] = *&v44[48];
  a2[8] = *&v44[64];
  a2[5] = *&v44[16];
  a2[6] = *&v44[32];
  a2[4] = *v44;
  v53[0] = v24;
  v53[1] = v25;
  v53[2] = v41;
  v53[3] = v26;
  v53[4] = v27;
  v54 = v32;
  v55 = v34;
  v56 = v36;
  outlined init with copy of PowerNavigationButton(v45, &v57);
  outlined init with copy of PowerNavigationButton(v49, &v57);
  outlined destroy of PowerNavigationButton(v53);
  *&v57 = v24;
  *(&v57 + 1) = v25;
  v58 = v43;
  v59 = v42;
  v60 = v14;
  v61 = v19;
  v62 = v21;
  v63 = v23;
  return outlined destroy of PowerNavigationButton(&v57);
}

uint64_t closure #2 in PowerZonesEntryView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PowerZonesEntryView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v5 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  v6 = PowerZonesAlertTargetZone.init(type:)();
  v7 = *a1;
  v9[0] = v6;
  v9[1] = v7;
  v10 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in PowerZonesEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesEntryView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v35[-v6];
  v8 = type metadata accessor for Logger();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AlertConfigurationContext();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 104))(v15, *MEMORY[0x277D7E4C0], v11, v13);
  v16 = static AlertConfigurationContext.== infix(_:_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v40 = *a1;
    v41 = *(a1 + 8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore25PowerZonesAlertTargetZoneCGMR);
    MEMORY[0x20F30B100](&v42);
    v44 = type metadata accessor for PowerZonesAlertTargetZone();
    v45 = MEMORY[0x277D7E578];
    v19 = static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)();
    result = __swift_destroy_boxed_opaque_existential_1(&v42);
    if (v19)
    {
      static WOLog.alerts.getter();
      outlined init with copy of PowerZonesEntryView(a1, v7);
      outlined init with copy of PowerZonesEntryView(a1, v4);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40 = v37;
        *v22 = 136315394;
        v42 = *v7;
        v43 = *(v7 + 8);
        v36 = v21;
        MEMORY[0x20F30B100](&v39, v18);
        v23 = v39;
        v24 = [v39 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        outlined destroy of PowerZonesEntryView(v7);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2080;
        v29 = [v4[3] uniqueIdentifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        outlined destroy of PowerZonesEntryView(v4);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v40);

        *(v22 + 14) = v33;
        _os_log_impl(&dword_20C66F000, v20, v36, "Saved alert: %s for %s", v22, 0x16u);
        v34 = v37;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v34, -1, -1);
        MEMORY[0x20F30E080](v22, -1, -1);

        return (*(v38 + 8))(v10, v8);
      }

      else
      {

        (*(v38 + 8))(v10, v8);
        outlined destroy of PowerZonesEntryView(v7);
        return outlined destroy of PowerZonesEntryView(v4);
      }
    }
  }

  return result;
}

uint64_t PowerNavigationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextVSg_APtGGAHG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextVSg_APtGGAHG_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = static Platform.current.getter();
  if (v10)
  {
    MEMORY[0x28223BE20](v10);
    v12 = a1;
    *(&v12 - 2) = v1;
    PowerNavigationButton.pickerView()(&v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMR);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text?, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextVSg_AGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMR, MEMORY[0x277CDD938]);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    PowerNavigationButton.pickerView()(&v13);
    *v9 = v13;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMR, MEMORY[0x277CDD938]);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t PowerNavigationButton.pickerView()@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = *MEMORY[0x277D7DE68];
  v12 = type metadata accessor for TargetZone.ZoneType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v51 = *(v2 + 16);
  v52 = *(v2 + 32);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.projectedValue.getter();
  v14 = v48;
  v15 = v49;
  v16 = v50;
  v17 = *(v2 + 48);
  if (v17)
  {
    countAndFlagsBits = *(v2 + 40);
    object = v17;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = WorkoutUIBundle.super.isa;
    v53._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._object = 0x800000020CBA1820;
    v20._countAndFlagsBits = 0xD000000000000022;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v53._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v53);
    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
  }

  v24 = *v2;
  v23 = *(v2 + 8);
  v25 = *(v2 + 56);
  v26 = *(v2 + 64);

  v27 = static Color.green.getter();
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v10, v7, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  type metadata accessor for AlertsPickerViewModel(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  v48 = 0;
  v49 = 0xE000000000000000;
  v30 = v42;
  Published.init(initialValue:)();
  (*(v43 + 32))(&v28[v29], v30, v44);
  *(v28 + 2) = v14;
  *(v28 + 3) = v15;
  *(v28 + 4) = v16;
  v48 = v14;
  v49 = v15;
  v50 = v16;

  MEMORY[0x20F30B100](&v47, v41);
  v31 = v47;
  swift_beginAccess();
  v46 = v31;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_minimumSelectableValue] = v25;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_maximumSelectableValue] = v26;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_step] = 0x4014000000000000;
  v32 = &v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText];
  v33 = object;
  *v32 = countAndFlagsBits;
  v32[1] = v33;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color] = v27;

  specialized _copySequenceToContiguousArray<A>(_:)(v25, v26, 5.0);
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues] = v34;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_activityType] = v24;
  *&v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_formattingManager] = v23;
  outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(v7, &v28[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType], &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  v35 = v24;
  v36 = v23;
  AlertsPickerViewModel.updateValueDisplay()();

  outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v7, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  result = outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(v10, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  *v45 = v28;
  return result;
}

__n128 closure #2 in PowerNavigationButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in PowerNavigationButton.body.getter(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t closure #1 in closure #2 in PowerNavigationButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *(a1 + 48);
  if (v4)
  {
    *&v39 = *(a1 + 40);
    *(&v39 + 1) = v4;
    lazy protocol witness table accessor for type String and conformance String();

    v5 = Text.init<A>(_:)();
    v7 = v6;
    v9 = v8;
    static Color.gray.getter();
    v10 = Text.foregroundColor(_:)();
    v12 = v11;
    v36 = v13;
    v15 = v14;

    v16 = v9 & 1;
    v17 = v10;
    outlined consume of Text.Storage(v5, v7, v16);

    v18 = v36 & 1;
    outlined copy of Text.Storage(v10, v12, v36 & 1);
  }

  else
  {
    v17 = 0;
    v12 = 0;
    v18 = 0;
    v15 = 0;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v39 = *(a1 + 16);
  v40 = *(a1 + 32);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](&v38, v20);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *&v39 = v38;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_12:
    swift_once();
  }

  swift_beginAccess();
  v22 = WorkoutUIBundle.super.isa;
  v41._object = 0xE000000000000000;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._object = 0x800000020CBA17C0;
  v24._countAndFlagsBits = 0xD00000000000001CLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v23, v22, v25, v41);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v26);

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
  LocalizedStringKey.init(stringInterpolation:)();
  v28 = Text.init(_:tableName:bundle:comment:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  outlined copy of Text?(v17, v12, v18, v15);
  v32 &= 1u;
  outlined copy of Text.Storage(v28, v30, v32);

  outlined consume of Text?(v17, v12, v18, v15);
  LOBYTE(v38) = v32;
  *a2 = v17;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v28;
  a2[5] = v30;
  *(a2 + 48) = v32;
  a2[7] = v34;
  outlined consume of Text.Storage(v28, v30, v32);

  return outlined consume of Text?(v17, v12, v18, v15);
}

void key path getter for PowerZonesEntryViewModel.zones : PowerZonesEntryViewModel(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for PowerZonesEntryViewModel.zones : PowerZonesEntryViewModel(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  static Published.subscript.setter();
  PowerZonesEntryViewModel.zones.didset(v3);

  return result;
}

void type metadata completion function for PowerZonesEntryView(uint64_t a1)
{
  type metadata accessor for Binding<PowerZonesAlertTargetZone>(319);
  if (v1 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_9(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AlertConfigurationContext();
      if (v3 <= 0x3F)
      {
        _sSo23FIUIWorkoutActivityTypeCMaTm_9(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObservedObject<PowerZonesEntryViewModel>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Binding<PowerZonesAlertTargetZone>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>)
  {
    type metadata accessor for PowerZonesAlertTargetZone();
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<PowerZonesAlertTargetZone>);
    }
  }
}

void type metadata accessor for ObservedObject<PowerZonesEntryViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<PowerZonesEntryViewModel>)
  {
    type metadata accessor for PowerZonesEntryViewModel(255);
    lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(&lazy protocol witness table cache variable for type PowerZonesEntryViewModel and conformance PowerZonesEntryViewModel, type metadata accessor for PowerZonesEntryViewModel, &protocol conformance descriptor for PowerZonesEntryViewModel);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<PowerZonesEntryViewModel>);
    }
  }
}

uint64_t outlined init with copy of PowerZonesEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PowerZonesEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PowerZonesEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0H7BuilderV7ContentVyAP_AA7ForEachVySayAPGApA09_DisabledhR0VyAA0H6OptionVyApMGGGGG_AA06InlinehG0VQo__AgAEAHyQrqd__AaIRd__lFQOyAKyAmN06TargetO0C0oP0OAVySayA11_GA11_AMGG_A6_Qo_SgAA7SectionVyAM0jB00L16NavigationButtonVAA05EmptyE0VGSgA18_yAmgAEAHyQrqd__AaIRd__lFQOyAKyA23_SiAVySnySiGSiAA6HStackVyAEyAA08ModifiedR0VyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA30_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A30_yAA6SpacerVAA12_FrameLayoutVGA2MtGGGG_A6_Qo_A23_GSgA18_yAmEyA21__A21_tGA23_GSgtGGMR);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerF0Rd__lFQOyAA0G0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0G7BuilderV7ContentVyAN_AA7ForEachVySayANGAnA09_DisabledgQ0VyAA0G6OptionVyAnKGGGGG_AA06InlinegF0VQo__AeAEAFyQrqd__AaGRd__lFQOyAIyAkL06TargetN0C0nO0OATySayA9_GA9_AKGG_A4_Qo_SgAA7SectionVyAK0iB00K16NavigationButtonVAA05EmptyD0VGSgA16_yAkeAEAFyQrqd__AaGRd__lFQOyAIyA21_SiATySnySiGSiAA6HStackVyACyAA08ModifiedQ0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2KtGGGG_A4_Qo_A21_GSgA16_yAkCyA19__A19_tGA21_GSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerF0Rd__lFQOyAA0G0VyAA4TextV11WorkoutCore23PowerZonesAlertZoneTypeOAA0G7BuilderV7ContentVyAN_AA7ForEachVySayANGAnA09_DisabledgQ0VyAA0G6OptionVyAnKGGGGG_AA06InlinegF0VQo__AeAEAFyQrqd__AaGRd__lFQOyAIyAkL06TargetN0C0nO0OATySayA9_GA9_AKGG_A4_Qo_SgAA7SectionVyAK0iB00K16NavigationButtonVAA05EmptyD0VGSgA16_yAkeAEAFyQrqd__AaGRd__lFQOyAIyA21_SiATySnySiGSiAA6HStackVyACyAA08ModifiedQ0VyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA28_yAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA31AccessibilityAttachmentModifierVG_A28_yAA6SpacerVAA12_FrameLayoutVGA2KtGGGG_A4_Qo_A21_GSgA16_yAkCyA19__A19_tGA21_GSgtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t partial apply for closure #2 in PowerZonesEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PowerZonesEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined destroy of PowerZonesEntryView(uint64_t a1)
{
  v2 = type metadata accessor for PowerZonesEntryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore23PowerZonesAlertZoneTypeOGAfA22_DisabledPickerContentVyAA0M6OptionVyAfA4TextVGGGMR);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>> and conformance _DisabledPickerContent<A>, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMd, &_s7SwiftUI22_DisabledPickerContentVyAA0D6OptionVy11WorkoutCore23PowerZonesAlertZoneTypeOAA4TextVGGMR, MEMORY[0x277CDE1C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[PowerZonesAlertZoneType], PowerZonesAlertZoneType, _DisabledPickerContent<PickerOption<PowerZonesAlertZoneType, Text>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerNavigationButton and conformance PowerNavigationButton()
{
  result = lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton;
  if (!lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerNavigationButton and conformance PowerNavigationButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, Text> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMd, &_s7SwiftUI7ForEachVySnySiGSiAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0m10AttachmentT0VG_AJyAA6SpacerVAA12_FrameLayoutVGAA4TextVA8_tGGGMR);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PowerZonesEntryView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #4 in closure #1 in PowerZonesEntryView.body.getter(a1, v6, v7, a2);
}

uint64_t outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_9(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroyTm_73()
{
  v1 = (type metadata accessor for PowerZonesEntryView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PowerZonesEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in PowerZonesEntryView.body.getter(a1, v6, a2);
}

uint64_t getEnumTagSinglePayload for PowerNavigationButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for PowerNavigationButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of Section<Text, PowerNavigationButton, EmptyView>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextVSg_ANtGGAFGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextVSg_ANtGGAFGGMR);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, Section<Text, PowerNavigationButton, EmptyView>?, Section<Text, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<Text, TupleView<(PowerNavigationButton, PowerNavigationButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextVSg_AItGG07WorkoutB0012AlertsPickerG0VGMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text?, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for VoiceCompanionSettingsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for VoiceCompanionSettingsView;
  if (!type metadata singleton initialization cache for VoiceCompanionSettingsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for VoiceCompanionSettingsView(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>, MEMORY[0x277D7DD08]);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(319, &lazy cache variable for type metadata for Environment<WithCurrentHostingControllerAction>, MEMORY[0x277CDE530]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for InferenceClient();
        if (v4 <= 0x3F)
        {
          type metadata accessor for VoiceAssetsObserver();
          if (v5 <= 0x3F)
          {
            type metadata accessor for FIUIWorkoutActivityType();
            if (v6 <= 0x3F)
            {
              _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for State<Int?>(319);
                if (v8 <= 0x3F)
                {
                  _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for State<String>, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    _s7SwiftUI7BindingVySbGMaTm_2(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for State<Int?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for State<Int?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<Int?>);
    }
  }
}

void _s7SwiftUI7BindingVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t VoiceCompanionSettingsView.withCurrentHostingController.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VoiceCompanionSettingsView(0);
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for WithCurrentHostingControllerAction();
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

uint64_t closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VoiceCompanionSettingsView(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v8, v6);
  if (v8 == 1)
  {
    result = VoiceCompanionSettingsView.toggleIsActive.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result & 1;
  return result;
}

uint64_t closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VoiceCompanionSettingsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t VoiceCompanionSettingsView.toggleIsActive.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for VoiceCompanionSettingsView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 == 1)
  {
    v8 = v6;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    v8 = v25;
  }

  v10 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v11 = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v10);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    if (v7)
    {
      v13 = v6;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v6, 0);
      (*(v2 + 8))(v4, v1);
      v13 = v25;
    }

    v15 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v16 = WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
    v17 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20CB5DA70;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x277D7DCB0], v17);
    v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v20);
    swift_setDeallocating();
    (*(v18 + 8))(v20 + v19, v17);
    swift_deallocClassInstance();
    _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v16, v21);
    v12 = v22;
  }

  return v12 & 1;
}

uint64_t VoiceCompanionSettingsView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v132 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v131 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v134 = &v113 - v6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMR);
  v7 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = &v113 - v8;
  v120 = type metadata accessor for WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for EnvironmentValues();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InferenceClient();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutVoicePickerView(0);
  MEMORY[0x28223BE20](v15);
  v121 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v113 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v113 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEGMR);
  v128 = *(v24 - 8);
  v129 = v24;
  MEMORY[0x28223BE20](v24);
  v136 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v113 - v27;
  v137 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v135 = v28;
  Section<>.init(content:)();
  if (VoiceCompanionSettingsView.toggleIsActive.getter())
  {
    v126 = 0;
    v124 = 0;
    v125 = 1;
  }

  else
  {
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08], MEMORY[0x277D7DC98]);
    v29 = Environment.init<A>(_:)();
    v31 = v30;
    v139 = static Color.clear.getter();
    v32 = AnyView.init<A>(_:)();
    v126 = v29;
    v124 = v31 & 1;
    outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(v29, v31 & 1);
    v125 = v32;
  }

  v33 = type metadata accessor for VoiceCompanionSettingsView(0);
  v34 = v2 + v33[10];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  v139 = v35;
  v140 = v36;
  LOBYTE(v141) = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v138, v37);
  v133 = v23;
  if (LOBYTE(v138._countAndFlagsBits) == 1 && (VoiceCompanionSettingsView.toggleIsActive.getter() & 1) != 0)
  {
    v38 = *(dispatch thunk of VoiceAssetsObserver.assets.getter() + 16);

    v39 = 1;
    if (v38)
    {
      v114 = v7;
      v40 = *(v12 + 16);
      v40(v14, v2 + v33[7], v11);
      v41 = v123;
      v40(v123, v14, v11);
      v42 = v41 + v15[5];
      type metadata accessor for VoiceAssetsObserver();
      lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340], MEMORY[0x277D7E330]);
      *v42 = Environment.init<A>(_:)();
      *(v42 + 8) = v43 & 1;
      v44 = v41 + v15[6];
      v138._countAndFlagsBits = 0;
      LOBYTE(v138._object) = 1;
      State.init(wrappedValue:)();
      v45 = v140;
      v46 = v141;
      *v44 = v139;
      *(v44 + 8) = v45;
      *(v44 + 16) = v46;
      v47 = v41 + v15[8];
      LOBYTE(v138._countAndFlagsBits) = 0;
      State.init(wrappedValue:)();
      (*(v12 + 8))(v14, v11);
      v48 = v140;
      *v47 = v139;
      *(v47 + 8) = v48;
      v49 = (v41 + v15[7]);
      *v49 = 0;
      v49[1] = 0;
      v50 = v2 + v33[5];
      v51 = *v50;
      if (*(v50 + 8) == 1)
      {
        v52 = v51;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v74 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v75 = v115;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v51, 0);
        (*(v116 + 8))(v75, v117);
        v52 = v139;
      }

      v76 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

      v77 = WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter();
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v76);
      v78 = v119;
      v79 = v118;
      v80 = v120;
      (*(v119 + 104))(v118, *MEMORY[0x277D7DCB0], v120);
      LOBYTE(v76) = specialized Set.contains(_:)(v79, v77);

      (*(v78 + 8))(v79, v80);
      v113 = v2;
      if (v76)
      {
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v81 = WorkoutUIBundle.super.isa;
        v142._object = 0xE000000000000000;
        v82.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v82.value._object = 0xEB00000000656C62;
        v83._object = 0x800000020CBA1850;
        v83._countAndFlagsBits = 0xD00000000000001FLL;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        v142._countAndFlagsBits = 0;
        v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v82, v81, v84, v142);

        v138 = v85;
        lazy protocol witness table accessor for type String and conformance String();
        v86 = Text.init<A>(_:)();
        v88 = v87;
        v90 = v89;
        static Font.footnote.getter();
        v91 = Text.font(_:)();
        v93 = v92;
        v95 = v94;
        v97 = v96;

        outlined consume of Text.Storage(v86, v88, v90 & 1);

        v138._countAndFlagsBits = static Color.clear.getter();
        v98 = AnyView.init<A>(_:)();
        v99 = static Color.gray.getter();
        KeyPath = swift_getKeyPath();
        v101 = v95 & 1;
        v120 = v91;
        v102 = v91;
        v103 = v93;
        v104 = v95 & 1;
        outlined copy of Text.Storage(v102, v93, v101);
        v105 = v97;

        v119 = v98;

        v106 = KeyPath;

        v107 = v99;
      }

      else
      {
        v120 = 0;
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v119 = 0;
        v106 = 0;
        v107 = 0;
      }

      v108 = v121;
      outlined init with copy of WorkoutVoicePickerView(v123, v121, type metadata accessor for WorkoutVoicePickerView);
      v109 = v122;
      outlined init with copy of WorkoutVoicePickerView(v108, v122, type metadata accessor for WorkoutVoicePickerView);
      v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A15VoicePickerViewV_05SwiftB015ModifiedContentVyAFyAD4TextVAD21_TraitWritingModifierVyAD017ListRowBackgroundJ3KeyVGGAD012_EnvironmentpkL0VyAD5ColorVSgGGSgtMd, &_s9WorkoutUI0A15VoicePickerViewV_05SwiftB015ModifiedContentVyAFyAD4TextVAD21_TraitWritingModifierVyAD017ListRowBackgroundJ3KeyVGGAD012_EnvironmentpkL0VyAD5ColorVSgGGSgtMR) + 48));
      v111 = v120;
      v112 = v119;
      outlined copy of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v120, v103, v104, v105, v119, v106, v107);
      outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v111, v103, v104, v105, v112, v106, v107);
      *v110 = v111;
      v110[1] = v103;
      v110[2] = v104;
      v110[3] = v105;
      v110[4] = v112;
      v110[5] = v106;
      v110[6] = v107;
      outlined destroy of WorkoutVoicePickerView(v123);
      outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(v111, v103, v104, v105, v112, v106, v107);
      outlined destroy of WorkoutVoicePickerView(v108);
      v23 = v133;
      outlined init with take of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>(v109, v133);
      v39 = 0;
      v7 = v114;
    }
  }

  else
  {
    v39 = 1;
  }

  v53 = *(v7 + 56);
  v54 = 1;
  v55 = v23;
  v53(v23, v39, 1, v127);
  v56 = VoiceCompanionSettingsView.toggleIsActive.getter();
  if (v56)
  {
    MEMORY[0x28223BE20](v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMR);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundH3KeyVGG07WorkoutB004HidekL9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ArEyAEyAEyAgA14_PaddingLayoutVGAA012_EnvironmentniJ0VyAA13OpenURLActionVGGALGtGMR, MEMORY[0x277CE14C0]);
    Section<>.init(content:)();
    v54 = 0;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGMR);
  v58 = v134;
  (*(*(v57 - 8) + 56))(v134, v54, 1, v57);
  v60 = v128;
  v59 = v129;
  v61 = *(v128 + 16);
  v62 = v136;
  v61(v136, v135, v129);
  v63 = v130;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v55, v130, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMR);
  v64 = v131;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v58, v131, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMR);
  v65 = v132;
  v61(v132, v62, v59);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEG_AGy07WorkoutB0027VoiceCompanionSettingsErrorE0VAA013_TraitWritingM0VyAA017ListRowBackgroundsK0VGGSgAA05TupleE0VyAR0no6PickerE0V_AGyAGyAkYGAA01_jktM0VyAA5ColorVSgGGSgtGSgACyAEA1_yAGyA4_AR04HideuV9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_AGyAGyAGyAkA14_PaddingLayoutVGA6_yAA13OpenURLActionVGGAYGtGAEGSgtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGAEG_AGy07WorkoutB0027VoiceCompanionSettingsErrorE0VAA013_TraitWritingM0VyAA017ListRowBackgroundsK0VGGSgAA05TupleE0VyAR0no6PickerE0V_AGyAGyAkYGAA01_jktM0VyAA5ColorVSgGGSgtGSgACyAEA1_yAGyA4_AR04HideuV9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A18_AGyAGyAGyAkA14_PaddingLayoutVGA6_yAA13OpenURLActionVGGAYGtGAEGSgtMR);
  v67 = &v65[v66[12]];
  v68 = v125;
  v69 = v126;
  v70 = v124;
  *v67 = v126;
  *(v67 + 1) = v70;
  *(v67 + 2) = v68;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v63, &v65[v66[16]], &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMR);
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v64, &v65[v66[20]], &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMR);
  outlined copy of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v58, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMR);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v133, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMR);
  v71 = *(v60 + 8);
  v71(v135, v59);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v64, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAIyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGG07WorkoutB004HidemN9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AvIyAIyAIyAkA14_PaddingLayoutVGAA012_EnvironmentpkL0VyAA13OpenURLActionVGGAPGtGAEGSgMR);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v63, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGSgMR);
  v72 = outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(v69, v70, v68);
  return (v71)(v136, v59, v72);
}

uint64_t closure #1 in VoiceCompanionSettingsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoiceCompanionSettingsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  if (VoiceCompanionSettingsView.toggleIsActive.getter())
  {
    v28 = type metadata accessor for VoiceCompanionSettingsView;
    outlined init with copy of WorkoutVoicePickerView(a1, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceCompanionSettingsView);
    type metadata accessor for MainActor();
    v11 = static MainActor.shared.getter();
    v29 = v10;
    v30 = a2;
    v12 = v8;
    v13 = v7;
    v14 = a1;
    v15 = v11;
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    v19 = v14;
    v7 = v13;
    v8 = v12;
    v10 = v29;
    outlined init with take of VoiceCompanionSettingsView(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    outlined init with copy of WorkoutVoicePickerView(v19, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v20 = static MainActor.shared.getter();
    a2 = v30;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = MEMORY[0x277D85700];
    outlined init with take of VoiceCompanionSettingsView(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v16);
    Binding.init(get:set:)();
  }

  else
  {
    v31 = 0;
    static Binding.constant(_:)();
  }

  Toggle.init(isOn:label:)();
  v22 = VoiceCompanionSettingsView.toggleIsActive.getter();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v22 & 1) == 0;
  (*(v8 + 32))(a2, v10, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMR);
  v26 = (a2 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_17;
  v26[2] = v24;
  return result;
}

void closure #1 in closure #1 in VoiceCompanionSettingsView.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  Image.init(_internalSystemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v4._countAndFlagsBits = 8224;
  v4._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v27._object = 0xE000000000000000;
  v6._object = 0x800000020CBA1960;
  v6._countAndFlagsBits = 0xD000000000000011;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v27);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v16 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v17._object = 0x800000020CBA1960;
  v17._countAndFlagsBits = 0xD000000000000011;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v28);

  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.accessibilityLabel<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  outlined consume of Text.Storage(v11, v13, v15 & 1);

  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
}

void closure #2 in VoiceCompanionSettingsView.body.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v89 = a1;
  v92 = a2;
  v2 = type metadata accessor for VoiceCompanionSettingsView(0);
  v86 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v87 = v3;
  v88 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMR);
  MEMORY[0x28223BE20](v90);
  v91 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v78 - v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v98._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CBA1870;
  v10._countAndFlagsBits = 0xD00000000000002ELL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v98._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v98);

  v97 = v12;
  v93 = lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.footnote.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;

  outlined consume of Text.Storage(v13, v15, v17 & 1);

  static Color.gray.getter();
  v95 = Text.foregroundColor(_:)();
  v85 = v23;
  v84 = v24;
  v94 = v25;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  v97._countAndFlagsBits = static Color.clear.getter();
  v83 = AnyView.init<A>(_:)();
  v26 = WorkoutUIBundle.super.isa;
  v99._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000038;
  v27._object = 0x800000020CBA18A0;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v99._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v99);

  v97 = v30;
  v31 = Text.init<A>(_:)();
  v33 = v32;
  LOBYTE(v20) = v34;
  static Font.footnote.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;

  outlined consume of Text.Storage(v31, v33, v20 & 1);

  static Color.gray.getter();
  v79 = Text.foregroundColor(_:)();
  v80 = v40;
  v81 = v41;
  v82 = v42;

  outlined consume of Text.Storage(v35, v37, v39 & 1);

  v97._countAndFlagsBits = static Color.clear.getter();
  v93 = AnyView.init<A>(_:)();
  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v45 = v44;
  LOBYTE(v20) = v46;
  static Font.footnote.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  LOBYTE(v35) = v50;
  v52 = v51;

  outlined consume of Text.Storage(v43, v45, v20 & 1);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v35 & 1;
  LOBYTE(v97._countAndFlagsBits) = v35 & 1;
  v96 = 0;
  KeyPath = swift_getKeyPath();
  v63 = v88;
  outlined init with copy of WorkoutVoicePickerView(v89, v88, type metadata accessor for VoiceCompanionSettingsView);
  v64 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v65 = swift_allocObject();
  outlined init with take of VoiceCompanionSettingsView(v63, v65 + v64);
  v66 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGMR) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);
  OpenURLAction.init(handler:)();
  *v66 = KeyPath;
  *v7 = v47;
  *(v7 + 1) = v49;
  v7[16] = v61;
  *(v7 + 3) = v52;
  v7[32] = v45;
  *(v7 + 5) = v54;
  *(v7 + 6) = v56;
  *(v7 + 7) = v58;
  *(v7 + 8) = v60;
  v7[72] = 0;
  v97._countAndFlagsBits = static Color.clear.getter();
  v67 = AnyView.init<A>(_:)();
  v68 = v91;
  *&v7[*(v90 + 9)] = v67;
  LOBYTE(KeyPath) = v84 & 1;
  LOBYTE(v97._countAndFlagsBits) = v84 & 1;
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v7, v68, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMR);
  v69 = v92;
  v70 = v94;
  v71 = v95;
  v72 = v85;
  *v92 = v95;
  v69[1] = v72;
  *(v69 + 16) = KeyPath;
  v73 = v83;
  v69[3] = v70;
  v69[4] = v73;
  v74 = v79;
  v75 = v80;
  v69[5] = v79;
  v69[6] = v75;
  LODWORD(v89) = v81 & 1;
  *(v69 + 56) = v81 & 1;
  v90 = v7;
  v76 = v93;
  v69[8] = v82;
  v69[9] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundF3KeyVGG07WorkoutB004HideiJ9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ApCyACyACyAeA14_PaddingLayoutVGAA012_EnvironmentlgH0VyAA13OpenURLActionVGGAJGtMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundF3KeyVGG07WorkoutB004HideiJ9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ApCyACyACyAeA14_PaddingLayoutVGAA012_EnvironmentlgH0VyAA13OpenURLActionVGGAJGtMR);
  outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(v68, v69 + *(v77 + 64), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMR);
  outlined copy of Text.Storage(v71, v72, KeyPath);

  LOBYTE(v71) = v89;
  outlined copy of Text.Storage(v74, v75, v89);

  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v90, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMR);
  outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(v68, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGGAA06_TraitjK0VyAA017ListRowBackgroundnI0VGGMR);
  outlined consume of Text.Storage(v74, v75, v71);

  outlined consume of Text.Storage(v95, v72, v97._countAndFlagsBits);
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

void closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter()
{
  v0 = type metadata accessor for WithCurrentHostingControllerAction();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x20F30BAD0](0xD000000000000027, 0x800000020CBA1930, v2);
  v6 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v6)
  {
    v7 = VoiceCompanionSettingsView.withCurrentHostingController.getter(v4);
    MEMORY[0x28223BE20](v7);
    *(&v8 - 2) = v6;
    WithCurrentHostingControllerAction.callAsFunction(_:)();
    (*(v1 + 8))(v4, v0);
    static OpenURLAction.Result.handled.getter();
  }

  else
  {

    MEMORY[0x282130C38]();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMR);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR, MEMORY[0x277CDF068]);
    lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<Text>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

double outlined copy of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(void *a1, char a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined copy of Environment<WorkoutVoiceAvailabilityProvider>.Content(a1, a2 & 1);
  }

  return result;
}

double outlined consume of ModifiedContent<VoiceCompanionSettingsErrorView, _TraitWritingModifier<ListRowBackgroundTraitKey>>?(void *a1, char a2, uint64_t a3)
{
  if (a3 != 1)
  {
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(a1, a2 & 1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double outlined copy of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t outlined destroy of WorkoutVoicePickerView(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoicePickerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e11VoicePickerD0V_AA15ModifiedContentVyAHyAA4TextVAA21_TraitWritingModifierVyAA017ListRowBackgroundK3KeyVGGAA012_EnvironmentqlM0VyAA5ColorVSgGGSgtGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of WorkoutVoicePickerView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of VoiceCompanionSettingsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCompanionSettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter()
{
  type metadata accessor for VoiceCompanionSettingsView(0);

  closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter();
}

uint64_t outlined destroy of Section<EmptyView, TupleView<(ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, HideListRowSeparator>, ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<OpenURLAction>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id partial apply for closure #1 in closure #1 in closure #2 in VoiceCompanionSettingsView.body.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

uint64_t outlined init with copy of TupleView<(WorkoutVoicePickerView, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>?)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for VoiceCompanionSettingsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in VoiceCompanionSettingsView.bindingForToggle.getter(v4, a1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for VoiceCompanionSettingsView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA34WithCurrentHostingControllerActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = type metadata accessor for InferenceClient();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter(char *a1)
{
  v3 = *(type metadata accessor for VoiceCompanionSettingsView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in VoiceCompanionSettingsView.bindingForToggle.getter(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type Toggle<Text> and conformance Toggle<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t WorkoutAssetLoadStatus.description.getter(uint64_t a1, __n128 a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x646575657571;
      case 1:
        return 0x676E6964616F6CLL;
      case 2:
        return 0x6574656C706D6F63;
    }

LABEL_16:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6564616F4C746F6ELL;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E75;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAssetLoadStatus()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAssetLoadStatus(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutAssetLoadStatus@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized WorkoutAssetLoadStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized WorkoutAssetLoadStatus.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus()
{
  result = lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus;
  if (!lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAssetLoadStatus and conformance WorkoutAssetLoadStatus);
  }

  return result;
}

uint64_t WorkoutBuddySummaryTitleView.init(state:isWorkoutConfiguredWithWorkoutBuddy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = a3 + *(type metadata accessor for WorkoutBuddySummaryTitleView(0) + 20);
  *v13 = a2;
  *(v13 + 1) = 0;
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  v14(v9, v12, v6);
  State.init(wrappedValue:)();
  v15 = *(v7 + 8);
  v15(a1, v6);
  return (v15)(v12, v6);
}

uint64_t type metadata accessor for WorkoutBuddySummaryTitleView(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutBuddySummaryTitleView;
  if (!type metadata singleton initialization cache for WorkoutBuddySummaryTitleView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutBuddySummaryTitleView.init(isWorkoutConfiguredWithWorkoutBuddy:isWorkoutBuddyMuted:isWorkoutBuddyHeadphonesOff:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v21 = &v27 - v19;
  if (a3)
  {
    (*(v9 + 104))(&v27 - v19, *MEMORY[0x277D7DB88], v8, v20);
  }

  else
  {
    if (a2)
    {
      v22 = MEMORY[0x277D7DB90];
    }

    else
    {
      v22 = MEMORY[0x277D7DB98];
    }

    (*(v9 + 104))(&v27 - v19, *v22, v8, v20);
  }

  v23 = *(v9 + 16);
  v23(v17, v21, v8);
  v24 = a4 + *(type metadata accessor for WorkoutBuddySummaryTitleView(0) + 20);
  *v24 = a1 & 1;
  *(v24 + 1) = 0;
  v23(v14, v17, v8);
  v23(v11, v14, v8);
  State.init(wrappedValue:)();
  v25 = *(v9 + 8);
  v25(v14, v8);
  v25(v17, v8);
  return (v25)(v21, v8);
}

uint64_t WorkoutBuddySummaryTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutBuddySummaryTitleView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  WorkoutBuddySummaryTitleView.icon()(a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVSgAA16_FixedSizeLayoutVGMd, "Ԁ\t") + 36)) = 257;
  v7 = [objc_opt_self() defaultCenter];
  v8 = static NSNotificationName.workoutBuddyStateChanged.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd, &_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMR);
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of WorkoutBuddySummaryTitleView(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = outlined init with take of WorkoutBuddySummaryTitleView(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for WorkoutBuddySummaryTitleView);
  v13 = (a1 + *(v9 + 56));
  *v13 = partial apply for closure #1 in WorkoutBuddySummaryTitleView.body.getter;
  v13[1] = v11;
  return result;
}

uint64_t closure #1 in WorkoutBuddySummaryTitleView.body.getter(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v54 = type metadata accessor for Logger();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMd, &_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v53 = &v46 - v22;
  v23 = Notification.userInfo.getter();
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  v55 = static WorkoutBuddyStatePublisher.State.stateDidChangeNotificationUserInfoStateKey.getter();
  v56 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(v24 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v57), (v27 & 1) == 0))
  {

    outlined destroy of AnyHashable(v57);
LABEL_9:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v26, &v58);
  outlined destroy of AnyHashable(v57);

  if (!*(&v59 + 1))
  {
LABEL_10:
    _sypSgWOhTm_1(&v58, &_sypSgMd, &_sypSgMR);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }

  v28 = swift_dynamicCast();
  (*(v12 + 56))(v10, v28 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v29 = v53;
    (*(v12 + 32))(v53, v10, v11);
    static WOLog.workoutVoice.getter();
    v49 = *(v12 + 16);
    v49(v20, v29, v11);
    v30 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v48))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v47 = v30;
      v32 = WorkoutBuddyStatePublisher.State.rawValue.getter();
      v33 = *(v12 + 8);
      v50 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51 = v33;
      v33(v20, v11);
      *(v31 + 4) = v32;
      v30 = v47;
      _os_log_impl(&dword_20C66F000, v47, v48, "Got Notified of new workout buddy state: %ld. Updating Indicator", v31, 0xCu);
      v34 = v31;
      v29 = v53;
      MEMORY[0x20F30E080](v34, -1, -1);
    }

    else
    {
      v39 = *(v12 + 8);
      v50 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51 = v39;
      v39(v20, v11);
    }

    (*(v2 + 8))(v4, v54);
    v40 = v49;
    v49(v17, v29, v11);
    v40(v14, v17, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd, &_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMR);
    v41 = v52;
    State.wrappedValue.setter();
    v42 = v51;
    v51(v17, v11);
    (*(v12 + 104))(v17, *MEMORY[0x277D7DBA8], v11);
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v42(v17, v11);
    if (v57[0] == v58)
    {
      v43 = v41 + *(type metadata accessor for WorkoutBuddySummaryTitleView(0) + 20);
      v44 = *v43;
      v45 = *(v43 + 8);
      LOBYTE(v57[0]) = v44;
      v57[1] = v45;
      LOBYTE(v58) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.setter();
    }

    return (v42)(v29, v11);
  }

LABEL_11:
  _sypSgWOhTm_1(v10, &_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMd, &_s11WorkoutCore0A19BuddyStatePublisherC0D0OSgMR);
  static WOLog.workoutVoice.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20C66F000, v35, v36, "Got Notified of new workout buddy state but could not cast. Ignoring update", v37, 2u);
    MEMORY[0x20F30E080](v37, -1, -1);
  }

  return (*(v2 + 8))(v7, v54);
}

uint64_t WorkoutBuddySummaryTitleView.icon()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WorkoutBuddyStatusView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(type metadata accessor for WorkoutBuddySummaryTitleView(0) + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  v12[16] = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v12[15] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd, &_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMR);
    State.wrappedValue.getter();
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    outlined init with take of WorkoutBuddySummaryTitleView(v6, a1, type metadata accessor for WorkoutBuddyStatusView);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v4 + 56))(a1, v10, 1, v3);
}

uint64_t outlined init with copy of WorkoutBuddySummaryTitleView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutBuddySummaryTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for View.body.getter in conformance WorkoutBuddySummaryTitleView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  WorkoutBuddySummaryTitleView.icon()(a2);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVSgAA16_FixedSizeLayoutVGMd, "Ԁ\t") + 36)) = 257;
  v7 = [objc_opt_self() defaultCenter];
  v8 = static NSNotificationName.workoutBuddyStateChanged.getter();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd, &_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMR);
  NSNotificationCenter.publisher(for:object:)();

  outlined init with copy of WorkoutBuddySummaryTitleView(v3, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = outlined init with take of WorkoutBuddySummaryTitleView(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for WorkoutBuddySummaryTitleView);
  v13 = (a2 + *(v9 + 56));
  *v13 = closure #1 in WorkoutBuddySummaryTitleView.body.getterpartial apply;
  v13[1] = v11;
  return result;
}

void type metadata completion function for WorkoutBuddySummaryTitleView(uint64_t a1)
{
  type metadata accessor for State<WorkoutBuddyStatePublisher.State>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for State<WorkoutBuddyStatePublisher.State>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for State<WorkoutBuddyStatePublisher.State>)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for State<WorkoutBuddyStatePublisher.State>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMd, &_s7SwiftUI16SubscriptionViewVySo20NSNotificationCenterC10FoundationE9PublisherVAA15ModifiedContentVy07WorkoutB00k11BuddyStatusD0VSgAA16_FixedSizeLayoutVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<WorkoutBuddyStatusView?, _FixedSizeLayout>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_74()
{
  v1 = *(type metadata accessor for WorkoutBuddySummaryTitleView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMd, &_s7SwiftUI5StateVy11WorkoutCore0d5BuddyC9PublisherCABOGMR);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WorkoutBuddySummaryTitleView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutBuddySummaryTitleView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in WorkoutBuddySummaryTitleView.body.getter(a1, v4);
}

uint64_t _sypSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State()
{
  result = lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State;
  if (!lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State);
  }

  return result;
}

uint64_t outlined init with take of WorkoutBuddySummaryTitleView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI8GridItemV_Tt1g5(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = type metadata accessor for GridItem();
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(v6 + v8, v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = v6 + v11 + v8;
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v13 = type metadata accessor for GridItem();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}