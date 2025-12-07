uint64_t View.journalingSuggestionsPicker(isPresented:journalConfig:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v32 = a7;
  v14 = type metadata accessor for SuggestionPickerModifier(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 36);
  v19 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = v14[10];
  outlined init with copy of JournalConfiguration(a4, v17 + v20, type metadata accessor for JournalConfiguration);
  v21 = type metadata accessor for JournalConfiguration(0);
  (*(*(v21 - 8) + 56))(v17 + v20, 0, 1, v21);
  *(v17 + v14[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *(v17 + v14[7]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v22 = v17 + v14[5];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v17 + v14[8];
  *v23 = a1;
  *(v23 + 1) = a2;
  v23[16] = a3;
  v24 = (v17 + v14[11]);
  *v24 = a5;
  v24[1] = a6;
  v25 = v14[12];
  v26 = objc_allocWithZone(type metadata accessor for EmbeddedPicker());

  *(v17 + v25) = [v26 init];
  v27 = v14[13];
  *(v17 + v27) = [objc_allocWithZone(type metadata accessor for TransparentNotifierViewController(0)) init];
  v28 = v17 + v14[14];
  *v28 = implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager;
  *(v28 + 1) = 0;
  v28[16] = 0;
  UUID.init()();
  v29 = v17 + v14[16];
  v34 = 0;
  State.init(wrappedValue:)();
  v30 = v36;
  *v29 = v35;
  *(v29 + 1) = v30;
  MEMORY[0x23EE6FF10](v17, v32, v14, v33);
  return outlined destroy of SuggestionPickerModifier(v17, type metadata accessor for SuggestionPickerModifier);
}

uint64_t SuggestionPickerModifier.horizontalClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SuggestionPickerModifier.modifierContent(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v83 = type metadata accessor for ScenePhase();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for EnvironmentValues();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SuggestionPickerModifier(0);
  v89 = v6;
  v86 = *(v6 - 8);
  v85 = *(v86 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
  MEMORY[0x28223BE20](v84);
  v13 = (&v67 - v12);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
  MEMORY[0x28223BE20](v75);
  v87 = &v67 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_MR);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v88 = &v67 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
  MEMORY[0x28223BE20](v78);
  v79 = &v67 - v16;
  *v13 = static Alignment.center.getter();
  v13[1] = v17;
  v73 = v13;
  v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA01_D16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerI033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedJ0VyARyAL34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA06_FrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA01_D16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerI033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedJ0VyARyAL34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA06_FrameG0VGtGGMR) + 44);
  v19 = *(v2 + *(v6 + 52));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v72 = v96;
  v20 = v98;
  v71 = v100;
  v70 = v101;
  v103 = v97;
  v102 = v99;
  v21 = *(v9 + 16);
  v21(v11, a1, v8);
  LOBYTE(v13) = v103;
  LOBYTE(a1) = v102;
  v21(v18, v11, v8);
  v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedE0VyAJyAD34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtMd, &_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedE0VyAJyAD34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtMR) + 48)];
  *v22 = v19;
  *(v22 + 1) = 0;
  *(v22 + 2) = v72;
  v22[24] = v13;
  *(v22 + 4) = v20;
  v22[40] = a1;
  v23 = v70;
  *(v22 + 6) = v71;
  *(v22 + 7) = v23;
  v24 = v90;
  v25 = (*(v9 + 8))(v11, v8);
  LOBYTE(v91) = (*((*MEMORY[0x277D85000] & *v19) + 0x58))(v25) & 1;
  v26 = v74;
  outlined init with copy of JournalConfiguration(v24, v74, type metadata accessor for SuggestionPickerModifier);
  v27 = *(v86 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = v28 + v85;
  v30 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v26, v30 + v28, type metadata accessor for SuggestionPickerModifier);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ZStack<TupleView<(_ViewModifier_Content<SuggestionPickerModifier>, ModifiedContent<ModifiedContent<EmbeddedJSPickerTransparentWrapper, _OpacityEffect>, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR, MEMORY[0x277CE11A8]);
  v31 = v87;
  v32 = v73;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of URL?(v32, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
  outlined init with copy of JournalConfiguration(v24, v26, type metadata accessor for SuggestionPickerModifier);
  v85 = v29;
  v33 = swift_allocObject();
  v86 = v28;
  v34 = v33 + v28;
  v35 = v26;
  outlined init with take of SuggestionPickerModifier(v26, v34, type metadata accessor for SuggestionPickerModifier);
  v36 = v75;
  v37 = &v31[*(v75 + 36)];
  *v37 = partial apply for closure #3 in SuggestionPickerModifier.modifierContent(content:);
  v37[1] = v33;
  v37[2] = 0;
  v37[3] = 0;
  v38 = v24 + *(v89 + 20);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    v40 = v39;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v67;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v39, 0);
    (*(v68 + 8))(v42, v69);
    v40 = v91;
    v39 = v91;
  }

  v91 = v39;
  v72 = type metadata accessor for SuggestionPickerModifier;
  outlined init with copy of JournalConfiguration(v24, v35, type metadata accessor for SuggestionPickerModifier);
  v43 = swift_allocObject();
  v73 = v27;
  v84 = type metadata accessor for SuggestionPickerModifier;
  v44 = v86;
  outlined init with take of SuggestionPickerModifier(v35, v43 + v86, type metadata accessor for SuggestionPickerModifier);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
  v70 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v45 = lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?();
  v46 = v87;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of URL?(v46, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
  v47 = v90;
  v48 = v90 + *(v89 + 32);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v48) = *(v48 + 16);
  v91 = v49;
  v92 = v50;
  LOBYTE(v93) = v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v95, v51);
  v52 = v72;
  outlined init with copy of JournalConfiguration(v47, v35, v72);
  v53 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v35, v53 + v44, v84);
  v91 = v36;
  v92 = v71;
  v93 = v70;
  v94 = v45;
  swift_getOpaqueTypeConformance2();
  v54 = v79;
  v55 = v77;
  v56 = v88;
  View.onChange<A>(of:initial:_:)();

  (*(v76 + 8))(v56, v55);
  v57 = v90;
  v58 = v52;
  outlined init with copy of JournalConfiguration(v90, v35, v52);
  v59 = swift_allocObject();
  v60 = v86;
  v61 = v84;
  outlined init with take of SuggestionPickerModifier(v35, v59 + v86, v84);
  v62 = (v54 + *(v78 + 36));
  *v62 = 0;
  v62[1] = 0;
  v62[2] = partial apply for closure #6 in SuggestionPickerModifier.modifierContent(content:);
  v62[3] = v59;
  v63 = v80;
  specialized Environment.wrappedValue.getter(v80);
  outlined init with copy of JournalConfiguration(v57, v35, v58);
  v64 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v35, v64 + v60, v61);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v65 = v83;
  View.onChange<A>(of:initial:_:)();

  (*(v82 + 8))(v63, v65);
  return outlined destroy of URL?(v54, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
}

