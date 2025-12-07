uint64_t outlined init with take of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(uint64_t a1, void *a2)
{
  ObservationRegistrar.init()();
  v2[2] = MEMORY[0x20F3059A0](a1);
  v2[3] = static TargetZoneStorage.heartRateTargetZone(activityType:)();
  v2[4] = static TargetZoneStorage.powerZonesAlertTargetZone(activityType:)();
  v2[9] = MEMORY[0x20F305800](a1);
  v5 = objc_opt_self();
  v2[5] = [v5 timeSplitForActivityType_];
  result = [a2 unitManager];
  if (result)
  {
    v7 = result;
    v8 = [result userDistanceHKUnitForActivityType_];

    v2[6] = [v5 distanceSplitForActivityType:a1 userDistanceUnit:v8];
    v2[7] = MEMORY[0x20F305300](a1);
    v9 = MEMORY[0x20F305770](a1);

    v2[8] = v9;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AlertConfigurationViewModel(uint64_t a1)
{
  result = type metadata accessor for AlertConfigurationContext();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AlertConfigurationSessionContext();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ObservationRegistrar();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void type metadata completion function for AlertConfigurationViewModel.ViewModelContainer(uint64_t a1)
{
  type metadata accessor for ActivityPersistingViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (LocalBindingViewModel, ConfigurationType)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (LocalBindingViewModel, ConfigurationType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (LocalBindingViewModel, ConfigurationType))
  {
    type metadata accessor for LocalBindingViewModel(255);
    type metadata accessor for ConfigurationType();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LocalBindingViewModel, ConfigurationType));
    }
  }
}

uint64_t type metadata completion function for ActivityPersistingViewModel(uint64_t a1)
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

uint64_t type metadata completion function for LocalBindingViewModel(uint64_t a1)
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

uint64_t objectdestroyTm_24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t outlined init with copy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI27AlertConfigurationViewModelC0eF9ContainerOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AppleExertionScale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NLWorkoutSplitStorage(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined destroy of (AppleExertionScale?, AppleExertionScale?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for WorkoutConfigurationToolbar(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfigurationToolbar;
  if (!type metadata singleton initialization cache for WorkoutConfigurationToolbar)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationToolbar(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutConfiguration>(319);
      if (v3 <= 0x3F)
      {
        _s7SwiftUI7BindingVySbGMaTm_1(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for StateObject<WorkoutConfigurationDataSource>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FIUIFormattingManager();
            if (v6 <= 0x3F)
            {
              _s7SwiftUI7BindingVySbGMaTm_1(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
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

void type metadata accessor for ObservedObject<WorkoutConfiguration>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutConfiguration>)
  {
    type metadata accessor for WorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<WorkoutConfiguration>);
    }
  }
}

void type metadata accessor for StateObject<WorkoutConfigurationDataSource>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<WorkoutConfigurationDataSource>)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<WorkoutConfigurationDataSource>);
    }
  }
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _s7SwiftUI7BindingVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x20F30C990](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

{
  return sub_20C67B8F8(a1, a2, a3) & 1;
}

{
  return sub_20C67B8F8(a1, a2, a3) & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x20F30C990](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t WorkoutConfigurationToolbar.dismiss.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
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

uint64_t WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v23 = *(v4 - 8);
  v22 = *(v23 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMR, MEMORY[0x277CE04B0]);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMR, MEMORY[0x277CDDF68]);
  View.toolbar<A>(content:)();
  static ListSectionSpacing.custom(_:)();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGMR) + 36);
  (*(v7 + 16))(a2 + v10, v9, v6);
  v11 = *(v7 + 56);
  v11(a2 + v10, 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGMR) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR) + 28);
  (*(v7 + 32))(v13 + v14, v9, v6);
  v11(v13 + v14, 0, 1, v6);
  *v13 = KeyPath;
  v15 = v21;
  outlined init with copy of WorkoutConfigurationToolbar(v20[2], v21);
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  outlined init with take of WorkoutConfigurationToolbar(v15, v17 + v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGAA017_AppearanceActionI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGAA017_AppearanceActionI0VGMR);
  v19 = (a2 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = partial apply for closure #2 in WorkoutConfigurationToolbar.body(content:);
  v19[3] = v17;
  return result;
}

uint64_t closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtMR);
  MEMORY[0x28223BE20](v108);
  v107 = &v75 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_MR);
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v75 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMR);
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v75 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleE0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVATGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA0_yA4_GQo_G_AA0rcO0VyAA0C6SpacerV_ACyytAPyA0_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtMd, &_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleE0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVATGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA0_yA4_GQo_G_AA0rcO0VyAA0C6SpacerV_ACyytAPyA0_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtMR);
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v93 = &v75 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13ToolbarSpacerV_AA0C4ItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtMd, &_s7SwiftUI13ToolbarSpacerV_AA0C4ItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultH5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtMR);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMR);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v75 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMR);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v75 - v17;
  v18 = type metadata accessor for SpacerSizing();
  MEMORY[0x28223BE20](v18 - 8);
  v85 = type metadata accessor for ToolbarSpacer();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v94 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v83 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v99 = &v75 - v23;
  v24 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v24 - 8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleE0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVATGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA0_yA4_GQo_GMd, &_s7SwiftUI11ToolbarItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleE0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVATGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA0_yA4_GQo_GMR);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v98 = &v75 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  v32 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v33 = *(v32 + 40);
  v110 = a1;
  if (*(a1 + v33) || (v34 = v32, type metadata accessor for RaceWorkoutConfiguration(), swift_dynamicCastClass()) || dispatch thunk of WorkoutConfiguration.externalProvider.getter() && (, (WorkoutConfiguration.isOpenGoal.getter() & 1) != 0))
  {
    (*(v13 + 56))(v28, 1, 1, v12);
    v35 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMR, MEMORY[0x277CDDF68]);
    MEMORY[0x20F309920](v28, v12, v35);
    outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v28, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMR);
  }

  else
  {
    v52 = static ToolbarItemPlacement.topBarTrailing.getter();
    v80 = &v75;
    MEMORY[0x28223BE20](v52);
    v79 = &v75 - 4;
    *(&v75 - 2) = v110;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleC0Vy07WorkoutB005ShareQ19ConfigurationButtonVSg_AA0T0VyAA5LabelVyAA4TextVARGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSAZyA2_GQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAA4MenuVyAA5ImageVAA05TupleC0Vy07WorkoutB005ShareQ19ConfigurationButtonVSg_AA0T0VyAA5LabelVyAA4TextVARGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSAZyA2_GQo_MR);
    v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    v75 = lazy protocol witness table accessor for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v53 = lazy protocol witness table accessor for type String and conformance String();
    v54 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    v112 = v77;
    v113 = MEMORY[0x277D837D0];
    v114 = v76;
    v115 = v75;
    v116 = v53;
    v117 = v54;
    swift_getOpaqueTypeConformance2();
    ToolbarItem<>.init(placement:content:)();
    v55 = v110 + *(v34 + 48);
    v56 = *v55;
    v57 = *(v55 + 8);
    LOBYTE(v55) = *(v55 + 16);
    v112 = v56;
    v113 = v57;
    LOBYTE(v114) = v55;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x20F30B100](&v111, v58);
    if (v111 == 1)
    {
      static SpacerSizing.fixed.getter();
      static ToolbarItemPlacement.topBarTrailing.getter();
      ToolbarSpacer.init(_:placement:)();
      v59 = static ToolbarItemPlacement.topBarTrailing.getter();
      MEMORY[0x28223BE20](v59);
      *(&v75 - 2) = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
      lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
      ToolbarItem<>.init(placement:content:)();
      v60 = *(v82 + 48);
      v61 = v81;
      (*(v84 + 16))(v81, v94, v85);
      (*(v86 + 16))(&v61[v60], v95, v87);
      v62 = v88;
      TupleToolbarContent.init(_:)();
      v63 = v89;
      v64 = v83;
      v65 = v62;
      v66 = v90;
      (*(v89 + 16))(v83, v65, v90);
      (*(v63 + 56))(v64, 0, 1, v66);
      v67 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMR, MEMORY[0x277CDDF68]);
      MEMORY[0x20F309920](v64, v66, v67);
      _sSo8NSObjectCSgWOhTm_0(v64, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMR);
      (*(v63 + 8))(v88, v66);
      (*(v86 + 8))(v95, v87);
      (*(v84 + 8))(v94, v85);
    }

    else
    {
      v68 = v83;
      v69 = v90;
      (*(v89 + 56))(v83, 1, 1, v90);
      v70 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGMR, MEMORY[0x277CDDF68]);
      MEMORY[0x20F309920](v68, v69, v70);
      _sSo8NSObjectCSgWOhTm_0(v68, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMR);
    }

    v71 = *(v92 + 48);
    v72 = v91;
    (*(v96 + 16))(v91, v98, v97);
    outlined init with copy of TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?(v99, &v72[v71], &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMR);
    v73 = v93;
    TupleToolbarContent.init(_:)();
    (*(v13 + 16))(v28, v73, v12);
    (*(v13 + 56))(v28, 0, 1, v12);
    v74 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGMR, MEMORY[0x277CDDF68]);
    MEMORY[0x20F309920](v28, v12, v74);
    outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v28, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMR);
    (*(v13 + 8))(v73, v12);
    _sSo8NSObjectCSgWOhTm_0(v99, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D6SpacerV_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA07DefaultI5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGtGSgMR);
    (*(v96 + 8))(v98, v97);
  }

  v36 = v110;
  if (*(v110 + v33) == 1)
  {
    v37 = static ToolbarItemPlacement.confirmationAction.getter();
    MEMORY[0x28223BE20](v37);
    *(&v75 - 2) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    v38 = v100;
    ToolbarItem<>.init(placement:content:)();
    v39 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMR, MEMORY[0x277CDD7A8]);
    v40 = v102;
    v41 = v104;
    MEMORY[0x20F3098F0](v38, v104, v39);
    v42 = v103;
    v43 = v106;
    (*(v103 + 16))(v8, v40, v106);
    (*(v42 + 56))(v8, 0, 1, v43);
    v112 = v41;
    v113 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v105;
    MEMORY[0x20F309920](v8, v43, OpaqueTypeConformance2);
    outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v8, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMR);
    (*(v42 + 8))(v40, v43);
    (*(v101 + 8))(v38, v41);
  }

  else
  {
    v46 = v106;
    (*(v103 + 56))(v8, 1, 1, v106);
    v47 = lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA6ButtonVyAA07DefaultG5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_jk9TransformM0VySbGGGMR, MEMORY[0x277CDD7A8]);
    v112 = v104;
    v113 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v45 = v105;
    MEMORY[0x20F309920](v8, v46, v48);
    outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v8, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMR);
  }

  v49 = v107;
  v50 = *(v108 + 48);
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v31, v107, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMR);
  outlined init with copy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v45, v49 + v50, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMR);
  TupleToolbarContent.init(_:)();
  outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v45, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMd, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_mn9TransformP0VySbGGGQo_SgMR);
  return outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(v31, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSgMR);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v17[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB005ShareE19ConfigurationButtonVSg_AA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB005ShareE19ConfigurationButtonVSg_AA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSgtGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB005ShareE19ConfigurationButtonVSg_AA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSgtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB005ShareE19ConfigurationButtonVSg_AA0H0VyAA5LabelVyAA4TextVAA5ImageVGGSgtGMR, MEMORY[0x277CE14C0]);
  Menu.init(content:label:)();
  v6 = static Color.white.getter();
  v17[2] = v3;
  *&v5[*(v3 + 36)] = v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v21._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._object = 0x800000020CB96CB0;
  v9._countAndFlagsBits = 0xD000000000000014;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v21);
  v17[1] = v11._object;

  v20 = v11;
  v12 = (a1 + *(type metadata accessor for WorkoutConfigurationToolbar(0) + 56));
  v13 = *v12;
  v14 = *(v12 + 1);
  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v15 = State.projectedValue.getter();
  v17[0] = v17;
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();

  return _sSo8NSObjectCSgWOhTm_0(v5, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
}

void closure #1 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v5;
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v33 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMR);
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v35 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = *(a1 + *(v4 + 24) + 8);
  type metadata accessor for RaceWorkoutConfiguration();
  v17 = swift_dynamicCastClass();
  v38 = a1;
  if (!v17)
  {
    if (!dispatch thunk of WorkoutConfiguration.externalProvider.getter())
    {
      v30 = *(a1 + *(v4 + 36));
      type metadata accessor for WorkoutConfiguration();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v31 = v16;
      v20 = v30;
      v18 = ObservedObject.init(wrappedValue:)();
      v19 = v32;
      v21 = 257;
      goto LABEL_5;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_5:
  if (swift_dynamicCastClass() || (WorkoutConfiguration.isOpenGoal.getter() & 1) != 0)
  {
    (*(v8 + 56))(v15, 1, 1, v40);
  }

  else
  {
    v23 = v39;
    static ButtonRole.destructive.getter();
    v24 = type metadata accessor for ButtonRole();
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    v25 = v37;
    outlined init with copy of WorkoutConfigurationToolbar(v38, v37);
    v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v38 = swift_allocObject();
    outlined init with take of WorkoutConfigurationToolbar(v25, v38 + v26);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x277CDEFF0]);
    v27 = v35;
    Button.init(role:action:label:)();
    v28 = v27;
    v29 = v40;
    (*(v8 + 32))(v15, v28, v40);
    (*(v8 + 56))(v15, 0, 1, v29);
  }

  outlined init with copy of TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?(v15, v12, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI05ShareA19ConfigurationButtonVSg_05SwiftB00E0VyAE5LabelVyAE4TextVAE5ImageVGGSgtMd, &_s9WorkoutUI05ShareA19ConfigurationButtonVSg_05SwiftB00E0VyAE5LabelVyAE4TextVAE5ImageVGGSgtMR);
  outlined init with copy of TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?(v12, a2 + *(v22 + 48), &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined copy of ShareWorkoutConfigurationButton?(v18, v19, v20);
  _sSo8NSObjectCSgWOhTm_0(v15, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  _sSo8NSObjectCSgWOhTm_0(v12, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMd, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGSgMR);
  outlined consume of ShareWorkoutConfigurationButton?(v18, v19, v20);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  type metadata accessor for WorkoutConfigurationToolbar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)()
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
  v2._object = 0x800000020CB939F0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t closure #2 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  static ButtonRole.destructive.getter();
  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  outlined init with copy of WorkoutConfigurationToolbar(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of WorkoutConfigurationToolbar(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return Button.init(role:action:label:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  v15 = type metadata accessor for DismissAction();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UUID();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for WorkoutConfigurationToolbar(0) + 52));
  v9 = *v8;
  v10 = *(v8 + 1);
  v17 = v9;
  v18 = v10;
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  type metadata accessor for WorkoutConfigurationDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v11 = StateObject.wrappedValue.getter();
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  WorkoutConfigurationDataSource.remove(uuid:)();

  (*(v5 + 8))(v7, v14);
  WorkoutConfigurationToolbar.dismiss.getter(v4);
  DismissAction.callAsFunction()();
  return (*(v2 + 8))(v4, v15);
}

uint64_t closure #2 in closure #3 in closure #1 in closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._object = 0x800000020CB96CD0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #2 in closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of WorkoutConfigurationToolbar(a1, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  outlined init with take of WorkoutConfigurationToolbar(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  MEMORY[0x20F30AF90](v10, partial apply for closure #1 in closure #2 in closure #1 in WorkoutConfigurationToolbar.body(content:), v12);
  v13 = *(a1 + *(v5 + 52));
  KeyPath = swift_getKeyPath();
  v18[1] = v13;

  v15 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1, double a2)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  type metadata accessor for WorkoutConfigurationToolbar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t closure #3 in closure #1 in WorkoutConfigurationToolbar.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for ButtonRole();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ButtonRole.confirm.getter();
  outlined init with copy of WorkoutConfigurationToolbar(a1, v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  outlined init with take of WorkoutConfigurationToolbar(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  MEMORY[0x20F30AF90](v10, partial apply for closure #1 in closure #3 in closure #1 in WorkoutConfigurationToolbar.body(content:), v12);
  v13 = *(a1 + *(v5 + 52));
  KeyPath = swift_getKeyPath();
  v21[1] = v13;

  v15 = AnyShapeStyle.init<A>(_:)();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMR) + 36));
  *v16 = KeyPath;
  v16[1] = v15;
  LOBYTE(a1) = dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter();
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (a1 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMR);
  v20 = (a2 + *(result + 36));
  *v20 = v17;
  v20[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_7;
  v20[2] = v18;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutConfigurationToolbar(0);
  type metadata accessor for WorkoutConfigurationDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v3 = StateObject.wrappedValue.getter();
  WorkoutConfigurationDataSource.add(workoutConfiguration:)();

  if (*(a1 + *(v2 + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void closure #2 in WorkoutConfigurationToolbar.body(content:)(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutConfigurationToolbar(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + v2[6] + 8);
  type metadata accessor for GoalWorkoutConfiguration();
  if (!swift_dynamicCastClass() || (v10 = v9, v11 = GoalWorkoutConfiguration.goal.getter(), v12 = [v11 goalTypeIdentifier], v11, v10, v12))
  {
    if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
    {
    }

    else if (!*(a1 + v2[10]))
    {
      v13 = (a1 + v2[13]);
      v14 = *v13;
      v15 = *(v13 + 1);
      LOBYTE(v33[0]) = v14;
      v33[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.getter();
      if ((v32 & 1) == 0)
      {
        static WOLog.app.getter();
        outlined init with copy of WorkoutConfigurationToolbar(a1, v4);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v30 = v17;
          v19 = v18;
          v29 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33[0] = v31;
          *v19 = 136315394;
          *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000020CB68540, v33);
          *(v19 + 12) = 2112;
          v20 = *&v4[v2[6] + 8];
          outlined destroy of WorkoutConfigurationToolbar(v4);
          *(v19 + 14) = v20;
          v21 = v29;
          *v29 = v20;
          _os_log_impl(&dword_20C66F000, v16, v30, "%s Saving workout_configuration=%@", v19, 0x16u);
          _sSo8NSObjectCSgWOhTm_0(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F30E080](v21, -1, -1);
          v22 = v31;
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x20F30E080](v22, -1, -1);
          MEMORY[0x20F30E080](v19, -1, -1);
        }

        else
        {

          outlined destroy of WorkoutConfigurationToolbar(v4);
        }

        (*(v6 + 8))(v8, v5);
        valid = dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter();
        type metadata accessor for WorkoutConfigurationDataSource();
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
        v24 = StateObject.wrappedValue.getter();
        if (valid)
        {
          v25 = WorkoutConfigurationDataSource.workoutConfigurations.getter();

          v33[0] = v9;
          MEMORY[0x28223BE20](v26);
          *(&v28 - 2) = v33;
          v27 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v28 - 4), v25);

          if ((v27 & 1) == 0)
          {
            return;
          }

          v24 = StateObject.wrappedValue.getter();
          WorkoutConfigurationDataSource.save(workoutConfiguration:)();
        }

        else
        {
          WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)();
        }
      }
    }
  }
}

uint64_t outlined init with copy of WorkoutConfigurationToolbar(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of StateObject<WorkoutConfigurationDataSource>.Storage(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with take of WorkoutConfigurationToolbar(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutConfigurationToolbar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WorkoutConfigurationToolbar(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutConfigurationToolbar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for WorkoutConfiguration();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for WorkoutStep();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_2(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30], MEMORY[0x277D7DD38]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  type metadata accessor for WorkoutConfiguration();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t outlined destroy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA07DefaultE5LabelVGAA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGAA01_hi9TransformK0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareI19ConfigurationButtonVSg_AA0L0VyAA5LabelVyAA4TextVAGGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareG19ConfigurationButtonVSg_AA0J0VyAA5LabelVyAA4TextVAEGGSgtGGMd, &_s7SwiftUI4MenuVyAA5ImageVAA9TupleViewVy07WorkoutB005ShareG19ConfigurationButtonVSg_AA0J0VyAA5LabelVyAA4TextVAEGGSgtGGMR, MEMORY[0x277CDE5B0]);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<Image, TupleView<(ShareWorkoutConfigurationButton?, Button<Label<Text, Image>>?)>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void outlined copy of ShareWorkoutConfigurationButton?(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a2;

    v4 = a3;
  }
}

uint64_t _sSo8NSObjectCSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void outlined consume of ShareWorkoutConfigurationButton?(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for WorkoutConfigurationToolbar(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
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

  outlined consume of StateObject<WorkoutConfigurationDataSource>.Storage(*(v3 + v1[8]), *(v3 + v1[8] + 8), *(v3 + v1[8] + 16));

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in WorkoutConfigurationToolbar.body(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorkoutConfigurationToolbar(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGAA017_AppearanceActionI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGAA017_AppearanceActionI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGA35_yAA18ListSectionSpacingVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB00j13ConfigurationH0VG_AA05TuplehD0VyAPyAA0H4ItemVyytAeAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0S0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyAA4MenuVyAA5ImageVAA0lE0VyAK05SharejK6ButtonVSg_AA0Y0VyAA5LabelVyAA4TextVA3_GGSgtGGAA016_ForegroundStyleI0VyAA5ColorVGG_SSA10_yA14_GQo_G_APyAA0H6SpacerV_ARyytACyA10_yAA07DefaultyZ0VGAA022_EnvironmentKeyWritingI0VyAA13AnyShapeStyleVSgGGGtGSgtGSg_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_ARyytACyA40_AA024_EnvironmentKeyTransformI0VySbGGGQo_SgtGQo_AA013_TraitWritingI0VyAA26ListSectionSpacingTraitKeyVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F20ConfigurationToolbarVGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(TupleToolbarContent<(ToolbarItem<(), <<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0>, TupleToolbarContent<(ToolbarSpacer, ToolbarItem<(), ModifiedContent<Button<DefaultButtonLabel>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>)>?)>?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMd, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0M0Oqd_0_yXEtSyRd__AaFRd_0_r0_lFQOyAA08ModifiedE0VyAA4MenuVyAA5ImageVAA0cG0Vy07WorkoutB005ShareS19ConfigurationButtonVSg_AA0V0VyAA5LabelVyAA4TextVAVGGSgtGGAA24_ForegroundStyleModifierVyAA5ColorVGG_SSA2_yA6_GQo_G_ACyAA0D6SpacerV_AEyytARyA2_yAA07DefaultvW0VGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeZ0VSgGGGtGSgtGSg_AA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AEyytARyA32_AA32_EnvironmentKeyTransformModifierVySbGGGQo_SgtGMR, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationToolbar> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for RaceAlertsEntryView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceAlertsEntryView(uint64_t result, int a2, int a3)
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

uint64_t RaceAlertsEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVG_AIyAeA21_TraitWritingModifierVyAA017ListRowBackgroundM3KeyVGGtGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVG_AIyAeA21_TraitWritingModifierVyAA017ListRowBackgroundM3KeyVGGtGAA05EmptyF0VGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v27._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._object = 0x800000020CB96CF0;
  v9._countAndFlagsBits = 0xD00000000000002CLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v27);

  v23 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v23._countAndFlagsBits = Text.init<A>(_:)();
  v23._object = v12;
  v24 = v13 & 1;
  v25 = v14;
  MEMORY[0x28223BE20](v23._countAndFlagsBits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMR);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>();
  Section<>.init(header:content:)();
  v22 = *(v2 + 3);
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v21 = v26;
  v26 = *v2;
  v15 = v2[5];
  v16 = swift_allocObject();
  v17 = *(v2 + 1);
  v16[1] = *v2;
  v16[2] = v17;
  v16[3] = *(v2 + 2);
  outlined init with copy of Transaction(&v26, &v22);

  outlined init with copy of State<Bool>(&v23, &v22, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  lazy protocol witness table accessor for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>();
  v18 = v15;
  View.onChange<A>(of:initial:_:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in RaceAlertsEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v46._object = 0xE000000000000000;
  v9._object = 0x800000020CB96D20;
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v46);

  v45 = v12;
  v44 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v13 = WorkoutUIBundle.super.isa;
  v47._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000030;
  v14._object = 0x800000020CB96D50;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v47);

  v43 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.footnote.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  outlined consume of Text.Storage(v18, v20, v22 & 1);

  static Color.secondary.getter();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  outlined consume of Text.Storage(v23, v25, v27 & 1);

  v43._countAndFlagsBits = static Color.black.getter();
  v35 = AnyView.init<A>(_:)();
  v36 = v42;
  outlined init with copy of State<Bool>(v7, v42, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMR);
  v37 = v41;
  outlined init with copy of State<Bool>(v36, v41, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMR);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAgA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGtMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAgA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGtMR) + 48);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32 & 1;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  outlined copy of Text.Storage(v28, v30, v32 & 1);

  outlined destroy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v7);
  outlined consume of Text.Storage(v28, v30, v32 & 1);

  return outlined destroy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v36);
}

uint64_t closure #2 in RaceAlertsEntryView.body.getter(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  type metadata accessor for RaceAlerts();
  swift_allocObject();
  RaceAlerts.init(aheadBehindAlertsEnabled:)();
  static RaceAlertsStore.save(raceAlerts:activityType:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10RaceAlertsCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10RaceAlertsCGMR);
  return Binding.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAiA21_TraitWritingModifierVyAA017ListRowBackgroundL3KeyVGGtGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVG_AIyAeA21_TraitWritingModifierVyAA017ListRowBackgroundM3KeyVGGtGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVG_AIyAeA21_TraitWritingModifierVyAA017ListRowBackgroundM3KeyVGGtGAA05EmptyF0VGMR);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)> and conformance TupleView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of State<Bool>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized static BluetoothSettingsNavigator.openBluetoothSettings()()
{
  v0 = type metadata accessor for Logger();
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v43 = type metadata accessor for URLComponents();
  v15 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();
  MEMORY[0x20F302290](0xD00000000000001CLL, 0x800000020CB96DE0);
  URLComponents.url.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of URL?(v7);
    static WOLog.app.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20C66F000, v18, v19, "Failed to create URL for bluetooth deeplink", v20, 2u);
      MEMORY[0x20F30E080](v20, -1, -1);
    }

    (*(v45 + 8))(v2, v46);
    return (*(v15 + 8))(v17, v43);
  }

  (*(v9 + 32))(v14, v7, v8);
  static WOLog.app.getter();
  (*(v9 + 16))(v11, v14, v8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v42 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v41 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v47 = v26;
    *v25 = 136315138;
    v27 = URL.absoluteString.getter();
    v29 = v28;
    v40 = v14;
    v30 = *(v41 + 8);
    v30(v11, v8);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v47);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_20C66F000, v21, v22, "Opening deeplink to bluetooth. url=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F30E080](v26, -1, -1);
    v32 = v25;
    v33 = v30;
    v14 = v40;
    MEMORY[0x20F30E080](v32, -1, -1);
  }

  else
  {

    v33 = *(v9 + 8);
    v33(v11, v8);
  }

  (*(v45 + 8))(v44, v46);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v36 = result;
    URL._bridgeToObjectiveC()(v35);
    v38 = v37;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 openSensitiveURL:v38 withOptions:isa];

    v33(v14, v8);
    v15 = v42;
    return (*(v15 + 8))(v17, v43);
  }

  __break(1u);
  return result;
}

void one-time initialization function for zero()
{
  lazy protocol witness table accessor for type Int and conformance Int();
  BinaryInteger.formatted()();
  v0 = String.subscript.getter();
  v2 = v1;

  static TimerDurationFormatter.zero = v0;
  *algn_27C7E2D88 = v2;
}

uint64_t static TimerDurationFormatter.zero.getter()
{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v0 = static TimerDurationFormatter.zero;

  return v0;
}

void one-time initialization function for default()
{
  v0 = [objc_allocWithZone(type metadata accessor for TimerDurationFormatter()) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  [v0 setZeroFormattingBehavior_];

  static TimerDurationFormatter.default = v0;
}

id TimerDurationFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static TimerDurationFormatter.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = static TimerDurationFormatter.default;

  return v1;
}

Swift::String_optional __swiftcall TimerDurationFormatter.string(from:)(Swift::Double from)
{
  v3 = *&from & 0x7FFFFFFFFFFFFFFFLL;
  v4 = type metadata accessor for TimerDurationFormatter();
  if (v3 < 0x7FF0000000000000)
  {
    v24.receiver = v1;
    v24.super_class = v4;
    v5 = objc_msgSendSuper2(&v24, sel_stringFromTimeInterval_, from);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_27:
    v7 = 0;
    v9 = 0;
LABEL_28:
    v18 = v7;
    v19 = v9;
    goto LABEL_32;
  }

  v27.receiver = v1;
  v27.super_class = v4;
  v5 = objc_msgSendSuper2(&v27, sel_stringFromTimeInterval_, 0.0);
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!v9)
  {
    goto LABEL_28;
  }

  v25 = v7;
  v26 = v9;
  v10 = (v9 & 0x2000000000000000) == 0;
  v11 = HIBYTE(v9) & 0xF;
  v12 = v7 & 0xFFFFFFFFFFFFLL;
  if (!((v9 & 0x2000000000000000) != 0 ? HIBYTE(v9) & 0xF : v7 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_28;
  }

  while (1)
  {
    v14 = String.subscript.getter();
    if (one-time initialization token for zero != -1)
    {
      v21 = v14;
      v22 = v15;
      swift_once();
      v14 = v21;
      v15 = v22;
    }

    if (v14 != static TimerDurationFormatter.zero || v15 != *algn_27C7E2D88)
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_16:
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_20:
    String.subscript.getter();

    v18 = String.index(_:offsetBy:limitedBy:)();
    if (v19)
    {
      goto LABEL_31;
    }

    String.removeSubrange(_:)();
    v7 = v25;
    v9 = v26;
    v10 = (v26 & 0x2000000000000000) == 0;
    v11 = HIBYTE(v26) & 0xF;
    v12 = v25 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v26) & 0xF;
    }

    else
    {
      v20 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {
      goto LABEL_28;
    }
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v10)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (v11)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

id TimerDurationFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimerDurationFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TimerDurationFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TimerDurationFormatter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TimerDurationFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TimerDurationFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimerDurationFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for TrainingLoadOnboardingButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TrainingLoadOnboardingButton(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t TrainingLoadOnboardingButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v90 = a5;
  v85 = type metadata accessor for BorderedProminentButtonStyle();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMR);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v10 = &v75 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAIyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentgE0VQo_MR);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMR);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v77 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMR);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v81 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v79 = &v75 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMR) - 8;
  MEMORY[0x28223BE20](v82);
  v84 = &v75 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMR);
  MEMORY[0x28223BE20](v88);
  v89 = &v75 - v23;
  v24 = swift_allocObject();
  v25 = a1;
  v24[2] = a1;
  v24[3] = a2;
  v26 = v75;
  v27 = v76;
  v24[4] = v75;
  v24[5] = v27;
  v91 = v25;
  v92 = a2;
  v93 = v26;
  v94 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGAQGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
  v28 = v12;
  v29 = v78;
  v30 = v85;
  View.buttonStyle<A>(_:)();
  (*(v87 + 8))(v8, v30);
  (*(v80 + 8))(v10, v29);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v77;
  (*(v83 + 32))(v77, v28, v86);
  v32 = (v31 + *(v14 + 44));
  v33 = v100;
  v32[4] = v99;
  v32[5] = v33;
  v32[6] = v101;
  v34 = v96;
  *v32 = v95;
  v32[1] = v34;
  v35 = v98;
  v32[2] = v97;
  v32[3] = v35;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = v81;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(v31, v81, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMR);
  v37 = (v36 + *(v17 + 44));
  v38 = v103;
  *v37 = v102;
  v37[1] = v38;
  v37[2] = v104;
  v39 = v79;
  v40 = &v79[*(v20 + 44)];
  v41 = *MEMORY[0x277CE0118];
  v42 = type metadata accessor for RoundedCornerStyle();
  v43 = *(*(v42 - 8) + 104);
  v43(v40, v41, v42);
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR) + 36)] = 256;
  v44 = v36;
  v45 = v39;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(v44, v39, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMR);
  v46 = v84;
  v47 = &v84[*(v82 + 44)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v43(v47, v41, v42);
  v47[*(v48 + 36)] = 0;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(v45, v46, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  LOBYTE(v48) = static Edge.Set.top.getter();
  *(inited + 32) = v48;
  v50 = static Edge.Set.horizontal.getter();
  *(inited + 33) = v50;
  v51 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v48)
  {
    v51 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v50)
  {
    v51 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v89;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(v46, v89, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMR);
  v61 = v60 + *(v88 + 36);
  *v61 = v51;
  *(v61 + 8) = v53;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v59;
  *(v61 + 40) = 0;
  v62 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v60;
  v72 = v90;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(v71, v90, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGAWGMR);
  v74 = v72 + *(result + 36);
  *v74 = v62;
  *(v74 + 8) = v64;
  *(v74 + 16) = v66;
  *(v74 + 24) = v68;
  *(v74 + 32) = v70;
  *(v74 + 40) = 0;
  return result;
}

void closure #2 in TrainingLoadOnboardingButton.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.Leading();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v49 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v48 = static Color.black.getter();
  v40 = Text.foregroundStyle<A>(_:)();
  v39 = v15;
  LOBYTE(a1) = v16;
  v38 = v17;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v10) = a1 & 1;
  v50 = a1 & 1;
  static Font.body.getter();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  Font.leading(_:)();

  (*(v7 + 8))(v9, v6);
  static Font.Weight.semibold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v51 = 0;
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = v39;
  *a3 = v40;
  *(a3 + 8) = v28;
  *(a3 + 16) = v10;
  *(a3 + 24) = v38;
  v29 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v29;
  *(a3 + 128) = v47;
  v31 = v42;
  v30 = v43;
  *(a3 + 32) = v41;
  *(a3 + 48) = v31;
  v32 = v44;
  *(a3 + 64) = v30;
  *(a3 + 80) = v32;
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = v18;
  *(a3 + 160) = a1;
  *(a3 + 168) = v21;
  *(a3 + 176) = v23;
  *(a3 + 184) = v25;
  *(a3 + 192) = v27;
  *(a3 + 200) = 0;
  *(a3 + 208) = v9;
  *(a3 + 216) = v33;
  *(a3 + 224) = v34;
  *(a3 + 232) = v35;
  *(a3 + 240) = v36;
  *(a3 + 248) = 0;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGAQGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGAQGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGAWGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGAWGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindQ0VyA9_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Capsule> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA7CapsuleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>>, _ContentShapeKindModifier<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGAA01_lM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingM0VGAWGG_AA017BorderedProminentiG0VQo_AMGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA08_PaddingI0VGASGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t AlertsPickerViewModel.currentValueDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double AlertsPickerViewModel.labelValue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t AlertsPickerViewModel.updateValueDisplay()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TargetZone.ZoneType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TargetZone.ZoneType?(v1 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TargetZone.ZoneType?(v4);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v17);

    specialized AlertsPickerViewModel.pickerText(for:)(v17);
    v10 = v9;
    v12 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v10;
    v18 = v12;

    return static Published.subscript.setter();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v17);

    *&v14 = COERCE_DOUBLE(TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)());
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = *&v14;
    v18 = v16;

    static Published.subscript.setter();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t AlertsPickerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of TargetZone.ZoneType?(v0 + OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType);

  v3 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__labelValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AlertsPickerViewModel.__deallocating_deinit()
{
  AlertsPickerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlertsPickerViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlertsPickerViewModel;
  if (!type metadata singleton initialization cache for AlertsPickerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertsPickerViewModel(uint64_t a1)
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<String>, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TargetZone.ZoneType?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for TargetZone.ZoneType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TargetZone.ZoneType?)
  {
    type metadata accessor for TargetZone.ZoneType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TargetZone.ZoneType?);
    }
  }
}

void type metadata accessor for Published<String>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AlertsPickerViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AlertsPickerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t outlined destroy of TargetZone.ZoneType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double key path getter for AlertsPickerViewModel.labelValue : AlertsPickerViewModel@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for AlertsPickerViewModel.labelValue : AlertsPickerViewModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for AlertsPickerViewModel.currentValueDisplay : AlertsPickerViewModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AlertsPickerViewModel.currentValueDisplay : AlertsPickerViewModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void specialized AlertsPickerViewModel.pickerText(for:)(double a1)
{
  type metadata accessor for NSNumberFormatter();
  v2 = static NSNumberFormatter.integralFormatter.getter();
  v3 = MEMORY[0x20F30BE30](a1);
  v4 = [v2 stringForObjectValue_];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.22337204e18)
  {
    dispatch thunk of CustomStringConvertible.description.getter();

    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t type metadata accessor for NSNumberFormatter()
{
  result = lazy cache variable for type metadata for NSNumberFormatter;
  if (!lazy cache variable for type metadata for NSNumberFormatter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumberFormatter);
  }

  return result;
}

uint64_t type metadata accessor for FastDigitView(uint64_t a1)
{
  result = type metadata singleton initialization cache for FastDigitView;
  if (!type metadata singleton initialization cache for FastDigitView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FastDigitView(uint64_t a1)
{
  type metadata accessor for Environment<Font.Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<Font?>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<Font.Context>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<Font.Context>)
  {
    type metadata accessor for Font.Context();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<Font.Context>);
    }
  }
}

void type metadata accessor for Environment<Font?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<Font?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4FontVSgMd, &_s7SwiftUI4FontVSgMR);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<Font?>);
    }
  }
}

uint64_t FastDigitView.fontResolutionContext.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of Environment<Font.Context>.Content(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Font.Context();
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

unint64_t one-time initialization function for fontDigitSizes()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4FontV_So6CGSizeVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static FastDigitView.fontDigitSizes = result;
  return result;
}

double FastDigitView.digitSize.getter()
{
  v1 = type metadata accessor for Font.Context();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for FastDigitView(0) + 20);
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Font?>.Content(v10);
    (*(v6 + 8))(v8, v5);
    v10 = v33;
  }

  if (!v10)
  {
    return 0.0;
  }

  if (one-time initialization token for fontDigitSizes != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = static FastDigitView.fontDigitSizes;
  if (*(static FastDigitView.fontDigitSizes + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 16 * v14);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    FastDigitView.fontResolutionContext.getter(v4);
    v17 = Font.platformFont(in:)();
    (*(v2 + 8))(v4, v1);
    v33 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    countAndFlagsBits = BinaryInteger.formatted()()._countAndFlagsBits;
    v19 = MEMORY[0x20F30BAD0](countAndFlagsBits);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CB5DA70;
    v21 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    type metadata accessor for CTFontRef(0);
    *(inited + 64) = v22;
    *(inited + 40) = v17;
    v23 = v21;
    v24 = v17;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 sizeWithAttributes_];
    v16 = v26;
    v28 = v27;

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = static FastDigitView.fontDigitSizes;
    static FastDigitView.fontDigitSizes = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, isUniquelyReferenced_nonNull_native, v16, v28);

    static FastDigitView.fontDigitSizes = v32;
    swift_endAccess();
  }

  return v16;
}

double FastDigitView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = FastDigitView.digitSize.getter();
  v4 = *(v1 + *(type metadata accessor for FastDigitView(0) + 24));
  if (v4 >= 9)
  {
    v4 = 9;
  }

  v5 = -(v3 * v4);
  FastDigitView.digitSize.getter();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = closure #1 in FastDigitView.body.getter;
  *(a1 + 24) = 0;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  result = *&v9;
  *(a1 + 64) = v9;
  *(a1 + 80) = 0;
  return result;
}

double AllDigitsView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for NumberFormatStyleConfiguration.Grouping();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v36 = 123456789;
  static Locale.autoupdatingCurrent.getter();
  v26 = lazy protocol witness table accessor for type Int and conformance Int();
  IntegerFormatStyle.init(locale:)();
  v32 = vdupq_n_s64(0xAuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
  lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>(&lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>, &_sSNySiGMd, &_sSNySiGMR, MEMORY[0x277D83660]);
  static NumberFormatStyleConfiguration.Precision.integerLength<A>(_:)();
  MEMORY[0x20F3023F0](v6, v8);
  (*(v27 + 8))(v6, v28);
  v18 = *(v9 + 8);
  v19 = v18(v11, v8);
  MEMORY[0x20F302500](v19);
  MEMORY[0x20F3023E0](v3, v8);
  (*(v29 + 8))(v3, v30);
  v18(v14, v8);
  lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>(&lazy protocol witness table cache variable for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>, &_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR, MEMORY[0x277CC8CE8]);
  BinaryInteger.formatted<A>(_:)();
  v18(v17, v8);
  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v32.i64[0] = v20;
  v32.i64[1] = v21;
  LOBYTE(v8) = v23 & 1;
  v33 = v23 & 1;
  v34 = v24;
  v35 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  outlined consume of Text.Storage(v20, v22, v8);

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Environment<Font.Context>.Content(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA4FontV7ContextV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipJ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipJ0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGAA20_TransactionModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<AllDigitsView, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AllDigitsView, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AllDigitsView, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AllDigitsView, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AllDigitsView, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB013AllDigitsViewVAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type AllDigitsView and conformance AllDigitsView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AllDigitsView, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllDigitsView and conformance AllDigitsView()
{
  result = lazy protocol witness table cache variable for type AllDigitsView and conformance AllDigitsView;
  if (!lazy protocol witness table cache variable for type AllDigitsView and conformance AllDigitsView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllDigitsView and conformance AllDigitsView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void LapLengthUnitPicker.unit.didset()
{
  v1 = *(v0 + *(type metadata accessor for LapLengthUnitPicker(0) + 28));
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v17 = *v0;
  v18 = v3;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo12NSUnitLengthCGMd, &_s7SwiftUI7BindingVySo12NSUnitLengthCGMR);
  MEMORY[0x20F30B100](v16);
  v6 = v16[0];
  v17 = v16[0];
  v14 = &v17;
  v7 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v13, v1);

  if ((v7 & 1) == 0)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    v16[0] = v17;
    v16[1] = v18;
    MEMORY[0x20F30BC00](0xD000000000000032, 0x800000020CB96F40);
    v17 = v2;
    v18 = v3;
    v19 = v4;
    MEMORY[0x20F30B100](&v15, v5);
    v8 = v15;
    v9 = [v15 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    MEMORY[0x20F30BC00](v10, v12);

    MEMORY[0x20F30BC00](0xD000000000000025, 0x800000020CB96F80);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t LapLengthUnitPicker.dismiss.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LapLengthUnitPicker(0);
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

uint64_t LapLengthUnitPicker.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMR);
  lazy protocol witness table accessor for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_MR);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type List<Never, Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMR, MEMORY[0x277CDE5A0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR);
  v6 = lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR, MEMORY[0x277CDD7A8]);
  v11 = v5;
  v12 = v6;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in LapLengthUnitPicker.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMd, &_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMR);
  lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>();
  return Section<>.init(content:)();
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMR);
    lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMd, &_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMR);
    lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in LapLengthUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for LapLengthUnitPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  swift_getKeyPath();
  outlined init with copy of LapLengthUnitPicker(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of LapLengthUnitPicker(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type NSUnitLength and conformance NSObject();
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR, MEMORY[0x277CDF028]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for LapLengthUnitPicker(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  outlined init with copy of LapLengthUnitPicker(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of LapLengthUnitPicker(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  v14 = a2;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMR);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMR, MEMORY[0x277CE1138]);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v11[0] = a2;
  v11[1] = v8;
  v12 = *(a1 + 1);
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo12NSUnitLengthCGMd, &_s7SwiftUI7BindingVySo12NSUnitLengthCGMR);
  Binding.wrappedValue.setter();
  LapLengthUnitPicker.unit.didset();
  LapLengthUnitPicker.dismiss.getter(v7);
  DismissAction.callAsFunction()();
  return (*(v5 + 8))(v7, v4);
}

__n128 closure #2 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  v17 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter(a2, &v12);
  v6 = v13;
  v7 = v14;
  v8 = v16;
  result = v15;
  v10 = v12;
  v11 = v17;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = result;
  *(a3 + 72) = v8;
  return result;
}

double closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LapLengthUnitPicker(0);
  v22 = NSUnitLength.localizedName(formattingManager:)(*(a1 + *(v4 + 24)));
  *&v23 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v22 = *a1;
  v23 = *(a1 + 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo12NSUnitLengthCGMd, &_s7SwiftUI7BindingVySo12NSUnitLengthCGMR);
  MEMORY[0x20F30B100](&v21, v13);
  v14 = v21;
  v15 = NSUnitLength.hkUnit.getter();
  v16 = static NSObject.== infix(_:_:)();

  v17 = 0;
  v18 = 0;
  if (v16)
  {
    v18 = Image.init(systemName:)();

    v17 = 1;
  }

  v19 = v10 & 1;
  outlined copy of Text.Storage(v6, v8, v19);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v19;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;

  outlined consume of Text.Storage(v6, v8, v19);

  return result;
}

uint64_t closure #2 in LapLengthUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #2 in LapLengthUnitPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LapLengthUnitPicker(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  outlined init with copy of LapLengthUnitPicker(a1, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  outlined init with take of LapLengthUnitPicker(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  v16 = v22[0];
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMR) + 36)) = 256;
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v22[1] = v17;
  v19 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMR);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in LapLengthUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LapLengthUnitPicker(0);
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #2 in closure #1 in closure #2 in LapLengthUnitPicker.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance LapLengthUnitPicker()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA05TupleE0VyAA4TextV_APyAA6SpacerV_AA5ImageVtGSgtGGGGAEGMR);
  lazy protocol witness table accessor for type Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView> and conformance <> Section<A, B, C>();
  List<>.init(content:)();
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_MR);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type List<Never, Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMR, MEMORY[0x277CDE5A0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR);
  v6 = lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR, MEMORY[0x277CDD7A8]);
  v11 = v5;
  v12 = v6;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t type metadata accessor for LapLengthUnitPicker(uint64_t a1)
{
  result = type metadata singleton initialization cache for LapLengthUnitPicker;
  if (!type metadata singleton initialization cache for LapLengthUnitPicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LapLengthUnitPicker(uint64_t a1)
{
  type metadata accessor for Binding<NSUnitLength>(319, &lazy cache variable for type metadata for Binding<NSUnitLength>, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<DismissAction>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSUnitLength(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Binding<NSUnitLength>(319, &lazy cache variable for type metadata for [NSUnitLength], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<NSUnitLength>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSUnitLength(255, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle)
  {
    type metadata accessor for BorderedButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle);
  }

  return result;
}

uint64_t outlined init with copy of LapLengthUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LapLengthUnitPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of LapLengthUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LapLengthUnitPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in LapLengthUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for LapLengthUnitPicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #2 in LapLengthUnitPicker.body.getter(v2);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for LapLengthUnitPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter(void **a1)
{
  v3 = *(type metadata accessor for LapLengthUnitPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type NSUnitLength and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject)
  {
    type metadata accessor for NSUnitLength(255, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUnitLength and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for LapLengthUnitPicker(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #1 in LapLengthUnitPicker.body.getter((v0 + v2), v3);
}

uint64_t lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for NSUnitLength(uint64_t a1, unint64_t *a2, void *a3)
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

id FIUIWorkoutActivityType.accessibilityIdentifierString.getter()
{
  v1 = v0;
  if ([v0 effectiveTypeIdentifier] != 46)
  {
    if (![objc_opt_self() shouldDisambiguateOnLocationType_])
    {
      [v0 effectiveTypeIdentifier];
      v49 = _HKWorkoutActivityNameForActivityType();
      if (!v49)
      {
        return 0xD000000000000010;
      }

      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54._object = 0x800000020CB96FD0;
      v54._countAndFlagsBits = 0xD000000000000015;
      if (!String.hasPrefix(_:)(v54))
      {
        return v51;
      }

      v55 = String.count.getter();
      v57 = specialized Collection.dropFirst(_:)(v55, v51, v53, v56);
      v59 = v58;
      v61 = v60;
      v63 = v62;

      v51 = MEMORY[0x20F30BBA0](v57, v59, v61, v63);
LABEL_22:

      return v51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20CB5DA80;
    [v0 effectiveTypeIdentifier];
    v33 = _HKWorkoutActivityNameForActivityType();
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._object = 0x800000020CB96FD0;
      v38._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v38))
      {
        v39 = String.count.getter();
        v41 = specialized Collection.dropFirst(_:)(v39, v35, v37, v40);
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v35 = MEMORY[0x20F30BBA0](v41, v43, v45, v47);
        v37 = v48;
      }
    }

    else
    {
      v37 = 0x800000020CB96FB0;
      v35 = 0xD000000000000010;
    }

    *(v16 + 32) = v35;
    *(v16 + 40) = v37;
    v64 = [v1 isIndoor];
    v65 = 0x726F6F6474754FLL;
    if (v64)
    {
      v65 = 0x726F6F646E49;
    }

    v66 = 0xE700000000000000;
    if (v64)
    {
      v66 = 0xE600000000000000;
    }

    *(v16 + 48) = v65;
    *(v16 + 56) = v66;
LABEL_21:
    v69 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v51 = BidirectionalCollection<>.joined(separator:)();
    goto LABEL_22;
  }

  [v0 swimmingLocationType];
  result = _HKWorkoutSwimmingLocationTypeName();
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v69 = v4;
    v70 = v6;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = MEMORY[0x277D837D0];
    v9 = StringProtocol.capitalized.getter();
    v11 = v10;

    v68[2] = v9;
    v68[3] = v11;
    v68[0] = 32;
    v68[1] = 0xE100000000000000;
    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v68, v67, 0, 0, 0, 1, v8, v8, v12, v8, v7, v7, v7);
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20CB5DA80;
    [v1 effectiveTypeIdentifier];
    v17 = _HKWorkoutActivityNameForActivityType();
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._object = 0x800000020CB96FD0;
      v22._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v22))
      {
        v23 = String.count.getter();
        v25 = specialized Collection.dropFirst(_:)(v23, v19, v21, v24);
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v19 = MEMORY[0x20F30BBA0](v25, v27, v29, v31);
        v21 = v32;
      }
    }

    else
    {
      v21 = 0x800000020CB96FB0;
      v19 = 0xD000000000000010;
    }

    *(v16 + 32) = v19;
    *(v16 + 40) = v21;
    *(v16 + 48) = v13;
    *(v16 + 56) = v15;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    result = v6;
  }

  if (4 * v4 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

WorkoutUI::ActivityRingsView __swiftcall ActivityRingsView.init(activitySummary:diameter:shouldAnimate:shouldShowSprites:isWheelchairUser:)(HKActivitySummary activitySummary, Swift::Double diameter, Swift::Bool shouldAnimate, Swift::Bool shouldShowSprites, Swift::Bool isWheelchairUser)
{
  *v5 = activitySummary;
  *(v5 + 16) = shouldAnimate;
  *(v5 + 8) = diameter;
  *(v5 + 17) = shouldShowSprites;
  *(v5 + 18) = isWheelchairUser;
  result.diameter = diameter;
  result.activitySummary = activitySummary;
  result.shouldAnimate = shouldAnimate;
  return result;
}

id ActivityRingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 18) = v6;
  *(a1 + 24) = xmmword_20CB68D90;
  *(a1 + 40) = 0x3F8D89D89D89D89ELL;
  return v2;
}

id protocol witness for View.body.getter in conformance ActivityRingsView@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 18) = v6;
  *(a1 + 24) = xmmword_20CB68D90;
  *(a1 + 40) = 0x3F8D89D89D89D89ELL;
  return v2;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRingsView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t storeEnumTagSinglePayload for ActivityRingsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WheelchairStatusBridge.__allocating_init(status:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WheelchairStatusBridge.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MirrorActivityRingsPlatterView(uint64_t a1)
{
  result = type metadata singleton initialization cache for MirrorActivityRingsPlatterView;
  if (!type metadata singleton initialization cache for MirrorActivityRingsPlatterView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorActivityRingsPlatterView(uint64_t a1)
{
  type metadata accessor for ObservedObject<ActivitySummaryMetricsPublisher>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FIUIFormattingManager(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetricPlatterType();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FIUIFormattingManager(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ObservedObject<ActivitySummaryMetricsPublisher>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<ActivitySummaryMetricsPublisher>)
  {
    type metadata accessor for ActivitySummaryMetricsPublisher();
    _s11WorkoutCore31ActivitySummaryMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher, MEMORY[0x277D7E670], MEMORY[0x277D7E668]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<ActivitySummaryMetricsPublisher>);
    }
  }
}

uint64_t type metadata accessor for FIUIFormattingManager(uint64_t a1, unint64_t *a2, void *a3)
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

void closure #1 in MirrorActivityRingsPlatterView.body.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v186 = a2;
  v187 = type metadata accessor for ActivityRing();
  v197 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v180 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v179 = &v174 - v5;
  MEMORY[0x28223BE20](v6);
  v178 = &v174 - v7;
  MEMORY[0x28223BE20](v8);
  v191 = &v174 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy07WorkoutB0010RingDetailC0VAA30_EnvironmentKeyWritingModifierVyAJ0lC5StyleOGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy07WorkoutB0010RingDetailC0VAA30_EnvironmentKeyWritingModifierVyAJ0lC5StyleOGG_Qo_MR);
  v184 = *(v10 - 8);
  v185 = v10;
  MEMORY[0x28223BE20](v10);
  v196 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v201 = &v174 - v13;
  MEMORY[0x28223BE20](v14);
  v195 = &v174 - v15;
  MEMORY[0x28223BE20](v16);
  v200 = &v174 - v17;
  v199 = type metadata accessor for AccessibilityChildBehavior();
  v18 = *(v199 - 1);
  MEMORY[0x28223BE20](v199);
  v20 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
  MEMORY[0x28223BE20](v189);
  v22 = &v174 - v21;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy07WorkoutB0014MoveRingDetailC0VAA30_EnvironmentKeyWritingModifierVyAJ0lC5StyleOGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVy07WorkoutB0014MoveRingDetailC0VAA30_EnvironmentKeyWritingModifierVyAJ0lC5StyleOGG_Qo_MR);
  v183 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v174 - v25;
  v27 = type metadata accessor for ActivityRings();
  v181 = *(v27 - 8);
  v182 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = ActivitySummaryMetricsPublisher.activitySummary.getter();
  HKActivitySummary.activityRings()();
  v31 = ActivitySummaryMetricsPublisher.isWheelchairUser.getter();
  v32 = *(a1 + *(type metadata accessor for MirrorActivityRingsPlatterView(0) + 32));
  v33 = v31 & 1;
  v190 = v30;
  ActivityRings.move.getter();
  v34 = *(a1 + 16);
  v35 = type metadata accessor for MoveRingDetailView(0);
  v36 = *(v35 + 20);
  v198 = v33;
  v22[v36] = v33;
  *&v22[*(v35 + 24)] = v34;
  KeyPath = swift_getKeyPath();
  v38 = &v22[*(v189 + 36)];
  *v38 = KeyPath;
  v38[8] = 5;
  v39 = v34;
  static AccessibilityChildBehavior.combine.getter();
  lazy protocol witness table accessor for type ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
  v192 = v26;
  View.accessibilityElement(children:)();
  v40 = *(v18 + 8);
  v188 = v20;
  v189 = v18 + 8;
  v40(v20, v199);
  outlined destroy of ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v22, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
  v41 = v191;
  ActivityRings.exercise.getter();
  ActivityRing.value.getter();
  v43 = v42;
  v44 = v197 + 8;
  v45 = *(v197 + 8);
  v46 = v41;
  v47 = v187;
  v45(v46, v187);
  v48 = v178;
  v191 = v29;
  ActivityRings.exercise.getter();
  ActivityRing.goal.getter();
  v50 = v49;
  v197 = v44;
  v178 = v45;
  v45(v48, v47);
  v177 = swift_getKeyPath();
  v217 = 0;
  v51 = objc_opt_self();
  v52 = [v51 currentDevice];
  LOBYTE(v45) = specialized UIDevice.screenType.getter();

  v53 = dbl_20CB68F98[v45];
  v54 = objc_opt_self();
  v55 = [v54 mainScreen];
  [v55 scale];
  v57 = v56;

  v58 = [v54 mainScreen];
  [v58 nativeScale];
  v60 = v59;

  if (v57 != v60)
  {
    v61 = [v54 mainScreen];
    [v61 scale];
    v63 = v62;

    v64 = [v54 mainScreen];
    [v64 nativeScale];
    v66 = v65;

    v53 = v53 * (v63 / v66 * 0.95);
  }

  v67 = [v51 currentDevice];
  v68 = specialized UIDevice.screenType.getter();

  v69 = dbl_20CB68FF0[v68];
  v70 = [v54 mainScreen];
  [v70 scale];
  v72 = v71;

  v73 = [v54 mainScreen];
  [v73 nativeScale];
  v75 = v74;

  if (v72 != v75)
  {
    v76 = [v54 mainScreen];
    [v76 scale];
    v78 = v77;

    v79 = [v54 mainScreen];
    [v79 nativeScale];
    v81 = v80;

    v69 = v69 * (v78 / v81 * 0.95);
  }

  v82 = [v51 currentDevice];
  v83 = specialized UIDevice.screenType.getter();

  v84 = dbl_20CB69048[v83];
  v85 = [v54 mainScreen];
  [v85 scale];
  v87 = v86;

  v88 = [v54 mainScreen];
  [v88 nativeScale];
  v90 = v89;

  v91 = v40;
  if (v87 != v90)
  {
    v92 = [v54 aL];
    [v92 scale];
    v94 = v93;

    v95 = [v54 aL];
    [v95 nativeScale];
    v97 = v96;

    v84 = v84 * (v94 / v97 * 0.95);
  }

  v98 = v217;
  v99 = swift_getKeyPath();
  *&v209 = 1;
  *(&v209 + 1) = v43;
  *&v210 = v50;
  BYTE8(v210) = v198;
  *&v211 = v177;
  BYTE8(v211) = v98;
  *&v212 = v53;
  *(&v212 + 1) = v69;
  *&v213 = v84;
  *(&v213 + 1) = v99;
  v214 = 5;
  v100 = v188;
  static AccessibilityChildBehavior.combine.getter();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMR);
  v176 = lazy protocol witness table accessor for type ModifiedContent<RingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
  v177 = v101;
  View.accessibilityElement(children:)();
  v175 = v91;
  v91(v100, v199);
  v215[2] = v211;
  v215[3] = v212;
  v215[4] = v213;
  v216 = v214;
  v215[0] = v209;
  v215[1] = v210;
  outlined destroy of ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(v215, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMR);
  v102 = v179;
  ActivityRings.stand.getter();
  ActivityRing.value.getter();
  v104 = v103;
  v105 = v102;
  v106 = v187;
  v107 = v178;
  (v178)(v105, v187);
  v108 = v180;
  ActivityRings.stand.getter();
  ActivityRing.goal.getter();
  v110 = v109;
  v107(v108, v106);
  v111 = swift_getKeyPath();
  v208 = 0;
  v112 = [v51 currentDevice];
  v113 = specialized UIDevice.screenType.getter();

  v114 = dbl_20CB68F98[v113];
  v115 = [v54 aL];
  [v115 scale];
  v117 = v116;

  v118 = [v54 aL];
  [v118 nativeScale];
  v120 = v119;

  if (v117 != v120)
  {
    v121 = [v54 aL];
    [v121 scale];
    v123 = v122;

    v124 = [v54 aL];
    [v124 nativeScale];
    v126 = v125;

    v114 = v114 * (v123 / v126 * 0.95);
  }

  v127 = [v51 currentDevice];
  v128 = specialized UIDevice.screenType.getter();

  v129 = dbl_20CB68FF0[v128];
  v130 = [v54 aL];
  [v130 scale];
  v132 = v131;

  v133 = [v54 aL];
  [v133 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
  v135 = v134;

  if (v132 != v135)
  {
    v136 = [v54 aL];
    [v136 scale];
    v138 = v137;

    v139 = [v54 aL];
    [v139 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
    v141 = v140;

    v129 = v129 * (v138 / v141 * 0.95);
  }

  v142 = [v51 currentDevice];
  v143 = specialized UIDevice.screenType.getter();

  v144 = dbl_20CB69048[v143];
  v145 = [v54 aL];
  [v145 scale];
  v147 = v146;

  v148 = [v54 aL];
  [v148 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
  v150 = v149;

  if (v147 != v150)
  {
    v151 = [v54 aL];
    [v151 scale];
    v153 = v152;

    v154 = [v54 aL];
    [v154 &_OBJC_LABEL_PROTOCOL___HKKeyValueDomainObserver + 4];
    v156 = v155;

    v144 = v144 * (v153 / v156 * 0.95);
  }

  v157 = v208;
  v158 = swift_getKeyPath();
  *&v202 = 0;
  *(&v202 + 1) = v104;
  *&v203 = v110;
  BYTE8(v203) = v198;
  *&v204 = v111;
  BYTE8(v204) = v157;
  *&v205 = v114;
  *(&v205 + 1) = v129;
  *&v206 = v144;
  *(&v206 + 1) = v158;
  v207 = 5;
  v159 = v188;
  static AccessibilityChildBehavior.combine.getter();
  v160 = v195;
  View.accessibilityElement(children:)();
  v175(v159, v199);
  v211 = v204;
  v212 = v205;
  v213 = v206;
  v214 = v207;
  v209 = v202;
  v210 = v203;
  outlined destroy of ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(&v209, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMR);
  v161 = v183;
  v199 = *(v183 + 16);
  v162 = v193;
  v199(v193, v192, v194);
  v164 = v184;
  v163 = v185;
  v165 = *(v184 + 16);
  v165(v201, v200, v185);
  v165(v196, v160, v163);
  v166 = v186;
  *v186 = v190;
  v166[1] = v32;
  *(v166 + 8) = 256;
  *(v166 + 18) = v198;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI17ActivityRingsViewV_05SwiftB00E0PADE20accessibilityElement8childrenQrAD26AccessibilityChildBehaviorV_tFQOyAD15ModifiedContentVyAA014MoveRingDetailE0VAD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGG_Qo_AfDEAgHQrAJ_tFQOyALyAA0pqE0VASG_Qo_AYtMd, &_s9WorkoutUI17ActivityRingsViewV_05SwiftB00E0PADE20accessibilityElement8childrenQrAD26AccessibilityChildBehaviorV_tFQOyAD15ModifiedContentVyAA014MoveRingDetailE0VAD30_EnvironmentKeyWritingModifierVyAA0aE5StyleOGG_Qo_AfDEAgHQrAJ_tFQOyALyAA0pqE0VASG_Qo_AYtMR);
  v168 = v162;
  v169 = v194;
  v199(v166 + v167[12], v168, v194);
  v165(v166 + v167[16], v201, v163);
  v170 = v166 + v167[20];
  v171 = v196;
  v165(v170, v196, v163);
  v172 = *(v164 + 8);
  v172(v195, v163);
  v172(v200, v163);
  v173 = *(v161 + 8);
  v173(v192, v169);
  (*(v181 + 8))(v191, v182);
  v172(v171, v163);
  v172(v201, v163);
  v173(v193, v169);
}

void protocol witness for View.body.getter in conformance MirrorActivityRingsPlatterView(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAH013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAH014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGG_Qo_AqAEArSQrAU_tFQOyAWyAH0yzD0VA2_G_Qo_A8_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAH013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAH014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGG_Qo_AqAEArSQrAU_tFQOyAWyAH0yzD0VA2_G_Qo_A8_tGGMR);
  closure #1 in MirrorActivityRingsPlatterView.body.getter(v1, &a1[*(v3 + 44)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB018MoveRingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eI5StyleOGGMR);
    _s11WorkoutCore31ActivitySummaryMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type MoveRingDetailView and conformance MoveRingDetailView, type metadata accessor for MoveRingDetailView, &protocol conformance descriptor for MoveRingDetailView);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s11WorkoutCore31ActivitySummaryMetricsPublisherCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<RingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RingDetailViewVAA30_EnvironmentKeyWritingModifierVyAD0eH5StyleOGGMR);
    lazy protocol witness table accessor for type RingDetailView and conformance RingDetailView();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RingDetailView and conformance RingDetailView()
{
  result = lazy protocol witness table cache variable for type RingDetailView and conformance RingDetailView;
  if (!lazy protocol witness table cache variable for type RingDetailView and conformance RingDetailView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RingDetailView and conformance RingDetailView);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<MoveRingDetailView, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ActivityRingsView, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ActivityRingsView, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ActivityRingsView, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAH013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAH014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGG_Qo_AqAEArSQrAU_tFQOyAWyAH0yzD0VA2_G_Qo_A8_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB0025MirrorHeroGraphicsMetricsdF0VGAA05TupleD0VyAH013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAH014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGG_Qo_AqAEArSQrAU_tFQOyAWyAH0yzD0VA2_G_Qo_A8_tGGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_0(&lazy protocol witness table cache variable for type _LayoutRoot<MirrorHeroGraphicsMetricsViewLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMd, &_s7SwiftUI11_LayoutRootVy07WorkoutB0029MirrorHeroGraphicsMetricsViewC0VGMR, MEMORY[0x277CDF510]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_0(&lazy protocol witness table cache variable for type TupleView<(ActivityRingsView, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAD014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGG_Qo_AhAEAiJQrAL_tFQOyANyAD0qrD0VAUG_Qo_A_tGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0013ActivityRingsD0V_AA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAD014MoveRingDetailD0VAA30_EnvironmentKeyWritingModifierVyAD0eD5StyleOGG_Qo_AhAEAiJQrAL_tFQOyANyAD0qrD0VAUG_Qo_A_tGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<MirrorHeroGraphicsMetricsViewLayout>, TupleView<(ActivityRingsView, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.accessibilityElement(children:)>>.0)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGACyxGAA0hF0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void one-time initialization function for lineWidth()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB69290[v2];
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

  static MirrorRingConstants.lineWidth = *&v3;
}

__n128 closure #1 in AnimatingOpenGoalTimeRing.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ElapsedTimeFormatter();
  v9 = *(a2 + *(type metadata accessor for AnimatingOpenGoalTimeRing(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  v9(v8);
  (*(v6 + 8))(v8, v5);
  Double.smoothedForDisplay.getter();
  v11 = MEMORY[0x20F305C20](0, 0, floor(v10));
  v13 = v12;
  v14 = static Alignment.center.getter();
  v16 = v15;
  closure #1 in closure #1 in AnimatingOpenGoalTimeRing.body.getter(v23, v11, v13, &v25);
  v44 = v33;
  v45 = v34;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v47[8] = v33;
  v47[9] = v34;
  v47[4] = v29;
  v47[5] = v30;
  v47[6] = v31;
  v47[7] = v32;
  v47[0] = v25;
  v47[1] = v26;
  v46 = v35;
  v48 = v35;
  v47[2] = v27;
  v47[3] = v28;
  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v36, &v24, &_s7SwiftUI9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAHyAD10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAHyAD10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);
  outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v47, &_s7SwiftUI9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAHyAD10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAHyAD10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGMR);

  *a3 = v14;
  *(a3 + 8) = v16;
  v17 = v45;
  *(a3 + 144) = v44;
  *(a3 + 160) = v17;
  *(a3 + 176) = v46;
  v18 = v41;
  *(a3 + 80) = v40;
  *(a3 + 96) = v18;
  v19 = v43;
  *(a3 + 112) = v42;
  *(a3 + 128) = v19;
  v20 = v37;
  *(a3 + 16) = v36;
  *(a3 + 32) = v20;
  result = v39;
  *(a3 + 48) = v38;
  *(a3 + 64) = result;
  return result;
}

void closure #1 in closure #1 in AnimatingOpenGoalTimeRing.body.getter(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v40 = a2;
  *(&v40 + 1) = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnimatingOpenGoalTimeRing(0);
  v11 = *(a1 + *(v10 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  v12 = v11(v9);
  (*(v7 + 8))(v9, v6);
  v13 = objc_opt_self();
  v14 = [v13 keyColors];
  if (!v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 nonGradientTextColor];

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  Color.init(uiColor:)();
  v17 = Color.opacity(_:)();

  v18 = [v13 keyColors];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = Color.init(uiColor:)();
  if (one-time initialization token for lineWidth != -1)
  {
    swift_once();
  }

  v22 = static MirrorRingConstants.lineWidth;
  v23 = (a1 + *(v10 + 20));
  v25 = *v23;
  v24 = v23[1];
  v26 = one-time initialization token for heroHeight;

  if (v26 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = [v13 keyColors];
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 nonGradientTextColor];

  if (v29)
  {
    v30 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v32 = v40;
    v42 = v40;
    v43 = 0uLL;
    *&v44 = v25;
    *(&v44 + 1) = v24;
    LOWORD(v45) = 0;
    *(&v45 + 1) = 0;
    *&v46[0] = 0;
    *(&v46[2] + 8) = v63;
    *(v46 + 8) = v61;
    *(&v46[1] + 8) = v62;
    *(&v46[3] + 1) = KeyPath;
    v47 = v30;
    *a4 = v12 / 60.0;
    *(a4 + 8) = v17;
    *(a4 + 16) = v21;
    *(a4 + 24) = v22;
    v33 = v42;
    v34 = v43;
    v35 = v45;
    *(a4 + 64) = v44;
    *(a4 + 80) = v35;
    *(a4 + 32) = v33;
    *(a4 + 48) = v34;
    v36 = v46[0];
    v37 = v46[1];
    v38 = v46[2];
    v39 = v46[3];
    *(a4 + 160) = v30;
    *(a4 + 128) = v38;
    *(a4 + 144) = v39;
    *(a4 + 96) = v36;
    *(a4 + 112) = v37;
    v48 = v32;
    v49 = 0;
    v50 = 0;
    v51 = v25;
    v52 = v24;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v59 = KeyPath;
    v60 = v30;

    outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v42, &v41, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v48, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB010MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t protocol witness for View.body.getter in conformance AnimatingOpenGoalTimeRing@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v23[0] = *(a1 - 8);
  v4 = *(v23[0] + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PeriodicTimelineSchedule();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  (*(v7 + 16))(v9, v3, v6, v15);
  PeriodicTimelineSchedule.init(from:by:)();
  outlined init with copy of AnimatingOpenGoalTimeRing(v3, v5);
  v18 = (*(v23[0] + 80) + 16) & ~*(v23[0] + 80);
  v19 = swift_allocObject();
  outlined init with take of AnimatingOpenGoalTimeRing(v5, v19 + v18);
  (*(v11 + 16))(v13, v17, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in AnimatingOpenGoalTimeRing.body.getter;
  *(v20 + 24) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(v21);
  lazy protocol witness table accessor for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR, MEMORY[0x277CE11A8]);
  TimelineView<>.init(_:content:)();
  return (*(v11 + 8))(v17, v10);
}

void *closure #1 in InfinitelyAnimatableProgressRing.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  v9 = static Alignment.center.getter();
  v11 = v10;
  closure #1 in closure #1 in InfinitelyAnimatableProgressRing.body.getter(a2, a3, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(__dst, &v13, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AEyAjLyAA5ColorVGGAEyAA6VStackVyACyAEyAEyAEyAA6CircleVAA12_FrameLayoutVGAA08_PaddingS0VGASG_AA6SpacerVtGGAZGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AEyAjLyAA5ColorVGGAEyAA6VStackVyACyAEyAEyAEyAA6CircleVAA12_FrameLayoutVGAA08_PaddingS0VGASG_AA6SpacerVtGGAZGtGMR);
  outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v16, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AEyAjLyAA5ColorVGGAEyAA6VStackVyACyAEyAEyAEyAA6CircleVAA12_FrameLayoutVGAA08_PaddingS0VGASG_AA6SpacerVtGGAZGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AEyAjLyAA5ColorVGGAEyAA6VStackVyACyAEyAEyAEyAA6CircleVAA12_FrameLayoutVGAA08_PaddingS0VGASG_AA6SpacerVtGGAZGtGMR);
  *a4 = v9;
  a4[1] = v11;
  return memcpy(a4 + 2, __dst, 0x190uLL);
}

uint64_t closure #1 in closure #1 in InfinitelyAnimatableProgressRing.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5DA80;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  MEMORY[0x20F30B340](v9);
  MEMORY[0x20F308A10](v105, 0.5, 0.5, -1.57079633, 0.0);
  v29 = v105[0];
  v10 = v105[1];
  v11 = v105[2];
  v12 = v105[3];
  v13 = v105[4];
  Path.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v27 = static HorizontalAlignment.center.getter();
  v93 = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v105[5];
  v15 = v106;
  v16 = v107;
  v17 = v108;
  v18 = v109;
  v19 = v110;
  LOBYTE(v9) = static Edge.Set.top.getter();
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v91 = v15;
  v90 = v17;
  v89 = 0;
  *&v38 = v14;
  BYTE8(v38) = v15;
  *&v39 = v16;
  BYTE8(v39) = v17;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  LOBYTE(v41) = v20;
  *(&v41 + 1) = v21;
  *&v42 = v22;
  *(&v42 + 1) = v23;
  *&v43 = v24;
  BYTE8(v43) = 0;
  v44 = a2;
  v45 = v38;
  v46 = v39;
  v51 = a2;
  v49 = v42;
  v50 = v43;
  v47 = v40;
  v48 = v41;
  v37 = 1;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  v55 = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  v62 = v24;
  v63 = 0;
  v64 = a2;

  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v38, v74, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v52, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingG0VGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  *&v92[55] = v48;
  *&v92[71] = v49;
  *&v92[87] = v50;
  *&v92[7] = v45;
  *&v92[23] = v46;
  *&v92[103] = v51;
  *&v92[39] = v47;
  v25 = v93;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v94[7] = v111;
  *&v94[23] = v112;
  *&v94[39] = v113;
  v65[2] = v102;
  v65[3] = v103;
  v65[4] = v104;
  v65[1] = v101;
  v65[0] = v100;
  *&v66 = v29;
  *(&v66 + 1) = v10;
  *&v67 = v11;
  *(&v67 + 1) = v12;
  v68 = v13;
  __src[4] = v104;
  __src[5] = v66;
  __src[0] = v100;
  __src[1] = v101;
  __src[2] = v102;
  __src[3] = v103;
  __src[6] = v67;
  v69[4] = v99;
  v69[3] = v98;
  v69[2] = v97;
  v69[0] = v95;
  v69[1] = v96;
  v70 = a2;
  *(&__src[8] + 8) = v96;
  *(&__src[7] + 8) = v95;
  *&__src[7] = v13;
  *(&__src[12] + 1) = a2;
  *(&__src[11] + 8) = v99;
  *(&__src[10] + 8) = v98;
  *(&__src[9] + 8) = v97;
  v71 = v27;
  v72[0] = v25;
  *&v72[33] = *&v92[32];
  *&v72[17] = *&v92[16];
  *&v72[1] = *v92;
  *&v72[96] = *&v92[95];
  *&v72[81] = *&v92[80];
  *&v72[65] = *&v92[64];
  *&v72[49] = *&v92[48];
  *v73 = 0;
  v73[8] = 1;
  *&v73[56] = *(&v113 + 1);
  *&v73[41] = *&v94[32];
  *&v73[25] = *&v94[16];
  *&v73[9] = *v94;
  __src[15] = *&v72[16];
  __src[16] = *&v72[32];
  __src[13] = v27;
  __src[14] = *v72;
  __src[19] = *&v72[80];
  __src[20] = *&v72[96];
  __src[17] = *&v72[48];
  __src[18] = *&v72[64];
  __src[23] = *&v73[32];
  __src[24] = *&v73[48];
  __src[21] = *v73;
  __src[22] = *&v73[16];
  memcpy(a3, __src, 0x190uLL);
  v79 = *&v92[48];
  v80 = *&v92[64];
  *v81 = *&v92[80];
  *&v81[15] = *&v92[95];
  v76 = *v92;
  v77 = *&v92[16];
  v78 = *&v92[32];
  v84 = *v94;
  v74[0] = v27;
  v74[1] = 0;
  v75 = v25;
  v82 = 0;
  v83 = 1;
  v85 = *&v94[16];
  *v86 = *&v94[32];
  *&v86[15] = *&v94[47];
  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v65, v30, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGGMR);
  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v69, v30, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(&v71, v30, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA6SpacerVtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA6SpacerVtGGAKGMR);
  outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v74, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA6SpacerVtGGAKGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingJ0VGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA6SpacerVtGGAKGMR);
  v87[2] = v97;
  v87[3] = v98;
  v87[4] = v99;
  v87[1] = v96;
  v87[0] = v95;
  v88 = a2;
  outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v87, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v30[2] = v102;
  v30[3] = v103;
  v30[4] = v104;
  v30[0] = v100;
  v30[1] = v101;
  v31 = v29;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  return outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(v30, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGGMd, &_s7SwiftUI15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGGMR);
}

uint64_t protocol witness for View.body.getter in conformance InfinitelyAnimatableProgressRing@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v8 = v3 * 360.0 * 0.0174532925;

  static UnitPoint.center.getter();
  v10 = v9;
  v12 = v11;
  result = static Animation.linear(duration:)();
  *a1 = partial apply for closure #1 in InfinitelyAnimatableProgressRing.body.getter;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = result;
  *(a1 + 48) = v8;
  *(a1 + 56) = 1;
  return result;
}