void closure #2 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = v55 - v8;
  v61 = type metadata accessor for JournalConfiguration(0);
  v9 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v55 - v15;
  v17 = type metadata accessor for SuggestionPickerModifier(0);
  v18 = MEMORY[0x28223BE20](v17);
  v58 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v55 - v23;
  v60 = *a2;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.picker);
  outlined init with copy of JournalConfiguration(a3, v24, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(a3, v22, type metadata accessor for SuggestionPickerModifier);
  v55[1] = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v27, v28))
  {
    outlined destroy of SuggestionPickerModifier(v22, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
    goto LABEL_11;
  }

  v55[0] = a3;
  v29 = swift_slowAlloc();
  *v29 = 67109376;
  v30 = &v24[v17[8]];
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v30) = v30[16];
  v63 = v31;
  v64 = v32;
  v65 = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v62, v33);
  v34 = v62;
  outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
  *(v29 + 4) = v34;
  *(v29 + 8) = 1024;
  outlined init with copy of URL?(&v22[v17[10]], v16, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v9 + 48))(v16, 1, v61) == 1)
  {
    outlined destroy of URL?(v16, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
LABEL_9:
    v36 = 0;
    goto LABEL_10;
  }

  v35 = v16[8];
  outlined destroy of SuggestionPickerModifier(v16, type metadata accessor for JournalConfiguration);
  if ((v35 & 1) == 0)
  {
    goto LABEL_9;
  }

  v36 = 1;
LABEL_10:
  outlined destroy of SuggestionPickerModifier(v22, type metadata accessor for SuggestionPickerModifier);
  *(v29 + 10) = v36;
  _os_log_impl(&dword_238A75000, v27, v28, "SuggestionPickerModifier viewHasAppeared, presenting=%{BOOL}d, presentFullScreen=%{BOOL}d", v29, 0xEu);
  MEMORY[0x23EE71510](v29, -1, -1);
  a3 = v55[0];
LABEL_11:

  if (!v60)
  {
    return;
  }

  outlined init with copy of URL?(a3 + v17[10], v14, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v9 + 48))(v14, 1, v61) == 1)
  {
    outlined destroy of URL?(v14, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  else
  {
    v37 = v59;
    outlined init with take of SuggestionPickerModifier(v14, v59, type metadata accessor for JournalConfiguration);
    v38 = *(v37 + 8);
    outlined destroy of SuggestionPickerModifier(v37, type metadata accessor for JournalConfiguration);
    if (v38 != 1)
    {
      return;
    }
  }

  SuggestionPickerModifier.activatePicker()();
  v39 = (a3 + v17[8]);
  v40 = *v39;
  v41 = v39[1];
  LOBYTE(v39) = *(v39 + 16);
  v63 = v40;
  v64 = v41;
  v65 = v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v62);
  if (v62 == 1)
  {
    v43 = v56;
    outlined init with copy of URL?(a3 + v17[9], v56, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    v44 = type metadata accessor for JournalingSuggestionPresentationToken(0);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      outlined destroy of URL?(v43, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v45 = type metadata accessor for UUID();
      v46 = v57;
      (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
    }

    else
    {
      v46 = v57;
      outlined init with copy of URL?(v43, v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of SuggestionPickerModifier(v43, type metadata accessor for JournalingSuggestionPresentationToken);
    }

    v47 = v58;
    SuggestionPickerModifier.updatePresentation(for:)(v46);
    outlined destroy of URL?(v46, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of JournalConfiguration(a3, v47, type metadata accessor for SuggestionPickerModifier);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      v51 = v47 + v17[8];
      v52 = *v51;
      v53 = *(v51 + 8);
      LOBYTE(v51) = *(v51 + 16);
      v63 = v52;
      v64 = v53;
      v65 = v51;
      MEMORY[0x23EE6FFD0](&v62, v42);
      v54 = v62;
      outlined destroy of SuggestionPickerModifier(v47, type metadata accessor for SuggestionPickerModifier);
      *(v50 + 4) = v54;
      _os_log_impl(&dword_238A75000, v48, v49, "SuggestionPickerModifier viewHasAppeared shouldPresentRightAway, presenting=%{BOOL}d", v50, 8u);
      MEMORY[0x23EE71510](v50, -1, -1);
    }

    else
    {
      outlined destroy of SuggestionPickerModifier(v47, type metadata accessor for SuggestionPickerModifier);
    }
  }
}

void SuggestionPickerModifier.activatePicker()()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SuggestionPickerModifier(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v7 == 1)
  {
    v8 = v6;
    v9 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v6, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v23;
    if (!v23)
    {
      return;
    }
  }

  v22 = v2;

  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.picker);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_238A75000, v12, v13, "Scene session non nil, activating the sheet manager", v14, 2u);
    MEMORY[0x23EE71510](v14, -1, -1);
  }

  type metadata accessor for SuggestionSheetUIManager(0);
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
  v15 = StateObject.wrappedValue.getter();
  if (v7)
  {
    v16 = v6;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v21 = v1;
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v6, 0);
    (*(v22 + 8))(v4, v21);
    v6 = v23;
  }

  v18 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v15) + 0xF0))(v6);

  v19 = StateObject.wrappedValue.getter();
  (*((*v18 & *v19) + 0x2D8))();
}

void SuggestionPickerModifier.updatePresentation(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v104 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v104 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v113 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SuggestionPickerModifier(0);
  v115 = *(v14 - 1);
  v15 = *(v115 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v117 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v104 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v104 - v23;
  v25 = *(v22 + 32);
  v118 = v1;
  v26 = v1 + v25;
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  v120[0] = v27;
  v120[1] = v28;
  v121 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v119, v29);
  if (v119 == 1)
  {
    v108 = v12;
    v109 = v11;
    v30 = v5;
    v31 = a1;
    if (one-time initialization token for picker != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    v33 = __swift_project_value_buffer(v32, static Logger.picker);
    v34 = v118;
    outlined init with copy of JournalConfiguration(v118, v24, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v34, v21, type metadata accessor for SuggestionPickerModifier);
    v111 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v112 = v31;
    if (v37)
    {
      v105 = v36;
      v106 = v35;
      v38 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v120[0] = v104;
      v39 = v38;
      *v38 = 136315394;
      v40 = &v24[v14[5]];
      v41 = *v40;
      LODWORD(v40) = v40[8];
      v110 = v30;
      v107 = v10;
      if (v40 == 1)
      {
        v42 = v41;
        v43 = v109;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v52 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v53 = v113;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UISceneSession?>.Content(v41, 0);
        v54 = v53;
        v43 = v109;
        (*(v108 + 8))(v54, v109);
        v41 = v119;
      }

      v55 = v39;
      if (v41 && (v56 = [v41 scene], v41, v56))
      {
        v57 = [v56 _FBSScene];

        v58 = [v57 identityToken];
        v59 = [v58 stringRepresentation];

        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v62 = 0xE300000000000000;
        v60 = 7104878;
      }

      outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v120);

      *(v55 + 1) = v63;
      *(v55 + 6) = 2080;
      v64 = &v21[v14[5]];
      v65 = *v64;
      if (v64[8] == 1)
      {
        v66 = v65;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v67 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v68 = v113;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UISceneSession?>.Content(v65, 0);
        (*(v108 + 8))(v68, v43);
        v65 = v119;
      }

      v51 = v110;
      v50 = v107;
      v69 = v105;
      v70 = 7104878;
      if (v65)
      {
        v71 = [v65 scene];

        if (v71)
        {
          [v71 _referenceBounds];

          v70 = CGRect.debugDescription.getter();
          v73 = v72;
        }

        else
        {
          v73 = 0xE300000000000000;
          v70 = 7104878;
        }
      }

      else
      {
        v73 = 0xE300000000000000;
      }

      outlined destroy of SuggestionPickerModifier(v21, type metadata accessor for SuggestionPickerModifier);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, v120);

      *(v55 + 14) = v74;
      v75 = v69;
      v76 = v106;
      _os_log_impl(&dword_238A75000, v106, v75, "Presenting picker, %s, bounds=%s", v55, 0x16u);
      v77 = v104;
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v77, -1, -1);
      MEMORY[0x23EE71510](v55, -1, -1);
    }

    else
    {

      outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
      outlined destroy of SuggestionPickerModifier(v21, type metadata accessor for SuggestionPickerModifier);
      v50 = v10;
      v51 = v30;
    }

    v78 = v117;
    outlined init with copy of JournalConfiguration(v118, v117, type metadata accessor for SuggestionPickerModifier);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v120[0] = v82;
      *v81 = 136315138;
      v83 = v114;
      outlined init with copy of URL?(v78 + v14[9], v114, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v84 = type metadata accessor for JournalingSuggestionPresentationToken(0);
      if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
      {
        v85 = v83;
        v86 = 7104878;
        outlined destroy of URL?(v85, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
        v87 = 0xE300000000000000;
      }

      else
      {
        v110 = v51;
        outlined init with copy of URL?(v83, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of SuggestionPickerModifier(v83, type metadata accessor for JournalingSuggestionPresentationToken);
        v88 = type metadata accessor for UUID();
        v89 = *(v88 - 8);
        if ((*(v89 + 48))(v50, 1, v88) == 1)
        {
          v86 = 7104878;
          outlined destroy of URL?(v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v87 = 0xE300000000000000;
        }

        else
        {
          v86 = UUID.uuidString.getter();
          v90 = v50;
          v87 = v91;
          (*(v89 + 8))(v90, v88);
        }

        v51 = v110;
        v78 = v117;
      }

      outlined destroy of SuggestionPickerModifier(v78, type metadata accessor for SuggestionPickerModifier);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v120);

      *(v81 + 4) = v92;
      _os_log_impl(&dword_238A75000, v79, v80, "Presentation token notificationSuggestionID: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x23EE71510](v82, -1, -1);
      MEMORY[0x23EE71510](v81, -1, -1);
    }

    else
    {

      outlined destroy of SuggestionPickerModifier(v78, type metadata accessor for SuggestionPickerModifier);
    }

    v93 = v118;
    type metadata accessor for SuggestionSheetUIManager(0);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
    v94 = StateObject.wrappedValue.getter();
    outlined init with copy of URL?(v93 + v14[10], v51, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v95 = v51;
    v96 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v94) + 0xD8))(v95);

    v49 = StateObject.wrappedValue.getter();
    v97 = v14[15];
    v98 = (v93 + v14[11]);
    v99 = *v98;
    v100 = v98[1];
    v101 = v116;
    outlined init with copy of JournalConfiguration(v93, v116, type metadata accessor for SuggestionPickerModifier);
    v102 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v103 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v101, v103 + v102, type metadata accessor for SuggestionPickerModifier);
    (*((*v96 & *v49) + 0x2E0))(v93 + v97, v112, v99, v100, partial apply for closure #1 in SuggestionPickerModifier.updatePresentation(for:), v103);
  }

  else
  {
    if (one-time initialization token for picker != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.picker);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_238A75000, v45, v46, "dismissing picker", v47, 2u);
      MEMORY[0x23EE71510](v47, -1, -1);
    }

    v48 = v118;
    type metadata accessor for SuggestionSheetUIManager(0);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
    v49 = StateObject.wrappedValue.getter();
    (*((*MEMORY[0x277D85000] & *v49) + 0x2F8))(v48 + v14[15], 0);
  }
}