uint64_t type metadata accessor for AnimatingOpenGoalTimeRing(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnimatingOpenGoalTimeRing;
  if (!type metadata singleton initialization cache for AnimatingOpenGoalTimeRing)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnimatingOpenGoalTimeRing(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t outlined init with copy of AnimatingOpenGoalTimeRing(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatingOpenGoalTimeRing(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnimatingOpenGoalTimeRing(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatingOpenGoalTimeRing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double partial apply for closure #1 in AnimatingOpenGoalTimeRing.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AnimatingOpenGoalTimeRing(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = closure #1 in AnimatingOpenGoalTimeRing.body.getter(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t partial apply for specialized closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in TimelineView<>.init(_:content:)(a1, *(v2 + 16), a2);
}

unint64_t lazy protocol witness table accessor for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule(double a1)
{
  result = lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule;
  if (!lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule)
  {
    type metadata accessor for PeriodicTimelineSchedule();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InfinitelyAnimatableProgressRing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for InfinitelyAnimatableProgressRing(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0Vy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyANyAJ10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0Vy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyANyAJ10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVy07WorkoutB032InfinitelyAnimatableProgressRingV_AA15ModifiedContentVyAJyAF10MetricTextVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in InfinitelyAnimatableProgressRing.body.getter()
{
  return partial apply for closure #1 in closure #1 in closure #1 in InfinitelyAnimatableProgressRing.body.getter();
}

{
  return Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
}

uint64_t outlined init with copy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGAA010_AnimationO0VyAA5AngleVGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGAA010_AnimationO0VyAA5AngleVGGAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGAA010_AnimationO0VyAA5AngleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGAA010_AnimationO0VyAA5AngleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Angle> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVyAA5AngleVGMd, &_s7SwiftUI18_AnimationModifierVyAA5AngleVGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect>, _AnimationModifier<Angle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA14GeometryReaderVyAA6ZStackVyAA9TupleViewVyACyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_ACyAnPyAA5ColorVGGACyAA6VStackVyAIyACyACyACyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AIyAnPyAA5ColorVGGAIyAA6VStackVyAGyAIyAIyAIyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGMd, &_s7SwiftUI14GeometryReaderVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA13_StrokedShapeVyAA4PathVGAA24_ForegroundStyleModifierVyAA15AngularGradientVGG_AIyAnPyAA5ColorVGGAIyAA6VStackVyAGyAIyAIyAIyAA6CircleVAA12_FrameLayoutVGAA08_PaddingV0VGAWG_AA6SpacerVtGGA2_GtGGGMR, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<AngularGradient>>, ModifiedContent<_StrokedShape<Path>, _ForegroundStyleModifier<Color>>, ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _PaddingLayout>, _ForegroundStyleModifier<Color>>, Spacer)>>, _FrameLayout>)>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(InfinitelyAnimatableProgressRing, ModifiedContent<ModifiedContent<MetricText, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void MultisportElapsedTimeView.init(activityString:time:remainingLegs:dimmed:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  v14 = specialized UIDevice.screenType.getter();

  v15 = dbl_20CB69558[v14];
  v16 = objc_opt_self();
  v17 = [v16 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [v16 mainScreen];
  [v20 nativeScale];
  v22 = v21;

  if (v19 != v22)
  {
    v23 = [v16 mainScreen];
    [v23 scale];
    v25 = v24;

    v26 = [v16 mainScreen];
    [v26 nativeScale];
    v28 = v27;

    v15 = v15 * (v25 / v28 * 0.95);
  }

  *(a5 + 40) = v15;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
}

uint64_t MultisportElapsedTimeView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = v0[1];
  v25[0] = *v0;
  v25[1] = v7;
  v25[2] = v0[2];
  if (one-time initialization token for cornerSize != -1)
  {
    swift_once();
  }

  v8 = -*&static IntervalPlatterConstants.cornerSize;
  *v3 = static VerticalAlignment.center.getter();
  v3[1] = v8;
  *(v3 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQyAQyAQyAQyAQyAA0F0VyAIyAQyAQyAQyAA4TextVAA21_TraitWritingModifierVyAA0g8PriorityR3KeyVGG07WorkoutB015MetricValueFontVGAA0l10AttachmentT0VG_AQyAQyAQyAQyAQyAUA0_0x15DescriptionCoreZ0VGA0_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA0_17HeaderHyphenationVGAA012_EnvironmentvsT0Vy12CoreGraphics7CGFloatVGGA5_GtGGA18_yAA5ColorVSgGGAA08_PaddingG0VGA33_GAA016_BackgroundStyleT0VyA28_GGAA06_FrameG0VGAA11_ClipEffectVyA0_13RoundedCornerVGGAWyAA06ZIndexrV0VGGAA14_OpacityEffectVG_Qo__AIyAQyAQyAQyAQyAA9RectangleVA30_GA41_GA47_GA51_G_AQyAkAEAlMQrAO_tFQOyAQyA62_A54_G_Qo_A5_GtGSgAIyA62__AQyA61_A54_GtGSgAA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAQyAQyAQyAQyAQyAQyAQyAA0F0VyAIyAQyAQyAQyAA4TextVAA21_TraitWritingModifierVyAA0g8PriorityR3KeyVGG07WorkoutB015MetricValueFontVGAA0l10AttachmentT0VG_AQyAQyAQyAQyAQyAUA0_0x15DescriptionCoreZ0VGA0_26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGA0_17HeaderHyphenationVGAA012_EnvironmentvsT0Vy12CoreGraphics7CGFloatVGGA5_GtGGA18_yAA5ColorVSgGGAA08_PaddingG0VGA33_GAA016_BackgroundStyleT0VyA28_GGAA06_FrameG0VGAA11_ClipEffectVyA0_13RoundedCornerVGGAWyAA06ZIndexrV0VGGAA14_OpacityEffectVG_Qo__AIyAQyAQyAQyAQyAA9RectangleVA30_GA41_GA47_GA51_G_AQyAkAEAlMQrAO_tFQOyAQyA62_A54_G_Qo_A5_GtGSgAIyA62__AQyA61_A54_GtGSgAA6SpacerVtGGMR);
  closure #1 in MultisportElapsedTimeView.body.getter(v25, v3 + *(v9 + 44));
  MetricPlatterConstants.init()(v17);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>(v3, v6, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMR);
  v10 = &v6[*(v4 + 36)];
  v11 = v23;
  v12 = v24;
  v10[4] = v22;
  v10[5] = v11;
  v10[6] = v12;
  v13 = v19;
  *v10 = v18;
  v10[1] = v13;
  v14 = v21;
  v10[2] = v20;
  v10[3] = v14;
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  return outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(v6, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMR);
}

void closure #1 in MultisportElapsedTimeView.body.getter(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v164 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGMR);
  v159 = *(v3 - 8);
  v160 = v3;
  MEMORY[0x28223BE20](v3);
  v146 = &v140 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_MR);
  v142 = *(v5 - 8);
  v143 = v5;
  MEMORY[0x28223BE20](v5);
  v141 = &v140 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v144 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v163 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v140 - v14;
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v157 = *(v15 - 8);
  v158 = v15;
  MEMORY[0x28223BE20](v15);
  v166 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v140 - v18;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v147);
  v21 = &v140 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMR);
  MEMORY[0x28223BE20](v148);
  v23 = &v140 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMR);
  MEMORY[0x28223BE20](v149);
  v25 = &v140 - v24;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMR);
  MEMORY[0x28223BE20](v150);
  v27 = &v140 - v26;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMR);
  MEMORY[0x28223BE20](v151);
  *&v156 = &v140 - v28;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMR);
  MEMORY[0x28223BE20](v155);
  v154 = &v140 - v29;
  v152 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMR));
  MEMORY[0x28223BE20](*&v152);
  *&v153 = &v140 - v30;
  *(&v156 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMR);
  MEMORY[0x28223BE20](*(&v156 + 1));
  v32 = &v140 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0g10AttachmentQ0VG_AIyAIyAIyAIyAIyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0g10AttachmentQ0VG_AIyAIyAIyAIyAIyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo_MR);
  v161 = *(v33 - 8);
  v162 = v33;
  MEMORY[0x28223BE20](v33);
  v167 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v168 = &v140 - v36;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0x4008000000000000;
  v19[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA4TextVAA21_TraitWritingModifierVyAA0g8PriorityL3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentN0VG_AKyAKyAKyAKyAKyAmT0r15DescriptionCoreT0VGAT26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAT17HeaderHyphenationVGAA012_EnvironmentpmN0Vy0X8Graphics7CGFloatVGGAYGtGGMd, L"4\as");
  v38 = a1;
  closure #1 in closure #1 in MultisportElapsedTimeView.body.getter(a1, &v19[*(v37 + 44)]);
  v39 = [objc_opt_self() keyColors];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 nonGradientTextColor];

    if (v41)
    {
      v42 = Color.init(uiColor:)();
      KeyPath = swift_getKeyPath();
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v19, v21, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMR);
      v44 = &v21[*(v147 + 36)];
      *v44 = KeyPath;
      v44[1] = v42;
      LOBYTE(v42) = static Edge.Set.leading.getter();
      MetricPlatterConstants.init()(&v234);
      EdgeInsets.init(_all:)();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v21, v23, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMR);
      v53 = &v23[*(v148 + 36)];
      *v53 = v42;
      *(v53 + 1) = v46;
      *(v53 + 2) = v48;
      *(v53 + 3) = v50;
      *(v53 + 4) = v52;
      v53[40] = 0;
      LOBYTE(v42) = static Edge.Set.trailing.getter();
      v54 = v38;
      EdgeInsets.init(_all:)();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v23, v25, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMR);
      v63 = &v25[*(v149 + 36)];
      *v63 = v42;
      *(v63 + 1) = v56;
      *(v63 + 2) = v58;
      *(v63 + 3) = v60;
      *(v63 + 4) = v62;
      v63[40] = 0;
      if (one-time initialization token for primaryPlatterColor != -1)
      {
        swift_once();
      }

      v64 = static MultiSportWorkoutConfiguration.primaryPlatterColor;
      v65 = Color.init(uiColor:)();
      v66 = static Edge.Set.all.getter();
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v25, v27, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMR);
      v67 = &v27[*(v150 + 36)];
      *v67 = v65;
      v67[8] = v66;
      v68 = v156;
      if (one-time initialization token for stepViewMaxHeight != -1)
      {
        swift_once();
      }

      v69 = static IntervalPlatterConstants.stepViewMaxHeight;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v27, v68, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMR);
      v70 = (v68 + *(v151 + 36));
      v71 = v247;
      *v70 = v246;
      v70[1] = v71;
      v70[2] = v248;
      if (one-time initialization token for cornerSize != -1)
      {
        swift_once();
      }

      v72 = *&static IntervalPlatterConstants.cornerSize;
      v73 = v68;
      v74 = v154;
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v73, v154, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMR);
      v75 = v74 + *(v155 + 36);
      *v75 = v72;
      *(v75 + 8) = 10;
      *(v75 + 16) = 256;
      v76 = v74;
      v77 = *&v153;
      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v76, *&v153, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMR);
      *(v77 + *(*&v152 + 36)) = 0x3FF0000000000000;
      if (v54[2])
      {
        v78 = 0.35;
      }

      else
      {
        v78 = 1.0;
      }

      outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(v77, v32, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMR);
      *&v32[*(*(&v156 + 1) + 36)] = v78;
      v79 = v166;
      static AccessibilityChildBehavior.combine.getter();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
      View.accessibilityElement(children:)();
      v80 = *(v157 + 8);
      v81 = v79;
      v82 = v158;
      v80(v81, v158);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v32, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMR);
      if (*(v54 + 3) < 1)
      {
        v112 = v165;
        (*(v159 + 56))(v165, 1, 1, v160);
      }

      else
      {
        v157 = *(v54 + 3);
        *(&v156 + 1) = static Color.black.getter();
        *&v156 = swift_getKeyPath();
        static Alignment.center.getter();
        v153 = v72 + 2.0;
        _FrameLayout.init(width:height:alignment:)();
        if (one-time initialization token for secondaryPlatterColor != -1)
        {
          swift_once();
        }

        v83 = static MultiSportWorkoutConfiguration.secondaryPlatterColor;
        v84 = Color.init(uiColor:)();
        v85 = swift_getKeyPath();
        static Alignment.center.getter();
        v152 = v72 + 5.0;
        v154 = v69;
        _FrameLayout.init(width:height:alignment:)();
        *&v222 = v85;
        *(&v222 + 1) = v84;
        *&v226 = v72;
        *(&v226 + 1) = 10;
        LOWORD(v227) = 256;
        *(&v227 + 1) = 0x3FE0000000000000;
        *&v228 = v78;
        v86 = v166;
        static AccessibilityChildBehavior.ignore.getter();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMR);
        v88 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
        v89 = v141;
        v155 = v87;
        v90 = v88;
        View.accessibilityElement(children:)();
        v80(v86, v82);
        v238 = v226;
        v239 = v227;
        *&v240 = v228;
        v234 = v222;
        v235 = v223;
        v237 = v225;
        v236 = v224;
        outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v234, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMR);
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v91 = WorkoutUIBundle.super.isa;
        v249._object = 0xE000000000000000;
        v92.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v92.value._object = 0xEB00000000656C62;
        v93._object = 0x800000020CB97020;
        v93._countAndFlagsBits = 0xD000000000000017;
        v94._countAndFlagsBits = 0;
        v94._object = 0xE000000000000000;
        v249._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v93, v92, v91, v94, v249);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v95 = swift_allocObject();
        v96 = MEMORY[0x277D83B88];
        *(v95 + 16) = xmmword_20CB5DA70;
        v97 = MEMORY[0x277D83C10];
        *(v95 + 56) = v96;
        *(v95 + 64) = v97;
        *(v95 + 32) = v157;
        v98 = static String.localizedStringWithFormat(_:_:)();
        v100 = v99;

        *&v222 = v98;
        *(&v222 + 1) = v100;
        *&v210 = v155;
        *(&v210 + 1) = v90;
        swift_getOpaqueTypeConformance2();
        lazy protocol witness table accessor for type String and conformance String();
        v101 = v143;
        v102 = v144;
        View.accessibilityLabel<A>(_:)();

        (*(v142 + 8))(v89, v101);
        v103 = v145;
        outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?(v102, v145, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMR);
        v104 = v156;
        v210 = v156;
        v105 = v171;
        v211 = v171;
        v212 = v172;
        v106 = v173;
        v213 = v173;
        *&v214 = v72;
        *(&v214 + 1) = 10;
        LOWORD(v215) = 256;
        *(&v215 + 2) = v169;
        WORD3(v215) = v170;
        *(&v215 + 1) = 0x3FE8000000000000;
        v107 = v156;
        v108 = v214;
        v109 = v146;
        *(v146 + 2) = v172;
        v109[3] = v106;
        *v109 = v107;
        v109[1] = v105;
        v110 = v215;
        v109[4] = v108;
        v109[5] = v110;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGG_ACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyA0_AA08_OpacityN0VG_Qo_AA0x10AttachmentI0VGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGG_ACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyA0_AA08_OpacityN0VG_Qo_AA0x10AttachmentI0VGtMR);
        outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?(v103, v109 + *(v111 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMR);
        outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(&v210, &v222, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMR);
        outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(v102, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMR);
        outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(v103, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitoP0VyAA06ZIndexyN0VGGAA08_OpacityU0VG_Qo_AA0i10AttachmentP0VGMR);
        v222 = v104;
        v223 = v171;
        v224 = v172;
        v225 = v173;
        *&v226 = v72;
        *(&v226 + 1) = 10;
        LOWORD(v227) = 256;
        *(&v227 + 2) = v169;
        WORD3(v227) = v170;
        *(&v227 + 1) = 0x3FE8000000000000;
        outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v222, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMR);
        v112 = v165;
        outlined init with take of HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>(v109, v165, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGMR);
        (*(v159 + 56))(v112, 0, 1, v160);
        if (v157 != 1)
        {
          v113 = static Color.black.getter();
          v114 = swift_getKeyPath();
          static Alignment.center.getter();
          _FrameLayout.init(width:height:alignment:)();
          if (one-time initialization token for tertiaryPlatterColor != -1)
          {
            swift_once();
          }

          v115 = static MultiSportWorkoutConfiguration.tertiaryPlatterColor;
          v116 = Color.init(uiColor:)();
          v117 = swift_getKeyPath();
          static Alignment.center.getter();
          _FrameLayout.init(width:height:alignment:)();
          *&v189[0] = v114;
          *(&v189[0] + 1) = v113;
          v189[1] = v195;
          v189[2] = v196;
          v189[3] = v197;
          *&v190 = v72;
          *(&v190 + 1) = 10;
          LOWORD(v191) = 256;
          *(&v191 + 1) = 0x3FD0000000000000;
          v174 = v189[0];
          v175 = v195;
          v178 = v190;
          v179 = v191;
          v176 = v196;
          v177 = v197;
          *&v192[0] = v117;
          *(&v192[0] + 1) = v116;
          v192[2] = v187;
          v192[3] = v188;
          v192[1] = v186;
          *&v193 = v72;
          *(&v193 + 1) = 10;
          LOWORD(v194) = 256;
          *(&v194 + 1) = v78;
          v180 = v192[0];
          v181 = v186;
          v184 = v193;
          v185 = v194;
          v182 = v187;
          v183 = v188;
          *&v198 = v117;
          *(&v198 + 1) = v116;
          v200 = v187;
          v201 = v188;
          v199 = v186;
          *&v202 = v72;
          *(&v202 + 1) = 10;
          LOWORD(v203) = 256;
          *(&v203 + 1) = v78;
          outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v189, &v222, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMR);
          outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v192, &v222, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA08_OpacityN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA08_OpacityN0VGMR);
          outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v198, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA08_OpacityN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA08_OpacityN0VGMR);
          *&v210 = v114;
          *(&v210 + 1) = v113;
          v211 = v195;
          v212 = v196;
          v213 = v197;
          *&v214 = v72;
          *(&v214 + 1) = 10;
          LOWORD(v215) = 256;
          *(&v215 + 1) = 0x3FD0000000000000;
          outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v210, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMR);
          v230 = v182;
          v231 = v183;
          v232 = v184;
          v233 = v185;
          v226 = v178;
          v227 = v179;
          v228 = v180;
          v229 = v181;
          v222 = v174;
          v223 = v175;
          v224 = v176;
          v225 = v177;
          _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgWOi_();
          v242 = v230;
          v243 = v231;
          v244 = v232;
          v245 = v233;
          v238 = v226;
          v239 = v227;
          v240 = v228;
          v241 = v229;
          v234 = v222;
          v235 = v223;
          v236 = v224;
          v237 = v225;
          v112 = v165;
          goto LABEL_23;
        }
      }

      _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgWOi0_(&v234);