void closure #3 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - v5;
  v53 = type metadata accessor for JournalConfiguration(0);
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = type metadata accessor for SuggestionPickerModifier(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.picker);
  outlined init with copy of JournalConfiguration(a1, v20, type metadata accessor for SuggestionPickerModifier);
  v54 = a1;
  outlined init with copy of JournalConfiguration(a1, v18, type metadata accessor for SuggestionPickerModifier);
  v52 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v23, v24))
  {
    outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v20, type metadata accessor for SuggestionPickerModifier);
    v31 = v53;
    goto LABEL_11;
  }

  v49 = v8;
  v25 = swift_slowAlloc();
  *v25 = 67109376;
  v26 = &v20[v15[8]];
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v26) = v26[16];
  v56 = v27;
  v57 = v28;
  v58 = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v55, v29);
  v30 = v55;
  outlined destroy of SuggestionPickerModifier(v20, type metadata accessor for SuggestionPickerModifier);
  *(v25 + 4) = v30;
  *(v25 + 8) = 1024;
  outlined init with copy of URL?(&v18[v15[10]], v14, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v31 = v53;
  if ((*(v6 + 48))(v14, 1, v53) == 1)
  {
    outlined destroy of URL?(v14, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
LABEL_9:
    v33 = 0;
    goto LABEL_10;
  }

  v32 = v14[8];
  outlined destroy of SuggestionPickerModifier(v14, type metadata accessor for JournalConfiguration);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  v33 = 1;
LABEL_10:
  outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for SuggestionPickerModifier);
  *(v25 + 10) = v33;
  _os_log_impl(&dword_238A75000, v23, v24, "SuggestionPickerModifier onAppear, wait for viewDidAppear, presenting=%{BOOL}d, presentFullScreen=%{BOOL}d", v25, 0xEu);
  MEMORY[0x23EE71510](v25, -1, -1);
  v8 = v49;
LABEL_11:

  v34 = v54;
  SuggestionPickerModifier.activatePicker()();
  outlined init with copy of URL?(v34 + v15[10], v12, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v6 + 48))(v12, 1, v31) == 1)
  {
    outlined destroy of URL?(v12, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_238A75000, v35, v36, "SuggestionPickerModifier onAppear, missing config", v37, 2u);
      MEMORY[0x23EE71510](v37, -1, -1);
    }
  }

  else
  {
    outlined init with take of SuggestionPickerModifier(v12, v8, type metadata accessor for JournalConfiguration);
    v38 = v34 + v15[8];
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v38) = *(v38 + 16);
    v56 = v39;
    v57 = v40;
    v58 = v38;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v55, v41);
    if (v55 == 1 && (v8[8] & 1) == 0)
    {
      v45 = v50;
      outlined init with copy of URL?(v34 + v15[9], v50, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v46 = type metadata accessor for JournalingSuggestionPresentationToken(0);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        outlined destroy of URL?(v45, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
        v47 = type metadata accessor for UUID();
        v48 = v51;
        (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      }

      else
      {
        v48 = v51;
        outlined init with copy of URL?(v45, v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of SuggestionPickerModifier(v45, type metadata accessor for JournalingSuggestionPresentationToken);
      }

      SuggestionPickerModifier.updatePresentation(for:)(v48);
      outlined destroy of URL?(v48, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_238A75000, v42, v43, "SuggestionPickerModifier onAppear, wait for viewDidAppear", v44, 2u);
        MEMORY[0x23EE71510](v44, -1, -1);
      }
    }

    outlined destroy of SuggestionPickerModifier(v8, type metadata accessor for JournalConfiguration);
  }
}

void closure #4 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SuggestionPickerModifier(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.picker);
  outlined init with copy of JournalConfiguration(a1, v11, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(a1, v9, type metadata accessor for SuggestionPickerModifier);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v35 = v3;
    v15 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v15 = 136315394;
    v16 = &v11[*(v6 + 20)];
    v17 = *v16;
    if (v16[8] == 1)
    {
      v18 = v17;
      if (v17)
      {
LABEL_6:
        v19 = [v17 description];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

LABEL_10:
        outlined destroy of SuggestionPickerModifier(v11, type metadata accessor for SuggestionPickerModifier);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v41);

        *(v15 + 4) = v25;
        *(v15 + 12) = 1024;
        v26 = &v9[*(v6 + 32)];
        v27 = *v26;
        v28 = *(v26 + 1);
        LOBYTE(v26) = v26[16];
        v38 = v27;
        v39 = v28;
        v40 = v26;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
        MEMORY[0x23EE6FFD0](&v37, v29);
        v30 = v37;
        outlined destroy of SuggestionPickerModifier(v9, type metadata accessor for SuggestionPickerModifier);
        *(v15 + 14) = v30;
        _os_log_impl(&dword_238A75000, v13, v14, "Scene session changed, %s, presenting=%{BOOL}d", v15, 0x12u);
        v31 = v36;
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x23EE71510](v31, -1, -1);
        MEMORY[0x23EE71510](v15, -1, -1);

        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v33 = v2;
      v23 = static Log.runtimeIssuesLog.getter();
      v34 = v6;
      v24 = v23;
      os_log(_:dso:log:_:_:)();

      v6 = v34;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<UISceneSession?>.Content(v17, 0);
      (*(v35 + 8))(v5, v33);
      v17 = v38;
      if (v38)
      {
        goto LABEL_6;
      }
    }

    v22 = 0xE300000000000000;
    v20 = 7104878;
    goto LABEL_10;
  }

  outlined destroy of SuggestionPickerModifier(v9, type metadata accessor for SuggestionPickerModifier);

  outlined destroy of SuggestionPickerModifier(v11, type metadata accessor for SuggestionPickerModifier);
LABEL_11:
  SuggestionPickerModifier.activatePicker()();
}

uint64_t closure #5 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  SuggestionPickerModifier.activatePicker()();
  v8 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(a1 + *(v8 + 36), v4, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v9 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    outlined destroy of URL?(v4, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  else
  {
    outlined init with copy of URL?(v4, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of SuggestionPickerModifier(v4, type metadata accessor for JournalingSuggestionPresentationToken);
  }

  SuggestionPickerModifier.updatePresentation(for:)(v7);
  return outlined destroy of URL?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void closure #7 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  specialized Environment.wrappedValue.getter(&v16[-v7]);
  (*(v3 + 104))(v6, *MEMORY[0x277CDD6B8], v2);
  v9 = static ScenePhase.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = (a1 + *(type metadata accessor for SuggestionPickerModifier(0) + 32));
    v12 = *v11;
    v13 = v11[1];
    LOBYTE(v11) = *(v11 + 16);
    v18 = v12;
    v19 = v13;
    v20 = v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v17, v14);
    if (v17 == 1)
    {
      type metadata accessor for SuggestionSheetUIManager(0);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
      v15 = StateObject.wrappedValue.getter();
      (*((*MEMORY[0x277D85000] & *v15) + 0x300))();
    }
  }
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetUIManager.shared;

  return v1;
}

void SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v120 = &v112 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v119 = &v112 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v112 - v13;
  MEMORY[0x28223BE20](v12);
  v122 = &v112 - v15;
  v127 = type metadata accessor for SuggestionPickerModifier(0);
  v16 = MEMORY[0x28223BE20](v127);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v112 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v112 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v112 - v25;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.picker);
  outlined init with copy of JournalConfiguration(v1, v26, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v24, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v21, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v18, type metadata accessor for SuggestionPickerModifier);
  v121 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v21;
  v33 = MEMORY[0x277D85000];
  v123 = v14;
  v124 = v5;
  if (v31)
  {
    v113 = v30;
    v114 = v29;
    v115 = v32;
    v116 = v18;
    v117 = v1;
    v34 = MEMORY[0x277D85000];
    v35 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v129 = v112;
    *v35 = 67109890;
    v36 = v127;
    type metadata accessor for SuggestionSheetUIManager(0);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
    v37 = StateObject.wrappedValue.getter();
    v38 = (*((*v34 & *v37) + 0x1C0))();

    v39 = v26;
    v40 = v36;
    outlined destroy of SuggestionPickerModifier(v39, type metadata accessor for SuggestionPickerModifier);
    *(v35 + 4) = v38 & 1;
    *(v35 + 8) = 2080;
    v41 = StateObject.wrappedValue.getter();
    v42 = v34;
    v43 = *v34 & *v41;
    v44 = v122;
    (*(v43 + 400))();

    v46 = v125;
    v45 = v126;
    if ((*(v125 + 48))(v44, 1, v126))
    {
      outlined destroy of URL?(v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v50 = v120;
      (*(v46 + 16))(v120, v44, v45);
      outlined destroy of URL?(v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v51 = v46;
      v48 = UUID.uuidString.getter();
      v52 = v45;
      v47 = v53;
      (*(v51 + 8))(v50, v52);
    }

    v54 = v116;
    v55 = v114;
    outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v129);

    *(v35 + 10) = v56;
    *(v35 + 18) = 1024;
    v57 = v115;
    v58 = v115 + v40[8];
    v59 = *v58;
    v60 = *(v58 + 8);
    LOBYTE(v58) = *(v58 + 16);
    v130 = v59;
    v131 = v60;
    v132 = v58;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v128, v61);
    LODWORD(v56) = v128;
    outlined destroy of SuggestionPickerModifier(v57, type metadata accessor for SuggestionPickerModifier);
    *(v35 + 20) = v56;
    *(v35 + 24) = 1024;
    v62 = v54 + v40[16];
    v63 = *v62;
    v64 = *(v62 + 8);
    LOBYTE(v130) = v63;
    v131 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v65 = v128;
    outlined destroy of SuggestionPickerModifier(v54, type metadata accessor for SuggestionPickerModifier);
    *(v35 + 26) = v65;
    _os_log_impl(&dword_238A75000, v55, v113, "[presentAndUpdateEmbeddedPicker] shouldRequestEmbeddedScene=%{BOOL}d, connectionUUID=%s, presenting=%{BOOL}d, embeddedPickerPresented=%{BOOL}d", v35, 0x1Eu);
    v66 = v112;
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x23EE71510](v66, -1, -1);
    MEMORY[0x23EE71510](v35, -1, -1);

    v49 = v117;
    v33 = v42;
  }

  else
  {
    outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v32, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v26, type metadata accessor for SuggestionPickerModifier);

    outlined destroy of SuggestionPickerModifier(v24, type metadata accessor for SuggestionPickerModifier);
    v40 = v127;
    v49 = v1;
  }

  v67 = *(v49 + v40[14]);
  type metadata accessor for SuggestionSheetUIManager(0);
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
  v68 = StateObject.wrappedValue.getter();
  v69 = (*((*v33 & *v68) + 0x1C0))();

  if ((v69 & 1) == 0)
  {
    goto LABEL_16;
  }

  v122 = v67;
  v70 = StateObject.wrappedValue.getter();
  v71 = v123;
  (*((*v33 & *v70) + 0x190))();

  v73 = v125;
  v72 = v126;
  v120 = *(v125 + 48);
  if ((v120)(v71, 1, v126) == 1)
  {
    outlined destroy of URL?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v40 = v127;
LABEL_16:
    v89 = v49 + v40[8];
    v90 = *v89;
    v91 = *(v89 + 8);
    LOBYTE(v89) = *(v89 + 16);
    v130 = v90;
    v131 = v91;
    v132 = v89;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v129, v92);
    if ((v129 & 1) == 0)
    {
      v93 = StateObject.wrappedValue.getter();
      v94 = (*((*v33 & *v93) + 0x1C0))();

      if ((v94 & 1) == 0)
      {
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_238A75000, v95, v96, "[presentAndUpdateEmbeddedPicker] dismissed embedded picker", v97, 2u);
          v98 = v97;
          v40 = v127;
          MEMORY[0x23EE71510](v98, -1, -1);
        }

        v99 = v49 + v40[16];
        v100 = *v99;
        v101 = *(v99 + 8);
        LOBYTE(v130) = v100;
        v131 = v101;
        LOBYTE(v129) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.wrappedValue.setter();
        v102 = StateObject.wrappedValue.getter();
        v103 = (*((*v33 & *v102) + 0x1F0))();

        if ((v103 & 1) == 0)
        {
          EmbeddedPicker.endSceneHostingSession()();
        }
      }
    }

    return;
  }

  (*(v73 + 32))(v124, v71, v72);
  v74 = v72;
  v75 = v127;
  v76 = v49 + *(v127 + 32);
  v77 = *v76;
  v78 = *(v76 + 8);
  LOBYTE(v76) = *(v76 + 16);
  v130 = v77;
  v131 = v78;
  v132 = v76;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  v80 = v73;
  MEMORY[0x23EE6FFD0](&v129, v79);
  if (v129 != 1)
  {
    (*(v73 + 8))(v124, v74);
    v40 = v75;
    v33 = MEMORY[0x277D85000];
    goto LABEL_16;
  }

  v81 = *(v49 + v75[12]);
  v82 = v119;
  v83 = v124;
  (*(v80 + 16))(v119, v124, v74);
  (*(v80 + 56))(v82, 0, 1, v74);
  v84 = v118;
  outlined init with copy of URL?(v82, v118, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v85 = v74;
  v86 = (v120)(v84, 1, v74);
  v87 = v83;
  if (v86 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v80 + 8))(v84, v85);
  }

  [v81 setupSceneHostingWithConnectionUUID_];

  outlined destroy of URL?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();
  v106 = os_log_type_enabled(v104, v105);
  v107 = v127;
  if (v106)
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_238A75000, v104, v105, "[presentAndUpdateEmbeddedPicker] instantiated embedded picker", v108, 2u);
    MEMORY[0x23EE71510](v108, -1, -1);
  }

  v109 = v49 + *(v107 + 64);
  v110 = *v109;
  v111 = *(v109 + 8);
  LOBYTE(v130) = v110;
  v131 = v111;
  LOBYTE(v129) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  (*(v125 + 8))(v87, v126);
}

uint64_t SuggestionPickerModifier.nonModalEmbeddedPicker()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v21 = type metadata accessor for PresentationBackgroundInteraction();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(v1 + *(type metadata accessor for SuggestionPickerModifier(0) + 48));
  v13 = static Color.clear.getter();
  v14 = static Edge.Set.all.getter();
  v26 = v12;
  v27 = v13;
  v28 = v14;
  static PresentationBackgroundInteraction.enabled.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
  v16 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.presentationBackgroundInteraction(_:)();
  (*(v2 + 8))(v4, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMR);
  type metadata accessor for PresentationDetent();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_238AD9810;
  static PresentationDetent.fraction(_:)();
  static PresentationDetent.large.getter();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  v27 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.presentationDetents(_:)();

  (*(v22 + 8))(v7, v5);
  v26 = v5;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  View.presentationDragIndicator(_:)();
  return (*(v24 + 8))(v11, v19);
}

uint64_t SuggestionPickerModifier.isPad.getter()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  SuggestionPickerModifier.horizontalClass.getter(&v23 - v14);
  (*(v1 + 104))(v13, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  outlined init with copy of URL?(v15, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of URL?(v13, &v6[v16], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    outlined init with copy of URL?(v6, v10, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v20, v0);
      outlined destroy of URL?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of URL?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v21(v10, v0);
      outlined destroy of URL?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return v18 & 1;
    }

    outlined destroy of URL?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of URL?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  outlined destroy of URL?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of URL?(v15, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    outlined destroy of URL?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of URL?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v18 = 1;
  return v18 & 1;
}

uint64_t SuggestionPickerModifier.detentDependentStyle()@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_eG8ModifierVyAA5ColorVGG_ANQo_Md, &_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_eG8ModifierVyAA5ColorVGG_ANQo_MR);
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v55 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo__GMR);
  MEMORY[0x28223BE20](v59);
  v60 = &v55 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA3_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA3_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo_G_GMR);
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE0D7DetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0ikL0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_K13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_Md, &_s7SwiftUI4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE0D7DetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0ikL0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_K13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_MR);
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = type metadata accessor for JournalConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(v1 + *(v16 + 40), v11, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of URL?(v11, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  else
  {
    outlined init with take of SuggestionPickerModifier(v11, v15, type metadata accessor for JournalConfiguration);
    v17 = v15[8];
    outlined destroy of SuggestionPickerModifier(v15, type metadata accessor for JournalConfiguration);
    if ((v17 & 1) == 0 && (SuggestionPickerModifier.isPad.getter() & 1) == 0)
    {
      SuggestionPickerModifier.nonModalEmbeddedPicker()(v8);
      v48 = v58;
      (*(v58 + 16))(v64, v8, v6);
      swift_storeEnumTagMultiPayload();
      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
      v52 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      v68 = v51;
      v69 = v52;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v68 = v50;
      v69 = OpaqueTypeConformance2;
      v54 = swift_getOpaqueTypeConformance2();
      v68 = v49;
      v69 = v54;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return (*(v48 + 8))(v8, v6);
    }
  }

  v71 = &type metadata for MOMomentsFeatureFlags;
  v72 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
  LOBYTE(v68) = 8;
  v18 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v68);
  v19 = v6;
  if (v18)
  {
    SuggestionPickerModifier.nonModalEmbeddedPicker()(v8);
    v20 = v58;
    (*(v58 + 16))(v60, v8, v19);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    v24 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v68 = v23;
    v69 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    v68 = v22;
    v69 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v68 = v21;
    v69 = v26;
    swift_getOpaqueTypeConformance2();
    v68 = v23;
    v69 = MEMORY[0x277CE0F78];
    v70 = v24;
    v71 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    v27 = v62;
    _ConditionalContent<>.init(storage:)();
    (*(v20 + 8))(v8, v19);
  }

  else
  {
    v28 = *(v1 + *(v16 + 48));
    v29 = static Color.clear.getter();
    v30 = static Edge.Set.all.getter();
    v68 = v28;
    v69 = v29;
    LOBYTE(v70) = v30;
    v67 = static Color.clear.getter();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    v32 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v33 = MEMORY[0x277CE0F60];
    v34 = v56;
    View.presentationBackground<A>(_:)();

    v35 = v57;
    v36 = v61;
    (*(v57 + 16))(v60, v34, v61);
    swift_storeEnumTagMultiPayload();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    v68 = v31;
    v69 = v32;
    v39 = swift_getOpaqueTypeConformance2();
    v68 = v38;
    v69 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v68 = v37;
    v69 = v40;
    swift_getOpaqueTypeConformance2();
    v68 = v31;
    v69 = MEMORY[0x277CE0F78];
    v70 = v32;
    v71 = v33;
    swift_getOpaqueTypeConformance2();
    v27 = v62;
    _ConditionalContent<>.init(storage:)();
    (*(v35 + 8))(v34, v36);
  }

  outlined init with copy of URL?(v27, v64, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
  swift_storeEnumTagMultiPayload();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
  v44 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v68 = v43;
  v69 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v68 = v42;
  v69 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v68 = v41;
  v69 = v46;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of URL?(v27, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
}

uint64_t SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAPyAcAEAlmN_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_O0Vy21JournalingSuggestions016SuggestionPickerR033_315EC45933A08D2AC82BECE24BED7720LLVG_APyAPyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionR0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__AA012_ConditionalO0VyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAPyAW16EmbeddedJSPickerVAA016_BackgroundStyleR0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGQo_Md, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAPyAcAEAlmN_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_O0Vy21JournalingSuggestions016SuggestionPickerR033_315EC45933A08D2AC82BECE24BED7720LLVG_APyAPyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionR0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__AA012_ConditionalO0VyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAPyAW16EmbeddedJSPickerVAA016_BackgroundStyleR0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGQo_MR);
  v54 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v53 = &v51 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAiAE0M6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleG0VyAA01_g9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_AGyAGyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__AGyACyAiAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAiAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAiAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAGyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AiAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAiAE5sheetAklMQrAP_AQqd__yctAaHRd__lFQOyA26__A52_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAiAE0M6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleG0VyAA01_g9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_AGyAGyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__AGyACyAiAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAiAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAiAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAGyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AiAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAiAE5sheetAklMQrAP_AQqd__yctAaHRd__lFQOyA26__A52_Qo__GMR);
  MEMORY[0x28223BE20](v60);
  v61 = &v51 - v5;
  v6 = type metadata accessor for SuggestionPickerModifier(0);
  v7 = v6 - 8;
  v55 = *(v6 - 8);
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
  MEMORY[0x28223BE20](v59);
  v17 = &v51 - v16;
  v18 = SuggestionPickerModifier.isPad.getter();
  v56 = v15;
  SuggestionPickerModifier.modifierContent(content:)(a1, v15);
  v19 = v2 + *(v7 + 72);
  v20 = *v19;
  v21 = *(v19 + 8);
  v68 = v20;
  v69 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  if (v18)
  {
    v52 = v65;
    v53 = v64;
    LODWORD(v54) = v66;
    outlined init with copy of JournalConfiguration(v2, v12, type metadata accessor for SuggestionPickerModifier);
    v22 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v23 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v12, v23 + v22, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v2, v10, type metadata accessor for SuggestionPickerModifier);
    v24 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v10, v24 + v22, type metadata accessor for SuggestionPickerModifier);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v26 = type metadata accessor for ScenePhase();
    v27 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v28 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    v64 = v25;
    v65 = v26;
    v66 = v27;
    v67 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v29 = v58;
    v30 = v56;
    View.fullScreenCover<A>(isPresented:onDismiss:content:)();

    (*(v57 + 8))(v30, v29);
    v31 = &v17[*(v59 + 36)];
    *v31 = closure #3 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:);
    v31[1] = 0;
    outlined init with copy of URL?(v17, v61, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    v33 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    v64 = v29;
    v65 = v32;
    v66 = OpaqueTypeConformance2;
    v67 = v33;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of URL?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
  }

  else
  {
    v51 = v64;
    LODWORD(v52) = v66;
    outlined init with copy of JournalConfiguration(v2, v12, type metadata accessor for SuggestionPickerModifier);
    v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v36 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v12, v36 + v35, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v2, v10, type metadata accessor for SuggestionPickerModifier);
    v37 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v10, v37 + v35, type metadata accessor for SuggestionPickerModifier);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v40 = type metadata accessor for ScenePhase();
    v41 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v42 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    v64 = v39;
    v65 = v40;
    v66 = v41;
    v67 = v42;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    v43 = v53;
    v44 = v58;
    v45 = v56;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v57 + 8))(v45, v44);
    v46 = v54;
    v47 = v63;
    (*(v54 + 16))(v61, v43, v63);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    v64 = v44;
    v65 = v38;
    v66 = v49;
    v67 = v50;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v46 + 8))(v43, v47);
  }
}

uint64_t closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X8>)
{
  SuggestionPickerModifier.detentDependentStyle()(a1);
  v2 = static SafeAreaRegions.all.getter();
  v3 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void closure #6 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionPickerModifier(0);
  type metadata accessor for SuggestionSheetUIManager(0);
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
  v5 = StateObject.wrappedValue.getter();
  (*((*MEMORY[0x277D85000] & *v5) + 0x2F8))(a1 + *(v4 + 60), a2);
}