LABEL_23:
      v119 = v161;
      v118 = v162;
      v120 = *(v161 + 16);
      v121 = v167;
      v120(v167, v168, v162);
      v122 = v163;
      outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?(v112, v163, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMR);
      v206 = v242;
      v207 = v243;
      v208 = v244;
      v209 = v245;
      v202 = v238;
      v203 = v239;
      v204 = v240;
      v205 = v241;
      v198 = v234;
      v199 = v235;
      v200 = v236;
      v201 = v237;
      v123 = v164;
      v120(v164, v121, v118);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAIyAIyAIyAIyAIyAIyAA6HStackVyAA05TupleC0VyAIyAIyAIyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0g10AttachmentQ0VG_AIyAIyAIyAIyAIyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AMyAIyAIyAIyAIyAA9RectangleVA24_GA35_GA41_GA45_G_AIyAcAEAdEQrAG_tFQOyAIyA56_A48_G_Qo_A_GtGSgAMyA56__AIyA55_A48_GtGSgAA6SpacerVtMd, L"|\aĸ");
      outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?(v122, &v123[v124[12]], &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMR);
      v125 = v124[16];
      v126 = v207;
      v218 = v206;
      v219 = v207;
      v127 = v208;
      v128 = v209;
      v220 = v208;
      v221 = v209;
      v129 = v202;
      v130 = v203;
      v214 = v202;
      v215 = v203;
      v131 = v204;
      v132 = v205;
      v216 = v204;
      v217 = v205;
      v133 = v198;
      v134 = v199;
      v210 = v198;
      v211 = v199;
      v135 = v200;
      v136 = v201;
      v212 = v200;
      v213 = v201;
      v137 = &v123[v125];
      *(v137 + 8) = v206;
      *(v137 + 9) = v126;
      *(v137 + 10) = v127;
      *(v137 + 11) = v128;
      *(v137 + 4) = v129;
      *(v137 + 5) = v130;
      *(v137 + 6) = v131;
      *(v137 + 7) = v132;
      *v137 = v133;
      *(v137 + 1) = v134;
      *(v137 + 2) = v135;
      *(v137 + 3) = v136;
      v138 = &v123[v124[20]];
      *v138 = 0;
      v138[8] = 1;
      outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(&v210, &v222, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgMR);
      outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(v112, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMR);
      v139 = *(v119 + 8);
      v139(v168, v118);
      v230 = v206;
      v231 = v207;
      v232 = v208;
      v233 = v209;
      v226 = v202;
      v227 = v203;
      v228 = v204;
      v229 = v205;
      v222 = v198;
      v223 = v199;
      v224 = v200;
      v225 = v201;
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v222, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgMR);
      outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(v122, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyA2_AA08_OpacityP0VG_Qo_AA0y10AttachmentK0VGtGSgMR);
      v139(v167, v118);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in MultisportElapsedTimeView.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v67 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = v60 - v5;
  v64 = type metadata accessor for AccessibilityTraits();
  *&v63 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  MEMORY[0x28223BE20](v61);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v60 - v11;
  MEMORY[0x28223BE20](v13);
  v68 = v60 - v14;
  v60[0] = type metadata accessor for ElapsedTimeFormatter();
  Double.smoothedForDisplay.getter();
  *&v84 = MEMORY[0x20F305C20](0, 0, floor(v15));
  *(&v84 + 1) = v16;
  v17 = lazy protocol witness table accessor for type String and conformance String();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  LOBYTE(v71) = v22 & 1;
  v78[0] = 0;
  *&v84 = v18;
  *(&v84 + 1) = v20;
  LOBYTE(v85) = v22 & 1;
  *(&v85 + 1) = v24;
  *v86 = 0x3FF0000000000000;
  *&v86[8] = 256;
  *&v86[16] = KeyPath;
  v86[24] = 0;
  LocalizedStringKey.init(stringLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont> and conformance <> ModifiedContent<A, B>();
  View.accessibilityLabel(_:)();

  v82[0] = v84;
  v82[1] = v85;
  v83[0] = *v86;
  *(v83 + 9) = *&v86[9];
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v82, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMR);
  *&v84 = static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)();
  *(&v84 + 1) = v26;
  v27 = v61;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v9, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  static AccessibilityTraits.updatesFrequently.getter();
  MEMORY[0x20F308AB0](v7, v27);
  (*(v63 + 8))(v7, v64);
  v64 = v12;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v12, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  v28 = v62;
  v81 = *v62;
  outlined init with copy of MultisportElapsedTimeView(v62, &v84);
  outlined init with copy of MultisportElapsedTimeView(v28, &v84);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = WorkoutUIBundle.super.isa;
  v90._object = 0xE000000000000000;
  v30.value._object = 0xEB00000000656C62;
  v31._object = 0x800000020CB97040;
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v90);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v33 = swift_allocObject();
  v63 = xmmword_20CB5DA70;
  *(v33 + 16) = xmmword_20CB5DA70;
  *(v33 + 56) = MEMORY[0x277D837D0];
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *(v33 + 64) = v34;
  *(v33 + 32) = v81;
  v35 = String.init(format:_:)();
  v37 = v36;

  *&v84 = v35;
  *(&v84 + 1) = v37;
  v60[1] = v17;
  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v37) = v41;
  specialized View.metricDescriptionFont(multiline:)(1, v38, v39, v41 & 1, v42, v79);
  outlined consume of Text.Storage(v38, v40, v37 & 1);

  v43 = swift_getKeyPath();
  v73 = v79[2];
  v74 = v79[3];
  v75 = v79[4];
  LOBYTE(v76) = v80;
  v71 = v79[0];
  v72 = v79[1];
  *(&v76 + 1) = v43;
  v77 = 0x3FE6666666666666;
  v44 = WorkoutUIBundle.super.isa;
  v91._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD000000000000027;
  v45._object = 0x800000020CB95610;
  v46.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v46.value._object = 0xEB00000000656C62;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v91);

  v48 = swift_allocObject();
  *(v48 + 56) = MEMORY[0x277D837D0];
  *(v48 + 64) = v34;
  v49 = v81;
  *(v48 + 16) = v63;
  *(v48 + 32) = v49;
  v50 = String.init(format:_:)();
  v52 = v51;

  v69 = v50;
  v70 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v53 = v65;
  View.accessibilityLabel<A>(_:)();

  v87 = v75;
  v88 = v76;
  v89 = v77;
  v84 = v71;
  v85 = v72;
  *v86 = v73;
  *&v86[16] = v74;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(&v84, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMR);
  v54 = v68;
  v55 = v64;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v68, v64, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  v56 = v66;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v53, v66, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMR);
  v57 = v67;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v55, v67, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VG_ACyACyACyACyACyAeL0m15DescriptionCoreO0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAL17HeaderHyphenationVGAA012_EnvironmentkgH0Vy0S8Graphics7CGFloatVGGAQGtMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VG_ACyACyACyACyACyAeL0m15DescriptionCoreO0VGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAL17HeaderHyphenationVGAA012_EnvironmentkgH0Vy0S8Graphics7CGFloatVGGAQGtMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(v56, v57 + *(v58 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v53, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v54, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v56, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGAA31AccessibilityAttachmentModifierVGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(v55, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentH0VGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>( &lazy protocol witness table cache variable for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMd,  &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAMyAMyAMyAMyAMyAMyAMyACyAEyAMyAMyAMyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0i10AttachmentQ0VG_AMyAMyAMyAMyAMyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AEyAMyAMyAMyAMyAA9RectangleVA24_GA35_GA41_GA45_G_AMyAgAEAhIQrAK_tFQOyAMyA56_A48_G_Qo_A_GtGSgAEyA56__AMyA55_A48_GtGSgAA6SpacerVtGGMR,  MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultisportElapsedTimeView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MultisportElapsedTimeView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGA_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyACyACyACyACyACyAEyAGyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityO3KeyVGG07WorkoutB015MetricValueFontVGAA0k10AttachmentQ0VG_ACyACyACyACyACyAoV0v15DescriptionCoreX0VGAV26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAV17HeaderHyphenationVGAA012_EnvironmenttpQ0Vy12CoreGraphics7CGFloatVGGA_GtGGA12_yAA5ColorVSgGGAA08_PaddingR0VGA27_GAA016_BackgroundStyleQ0VyA22_GGAA06_FrameR0VGAA11_ClipEffectVyAV13RoundedCornerVGGAQyAA06ZIndexoT0VGGAA14_OpacityEffectVG_Qo__AGyACyACyACyACyAA9RectangleVA24_GA35_GA41_GA45_G_ACyAiAEAjKQrAM_tFQOyACyA56_A48_G_Qo_A_GtGSgAGyA56__ACyA55_A48_GtGSgAA6SpacerVtGGAA010_FlexFrameR0VGA_GMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

uint64_t outlined init with take of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGAKyAA06ZIndexiN0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGAA11_ClipEffectVyAP13RoundedCornerVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGAA06_FrameL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GAA016_BackgroundStyleK0VyA16_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGA21_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGAA08_PaddingL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_ACyACyACyACyACyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGA6_yAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityI3KeyVGG07WorkoutB015MetricValueFontVGAA023AccessibilityAttachmentK0VG_AGyAGyAGyAGyAGyAiP0p15DescriptionCoreR0VGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAP17HeaderHyphenationVGAA012_EnvironmentnjK0Vy0V8Graphics7CGFloatVGGAUGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double _s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraitjK0VyAA06ZIndextI0VGG_AEyAxA08_OpacityP0VGtGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGAA08_OpacityN0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA06_TraithI0VyAA06ZIndexrG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA9RectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>, _FlexFrameLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGG07WorkoutB015MetricValueFontVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA21_TraitWritingModifierVyAA014LayoutPriorityF3KeyVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGAA30_EnvironmentKeyWritingModifierVy0I8Graphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAF17HeaderHyphenationVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HeaderHyphenation and conformance HeaderHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, MetricDescriptionCoreFont> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, MetricDescriptionCoreFont> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, MetricDescriptionCoreFont> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, MetricDescriptionCoreFont> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGMR);
    lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, MetricDescriptionCoreFont> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>?, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?, Spacer)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _OpacityEffect>)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<LayoutPriorityTraitKey>>, MetricValueFont>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<CGFloat>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _FrameLayout>, _ClipEffect<RoundedCorner>>, _TraitWritingModifier<ZIndexTraitKey>>, _OpacityEffect>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SummaryWorkoutVoiceOutroView.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of WorkoutVoiceOutroState(v2, v3);
}

uint64_t outlined copy of WorkoutVoiceOutroState(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void SummaryWorkoutVoiceOutroView.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  outlined consume of WorkoutVoiceOutroState(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

double outlined consume of WorkoutVoiceOutroState(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 SummaryWorkoutVoiceOutroView.init(state:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t SummaryWorkoutVoiceOutroView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMR);
  MEMORY[0x28223BE20](v28);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR);
  v13 = *(v29 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v29);
  v17 = v26 - v16;
  v18 = v1[1];
  v34 = *v1;
  v35 = v18;
  if (v18 >= 2)
  {
    v27 = v26;
    MEMORY[0x28223BE20](v14);
    *&v26[-4] = v19;
    *&v26[-2] = v18;
    v26[1] = static Axis.Set.vertical.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_MR);
    v36 = MEMORY[0x277CE0BD8];
    v37 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    ScrollView.init(_:showsIndicators:content:)();
    (*(v5 + 32))(v9, v7, v4);
    (*(v5 + 56))(v9, 0, 1, v4, v20);
  }

  else
  {
    (*(v5 + 56))(v9, 1, 1, v4, v15);
  }

  sub_20C67C4E8(v9, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?();
  NavigationLink.init(destination:label:)();
  v21 = v30;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout>, ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>?> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR, MEMORY[0x277CDD938]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v23 = v32;
  v22 = v33;
  v24 = v29;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v21, v23);
  (*(v13 + 8))(v17, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMR);
  *(v22 + *(result + 36)) = v18 > 1;
  return result;
}

double closure #1 in closure #1 in SummaryWorkoutVoiceOutroView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v31 = type metadata accessor for Font.Leading();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v30 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A70], v11);
  v21 = type metadata accessor for Font.Design();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_4(v10, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v12 + 8))(v14, v11);
  v22 = v31;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v31);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v22);
  v23 = Text.font(_:)();
  v25 = v24;
  LOBYTE(v5) = v26;
  v28 = v27;

  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v33 = v23;
  v34 = v25;
  v35 = v5 & 1;
  v36 = v28;
  static Edge.Set.all.getter();
  View.scenePadding(_:)();
  outlined consume of Text.Storage(v23, v25, v5 & 1);

  return result;
}