uint64_t SuggestionPickerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v79 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAgAE15fullScreenCover11isPresented0G7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_ALyALyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__ALyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyALyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAgAE5sheetAnoPQrAS_ATqd__yctAaFRd__lFQOyA26__A52_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A26__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAgAE15fullScreenCover11isPresented0G7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_ALyALyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__ALyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyALyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAgAE5sheetAnoPQrAS_ATqd__yctAaFRd__lFQOyA26__A52_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A26__GMR);
  MEMORY[0x28223BE20](v104);
  v106 = v79 - v9;
  v10 = type metadata accessor for SuggestionPickerModifier(0);
  v89 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v107 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v99);
  v13 = v79 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
  MEMORY[0x28223BE20](v14);
  v16 = v79 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_MR);
  v90 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = v79 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_MR);
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = v79 - v18;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_MR);
  v94 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v93 = v79 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_MR);
  v96 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v95 = v79 - v20;
  v113 = &type metadata for MOMomentsFeatureFlags;
  v114 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
  LOBYTE(v110) = 7;
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v110);
  if (v21)
  {
    SuggestionPickerModifier.modifierContent(content:)(a1, v8);
    (*(v6 + 16))(v106, v8, v5);
    swift_storeEnumTagMultiPayload();
    v22 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    v23 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    v110 = v14;
    v111 = v99;
    v112 = v22;
    v113 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = MEMORY[0x277D839B0];
    v110 = v100;
    v111 = MEMORY[0x277D839B0];
    v26 = MEMORY[0x277D839C8];
    v112 = OpaqueTypeConformance2;
    v113 = MEMORY[0x277D839C8];
    v27 = swift_getOpaqueTypeConformance2();
    v110 = v101;
    v111 = v25;
    v112 = v27;
    v113 = v26;
    v28 = swift_getOpaqueTypeConformance2();
    v110 = v103;
    v111 = v25;
    v112 = v28;
    v113 = v26;
    swift_getOpaqueTypeConformance2();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v30 = type metadata accessor for ScenePhase();
    v31 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v32 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    v110 = v29;
    v111 = v30;
    v112 = v31;
    v113 = v32;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)(a1, v16);
    v81 = v10;
    v34 = v3 + *(v10 + 56);
    v85 = v3;
    v35 = *(v34 + 8);
    v87 = *v34;
    v80 = *(v34 + 16);
    v86 = type metadata accessor for SuggestionSheetUIManager(0);
    v88 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
    v79[1] = v35;
    v36 = StateObject.wrappedValue.getter();
    (*((*MEMORY[0x277D85000] & *v36) + 0x190))();

    v97 = type metadata accessor for SuggestionPickerModifier;
    v37 = v107;
    outlined init with copy of JournalConfiguration(v3, v107, type metadata accessor for SuggestionPickerModifier);
    v82 = v5;
    v89 = *(v89 + 80);
    v38 = (v89 + 16) & ~v89;
    v39 = swift_allocObject();
    v84 = type metadata accessor for SuggestionPickerModifier;
    outlined init with take of SuggestionPickerModifier(v37, v39 + v38, type metadata accessor for SuggestionPickerModifier);
    v40 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    v41 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    v42 = v14;
    v43 = v99;
    View.onChange<A>(of:initial:_:)();

    outlined destroy of URL?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of URL?(v16, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    v44 = StateObject.wrappedValue.getter();
    v45 = (*((*MEMORY[0x277D85000] & *v44) + 0x1C0))();

    v109 = v45 & 1;
    v46 = v107;
    outlined init with copy of JournalConfiguration(v85, v107, v97);
    v83 = v38;
    v47 = swift_allocObject() + v38;
    v48 = v84;
    outlined init with take of SuggestionPickerModifier(v46, v47, v84);
    v110 = v42;
    v111 = v43;
    v112 = v40;
    v113 = v41;
    v99 = MEMORY[0x277CE0E30];
    v49 = swift_getOpaqueTypeConformance2();
    v50 = v91;
    v51 = v100;
    v52 = v98;
    View.onChange<A>(of:initial:_:)();

    (*(v90 + 8))(v52, v51);
    v53 = StateObject.wrappedValue.getter();
    v54 = (*((*MEMORY[0x277D85000] & *v53) + 0x1F0))();

    v109 = v54 & 1;
    v55 = v85;
    v56 = v107;
    outlined init with copy of JournalConfiguration(v85, v107, v97);
    v57 = v83;
    v58 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v56, v58 + v57, v48);
    v110 = v51;
    v111 = MEMORY[0x277D839B0];
    v112 = v49;
    v59 = MEMORY[0x277D839C8];
    v113 = MEMORY[0x277D839C8];
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v93;
    v62 = v101;
    v63 = v59;
    View.onChange<A>(of:initial:_:)();

    (*(v92 + 8))(v50, v62);
    v64 = v55 + *(v81 + 32);
    v65 = *v64;
    v66 = *(v64 + 8);
    LOBYTE(v64) = *(v64 + 16);
    v110 = v65;
    v111 = v66;
    LOBYTE(v112) = v64;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v109, v67);
    outlined init with copy of JournalConfiguration(v55, v56, v97);
    v68 = v83;
    v69 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v56, v69 + v68, v84);
    v110 = v62;
    v111 = MEMORY[0x277D839B0];
    v112 = v60;
    v113 = v63;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v95;
    v72 = v103;
    View.onChange<A>(of:initial:_:)();

    (*(v94 + 8))(v61, v72);
    v73 = v96;
    v74 = v105;
    (*(v96 + 16))(v106, v71, v105);
    swift_storeEnumTagMultiPayload();
    v110 = v72;
    v111 = MEMORY[0x277D839B0];
    v112 = v70;
    v113 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v76 = type metadata accessor for ScenePhase();
    v77 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v78 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    v110 = v75;
    v111 = v76;
    v112 = v77;
    v113 = v78;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v73 + 8))(v71, v74);
  }
}

void closure #1 in SuggestionPickerModifier.body(content:)()
{
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.picker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238A75000, v1, v2, "connection UUID received", v3, 2u);
    MEMORY[0x23EE71510](v3, -1, -1);
  }

  SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()();
}

void closure #2 in SuggestionPickerModifier.body(content:)()
{
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.picker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238A75000, v1, v2, "shouldRequestEmbeddedScene received", v3, 2u);
    MEMORY[0x23EE71510](v3, -1, -1);
  }

  SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()();
}

void closure #3 in SuggestionPickerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SuggestionPickerModifier(0);
  type metadata accessor for SuggestionSheetUIManager(0);
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
  v3 = StateObject.wrappedValue.getter();
  v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x1F0))();

  if ((v4 & 1) == 0)
  {
    EmbeddedPicker.endSceneHostingSession()();
  }
}

uint64_t closure #4 in SuggestionPickerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in SuggestionPickerModifier.updatePresentation(for:)(uint64_t a1)
{
  type metadata accessor for SuggestionPickerModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of URL?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
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

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of URL?(a1, &v11 - v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  return a5(v9);
}

uint64_t sub_238AD15B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL specialized static JournalingSuggestionPresentationToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of URL?(a1, &v20 - v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of URL?(a2, &v14[v15], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of URL?(v14, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      outlined destroy of URL?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    outlined destroy of URL?(v14, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 1;
}

uint64_t lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate);
  }

  return result;
}

void type metadata completion function for JournalingSuggestionsPicker(uint64_t a1)
{
  type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for State<JournalingSuggestionPresentationToken?>, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ()();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for JournalingSuggestionsPicker(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v9 - 1;
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v11 + 80);
  v16 = 7;
  if (!v8)
  {
    v16 = 8;
  }

  if (v8 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v10 = 0;
    v17 = v16 + 1;
  }

  if (v10 <= v12)
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = v10;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 & 0xF8;
  v21 = v20 | 7;
  v22 = ((v17 + v14) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = *(v11 + 64) + 7;
  if (v19 < a2)
  {
    v24 = ((v23 + ((v22 + v15 + ((v20 + 23) & ~v21)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v19 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_30:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v19 + (v31 | v30) + 1;
      }
    }
  }

  v32 = (a1 + v21 + 16) & ~v21;
  if (v10 == v19)
  {
    if (v8 >= 2)
    {
      v33 = (*(v7 + 48))(v32);
      v34 = v33 >= 2;
      result = v33 - 2;
      if (result != 0 && v34)
      {
        return result;
      }
    }

    return 0;
  }

  v36 = (v32 + v15 + v22) & ~v15;
  if (v12 == v19)
  {
    v37 = *(v11 + 48);

    return v37(v36, v12);
  }

  else
  {
    v38 = *((v23 + v36) & 0xFFFFFFFFFFFFFFF8);
    if (v38 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void storeEnumTagSinglePayload for JournalingSuggestionsPicker(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = *(*(v8 - 8) + 64);
  }

  else
  {
    v12 = *(*(v8 - 8) + 64) + 1;
  }

  if (v10 >= 2)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v10 >= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 80);
  v19 = *(v16 + 80);
  if (v17 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v18 & 0xF8 | 7;
  v22 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = *(v16 + 64) + 7;
  v24 = ((v23 + ((v22 + v19 + (((v18 & 0xF8) + 23) & ~v21)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v23 + ((v22 + v19 + (((*(v9 + 80) & 0xF8) + 23) & ~v21)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v25 = a3 - v20 + 1;
  }

  else
  {
    v25 = 2;
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

  if (v20 < a3)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a2 > v20)
  {
    if (v24)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v20;
    }

    if (v24)
    {
      v30 = ~v20 + a2;
      bzero(a1, v24);
      *a1 = v30;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v24) = v29;
      }

      else
      {
        *(a1 + v24) = v29;
      }
    }

    else if (v28)
    {
      *(a1 + v24) = v29;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

    *(a1 + v24) = 0;
LABEL_52:
    if (!a2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (!v28)
  {
    goto LABEL_52;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_53:
  v31 = ((a1 + v21 + 16) & ~v21);
  if (v13 == v20)
  {
    if (v15 >= a2)
    {
      if (a2 + 1 <= v11)
      {
        if (a2 != -1 && v10 >= 2)
        {
          v40 = *(v9 + 56);

          v40(v31, (a2 + 2));
        }
      }

      else
      {
        if (v12 <= 3)
        {
          v36 = ~(-1 << (8 * v12));
        }

        else
        {
          v36 = -1;
        }

        if (v12)
        {
          v37 = v36 & (a2 - v11);
          if (v12 <= 3)
          {
            v38 = v12;
          }

          else
          {
            v38 = 4;
          }

          bzero(v31, v12);
          if (v38 > 2)
          {
            if (v38 == 3)
            {
              *v31 = v37;
              v31[2] = BYTE2(v37);
            }

            else
            {
              *v31 = v37;
            }
          }

          else if (v38 == 1)
          {
            *v31 = v37;
          }

          else
          {
            *v31 = v37;
          }
        }
      }
    }

    else
    {
      v32 = (v14 + 7) & 0xFFFFFFF8;
      if (v32 != -8)
      {
        v33 = ~v15 + a2;
        bzero(v31, (v32 + 8));
        *v31 = v33;
      }
    }
  }

  else
  {
    v34 = &v31[v19 + v22] & ~v19;
    if (v17 == v20)
    {
      v35 = *(v16 + 56);

      v35(v34, a2, v17);
    }

    else
    {
      v39 = ((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v39 = a2 & 0x7FFFFFFF;
        v39[1] = 0;
      }

      else
      {
        *v39 = (a2 - 1);
      }
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t sub_238AD22F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238AD2380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for JournalingSuggestionPresentationToken(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for JournalingSuggestionsConfiguration(uint64_t a1)
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

uint64_t sub_238AD2644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238AD2714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalConfiguration(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_238AD2874(void *a1)
{
  type metadata accessor for Button();
  type metadata accessor for SuggestionPickerModifier(255);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionPickerModifier and conformance SuggestionPickerModifier, type metadata accessor for SuggestionPickerModifier, ")@sI|I");
  return swift_getWitnessTable();
}

uint64_t sub_238AD293C(uint64_t *a1)
{
  type metadata accessor for SuggestionPickerModifier(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionPickerModifier and conformance SuggestionPickerModifier, type metadata accessor for SuggestionPickerModifier, ")@sI|I");
  return swift_getWitnessTable();
}

uint64_t sub_238AD29EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMd, &_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = type metadata accessor for UUID();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[15];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_238AD2C38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMd, &_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[15];

  return v19(v20, a2, a2, v18);
}

void type metadata completion function for SuggestionPickerModifier(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for Environment<ScenePhase>, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for Environment<UISceneSession?>, &_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UUID?(319, &lazy cache variable for type metadata for JournalingSuggestionPresentationToken?, type metadata accessor for JournalingSuggestionPresentationToken, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UUID?(319, &lazy cache variable for type metadata for JournalConfiguration?, type metadata accessor for JournalConfiguration, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for ()();
              if (v7 <= 0x3F)
              {
                type metadata accessor for StateObject<SuggestionSheetUIManager>(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for UUID();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
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

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for State<JournalingSuggestionPresentationToken?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for State<Bool>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StateObject<SuggestionSheetUIManager>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<SuggestionSheetUIManager>)
  {
    type metadata accessor for SuggestionSheetUIManager(255);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager, &protocol conformance descriptor for SuggestionSheetUIManager);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<SuggestionSheetUIManager>);
    }
  }
}

uint64_t outlined init with copy of JournalConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of Environment<UISceneSession?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of StateObject<SuggestionSheetUIManager>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

void partial apply for closure #1 in SuggestionPickerModifier.body(content:)()
{
  type metadata accessor for SuggestionPickerModifier(0);

  closure #1 in SuggestionPickerModifier.body(content:)();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ZStack<TupleView<(_ViewModifier_Content<SuggestionPickerModifier>, ModifiedContent<ModifiedContent<EmbeddedJSPickerTransparentWrapper, _OpacityEffect>, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UISceneSession and conformance NSObject, type metadata accessor for UISceneSession, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for SuggestionPickerModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ScenePhase();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  outlined consume of Environment<UISceneSession?>.Content(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  v13 = v1[9];
  v14 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  if (!(*(*(v14 - 8) + 48))(v5 + v13, 1, v14))
  {
    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v13, 1, v15))
    {
      (*(v16 + 8))(v5 + v13, v15);
    }
  }

  v17 = v5 + v1[10];
  v18 = type metadata accessor for JournalConfiguration(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 24);
    v20 = type metadata accessor for UUID();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }
  }

  outlined consume of StateObject<SuggestionSheetUIManager>.Storage(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 16));
  v22 = v1[15];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in SuggestionPickerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SuggestionPickerModifier(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t partial apply for closure #3 in SuggestionPickerModifier.modifierContent(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SuggestionPickerModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined destroy of SuggestionPickerModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of SuggestionPickerModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SuggestionPickerModifier(0);

  return closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)(a1);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7SwiftUI18PresentationDetentVGMd, &_ss11_SetStorageCy7SwiftUI18PresentationDetentVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90], MEMORY[0x277CDDE98]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAeAE15fullScreenCover11isPresented0F7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyACyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A24_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAeAE15fullScreenCover11isPresented0F7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyACyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A24_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Reflection(uint64_t a1)
{
  v2 = specialized static JournalingSuggestion.Reflection.getAssetLoader(for:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a5;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v23 = _sSo7UIColorC21JournalingSuggestionsE12dynamicColor5light4darkA2B_ABtFZABSo17UITraitCollectionCcfU_TA_0;
  v24 = v11;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v22 = &block_descriptor_3;
  v13 = _Block_copy(&v19);

  v14 = a6;
  v15 = a5;
  v16 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v17 = MEMORY[0x23EE6FF50](v16);
  v22 = &type metadata for JournalingSuggestion.Reflection;
  v23 = &protocol witness table for JournalingSuggestion.Reflection;
  v19 = a3;
  v20 = a4;
  v21 = v17;

  a1(&v19, 0);
  outlined destroy of JournalingSuggestionAsset?(&v19);
}

uint64_t (*specialized static JournalingSuggestion.Reflection.getAssetLoader(for:)(uint64_t a1))()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v2 = result;
    type metadata accessor for TransferReflectionViewModel();
    if (swift_dynamicCastClass() && (v3 = dispatch thunk of TransferReflectionViewModel.prompt.getter(), v4))
    {
      v5 = v3;
      v6 = v4;
      v7 = dispatch thunk of TransferReflectionViewModel.lightBackgroundColor.getter();
      if (v7)
      {
        v8 = v7;
        v9 = dispatch thunk of TransferReflectionViewModel.darkBackgroundColor.getter();

        if (v9)
        {
          v10 = swift_allocObject();
          v10[2] = v5;
          v10[3] = v6;
          v10[4] = v8;
          v10[5] = v9;
          return partial apply for closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:);
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_238AD5138()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238AD518C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.LivePhoto(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a2;
  v59 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a3, v17);
  v18(&v16[v14[5]], a4, v17);
  v19 = v14[6];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  *&v60 = v19;
  v21(&v16[v19], 1, 1, v20);
  v57 = a5;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v22 = type metadata accessor for DateInterval();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v10, 1, v22) == 1)
  {
    outlined destroy of URL?(v10, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v24 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v23 + 8))(v10, v22);
    v24 = 0;
  }

  v21(v13, v24, 1, v20);
  outlined assign with take of Date?(v13, &v16[v60]);
  v25 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v26 = 0uLL;
  v60 = 0u;
  v27 = 0uLL;
  if (v25)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v54 = v28;
    v55 = v29;
    v53 = v30;
    v56 = v31;

    *&v27 = v53;
    *&v26 = v54;
    *(&v26 + 1) = v55;
    *(&v27 + 1) = v56;
  }

  v32 = &v16[v14[7]];
  *v32 = v26;
  *(v32 + 1) = v27;
  v32[32] = v25 == 0;
  v33 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v34 = 0uLL;
  if (v33)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v60 = v35;
    v54 = v37;
    v55 = v36;
    v56 = v38;

    *&v34 = v54;
    *&v39 = v60;
    *(&v39 + 1) = v55;
    v60 = v39;
    *(&v34 + 1) = v56;
  }

  v40 = &v16[v14[8]];
  *v40 = v60;
  *(v40 + 1) = v34;
  v40[32] = v33 == 0;
  v41 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v41)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v55 = v42;
    v56 = v43;
    v54 = v44;
    v60 = v45;

    *&v47 = v54;
    *&v46 = v55;
    *(&v46 + 1) = v56;
    *(&v47 + 1) = v60;
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v48 = &v16[v14[9]];
  v49 = &v16[v14[10]];
  *v48 = v46;
  *(v48 + 1) = v47;
  v48[32] = v41 == 0;
  *v49 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v49[1] = v50;
  v61[3] = v14;
  v61[4] = &protocol witness table for JournalingSuggestion.LivePhoto;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  outlined init with copy of JournalingSuggestion.LivePhoto(v16, boxed_opaque_existential_1);
  v59(v61, 0);
  outlined destroy of URL?(v61, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.LivePhoto(v16);
}

uint64_t specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

{
  v2 = Asset.transferRepresentation.getter();
  v1[12] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferLivePhotoViewModel();
    v4 = swift_dynamicCastClass();
    v1[13] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferLivePhotoViewModel.urlBasedVideo.getter();
      v1[14] = v5;
      if (v5)
      {
        v13 = (*MEMORY[0x277D2A180] + MEMORY[0x277D2A180]);
        v6 = swift_task_alloc();
        v1[15] = v6;
        *v6 = v1;
        v6[1] = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
        v7 = v1[4];

        return v13(v7);
      }

      v9 = v1[5];
      v10 = v1[6];
      v11 = v1[4];

      (*(v10 + 56))(v11, 1, 1, v9);
      outlined destroy of URL?(v1[4], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v12 = v1[1];

  return v12(0, 0);
}

uint64_t specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v2 + 48);
  *(v0 + 128) = v4;
  *(v0 + 136) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    v5 = *(v0 + 32);
LABEL_8:
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v16 = *(v0 + 8);

    return v16(0, 0);
  }

  v6 = *(v0 + 88);
  v7 = *(v2 + 32);
  *(v0 + 144) = v7;
  *(v0 + 152) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6, v3, v1);
  v8 = dispatch thunk of TransferLivePhotoViewModel.urlBasedImage.getter();
  *(v0 + 160) = v8;
  if (!v8)
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 24);

    (*(v13 + 56))(v14, 1, 1, v12);
    v15 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 88), *(v0 + 40));
    v5 = v15;
    goto LABEL_8;
  }

  v17 = (*MEMORY[0x277D2A178] + MEMORY[0x277D2A178]);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
  v10 = *(v0 + 24);

  return v17(v10);
}

{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  if ((*(v0 + 128))(v2, 1, v1) == 1)
  {

    v3 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 88), *(v0 + 40));
    outlined destroy of URL?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 80);
    v17 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v18 = v8;
    v19 = *(v0 + 104);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v6(v7, v2, v1);
    v6(v8, v7, v1);
    v6(v9, v17, v1);
    v12 = *(v10 + 80);
    v13 = (v12 + 16) & ~v12;
    v14 = (v11 + v12 + v13) & ~v12;
    v5 = swift_allocObject();
    v6(v5 + v13, v18, v1);
    v6(v5 + v14, v9, v1);
    *(v5 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    v4 = partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
  }

  v15 = *(v0 + 8);

  return v15(v4, v5);
}