__n128 closure #2 in SummaryWorkoutVoiceOutroView.body.getter@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAA15ModifiedContentVyASyAA08ProgressD0VyAA05EmptyD0VAWGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGAA010_FixedSizeG0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAA15ModifiedContentVyASyAA08ProgressD0VyAA05EmptyD0VAWGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGAA010_FixedSizeG0VGSgtGGMR);
  closure #1 in closure #2 in SummaryWorkoutVoiceOutroView.body.getter(a1, a2, &v9[*(v10 + 44)]);
  v9[*(v7 + 44)] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>(v9, a3, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMR);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMR) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA6SpacerVAA15ModifiedContentVyAOyAA08ProgressE0VyAA05EmptyE0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6VStackVyAEyAA4TextV_AItGG_AA6SpacerVAA15ModifiedContentVyAOyAA08ProgressE0VyAA05EmptyE0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMR);
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMR, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t closure #1 in closure #2 in SummaryWorkoutVoiceOutroView.body.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14];
  v27 = static HorizontalAlignment.leading.getter();
  LOBYTE(v30[0]) = 1;
  closure #1 in closure #1 in closure #2 in SummaryWorkoutVoiceOutroView.body.getter(v37);
  *&v36[7] = v37[0];
  *&v36[23] = v37[1];
  *&v36[39] = v37[2];
  *&v36[55] = v37[3];
  v26 = LOBYTE(v30[0]);
  if (a2 == 1)
  {
    outlined consume of WorkoutVoiceOutroState(a1, 1uLL);
    outlined consume of WorkoutVoiceOutroState(0, 1uLL);
    ProgressView<>.init<>()();
    v16 = static HierarchicalShapeStyle.secondary.getter();
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGMR) + 36)] = v16;
    *&v9[*(v6 + 36)] = 257;
    outlined init with take of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>(v9, v15, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGMR);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    outlined copy of WorkoutVoiceOutroState(a1, a2);
    outlined consume of WorkoutVoiceOutroState(a1, a2);
    outlined consume of WorkoutVoiceOutroState(0, 1uLL);
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  outlined init with copy of ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?(v15, v12, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMR);
  v17 = v27;
  v28[0] = v27;
  v28[1] = 0;
  v18 = v26;
  v29[0] = v26;
  *&v29[1] = *v36;
  *&v29[17] = *&v36[16];
  *&v29[33] = *&v36[32];
  *&v29[49] = *&v36[48];
  v19 = *&v36[63];
  *&v29[64] = *&v36[63];
  v20 = *v29;
  *a3 = v27;
  *(a3 + 16) = v20;
  v21 = *&v29[16];
  v22 = *&v29[48];
  *(a3 + 48) = *&v29[32];
  *(a3 + 64) = v22;
  *(a3 + 32) = v21;
  *(a3 + 80) = v19;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA6SpacerVAA15ModifiedContentVyAMyAA08ProgressE0VyAA05EmptyE0VAQGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA16_FixedSizeLayoutVGSgtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGG_AA6SpacerVAA15ModifiedContentVyAMyAA08ProgressE0VyAA05EmptyE0VAQGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeM0VGGAA16_FixedSizeLayoutVGSgtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?(v12, a3 + *(v23 + 64), &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?(v28, v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
  _s7SwiftUI4FontV6DesignOSgWOhTm_4(v15, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMR);
  _s7SwiftUI4FontV6DesignOSgWOhTm_4(v12, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA12ProgressViewVyAA05EmptyF0VAGGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeI0VGGAA16_FixedSizeLayoutVGSgMR);
  v30[0] = v17;
  v30[1] = 0;
  v31 = v18;
  v33 = *&v36[16];
  v34 = *&v36[32];
  *v35 = *&v36[48];
  *&v35[15] = *&v36[63];
  v32 = *v36;
  return _s7SwiftUI4FontV6DesignOSgWOhTm_4(v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMR);
}

double closure #1 in closure #1 in closure #2 in SummaryWorkoutVoiceOutroView.body.getter@<D0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static HierarchicalShapeStyle.primary.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v31 = v13;
  v15 = v14;
  v29 = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  WorkoutVoiceOutroState.displayName.getter();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v10) = v20;
  static HierarchicalShapeStyle.secondary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  outlined consume of Text.Storage(v17, v19, v10 & 1);

  *a3 = v30;
  *(a3 + 8) = v15;
  *(a3 + 16) = v29 & 1;
  *(a3 + 24) = v31;
  *(a3 + 32) = v21;
  *(a3 + 40) = v23;
  *(a3 + 48) = v25 & 1;
  *(a3 + 56) = v27;
  outlined copy of Text.Storage(v30, v15, v29 & 1);

  outlined copy of Text.Storage(v21, v23, v25 & 1);

  outlined consume of Text.Storage(v21, v23, v25 & 1);

  outlined consume of Text.Storage(v30, v15, v29 & 1);

  return result;
}

uint64_t WorkoutVoiceOutroState.displayName.getter()
{
  v1 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v2 - 8);
  result = *(v0 + 8);
  if (result)
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance SummaryWorkoutVoiceOutroView@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMR);
  MEMORY[0x28223BE20](v24);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR);
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  v16 = v1[1];
  v27 = *v1;
  v28 = v16;
  if (v16 >= 2)
  {
    v22[1] = v22;
    MEMORY[0x28223BE20](v13);
    v22[-2] = v18;
    v22[-1] = v16;
    static Axis.Set.vertical.getter();
    v23 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_MR);
    v29 = MEMORY[0x277CE0BD8];
    v30 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v4 = v23;
    ScrollView.init(_:showsIndicators:content:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMR);
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMd, &_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GMR);
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  sub_20C67C4E8(v8, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6VStackVyAGyAA4TextV_AKtGG_AA6SpacerVACyACyAA08ProgressG0VyAA05EmptyG0VASGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeN0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dqO0VyAA9RectangleVGGAA010_FlexFrameT0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>? and conformance <A> A?();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout>, ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>?> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR, MEMORY[0x277CDD938]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v20 = v26;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v25 + 8))(v15, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMR);
  *(a1 + *(result + 36)) = v16 > 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI0A15VoiceOutroStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SummaryWorkoutVoiceOutroView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryWorkoutVoiceOutroView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyACyAA6HStackVyAA05TupleE0VyAA6VStackVyAMyAA4TextV_AQtGG_AA6SpacerVACyACyAA08ProgressE0VyAA05EmptyE0VAYGAA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA16_FixedSizeLayoutVGSgtGGAA01_dvT0VyAA9RectangleVGGAA010_FlexFrameY0VGAA06ScrollE0VyAeAE12scenePaddingyQrAA4EdgeO3SetVFQOyAQ_Qo_GSgG_AA05PlainiG0VQo_AA017_AllowsHitTestingT0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>, _FlexFrameLayout>, ScrollView<<<opaque return type of View.scenePadding(_:)>>.0>?> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA6VStackVyAIyAA4TextV_AMtGG_AA6SpacerVAEyAEyAA08ProgressI0VyAA05EmptyI0VAUGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeP0VGGAA16_FixedSizeLayoutVGSgtGGAA01_fsQ0VyAA9RectangleVGGAA010_FlexFrameV0VGAA06ScrollI0VyAA0I0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAM_Qo_GSgGMR, MEMORY[0x277CDD938]);
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<HStack<TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, ModifiedContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _FixedSizeLayout>?)>>, _ContentShapeModifier<Rectangle>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id SeparatorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = type metadata accessor for SeparatorView();
  v9 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x277D0A7E0]);
  v11 = v9;
  v12 = [v10 init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = v11;
  [v13 addSubview_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB61A30;
  v16 = [v12 leadingAnchor];
  v17 = [v13 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [v12 trailingAnchor];
  v20 = [v13 trailingAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v15 + 40) = v21;
  v22 = [v12 topAnchor];
  v23 = [v13 topAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v15 + 48) = v24;
  v25 = [v12 bottomAnchor];

  v26 = [v13 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v15 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints_];

  return v13;
}

id SeparatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = lazy cache variable for type metadata for NSLayoutConstraint;
  if (!lazy cache variable for type metadata for NSLayoutConstraint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLayoutConstraint);
  }

  return result;
}

uint64_t IntervalFontAppearanceType.fontSize.getter()
{
  if (*v0)
  {
    v1 = objc_opt_self();
    v2 = [v1 currentDevice];
    specialized UIDevice.screenType.getter();

    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 scale];
    v6 = v5;

    v7 = [v3 mainScreen];
    [v7 nativeScale];
    v9 = v8;

    if (v6 != v9)
    {
      v10 = [v3 mainScreen];
      [v10 scale];

      v11 = [v3 mainScreen];
      [v11 nativeScale];
    }
  }

  else
  {
    v12 = [objc_opt_self() preferredFontForTextStyle_];
    [v12 pointSize];
  }

  return FIUICurrentLanguageRequiresTallScript();
}

Swift::Int IntervalFontAppearanceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalFontAppearanceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalFontAppearanceType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

BOOL one-time initialization function for verticalSpaceTightness()
{
  result = closure #1 in variable initialization expression of static IntervalFontAppearanceModifier.verticalSpaceTightness();
  static IntervalFontAppearanceModifier.verticalSpaceTightness = result;
  return result;
}

BOOL closure #1 in variable initialization expression of static IntervalFontAppearanceModifier.verticalSpaceTightness()
{
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IntervalVerticalSpaceTightness.init(rawValue:), v7);

  return v8 != 0;
}

uint64_t IntervalFontAppearanceModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMR);
  MEMORY[0x28223BE20](v55);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAGyAA01_g9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceN033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingN0VyAA0Q0VSgGG_Qo_AVyAMGGAGyA_A1_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAGyAA01_g9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceN033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingN0VyAA0Q0VSgGG_Qo_AVyAMGGAGyA_A1_G_GMR);
  MEMORY[0x28223BE20](v53);
  v54 = &v44 - v6;
  v49 = type metadata accessor for Font.PrivateDesign();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA01_c9Modifier_K0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA01_c9Modifier_K0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_MR);
  v14 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v16 = &v44 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMR);
  MEMORY[0x28223BE20](v52);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *v2;
  v23 = v2[1];
  if (one-time initialization token for verticalSpaceTightness != -1)
  {
    swift_once();
  }

  if (static IntervalFontAppearanceModifier.verticalSpaceTightness == 1)
  {

LABEL_6:
    v58 = v22;
    IntervalFontAppearanceType.fontSize.getter();
    static Font.Weight.medium.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v25 = static Font.system(size:weight:design:)();
    (*(v7 + 8))(v9, v49);
    if (v23)
    {
      v26 = Font.lowercaseSmallCaps()();

      v25 = v26;
    }

    KeyPath = swift_getKeyPath();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMR);
    (*(*(v28 - 8) + 16))(v13, v51, v28);
    v29 = &v13[*(v50 + 36)];
    *v29 = KeyPath;
    v29[1] = v25;
    v57 = v22;
    IntervalFontAppearanceType.fontSize.getter();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.maximumLineHeight(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(v13, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    v30 = swift_getKeyPath();
    (*(v14 + 32))(v18, v16, v48);
    v31 = &v18[*(v52 + 36)];
    *v31 = v30;
    v31[1] = 0x3FE0000000000000;
    sub_20C67C5D0(v18, v21);
    sub_20C67C640(v21, v54);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return sub_20C67C6B0(v21);
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_6;
  }

  v59 = v22;
  IntervalFontAppearanceType.fontSize.getter();
  static Font.Weight.medium.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v33 = static Font.system(size:weight:design:)();
  (*(v7 + 8))(v9, v49);
  if (v23)
  {
    v34 = Font.lowercaseSmallCaps()();

    v33 = v34;
  }

  v35 = swift_getKeyPath();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMR);
  v37 = v45;
  (*(*(v36 - 8) + 16))(v45, v51, v36);
  v38 = &v37[*(v50 + 36)];
  *v38 = v35;
  v38[1] = v33;
  v39 = swift_getKeyPath();
  v40 = v37;
  v41 = v46;
  outlined init with take of ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>(v40, v46, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
  v42 = (v41 + *(v55 + 36));
  *v42 = v39;
  v42[1] = 0x3FE0000000000000;
  v43 = v47;
  outlined init with take of ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>(v41, v47, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(v43, v54);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(v43, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMR);
}

uint64_t View.intervalVerticalStackSpacing.getter(uint64_t a1)
{
  if (one-time initialization token for verticalSpaceTightness != -1)
  {
    swift_once();
  }

  if (static IntervalFontAppearanceModifier.verticalSpaceTightness != 1)
  {
    return 0;
  }

  MetricPlatterConstants.init()(v2);
  return v3;
}

uint64_t View.intervalFontAppearance(_:lowercaseSmallCaps:)(_BYTE *a1, char a2, uint64_t a3)
{
  v4[0] = *a1;
  v4[1] = a2;
  return MEMORY[0x20F30ABE0](v4, a3, &unk_282393390);
}

unint64_t lazy protocol witness table accessor for type IntervalFontAppearanceType and conformance IntervalFontAppearanceType()
{
  result = lazy protocol witness table cache variable for type IntervalFontAppearanceType and conformance IntervalFontAppearanceType;
  if (!lazy protocol witness table cache variable for type IntervalFontAppearanceType and conformance IntervalFontAppearanceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalFontAppearanceType and conformance IntervalFontAppearanceType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalFontAppearanceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalFontAppearanceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type IntervalFontAppearanceModifier and conformance IntervalFontAppearanceModifier()
{
  result = lazy protocol witness table cache variable for type IntervalFontAppearanceModifier and conformance IntervalFontAppearanceModifier;
  if (!lazy protocol witness table cache variable for type IntervalFontAppearanceModifier and conformance IntervalFontAppearanceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalFontAppearanceModifier and conformance IntervalFontAppearanceModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalFontAppearanceModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for IntervalFontAppearanceModifier(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t outlined init with take of ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022IntervalFontAppearanceD033_7EA5602274C280F3741325330328F2A2LLVGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB0022IntervalFontAppearanceF033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingF0VyAA0I0VSgGGALy12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<IntervalFontAppearanceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAEyAA01_f9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceM033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingM0VyAA0P0VSgGG_Qo_ATyAKGGAEyAYA_GGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyAEyAA01_f9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceM033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingM0VyAA0P0VSgGG_Qo_ATyAKGGAEyAYA_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.maximumLineHeight(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<IntervalFontAppearanceModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double CountdownIconView.init(currentActivityType:configuration:remainingMultisportLegCount:useSmallerIcon:useOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  v14 = specialized UIDevice.screenType.getter();

  *(a6 + 32) = qword_20CB69A78[v14];
  v15 = [v12 currentDevice];
  LOBYTE(v13) = specialized UIDevice.screenType.getter();

  result = dbl_20CB69AD0[v13];
  *(a6 + 40) = result;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  return result;
}

uint64_t CountdownIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = type metadata accessor for AccessibilityTraits();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AccessibilityChildBehavior();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6ZStackVyAA05TupleC0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_MR);
  v55 = *(v56 - 1);
  MEMORY[0x28223BE20](v56);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGAGyAGyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAA6ZStackVyAA05TupleJ0VyAA5ImageV_AH0G6FigureVtGGALGAOG_Qo_AA0S18AttachmentModifierVGAA01_D17ShapeKindModifierVyAA6CircleVGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGAGyAGyAA0J0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAGyAA6ZStackVyAA05TupleJ0VyAA5ImageV_AH0G6FigureVtGGALGAOG_Qo_AA0S18AttachmentModifierVGAA01_D17ShapeKindModifierVyAA6CircleVGG_GMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = v1[1];
  v70 = *v1;
  v71 = v15;
  v72 = v1[2];
  type metadata accessor for MultiSportWorkoutConfiguration();
  v16 = swift_dynamicCastClass();
  v59 = a1;
  if (v16)
  {
    v57 = v12;
    v58 = v9;
    v56 = v70;
    v17 = WorkoutConfiguration.displayColor.getter();
    v18 = BYTE8(v71);
    v19 = objc_allocWithZone(type metadata accessor for MetricsViewLayout());
    v20 = MetricsViewLayout.init(compressedLayout:)(v18);
    v21 = MetricsViewLayout.ringDiameter.getter();

    v22 = v71;
    KeyPath = swift_getKeyPath();
    LOBYTE(v65) = 0;
    v24 = objc_opt_self();
    v25 = [v24 currentDevice];
    v26 = specialized UIDevice.screenType.getter();

    v27 = dbl_20CB69B28[v26];
    v28 = objc_opt_self();
    v29 = [v28 mainScreen];
    [v29 scale];
    v31 = v30;

    v32 = [v28 mainScreen];
    [v32 nativeScale];
    v34 = v33;

    if (v31 != v34)
    {
      v35 = [v28 mainScreen];
      [v35 scale];
      v37 = v36;

      v38 = [v28 mainScreen];
      [v38 nativeScale];
      v40 = v39;

      v27 = v27 * (v37 / v40 * 0.95);
    }

    v41 = v65;
    v42 = 0;
    if (BYTE9(v71))
    {
      v42 = v72;
    }

    v43 = *(&v72 + 1);
    *v14 = KeyPath;
    v14[8] = v41;
    *(v14 + 2) = v56;
    *(v14 + 3) = v17;
    *(v14 + 4) = v21;
    v14[40] = v18;
    *(v14 + 6) = v22;
    v14[56] = 0;
    *(v14 + 4) = xmmword_20CB69930;
    *(v14 + 10) = v27;
    *(v14 + 88) = xmmword_20CB69940;
    v14[104] = 1;
    *(v14 + 14) = v42;
    *(v14 + 15) = v43;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v45 = static Alignment.center.getter();
    v47 = v46;
    closure #1 in CountdownIconView.body.getter(&v70, &v65);
    *&v60 = v45;
    *(&v60 + 1) = v47;
    v61 = v65;
    LOBYTE(v62) = v66;
    *(&v62 + 1) = *(&v66 + 1);
    LOBYTE(v63) = v67;
    BYTE1(v63) = 1;
    *(&v63 + 1) = 0;
    v64 = *(&v72 + 1);
    static AccessibilityChildBehavior.combine.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR);
    v49 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    View.accessibilityElement(children:)();
    (*(v53 + 8))(v6, v54);
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v65 = v60;
    v66 = v61;
    outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect>(&v65);
    static AccessibilityTraits.isImage.getter();
    *&v60 = v48;
    *(&v60 + 1) = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v56;
    MEMORY[0x20F30A9C0](v4, v56, OpaqueTypeConformance2);
    (*(v57 + 8))(v4, v58);
    (*(v55 + 8))(v8, v51);
    v52 = &v11[*(v9 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
    static ContentShapeKinds.accessibility.getter();
    *v52 = 0;
    sub_20C67C71C(v11, v14);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return sub_20C67C78C(v11);
  }
}

void closure #1 in CountdownIconView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WorkoutConfiguration.colors.getter(&v19);
  v4 = v19;
  v5 = v20;
  v7 = v21;
  v6 = v22;

  WorkoutConfiguration.colors.getter(&v19);
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v23;

  v12 = *(a1 + 24);
  v13 = objc_allocWithZone(type metadata accessor for MetricsViewLayout());
  v14 = MetricsViewLayout.init(compressedLayout:)(v12);
  MetricsViewLayout.ringDiameter.getter();

  v15 = FIUICircularGradientImage();
  if (v15)
  {
    v16 = Image.init(uiImage:)();
    v17 = *a1;
    v18 = WorkoutConfiguration.displayColor.getter();
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v12;
    *(a2 + 24) = v18;
    *(a2 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(Image, WorkoutFigure)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(Image, WorkoutFigure)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00G6FigureVtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00G6FigureVtGGMR, MEMORY[0x277CE11A8]);
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA5ImageV_07WorkoutB00I6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type MultisportMedallionView and conformance MultisportMedallionView();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultisportMedallionView and conformance MultisportMedallionView()
{
  result = lazy protocol witness table cache variable for type MultisportMedallionView and conformance MultisportMedallionView;
  if (!lazy protocol witness table cache variable for type MultisportMedallionView and conformance MultisportMedallionView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportMedallionView and conformance MultisportMedallionView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(Image, WorkoutFigure)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<TupleView<(Image, WorkoutFigure)>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for CountdownIconView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for CountdownIconView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect>, ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect>, ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect>, ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGAEyAEyAA0I0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAEyAA6ZStackVyAA05TupleI0VyAA5ImageV_AF0F6FigureVtGGAJGAMG_Qo_AA0R18AttachmentModifierVGAA01_d9ShapeKindZ0VyAA6CircleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGAEyAEyAA0I0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAEyAEyAA6ZStackVyAA05TupleI0VyAA5ImageV_AF0F6FigureVtGGAJGAMG_Qo_AA0R18AttachmentModifierVGAA01_d9ShapeKindZ0VyAA6CircleVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(Image, WorkoutFigure)>>, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB023MultisportMedallionViewVAA17_FlipForRTLEffectVGAA13_OffsetEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<MultisportMedallionView, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<MultisportMedallionView, _FlipForRTLEffect>, _OffsetEffect>, ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationViewIOS(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<WorkoutConfigurationViewerState>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutConfiguration();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FIUIFormattingManager();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ()();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Environment<DismissAction>(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationViewIOS(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for DismissAction() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 < 0x7FFFFFFF)
      {
        v20 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }

      else
      {
        v19 = *(v6 + 48);

        return v19(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void storeEnumTagSinglePayload for WorkoutConfigurationViewIOS(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for DismissAction() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 < 0x7FFFFFFF)
  {
    v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v23 + 16) = 0;
      *v23 = a2 & 0x7FFFFFFF;
      *(v23 + 8) = 0;
    }

    else
    {
      *(v23 + 8) = (a2 - 1);
    }
  }

  else
  {
    v22 = *(v24 + 56);

    v22(a1, a2, v9, v7);
  }
}

void type metadata accessor for Binding<WorkoutConfigurationViewerState>()
{
  if (!lazy cache variable for type metadata for Binding<WorkoutConfigurationViewerState>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<WorkoutConfigurationViewerState>);
    }
  }
}

uint64_t WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB00D24ConfigurationViewerStateOGMd, &_s7SwiftUI7BindingVy07WorkoutB00D24ConfigurationViewerStateOGMR);
  MEMORY[0x20F30B100](&v7, v5);
  return v7;
}

uint64_t WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ColorSchemeOSgMd, &_s7SwiftUI11ColorSchemeOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = v29 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMR);
  v5 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v37 = MEMORY[0x277D84A98];
  v38 = v6;
  v39 = MEMORY[0x277D84AA8];
  v40 = WitnessTable;
  v8 = type metadata accessor for List();
  v9 = swift_getWitnessTable();
  v37 = v8;
  v38 = v9;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA6VStackVyAJyAJyAJyAJyAJyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA5GroupVyAA05TupleC0VyAA012_ConditionalJ0Vy07WorkoutB0025DisambiguateConfigurationC0VAU010AddToWatchO0VGSg_AA0O0VyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGGSgtGG_AA017BorderedProminentoM0VQo_A5_yAA07ControlF0OGGA5_yAA5ColorVSgGGA5_yAA08AnyShapeM0VSgGGA16_GAA01_Z20KeyTransformModifierVySbGGSgGAA14_PaddingLayoutVG_SNyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA6VStackVyAJyAJyAJyAJyAJyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA5GroupVyAA05TupleC0VyAA012_ConditionalJ0Vy07WorkoutB0025DisambiguateConfigurationC0VAU010AddToWatchO0VGSg_AA0O0VyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGGSgtGG_AA017BorderedProminentoM0VQo_A5_yAA07ControlF0OGGA5_yAA5ColorVSgGGA5_yAA08AnyShapeM0VSgGGA16_GAA01_Z20KeyTransformModifierVySbGGSgGAA14_PaddingLayoutVG_SNyAFGQo_MR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v29[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMd, &_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMR);
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  v20 = *(a1 + 24);
  v32 = v5;
  v33 = v20;
  v34 = v29[1];
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v21 = *MEMORY[0x277CDF3C0];
  v22 = type metadata accessor for ColorScheme();
  v23 = *(v22 - 8);
  v24 = v30;
  (*(v23 + 104))(v30, v21, v22);
  (*(v23 + 56))(v24, 0, 1, v22);
  v25 = swift_getWitnessTable();
  View.preferredColorScheme(_:)();
  outlined destroy of ColorScheme?(v24, &_s7SwiftUI11ColorSchemeOSgMd, &_s7SwiftUI11ColorSchemeOSgMR);
  (*(v29[0] + 8))(v12, v10);
  v26 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMd, &_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMR, MEMORY[0x277CE0800]);
  v35 = v25;
  v36 = v26;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v14 + 8);
  v27(v16, v13);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v27)(v19, v13);
}

uint64_t closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v102 = a2;
  v103 = a1;
  v85 = a4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
  MEMORY[0x28223BE20](v80);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v76 - v6;
  v95 = type metadata accessor for DynamicTypeSize();
  v98 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v96 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v76 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
  MEMORY[0x28223BE20](v83);
  v76 = &v76 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v101);
  v100 = (&v76 - v11);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA6VStackVyAJyAJyAJyAJyAJyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA5GroupVyAA05TupleC0VyAA012_ConditionalJ0Vy07WorkoutB0025DisambiguateConfigurationC0VAU010AddToWatchO0VGSg_AA0O0VyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGGSgtGG_AA017BorderedProminentoM0VQo_A5_yAA07ControlF0OGGA5_yAA5ColorVSgGGA5_yAA08AnyShapeM0VSgGGA16_GAA01_Z20KeyTransformModifierVySbGGSgGAA14_PaddingLayoutVG_SNyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA6VStackVyAJyAJyAJyAJyAJyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA5GroupVyAA05TupleC0VyAA012_ConditionalJ0Vy07WorkoutB0025DisambiguateConfigurationC0VAU010AddToWatchO0VGSg_AA0O0VyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGGSgtGG_AA017BorderedProminentoM0VQo_A5_yAA07ControlF0OGGA5_yAA5ColorVSgGGA5_yAA08AnyShapeM0VSgGGA16_GAA01_Z20KeyTransformModifierVySbGGSgGAA14_PaddingLayoutVG_SNyAFGQo_MR);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v76 - v14;
  v94 = type metadata accessor for ListSectionSpacing();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for TupleView();
  v90 = v16;
  WitnessTable = swift_getWitnessTable();
  v116 = MEMORY[0x277D84A98];
  v117 = v16;
  v118 = MEMORY[0x277D84AA8];
  v119 = WitnessTable;
  v17 = type metadata accessor for List();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = swift_getWitnessTable();
  v116 = v17;
  v117 = v21;
  v86 = MEMORY[0x277CDEC30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &v76 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR);
  v87 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR);
  v25 = type metadata accessor for ModifiedContent();
  v91 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR);
  v28 = type metadata accessor for ModifiedContent();
  v99 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = (&v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v105 = &v76 - v32;
  v106 = v102;
  v107 = v104;
  v108 = v103;
  List<>.init(content:)();
  View.scrollContentBackground(_:)();
  (*(v18 + 8))(v20, v17);
  v33 = v92;
  static ListSectionSpacing.custom(_:)();
  v116 = v17;
  v117 = v21;
  v34 = v95;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listSectionSpacing(_:)();
  v93[1](v33, v94);
  (*(v88 + 8))(v24, OpaqueTypeMetadata2);
  v36 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR, MEMORY[0x277CE04A0]);
  v115[7] = OpaqueTypeConformance2;
  v115[8] = v36;
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CE0868];
  v39 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR, MEMORY[0x277CE0868]);
  v115[5] = v37;
  v115[6] = v39;
  v40 = swift_getWitnessTable();
  View.listRowSpacing(_:)();
  (*(v91 + 8))(v27, v25);
  v41 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, v38);
  v115[3] = v40;
  v115[4] = v41;
  v42 = v96;
  v92 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = v99 + 8;
  v44 = *(v99 + 8);
  v93 = v30;
  v94 = v28;
  v44(v30, v28);
  v45 = static HorizontalAlignment.center.getter();
  v46 = v100;
  *v100 = v45;
  v46[1] = 0;
  *(v46 + 16) = 1;
  v47 = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAIyAIyAIyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA5GroupVyAA05TupleD0VyAA012_ConditionalI0Vy07WorkoutB0025DisambiguateConfigurationD0VAT010AddToWatchM0VGSg_AA0M0VyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGAA010_FlexFrameG0VGA4_yAA4FontVSgGGGSgtGG_AA017BorderedProminentmK0VQo_A4_yAA11ControlSizeOGGA4_yAA5ColorVSgGGA4_yAA08AnyShapeK0VSgGGA15_GAA01_xY17TransformModifierVySbGGSgGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAIyAIyAIyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA5GroupVyAA05TupleD0VyAA012_ConditionalI0Vy07WorkoutB0025DisambiguateConfigurationD0VAT010AddToWatchM0VGSg_AA0M0VyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGAA010_FlexFrameG0VGA4_yAA4FontVSgGGGSgtGG_AA017BorderedProminentmK0VQo_A4_yAA11ControlSizeOGGA4_yAA5ColorVSgGGA4_yAA08AnyShapeK0VSgGGA15_GAA01_xY17TransformModifierVySbGGSgGMR);
  closure #2 in closure #1 in WorkoutConfigurationViewIOS.body.getter(v103, v102, v104, v47 + *(v48 + 44));
  v49 = static Edge.Set.all.getter();
  v50 = v47 + *(v101 + 36);
  *v50 = v49;
  *(v50 + 8) = xmmword_20CB69B80;
  *(v50 + 24) = xmmword_20CB69B80;
  *(v50 + 40) = 0;
  v51 = v98;
  v52 = *(v98 + 104);
  v53 = v97;
  v52(v97, *MEMORY[0x277CDF9F8], v34);
  v52(v42, *MEMORY[0x277CDF9D8], v34);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v104 = v43;
    v55 = *(v51 + 32);
    v56 = v77;
    v55(v77, v53, v34);
    v57 = v80;
    v55((v56 + *(v80 + 48)), v42, v34);
    v58 = v79;
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v56, v79, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v103 = v44;
    v59 = *(v57 + 48);
    v60 = v76;
    v55(v76, v58, v34);
    v61 = *(v51 + 8);
    v61(v58 + v59, v34);
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v56, v58, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v62 = *(v57 + 48);
    v63 = v83;
    v55((v60 + *(v83 + 36)), (v58 + v62), v34);
    v61(v58, v34);
    v64 = lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v65 = lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x277D83660]);
    v66 = v78;
    v67 = v101;
    v68 = v100;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of ColorScheme?(v60, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
    sub_20C67C824(v68);
    v69 = v93;
    v70 = v94;
    (*(v99 + 16))(v93, v105, v94);
    v113 = 0;
    v114 = 1;
    v115[0] = v69;
    v115[1] = &v113;
    v71 = v82;
    v72 = v81;
    v73 = v84;
    (*(v82 + 16))(v81, v66, v84);
    v115[2] = v72;
    v112[0] = v70;
    v112[1] = MEMORY[0x277CE1180];
    v112[2] = v73;
    v109 = v92;
    v110 = MEMORY[0x277CE1170];
    v116 = v67;
    v117 = v63;
    v118 = v64;
    v119 = v65;
    v111 = swift_getOpaqueTypeConformance2();
    static ViewBuilder.buildBlock<each A>(_:)(v115, 3uLL, v112);
    v74 = *(v71 + 8);
    v74(v66, v73);
    v75 = v103;
    v103(v105, v70);
    v74(v72, v73);
    return v75(v69, v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v7 = type metadata accessor for ModifiedContent();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v99 = &v87 - v10;
  v90 = type metadata accessor for Image.ResizingMode();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v87 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, &_s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v87 - v16;
  v98 = v8;
  MEMORY[0x28223BE20](v18);
  v97 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = &v87 - v21;
  v101 = v7;
  v112 = *(v7 - 8);
  MEMORY[0x28223BE20](v22);
  v114 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v113 = &v87 - v25;
  v110 = v9;
  v102 = type metadata accessor for Optional();
  v105 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v87 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMR);
  MEMORY[0x28223BE20](v30);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMR);
  v106 = *(v33 - 8);
  v107 = v33;
  MEMORY[0x28223BE20](v33);
  v104 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v87 - v36;
  closure #2 in closure #1 in closure #1 in WorkoutConfigurationViewIOS.body.getter(a1, a2, a3, v32);
  lazy protocol witness table accessor for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  v103 = v37;
  Section<>.init(header:content:)();
  v39 = type metadata accessor for WorkoutConfigurationViewIOS(0, a2, a3, v38);
  if (!WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v39) || WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v39) == 4)
  {
    LOBYTE(v122) = 1;
    v40 = v114;
    MEMORY[0x20F30ABE0](&v122, a2, &type metadata for ListRowBackgroundViewModifier, a3);
    v41 = lazy protocol witness table accessor for type ListRowBackgroundViewModifier and conformance ListRowBackgroundViewModifier();
    v115 = a3;
    v116 = v41;
    v42 = v101;
    WitnessTable = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)();
    v94 = *(v112 + 8);
    v94(v40, v42);
    dispatch thunk of WorkoutConfiguration.route.getter();
    v43 = type metadata accessor for WorkoutPlan.Route();
    if ((*(*(v43 - 8) + 48))(v17, 1, v43))
    {
      outlined destroy of ColorScheme?(v17, &_s10WorkoutKit0A4PlanV5RouteVSgMd, &_s10WorkoutKit0A4PlanV5RouteVSgMR);
      v44 = 1;
    }

    else
    {
      v45 = WorkoutPlan.Route.snapshot.getter();
      v47 = v46;
      outlined destroy of ColorScheme?(v17, &_s10WorkoutKit0A4PlanV5RouteVSgMd, &_s10WorkoutKit0A4PlanV5RouteVSgMR);
      if (v47 >> 60 == 15)
      {
        v44 = 1;
      }

      else
      {
        v48 = objc_allocWithZone(MEMORY[0x277D755B8]);
        outlined copy of Data._Representation(v45, v47);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v50 = [v48 initWithData_];

        outlined consume of Data?(v45, v47);
        if (v50)
        {
          v51 = v50;
          Image.init(uiImage:)();
          v52 = v89;
          v53 = v88;
          v54 = v90;
          (*(v89 + 104))(v88, *MEMORY[0x277CE0FE0], v90);
          v55 = Image.resizable(capInsets:resizingMode:)();

          (*(v52 + 8))(v53, v54);
          v122 = static Color.clear.getter();
          v56 = AnyView.init<A>(_:)();
          LOBYTE(v122) = 1;
          LOBYTE(v120) = 0;
          v57 = static Solarium.isEnabled.getter();
          outlined consume of Data?(v45, v47);

          if (v57)
          {
            v58 = 26.0;
          }

          else
          {
            v58 = 10.0;
          }

          v59 = v96;
          v60 = v92;
          v61 = &v92[*(v96 + 36)];
          v62 = *(type metadata accessor for RoundedRectangle() + 20);
          v63 = *MEMORY[0x277CE0118];
          v64 = type metadata accessor for RoundedCornerStyle();
          (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
          *v61 = v58;
          v61[1] = v58;
          *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
          *v60 = v55;
          *(v60 + 1) = 0;
          *(v60 + 8) = 257;
          *(v60 + 3) = v56;
          *(v60 + 2) = 0u;
          *(v60 + 3) = 0u;
          v60[64] = 0;
          v65 = v60;
          v66 = v91;
          outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v65, v91, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
          outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v66, v100, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
          v67 = v59;
          v44 = 0;
          v42 = v101;
          goto LABEL_15;
        }

        outlined consume of Data?(v45, v47);
        v44 = 1;
        v42 = v101;
      }
    }

    v67 = v96;
LABEL_15:
    v68 = v100;
    (*(v95 + 56))(v100, v44, 1, v67);
    v69 = v113;
    v70 = v114;
    (*(v112 + 16))(v114, v113, v42);
    v122 = v70;
    v71 = v97;
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v68, v97, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
    v123 = v71;
    v120 = v42;
    v121 = v98;
    v118 = WitnessTable;
    v119 = lazy protocol witness table accessor for type _ConditionalContent<Button<AddToWatchLabel>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    v72 = v99;
    static ViewBuilder.buildBlock<each A>(_:)(&v122, 2uLL, &v120);
    outlined destroy of ColorScheme?(v68, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
    v73 = v94;
    v94(v69, v42);
    outlined destroy of ColorScheme?(v71, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMR);
    v73(v70, v42);
    v74 = v109;
    v75 = v110;
    (*(v109 + 32))(v27, v72, v110);
    (*(v74 + 56))(v27, 0, 1, v75);
    goto LABEL_16;
  }

  (*(v109 + 56))(v27, 1, 1, v110);
LABEL_16:
  swift_getWitnessTable();
  v76 = v108;
  static ViewBuilder.buildIf<A>(_:)(v27, v108);
  v77 = v105;
  v78 = v102;
  v114 = *(v105 + 8);
  (v114)(v27, v102);
  v80 = v106;
  v79 = v107;
  v81 = v104;
  v82 = v103;
  (*(v106 + 16))(v104, v103, v107);
  v122 = v81;
  (*(v77 + 16))(v27, v76, v78);
  v123 = v27;
  v120 = v79;
  v121 = v78;
  v118 = lazy protocol witness table accessor for type Section<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _PaddingLayout>, _PaddingLayout>?, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _PaddingLayout>?, EmptyView, EmptyView> and conformance <> Section<A, B, C>();
  v117 = swift_getWitnessTable();
  v119 = swift_getWitnessTable();
  static ViewBuilder.buildBlock<each A>(_:)(&v122, 2uLL, &v120);
  v83 = v76;
  v84 = v114;
  (v114)(v83, v78);
  v85 = *(v80 + 8);
  v85(v82, v79);
  (v84)(v27, v78);
  return (v85)(v81, v79);
}

uint64_t closure #2 in closure #1 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GMR);
  MEMORY[0x28223BE20](v42);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMR);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v16 = type metadata accessor for WorkoutConfigurationViewIOS(0, a2, a3, v15);
  v17 = WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v16);
  v18 = WorkoutConfigurationViewerState.currentState(workoutConfiguration:formattingManager:)(*(a1 + *(v16 + 40)), *(a1 + *(v16 + 44)), v17);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAOyAM4CaseOSgGGAA010_FlexFrameG0VGAA010_FixedSizeG0VG_AKyAKyA_AA08_PaddingG0VGA4_GSgAKyAKyAA5ImageVAA01_sG0VGAA023AccessibilityAttachmentO0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAOyAM4CaseOSgGGAA010_FlexFrameG0VGAA010_FixedSizeG0VG_AKyAKyA_AA08_PaddingG0VGA4_GSgAKyAKyAA5ImageVAA01_sG0VGAA023AccessibilityAttachmentO0VGSgtGGMR);
    closure #1 in closure #2 in closure #1 in closure #1 in WorkoutConfigurationViewIOS.body.getter(v20, v21, a1, a2, a3, &v8[*(v22 + 44)]);

    LOBYTE(v21) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v23 = &v8[*(v42 + 36)];
    *v23 = v21;
    *(v23 + 1) = v24;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    *(v23 + 4) = v27;
    v23[40] = 0;
    LOBYTE(v21) = static Edge.Set.bottom.getter();
    WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v16);
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v8, v11, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GMR);
    v36 = &v11[*(v9 + 36)];
    *v36 = v21;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v11, v14, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMR);
    v37 = v44;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v14, v44, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAKyAI4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeQ0VG_ACyACyAwA08_PaddingQ0VGA0_GSgACyACyAA5ImageVAA01_pQ0VGAA023AccessibilityAttachmentL0VGSgtGGA0_GA0_GMR);
    return (*(v43 + 56))(v37, 0, 1, v9);
  }

  else
  {
    v39 = v44;
    v40 = *(v43 + 56);

    return v40(v39, 1, 1, v9);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v172 = a4;
  v173 = a5;
  v187 = a3;
  v181 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  v178 = *(v8 - 8);
  v179 = v8;
  MEMORY[0x28223BE20](v8);
  v155[0] = v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v182 = v155 - v13;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMR);
  MEMORY[0x28223BE20](v158);
  v161 = v155 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMR);
  v16 = *(v15 - 8);
  v174 = v15;
  v175 = v16;
  MEMORY[0x28223BE20](v15);
  v160 = v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v159 = v155 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v177 = v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v185 = v155 - v23;
  v24 = type metadata accessor for Font.Leading();
  v167 = *(v24 - 8);
  v168 = v24;
  MEMORY[0x28223BE20](v24);
  v166 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v155 - v27;
  v29 = type metadata accessor for Font.TextStyle();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v183);
  v156 = v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v165 = v155 - v35;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v184);
  v157 = v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v170 = v155 - v38;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR) - 8;
  MEMORY[0x28223BE20](v171);
  v176 = v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v169 = v155 - v41;
  MEMORY[0x28223BE20](v42);
  v186 = v155 - v43;
  *&v201 = a1;
  *(&v201 + 1) = a2;
  v44 = lazy protocol witness table accessor for type String and conformance String();

  v155[1] = v44;
  v45 = Text.init<A>(_:)();
  v163 = v46;
  v164 = v45;
  v48 = v47;
  v162 = v49;
  (*(v30 + 104))(v32, *MEMORY[0x277CE0A50], v29);
  v50 = *MEMORY[0x277CE0990];
  v51 = type metadata accessor for Font.Design();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v28, v50, v51);
  (*(v52 + 56))(v28, 0, 1, v51);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of ColorScheme?(v28, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v30 + 8))(v32, v29);
  v54 = v166;
  v53 = v167;
  v55 = v168;
  v167[13](v166, *MEMORY[0x277CE0A10], v168);
  Font.leading(_:)();

  (v53[1])(v54, v55);
  v56 = v163;
  v57 = v164;
  v58 = Text.font(_:)();
  v60 = v59;
  LOBYTE(v54) = v61;

  outlined consume of Text.Storage(v57, v56, v48 & 1);

  static Color.white.getter();
  v62 = Text.foregroundColor(_:)();
  v64 = v63;
  LOBYTE(v57) = v65;
  v168 = v66;

  outlined consume of Text.Storage(v58, v60, v54 & 1);

  KeyPath = swift_getKeyPath();
  v68 = v165;
  v69 = &v165[*(v183 + 36)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR);
  v71 = *(v70 + 28);
  v72 = type metadata accessor for Text.Case();
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v166 = (v73 + 56);
  v167 = v74;
  (v74)(v69 + v71, 1, 1, v72);
  *v69 = swift_getKeyPath();
  *v68 = v62;
  *(v68 + 1) = v64;
  v68[16] = v57 & 1;
  *(v68 + 3) = v168;
  *(v68 + 4) = KeyPath;
  v68[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = v68;
  v76 = v170;
  outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v75, v170, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  v77 = (v76 + *(v184 + 36));
  v78 = v197;
  v79 = v199;
  v80 = v200;
  v77[4] = v198;
  v77[5] = v79;
  v77[6] = v80;
  v81 = v195;
  *v77 = v194;
  v77[1] = v81;
  v77[2] = v196;
  v77[3] = v78;
  v82 = v76;
  v83 = v169;
  outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v82, v169, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  *(v83 + *(v171 + 44)) = 256;
  outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v83, v186, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR);
  v85 = type metadata accessor for WorkoutConfigurationViewIOS(0, v172, v173, v84);
  v86 = WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v85);
  v87 = WorkoutConfigurationViewerState.footerText.getter(v86);
  if (v88)
  {
    *&v201 = v87;
    *(&v201 + 1) = v88;
    v89 = Text.init<A>(_:)();
    v91 = v90;
    v173 = v85;
    v93 = v92;
    static Font.body.getter();
    v172 = v70;
    v94 = Text.font(_:)();
    v171 = v72;
    v95 = v94;
    v97 = v96;
    v99 = v98;

    outlined consume of Text.Storage(v89, v91, v93 & 1);

    static Color.gray.getter();
    v100 = Text.foregroundColor(_:)();
    v102 = v101;
    v104 = v103;
    v106 = v105;

    outlined consume of Text.Storage(v95, v97, v99 & 1);

    v107 = swift_getKeyPath();
    v108 = v156;
    v109 = &v156[*(v183 + 36)];
    (v167)(v109 + *(v172 + 28), 1, 1, v171);
    *v109 = swift_getKeyPath();
    *v108 = v100;
    *(v108 + 8) = v102;
    *(v108 + 16) = v104 & 1;
    *(v108 + 24) = v106;
    *(v108 + 32) = v107;
    *(v108 + 40) = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v110 = v157;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v108, v157, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
    v111 = (v110 + *(v184 + 36));
    v112 = v206;
    v111[4] = v205;
    v111[5] = v112;
    v111[6] = v207;
    v113 = v202;
    *v111 = v201;
    v111[1] = v113;
    v114 = v204;
    v111[2] = v203;
    v111[3] = v114;
    LOBYTE(v107) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = v110;
    v124 = v161;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v123, v161, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
    v125 = v124 + *(v158 + 36);
    *v125 = v107;
    *(v125 + 8) = v116;
    *(v125 + 16) = v118;
    *(v125 + 24) = v120;
    *(v125 + 32) = v122;
    *(v125 + 40) = 0;
    LOBYTE(v107) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v134 = v160;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v124, v160, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGMR);
    v135 = v174;
    v136 = v134 + *(v174 + 36);
    *v136 = v107;
    *(v136 + 8) = v127;
    *(v136 + 16) = v129;
    *(v136 + 24) = v131;
    *(v136 + 32) = v133;
    *(v136 + 40) = 0;
    v137 = v134;
    v138 = v159;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v137, v159, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMR);
    v139 = v185;
    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v138, v185, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGMR);
    v140 = 0;
    v141 = v135;
    v85 = v173;
  }

  else
  {
    v139 = v185;
    v141 = v174;
    v140 = 1;
  }

  v142 = 1;
  (*(v175 + 56))(v139, v140, 1, v141);
  if (WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v85) == 1)
  {
    type metadata accessor for WorkoutUIBundlePlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v144 = [objc_opt_self() bundleForClass_];
    v145 = Image.init(_:bundle:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v188 = v145;
    v189 = v208;
    v190 = v209;
    v191 = v210;
    v192 = v211;
    v193 = v212;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    _s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGACyxq_GAA4ViewA2aJRzAA0I8ModifierR_rlWlTm_0(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    v146 = v155[0];
    View.accessibilityHidden(_:)();

    outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v146, v182, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    v142 = 0;
  }

  v147 = v182;
  (*(v178 + 56))(v182, v142, 1, v179);
  v148 = v186;
  v149 = v176;
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v186, v176, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR);
  v150 = v177;
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v139, v177, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMR);
  v151 = v180;
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v147, v180, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMR);
  v152 = v181;
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v149, v181, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VG_ACyACyAsA08_PaddingN0VGAXGSgACyACyAA5ImageVAA01_mN0VGAA023AccessibilityAttachmentI0VGSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VG_ACyACyAsA08_PaddingN0VGAXGSgACyACyAA5ImageVAA01_mN0VGAA023AccessibilityAttachmentI0VGSgtMR);
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v150, v152 + *(v153 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMR);
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v151, v152 + *(v153 + 64), &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of ColorScheme?(v147, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of ColorScheme?(v185, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMR);
  outlined destroy of ColorScheme?(v148, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR);
  outlined destroy of ColorScheme?(v151, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGSgMR);
  outlined destroy of ColorScheme?(v150, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA08_PaddingN0VGAUGSgMR);
  return outlined destroy of ColorScheme?(v149, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeN0VGMR);
}