uint64_t sub_238AD6088()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1, a2, v2 + v7, v2 + v9, v10);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.MotionActivity()
{
  v1 = specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a2;
  v23 = a1;
  v7 = type metadata accessor for MotionActivity();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a3, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = v11[6];
  v17 = type metadata accessor for DateInterval();
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  v18 = v11[5];
  v19 = v11[7];
  v13[v19] = 3;
  *&v13[v18] = a4;
  MotionActivity.init(rawValue:)();
  MotionActivity.asMovementType.getter(v24);
  (*(v8 + 8))(v10, v7);
  v13[v19] = v24[0];
  v24[3] = v11;
  v24[4] = &protocol witness table for JournalingSuggestion.MotionActivity;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  outlined init with copy of JournalingSuggestion.MotionActivity(v13, boxed_opaque_existential_1);
  v23(v24, 0);
  outlined destroy of JournalingSuggestion.MotionActivity(v13);
  return outlined destroy of URL?(v24, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t MotionActivity.asMovementType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MotionActivity();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  (*(v5 + 16))(&v17 - v9, v2, v4);
  static MotionActivity.walk.getter();
  lazy protocol witness table accessor for type MotionActivity and conformance MotionActivity();
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    result = (v12)(v10, v4);
    v14 = 1;
  }

  else
  {
    static MotionActivity.run.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12(v8, v4);
    if (v15)
    {
      result = (v12)(v10, v4);
      v14 = 0;
    }

    else
    {
      static MotionActivity.runAndWalk.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v12(v8, v4);
      result = (v12)(v10, v4);
      if (v16)
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }
    }
  }

  *a1 = v14;
  return result;
}

uint64_t (*specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:)())()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - v12;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v14 = result;
    type metadata accessor for TransferMotionActivityViewModel();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      goto LABEL_12;
    }

    v52 = v15;
    v16 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (!v16)
    {
      goto LABEL_12;
    }

    v17 = v16;
    v51 = v1;
    v18 = Image.uiImage.getter();

    v53 = v18;
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = [objc_opt_self() defaultManager];
    v20 = v7;
    v21 = [v19 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v51 + 8))(v3, v0);
    URL.appendingPathComponent(_:)();

    v50 = v8;
    v51 = v20;
    v22 = *(v8 + 8);
    v22(v11, v20);
    v23 = v53;
    v24 = UIImageHEICRepresentation(v53);
    if (v24)
    {
      v25 = v24;
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      URL.appendingPathExtension(_:)();
    }

    else
    {
      v47 = v22;
      v28 = UIImagePNGRepresentation(v23);
      if (!v28)
      {
LABEL_10:
        v34 = v50;
        v33 = v51;
        (*(v50 + 56))(v6, 0, 1, v51);
        v35 = v54;
        v53 = *(v34 + 32);
        (v53)(v54, v6, v33);
        v36 = dispatch thunk of TransferMotionActivityViewModel.steps.getter();
        if ((v37 & 1) == 0)
        {
          v49 = v36;
          v38 = dispatch thunk of TransferMotionActivityViewModel.motionActivityTypeRawValue.getter();
          v40 = v39;

          if ((v40 & 1) == 0)
          {
            v41 = v53;
            v42 = v51;
            (v53)(v11, v54, v51);
            v43 = (*(v50 + 80) + 16) & ~*(v50 + 80);
            v44 = (v9 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
            v45 = swift_allocObject();
            (v41)(v45 + v43, v11, v42);
            *(v45 + v44) = v49;
            *(v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
            return partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:);
          }

          v47(v54, v51);
          return 0;
        }

        v47(v35, v33);

LABEL_12:
        return 0;
      }

      v29 = v28;
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v30;

      URL.appendingPathExtension(_:)();
      v22 = v47;
    }

    v31 = v51;
    v22(v6, v51);
    (*(v50 + 32))(v6, v11, v31);
    v32 = v48;
    v49 = v27;
    Data.write(to:options:)();
    v47 = v22;
    outlined consume of Data._Representation(v32, v49);
    v23 = v53;
    goto LABEL_10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MotionActivity and conformance MotionActivity()
{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    type metadata accessor for MotionActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

uint64_t sub_238AD6CC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return MEMORY[0x282133288]();
}

{
  return MEMORY[0x282133290]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}