uint64_t closure #2 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v68 = type metadata accessor for BorderedProminentButtonStyle();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMR);
  MEMORY[0x28223BE20](v62);
  v64 = (&v55 - v8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGMR);
  MEMORY[0x28223BE20](v63);
  v67 = &v55 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v69);
  v70 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GAA01_tu9TransformW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GAA01_tu9TransformW0VySbGGMR);
  v71 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v61 = type metadata accessor for WorkoutConfigurationViewIOS(0, a2, a3, v20);
  if (WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v61))
  {
    v22 = v72;
    v23 = *(v71 + 56);

    return v23(v22, 1, 1, v17);
  }

  else
  {
    v55 = v14;
    v56 = v11;
    v57 = v13;
    v58 = v19;
    v59 = v16;
    v60 = v17;
    v25 = v64;
    closure #1 in closure #2 in closure #1 in WorkoutConfigurationViewIOS.body.getter(a1, a2, a3, v21, v64);
    v26 = v65;
    BorderedProminentButtonStyle.init()();
    lazy protocol witness table accessor for type Group<TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)>> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v28 = v67;
    v27 = v68;
    View.buttonStyle<A>(_:)();
    (*(v66 + 8))(v26, v27);
    outlined destroy of ColorScheme?(v25, &_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMR);
    v29 = &v28[*(v63 + 36)];
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
    v31 = *MEMORY[0x277CDF420];
    v32 = type metadata accessor for ControlSize();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    v33 = v61;
    if (WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v61) == 4)
    {
      v34 = static Color.gray.getter();
    }

    else
    {
      v34 = static Color.black.getter();
    }

    v35 = v34;
    v36 = v72;
    v38 = v58;
    v37 = v59;
    v39 = v57;
    KeyPath = swift_getKeyPath();
    v41 = v28;
    v42 = v70;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v41, v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGMR);
    v43 = (v42 + *(v69 + 36));
    *v43 = KeyPath;
    v43[1] = v35;
    WorkoutConfiguration.displayColor.getter();
    v44 = Color.init(uiColor:)();
    v45 = swift_getKeyPath();
    v73 = v44;
    v46 = AnyShapeStyle.init<A>(_:)();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v42, v39, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGMR);
    v47 = (v39 + *(v56 + 36));
    *v47 = v45;
    v47[1] = v46;
    v48 = static Font.headline.getter();
    v49 = swift_getKeyPath();
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v39, v37, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGMR);
    v50 = (v37 + *(v55 + 36));
    *v50 = v49;
    v50[1] = v48;
    LOBYTE(KeyPath) = WorkoutConfigurationViewIOS.workoutConfigurationViewerState.getter(v33) == 4;
    v51 = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = KeyPath;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v37, v38, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GMR);
    v53 = v60;
    v54 = (v38 + *(v60 + 36));
    *v54 = v51;
    v54[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_8;
    v54[2] = v52;
    outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>(v38, v36, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GAA01_tu9TransformW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA5GroupVyAA05TupleE0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationE0VAN010AddToWatchI0VGSg_AA0I0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0S9AlignmentOGGAA16_FlexFrameLayoutVGAZyAA4FontVSgGGGSgtGG_AA017BorderedProminentiG0VQo_AZyAA11ControlSizeOGGAZyAA5ColorVSgGGAZyAA08AnyShapeG0VSgGGA9_GAA01_tu9TransformW0VySbGGMR);
    return (*(v71 + 56))(v36, 0, 1, v53);
  }
}

void *closure #1 in closure #2 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v62 = a5;
  v58 = a2;
  v59 = a3;
  v6 = type metadata accessor for WorkoutConfigurationViewIOS(0, a2, a3, a4);
  v7 = *(v6 - 8);
  v56 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, &_s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v54 - v19;
  v21 = *(a1 + *(v6 + 40));
  v22 = WorkoutConfiguration.requiresDisambiguation.getter();
  v63 = v11;
  v60 = a1;
  if (v22)
  {
    v23 = v6;
    v24 = (a1 + *(v6 + 48));
    v25 = *v24;
    v26 = v24[1];
    v69 = v21;
    v70 = v25;
    v71 = v26;
    v72 = 0;
LABEL_3:
    lazy protocol witness table accessor for type DisambiguateConfigurationView and conformance DisambiguateConfigurationView();
    lazy protocol witness table accessor for type AddToWatchButton and conformance AddToWatchButton();
    v27 = v21;

    _ConditionalContent<>.init(storage:)();
    v28 = v64;
    v29 = v65;
    v30 = v66;
    v31 = v67;
    outlined copy of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>.Storage(v64, v65, v66);
    goto LABEL_9;
  }

  v23 = v6;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
  }

  else
  {
    dispatch thunk of WorkoutConfiguration.route.getter();
    v32 = type metadata accessor for WorkoutPlan.Route();
    v33 = (*(*(v32 - 8) + 48))(v20, 1, v32);
    outlined destroy of ColorScheme?(v20, &_s10WorkoutKit0A4PlanV5RouteVSgMd, &_s10WorkoutKit0A4PlanV5RouteVSgMR);
    if (v33 == 1)
    {
      v34 = (v60 + *(v6 + 48));
      v35 = *v34;
      v36 = v34[1];
      v69 = v21;
      v70 = v35;
      v71 = v36;
      v72 = 1;
      goto LABEL_3;
    }
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = -1;
LABEL_9:
  v67 = &type metadata for WorkoutUIFeatures;
  v68 = lazy protocol witness table accessor for type WorkoutUIFeatures and conformance WorkoutUIFeatures();
  v37 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v64);
  if ((v37 & 1) == 0)
  {
    v50 = 1;
LABEL_14:
    v48 = v63;
    v49 = v61;
    goto LABEL_15;
  }

  v55 = v15;
  v38 = specialized static PairedDeviceUtilities.activePairedDeviceName.getter();
  if (!v39)
  {
    v50 = 1;
    v15 = v55;
    goto LABEL_14;
  }

  v40 = v39;
  v41 = *(v7 + 16);
  v54 = v38;
  v41(v9, v60, v23);
  v42 = *(v7 + 80);
  v60 = v10;
  v43 = (v42 + 32) & ~v42;
  v44 = swift_allocObject();
  v45 = v59;
  *(v44 + 16) = v58;
  *(v44 + 24) = v45;
  v46 = (*(v7 + 32))(v44 + v43, v9, v23);
  MEMORY[0x28223BE20](v46);
  *(&v54 - 2) = v54;
  *(&v54 - 1) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v47 = v57;
  v10 = v60;
  Button.init(action:label:)();

  v48 = v63;
  v49 = v61;
  (*(v63 + 32))(v61, v47, v10);
  v50 = 0;
  v15 = v55;
LABEL_15:
  (*(v48 + 56))(v49, v50, 1, v10);
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v49, v15, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMR);
  v51 = v62;
  *v62 = v28;
  v51[1] = v29;
  v51[2] = v30;
  *(v51 + 24) = v31;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB029DisambiguateConfigurationViewVAD16AddToWatchButtonVGSg_AA0L0VyAA08ModifiedD0VyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGGSgtMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB029DisambiguateConfigurationViewVAD16AddToWatchButtonVGSg_AA0L0VyAA08ModifiedD0VyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGGSgtMR);
  outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v15, v51 + *(v52 + 48), &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMR);
  outlined copy of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?(v28, v29, v30, v31);
  outlined consume of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?(v28, v29, v30, v31);
  outlined destroy of ColorScheme?(v49, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMR);
  outlined destroy of ColorScheme?(v15, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGGSgMR);
  return outlined consume of _ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?(v28, v29, v30, v31);
}

double closure #2 in closure #1 in closure #2 in closure #1 in WorkoutConfigurationViewIOS.body.getter@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = type metadata accessor for Font.Leading();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &KeyPath - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v15 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._object = 0x800000020CB971C0;
  v16._countAndFlagsBits = 0xD000000000000011;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v17);
  v18._object = 0x800000020CB971E0;
  v18._countAndFlagsBits = 0xD000000000000011;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  LocalizedStringKey.init(stringInterpolation:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v39 = v19;
  v21 = v20;
  v38 = v22;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v43[55] = v48;
  *&v43[71] = v49;
  *&v43[87] = v50;
  *&v43[103] = v51;
  *&v43[7] = v45;
  *&v43[23] = v46;
  LOBYTE(a1) = v21 & 1;
  v44 = v21 & 1;
  *&v43[39] = v47;
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A68], v11);
  v23 = *MEMORY[0x277CE0990];
  v24 = type metadata accessor for Font.Design();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v10, v23, v24);
  (*(v25 + 56))(v10, 0, 1, v24);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of ColorScheme?(v10, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v12 + 8))(v14, v11);
  v26 = v41;
  v27 = v42;
  (*(v41 + 104))(v7, *MEMORY[0x277CE0A10], v42);
  v28 = Font.leading(_:)();

  (*(v26 + 8))(v7, v27);
  v29 = swift_getKeyPath();
  v30 = *&v43[80];
  *(a3 + 105) = *&v43[64];
  *(a3 + 121) = v30;
  *(a3 + 137) = *&v43[96];
  v31 = *&v43[16];
  *(a3 + 41) = *v43;
  *(a3 + 57) = v31;
  result = *&v43[32];
  v33 = *&v43[48];
  *(a3 + 73) = *&v43[32];
  v34 = v39;
  *a3 = v40;
  *(a3 + 8) = v34;
  *(a3 + 16) = a1;
  v35 = KeyPath;
  *(a3 + 24) = v38;
  *(a3 + 32) = v35;
  *(a3 + 40) = 1;
  v36 = *&v43[111];
  *(a3 + 89) = v33;
  *(a3 + 152) = v36;
  *(a3 + 160) = v29;
  *(a3 + 168) = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAEyAEyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalE0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGMd, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAEyAEyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalE0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>>?>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationE0VAH16AddToWatchButtonVGSg_AA0N0VyAA08ModifiedG0VyARyARyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAA16_FlexFrameLayoutVGAVyAA4FontVSgGGGSgtGGMR);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationD0VAF16AddToWatchButtonVGSg_AA0M0VyAA08ModifiedF0VyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGGSgtGMd, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVy07WorkoutB0025DisambiguateConfigurationD0VAF16AddToWatchButtonVGSg_AA0M0VyAA08ModifiedF0VyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGGSgtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(_ConditionalContent<DisambiguateConfigurationView, AddToWatchButton>?, Button<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>>?)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DisambiguateConfigurationView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a2;
  v119 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMR);
  MEMORY[0x28223BE20](v6);
  v8 = (&KeyPath - v7);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FlexFrameLayoutVGG_AWtGAX_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAA16_FlexFrameLayoutVGG_AWtGAX_GMR);
  MEMORY[0x28223BE20](v114);
  v115 = &KeyPath - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMR);
  MEMORY[0x28223BE20](v113);
  v112 = &KeyPath - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGGMR);
  v12 = *(v11 - 8);
  v110 = v11;
  v111 = v12;
  MEMORY[0x28223BE20](v11);
  v109 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &KeyPath - v15;
  MEMORY[0x28223BE20](v16);
  v120 = &KeyPath - v17;
  MEMORY[0x28223BE20](v18);
  v123 = &KeyPath - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v116 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &KeyPath - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAOyAOyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGASyAA4FontVSgGGASyAA5ColorVSgGG_ACyAMyAGyAZG_A9_tGA10_GSgtG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAOyAOyAOyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGAA16_FlexFrameLayoutVGASyAA4FontVSgGGASyAA5ColorVSgGG_ACyAMyAGyAZG_A9_tGA10_GSgtG_GMR);
  MEMORY[0x28223BE20](v24);
  v122 = &KeyPath - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMd, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMR);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &KeyPath - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQyAA5ColorVSgGG_ACyAKyAEyAXG_A7_tGA8_GSgtGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQyAA5ColorVSgGG_ACyAKyAEyAXG_A7_tGA8_GSgtGGMR);
  v124 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v121 = &KeyPath - v31;
  v32 = a1;
  if (WorkoutConfiguration.requiresDisambiguation.getter())
  {
    v106 = v26;
    v107 = v30;
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33 && v32)
    {
      v34 = v33;
      v35 = swift_allocObject();
      v35[2] = v32;
      v35[3] = v34;
      v36 = v118;
      v37 = v119;
      v35[4] = v32;
      v35[5] = v36;
      v35[6] = v37;
      lazy protocol witness table accessor for type AddToWatchLabel and conformance AddToWatchLabel();
      v38 = v32;

      Button.init(action:label:)();
      v39 = v106;
      (*(v27 + 16))(v122, v29, v106);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type Button<AddToWatchLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMd, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMR, MEMORY[0x277CDF028]);
      lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMR, MEMORY[0x277CE14C0]);
      v40 = v121;
      _ConditionalContent<>.init(storage:)();

      (*(v27 + 8))(v29, v39);
LABEL_17:
      outlined init with take of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v40, a4, &_s7SwiftUI19_ConditionalContentVyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQyAA5ColorVSgGG_ACyAKyAEyAXG_A7_tGA8_GSgtGGMd, &_s7SwiftUI19_ConditionalContentVyAA6ButtonVy07WorkoutB015AddToWatchLabelVGAA9TupleViewVyAA08ModifiedD0VyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQyAA5ColorVSgGG_ACyAKyAEyAXG_A7_tGA8_GSgtGGMR);
      return (*(v124 + 56))(a4, 0, 1, v107);
    }

    v104 = a4;
    v105 = v24;
    v103 = v6;

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v43 = WorkoutUIBundle.super.isa;
    v154._object = 0xE000000000000000;
    v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v44.value._object = 0xEB00000000656C62;
    v45._object = 0x800000020CB97220;
    v45._countAndFlagsBits = 0xD000000000000021;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v154._countAndFlagsBits = 0;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, v43, v46, v154);

    v139 = v47;
    lazy protocol witness table accessor for type String and conformance String();
    v48 = Text.init<A>(_:)();
    v101 = v49;
    p_KeyPath = v48;
    v51 = v50;
    v100 = v52;
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v144[55] = v149;
    *&v144[71] = v150;
    *&v144[87] = v151;
    *&v144[103] = v152;
    *&v144[7] = v146;
    *&v144[23] = v147;
    v53 = v51 & 1;
    v145 = v51 & 1;
    *&v144[39] = v148;
    v54 = static Font.footnote.getter();
    v55 = swift_getKeyPath();
    v56 = static Color.secondary.getter();
    v57 = swift_getKeyPath();
    *(&v141[4] + 9) = *&v144[64];
    *(&v141[5] + 9) = *&v144[80];
    *(&v141[6] + 9) = *&v144[96];
    *(v141 + 9) = *v144;
    *(&v141[1] + 9) = *&v144[16];
    *(&v141[2] + 9) = *&v144[32];
    v139._countAndFlagsBits = p_KeyPath;
    v139._object = v101;
    LOBYTE(v140._countAndFlagsBits) = v53;
    v140._object = v100;
    *&v141[0] = KeyPath;
    BYTE8(v141[0]) = 1;
    *(&v141[3] + 9) = *&v144[48];
    *(&v141[7] + 1) = *&v144[111];
    v142._countAndFlagsBits = v55;
    v142._object = v54;
    v143._countAndFlagsBits = v57;
    v143._object = v56;
    v58 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v59 = [v58 requiresLocationDisambiguation];

    if (v59)
    {
      v60 = swift_allocObject();
      p_KeyPath = &KeyPath;
      v61 = v118;
      v62 = v119;
      v60[2] = v32;
      v60[3] = v61;
      v60[4] = v62;
      MEMORY[0x28223BE20](v60);
      v63 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      Button.init(action:label:)();
      v64 = swift_allocObject();
      v64[2] = v63;
      v64[3] = v61;
      v64[4] = v62;
      MEMORY[0x28223BE20](v64);
      v65 = v63;

      v66 = v120;
      Button.init(action:label:)();
      LODWORD(v119) = 0;
    }

    else
    {
      v67 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v68 = [v67 requiresSwimmingLocationDisambiguation];

      v66 = v120;
      if (!v68)
      {
        v84 = 1;
        v83 = v117;
        goto LABEL_16;
      }

      v69 = swift_allocObject();
      p_KeyPath = &KeyPath;
      v71 = v118;
      v70 = v119;
      v69[2] = v32;
      v69[3] = v71;
      v69[4] = v70;
      MEMORY[0x28223BE20](v69);
      v72 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGMR);
      v101 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      Button.init(action:label:)();
      v73 = swift_allocObject();
      v73[2] = v72;
      v73[3] = v71;
      v73[4] = v70;
      MEMORY[0x28223BE20](v73);
      v74 = v72;

      Button.init(action:label:)();
      LODWORD(v119) = 1;
    }

    v76 = v110;
    v75 = v111;
    v77 = *(v111 + 16);
    v78 = v108;
    v77(v108, v123, v110);
    v79 = v109;
    v77(v109, v66, v76);
    v80 = v112;
    v77(v112, v78, v76);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGG_AQtMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGGAA16_FlexFrameLayoutVGG_AQtMR);
    v77((v80 + *(v81 + 48)), v79, v76);
    v82 = *(v75 + 8);
    v82(v79, v76);
    v82(v78, v76);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v80, v115, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMR, MEMORY[0x277CE14C0]);
    v83 = v117;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ColorScheme?(v80, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA16_FlexFrameLayoutVGG_AStGMR);
    v82(v120, v76);
    v82(v123, v76);
    v84 = 0;
LABEL_16:
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGMR);
    (*(*(v85 - 8) + 56))(v83, v84, 1, v85);
    v133 = v141[6];
    v134 = v141[7];
    v135 = v142;
    v136 = v143;
    v129 = v141[2];
    v130 = v141[3];
    v131 = v141[4];
    v132 = v141[5];
    v125 = v139;
    v126 = v140;
    v127 = v141[0];
    v128 = v141[1];
    v86 = v116;
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v83, v116, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMR);
    v87 = v134;
    v137[8] = v133;
    v137[9] = v134;
    v88 = v135;
    v89 = v136;
    v137[10] = v135;
    v137[11] = v136;
    v90 = v129;
    v91 = v130;
    v137[4] = v129;
    v137[5] = v130;
    v92 = v131;
    v93 = v132;
    v137[6] = v131;
    v137[7] = v132;
    v94 = v125;
    v95 = v126;
    v137[0] = v125;
    v137[1] = v126;
    v96 = v127;
    v97 = v128;
    v137[2] = v127;
    v137[3] = v128;
    v8[8] = v133;
    v8[9] = v87;
    v8[10] = v88;
    v8[11] = v89;
    v8[4] = v90;
    v8[5] = v91;
    v8[6] = v92;
    v8[7] = v93;
    *v8 = v94;
    v8[1] = v95;
    v8[2] = v96;
    v8[3] = v97;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGG_AA012_ConditionalD0VyAA9TupleViewVyAA6ButtonVyANG_A3_tGA4_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGG_AA012_ConditionalD0VyAA9TupleViewVyAA6ButtonVyANG_A3_tGA4_GSgtMR);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v86, v8 + *(v98 + 48), &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMR);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(&v139, v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v137, v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    outlined destroy of ColorScheme?(v86, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMR);
    v138[8] = v133;
    v138[9] = v134;
    v138[10] = v135;
    v138[11] = v136;
    v138[4] = v129;
    v138[5] = v130;
    v138[6] = v131;
    v138[7] = v132;
    v138[0] = v125;
    v138[1] = v126;
    v138[2] = v127;
    v138[3] = v128;
    outlined destroy of ColorScheme?(v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    outlined init with copy of (lower: DynamicTypeSize, upper: DynamicTypeSize)(v8, v122, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type Button<AddToWatchLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMd, &_s7SwiftUI6ButtonVy07WorkoutB015AddToWatchLabelVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ConditionalContent<TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>, TupleView<(Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>, Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FlexFrameLayout>>)>>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMR, MEMORY[0x277CE14C0]);
    v40 = v121;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ColorScheme?(&v139, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    outlined destroy of ColorScheme?(v8, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA16_FlexFrameLayoutVGAIyAA4FontVSgGGAIyAA5ColorVSgGG_AA012_ConditionalF0VyACyAA6ButtonVyAPG_A3_tGA4_GSgtGMR);
    outlined destroy of ColorScheme?(v83, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA6ButtonVyAA08ModifiedD0VyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAA16_FlexFrameLayoutVGG_AUtGAVGSgMR);
    a4 = v104;
    goto LABEL_17;
  }

  v41 = *(v124 + 56);

  return v41(a4, 1, 1, v30);
}