uint64_t protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for TimelineProvider.relevance() in conformance TrainingLoadWidgetTimelineProvider(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TimelineProvider.relevance() in conformance TrainingLoadWidgetTimelineProvider;

  return TrainingLoadWidgetTimelineProvider.relevance()(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for HKSample(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with take of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = *(v13 + 1);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:);

  return closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(a1, v10, v11, v12, v1 + v6, v14, v15, v1 + v9);
}

uint64_t partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of TrainingLoadViewModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_21(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_21TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined destroy of TrainingLoadViewModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TrainingLoadViewModel?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for IntervalSingleStepConfigurationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalSingleStepConfigurationView;
  if (!type metadata singleton initialization cache for IntervalSingleStepConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalSingleStepConfigurationView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutBlock>(319);
      if (v3 <= 0x3F)
      {
        _sSo21FIUIFormattingManagerCMaTm_7(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
        if (v4 <= 0x3F)
        {
          type metadata accessor for HKActivityMoveMode(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for StepType();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>(319);
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

void type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<IntervalWorkoutConfiguration>)
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentObject<IntervalWorkoutConfiguration>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutBlock>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutBlock>)
  {
    type metadata accessor for WorkoutBlock();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD58]);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<WorkoutBlock>);
    }
  }
}

void type metadata accessor for Binding<UUID?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<UUID?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<UUID?>);
    }
  }
}

uint64_t IntervalSingleStepConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaFRd__lFQOyAA6ButtonVyACy07WorkoutB00N7StepRowVAP0n8SkippingoP0VGG_ACyAA08ModifiedD0VyAXyAP08Intervalo4EditF0VAA30_EnvironmentKeyWritingModifierVyAP28ConfigurationNavigationModelCSgGGA0_y0N4Core0snY0CSgGGAXyAP0so10ChooseGoalF0VA4_GGQo_AA0Z4LinkVyAUA15_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaFRd__lFQOyAA6ButtonVyACy07WorkoutB00N7StepRowVAP0n8SkippingoP0VGG_ACyAA08ModifiedD0VyAXyAP08Intervalo4EditF0VAA30_EnvironmentKeyWritingModifierVyAP28ConfigurationNavigationModelCSgGGA0_y0N4Core0snY0CSgGGAXyAP0so10ChooseGoalF0VA4_GGQo_AA0Z4LinkVyAUA15_G_GMR);
  MEMORY[0x28223BE20](v111);
  v112 = &v89 - v2;
  v3 = type metadata accessor for StepType();
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMR);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v119 = &v89 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaBRd__lFQOyAA6ButtonVyAA19_ConditionalContentVy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_AMyAA08ModifiedL0VyAVyAN08Intervaln4EditC0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalC0VA2_GGQo_Md, &_s7SwiftUI4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaBRd__lFQOyAA6ButtonVyAA19_ConditionalContentVy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_AMyAA08ModifiedL0VyAVyAN08Intervaln4EditC0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalC0VA2_GGQo_MR);
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v89 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMR);
  MEMORY[0x28223BE20](v118);
  v109 = &v89 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo_GACyA1_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAAA0_Rd__lFQOyA5_yA10_G_A_Qo_AA0Q4LinkVyA10_A_GG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo_GACyA1_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAAA0_Rd__lFQOyA5_yA10_G_A_Qo_AA0Q4LinkVyA10_A_GG_GMR);
  MEMORY[0x28223BE20](v122);
  v120 = &v89 - v9;
  v103 = type metadata accessor for PlainButtonStyle();
  v96 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v95 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntervalSingleStepConfigurationView(0);
  v113 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v114 = v12;
  v115 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMR);
  v92 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v89 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA012_ConditionalI0Vy07WorkoutB00K7StepRowVAL0k8SkippinglM0VGAA01_I13ShapeModifierVyAA9RectangleVGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA012_ConditionalI0Vy07WorkoutB00K7StepRowVAL0k8SkippinglM0VGAA01_I13ShapeModifierVyAA9RectangleVGGG_AA05PlaingE0VQo_MR);
  v94 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = &v89 - v14;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo__GMR);
  MEMORY[0x28223BE20](v98);
  v100 = &v89 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMR);
  MEMORY[0x28223BE20](v116);
  v90 = &v89 - v16;
  v17 = type metadata accessor for UUID();
  v97 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v19);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMR);
  MEMORY[0x28223BE20](v117);
  v99 = &v89 - v31;
  if ((static Platform.current.getter() & 1) == 0)
  {
    v119 = v1;
    v37 = WorkoutBlock.steps.getter();
    if (v37 >> 62)
    {
      v55 = v37;
      v56 = __CocoaSet.count.getter();
      v37 = v55;
      if (v56)
      {
LABEL_6:
        if ((v37 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F30C990](0, v37);
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v38)
          {
            __break(1u);
            goto LABEL_32;
          }
        }

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
        MEMORY[0x20F30B100](v39);
        v40 = WorkoutBlock.steps.getter();
        if (v40 >> 62)
        {
          v57 = v40;
          v58 = __CocoaSet.count.getter();
          v40 = v57;
          if (v58)
          {
LABEL_10:
            if ((v40 & 0xC000000000000001) == 0)
            {
              if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_34;
              }

              goto LABEL_13;
            }

LABEL_32:
            MEMORY[0x20F30C990](0);
LABEL_13:

            MEMORY[0x20F304900](v41);

            v42 = 0;
LABEL_19:
            v59 = v97;
            (*(v97 + 56))(v27, v42, 1, v17);
            v60 = *(v19 + 48);
            _s10Foundation4UUIDVSgWOcTm_2(v30, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            _s10Foundation4UUIDVSgWOcTm_2(v27, &v21[v60], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v61 = *(v59 + 48);
            if (v61(v21, 1, v17) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v61(&v21[v60], 1, v17) == 1)
              {
                _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v62 = v120;
LABEL_28:
                v84 = v90;
                IntervalSingleStepConfigurationView.navigationDestination()(v90);
                _s10Foundation4UUIDVSgWOcTm_2(v84, v100, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMR);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
                v85 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMR, MEMORY[0x277CDF028]);
                v86 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
                v123 = v101;
                v124 = v103;
                v125 = v85;
                v126 = v86;
                swift_getOpaqueTypeConformance2();
                v77 = v99;
                _ConditionalContent<>.init(storage:)();
                _s10Foundation4UUIDVSgWOhTm_2(v84, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMR);
                goto LABEL_29;
              }
            }

            else
            {
              _s10Foundation4UUIDVSgWOcTm_2(v21, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              if (v61(&v21[v60], 1, v17) != 1)
              {
                v79 = v97;
                v80 = &v21[v60];
                v81 = v89;
                (*(v97 + 32))(v89, v80, v17);
                _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                v82 = dispatch thunk of static Equatable.== infix(_:_:)();
                v83 = *(v79 + 8);
                v83(v81, v17);
                _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v83(v24, v17);
                _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
                v62 = v120;
                v63 = v119;
                if (v82)
                {
                  goto LABEL_28;
                }

LABEL_26:
                v64 = v115;
                outlined init with copy of IntervalSingleStepConfigurationView(v63, v115, type metadata accessor for IntervalSingleStepConfigurationView);
                v65 = (*(v113 + 80) + 16) & ~*(v113 + 80);
                v66 = swift_allocObject();
                v67 = outlined init with take of IntervalSingleStepConfigurationView(v64, v66 + v65, type metadata accessor for IntervalSingleStepConfigurationView);
                MEMORY[0x28223BE20](v67);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
                lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
                v68 = v91;
                Button.init(action:label:)();
                v69 = v95;
                PlainButtonStyle.init()();
                v70 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMR, MEMORY[0x277CDF028]);
                v71 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
                v72 = v93;
                v73 = v101;
                v74 = v103;
                View.buttonStyle<A>(_:)();
                (*(v96 + 8))(v69, v74);
                (*(v92 + 8))(v68, v73);
                v75 = v94;
                v76 = v102;
                (*(v94 + 16))(v100, v72, v102);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
                v123 = v73;
                v124 = v74;
                v125 = v70;
                v126 = v71;
                swift_getOpaqueTypeConformance2();
                v77 = v99;
                _ConditionalContent<>.init(storage:)();
                v78 = v72;
                v62 = v120;
                (*(v75 + 8))(v78, v76);
LABEL_29:
                v52 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd;
                v53 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMR;
                outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v77, v62, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMR);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
                lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
                _ConditionalContent<>.init(storage:)();
                v54 = v77;
                return outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v54, v52, v53);
              }

              _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
              (*(v97 + 8))(v24, v17);
            }

            _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_25:
            v63 = v119;
            goto LABEL_26;
          }
        }

        else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

        v42 = 1;
        goto LABEL_19;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (*v1)
  {
    v32 = v115;
    outlined init with copy of IntervalSingleStepConfigurationView(v1, v115, type metadata accessor for IntervalSingleStepConfigurationView);
    v33 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v34 = swift_allocObject();
    v35 = outlined init with take of IntervalSingleStepConfigurationView(v32, v34 + v33, type metadata accessor for IntervalSingleStepConfigurationView);
    MEMORY[0x28223BE20](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>();
    Button.init(action:label:)();
    v36 = v104;
    (*(v104 + 104))(v5, *MEMORY[0x277D7E720], v3);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728], MEMORY[0x277D7E738]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v36 + 8))(v5, v3);
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    MEMORY[0x28223BE20](v43);
    v44 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMR, MEMORY[0x277CDF028]);
    v88 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    v45 = v106;
    v46 = v107;
    v47 = v116;
    v48 = v119;
    View.navigationDestination<A>(isPresented:destination:)();

    (*(v105 + 8))(v48, v46);
    v49 = v108;
    v50 = v110;
    (*(v108 + 16))(v112, v45, v110);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMR);
    v123 = v46;
    v124 = v47;
    v125 = v44;
    v126 = v88;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMR, MEMORY[0x277CDD938]);
    v51 = v109;
    _ConditionalContent<>.init(storage:)();
    (*(v49 + 8))(v45, v50);
    v52 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd;
    v53 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMR;
    outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v51, v120, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v54 = v51;
    return outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v54, v52, v53);
  }

LABEL_34:
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t IntervalSingleStepConfigurationView.navigationDestination()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for StepType();
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntervalStepChooseGoalView(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPG_GMR);
  MEMORY[0x28223BE20](v13);
  v15 = (&v54 - v14);
  v16 = *(v1 + 5);
  v17 = WorkoutBlock.steps.getter();
  if (v17 >> 62)
  {
    v37 = v17;
    v38 = __CocoaSet.count.getter();
    v17 = v37;
    v63 = v13;
    v64 = v8;
    if (v38)
    {
LABEL_3:
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F30C990](0, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v19)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      IntervalSingleStepConfigurationView.stepEditViewModel.getter();
      type metadata accessor for ConfigurationNavigationModel(0);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v20 = EnvironmentObject.init()();
      v61 = v21;
      v62 = v20;
      type metadata accessor for IntervalWorkoutConfiguration();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
      v22 = EnvironmentObject.init()();
      v59 = v23;
      v60 = v22;
      type metadata accessor for IntervalStepEditViewModel(0);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel, &protocol conformance descriptor for IntervalStepEditViewModel);
      v24 = ObservedObject.init(wrappedValue:)();
      v26 = *v2;
      if (*v2)
      {
        v27 = v24;
        v28 = v25;

        v29 = static ObservableObject.environmentStore.getter();
        v30 = *(v2 + 2);
        if (v30)
        {
          v31 = v29;
          v32 = v30;
          v33 = static ObservableObject.environmentStore.getter();
          v34 = v61;
          *v15 = v62;
          v15[1] = v34;
          v35 = v59;
          v15[2] = v60;
          v15[3] = v35;
          v15[4] = v27;
          v15[5] = v28;
          v15[6] = v31;
          v15[7] = v26;
          v15[8] = v33;
          v15[9] = v30;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMR);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
          return _ConditionalContent<>.init(storage:)();
        }

        goto LABEL_16;
      }

LABEL_15:
      EnvironmentObject.error()();
      __break(1u);
LABEL_16:
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v13;
    v64 = v8;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v57 = v10;

  v39 = type metadata accessor for IntervalSingleStepConfigurationView(0);
  v40 = v60;
  (*(v60 + 16))(v62, &v2[*(v39 + 36)], v3);
  v41 = *(v2 + 2);
  v59 = v3;
  if (!v41)
  {
LABEL_17:
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  v56 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  v43 = *(v2 + 6);
  v55 = *(v2 + 7);
  type metadata accessor for ConfigurationNavigationModel(0);
  v44 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v45 = v42;
  v46 = v43;

  v58 = v44;
  *v7 = EnvironmentObject.init()();
  v7[1] = v47;
  (*(v40 + 32))(v7 + v5[5], v62, v59);
  v48 = v55;
  *(v7 + v5[6]) = v56;
  *(v7 + v5[7]) = v48;
  *(v7 + v5[8]) = v45;
  *(v7 + v5[9]) = v46;
  *(v7 + v5[10]) = v16;
  v49 = *v2;
  if (!*v2)
  {
LABEL_18:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v50 = static ObservableObject.environmentStore.getter();
  v51 = v57;
  outlined init with take of IntervalSingleStepConfigurationView(v7, v57, type metadata accessor for IntervalStepChooseGoalView);
  v52 = (v51 + *(v64 + 36));
  *v52 = v50;
  v52[1] = v49;
  v53 = v61;
  outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v51, v61, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  _s10Foundation4UUIDVSgWOcTm_2(v53, v15, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return _s10Foundation4UUIDVSgWOhTm_2(v53, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
}

void closure #1 in IntervalSingleStepConfigurationView.body.getter(char *a1)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for StepType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 5);
  v8 = WorkoutBlock.steps.getter();
  if (v8 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v8 & 0xC000000000000001) == 0)
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      v10 = v8;
      v11 = __CocoaSet.count.getter();
      v8 = v10;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x20F30C990](0, v8);
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

LABEL_7:

  v12 = type metadata accessor for IntervalSingleStepConfigurationView(0);
  (*(v4 + 16))(v6, &a1[*(v12 + 36)], v3);
  _sSo21FIUIFormattingManagerCMaTm_7(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  static NLSessionActivityGoal.makeOpenGoal()();
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = v13;
    dispatch thunk of WorkoutConfiguration.activityType.getter();

    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v15 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    if (*a1)
    {
      v16 = v15;

      ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(v16, v7);

LABEL_10:
      MEMORY[0x28223BE20](v8);
      *&v20[-16] = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      return;
    }

    type metadata accessor for ConfigurationNavigationModel(0);
    v17 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v18 = type metadata accessor for ConfigurationNavigationModel;
    v19 = &protocol conformance descriptor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    v17 = &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration;
    v18 = MEMORY[0x277D7D9A0];
    v19 = MEMORY[0x277D7DA48];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(v17, v18, v19);
  EnvironmentObject.error()();
  __break(1u);
}

unint64_t closure #1 in closure #1 in IntervalSingleStepConfigurationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  result = WorkoutBlock.steps.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    goto LABEL_9;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    MEMORY[0x20F304900](v7);

    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
LABEL_9:
    type metadata accessor for IntervalSingleStepConfigurationView(0);
    _s10Foundation4UUIDVSgWOcTm_2(v5, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
    Binding.wrappedValue.setter();
    return _s10Foundation4UUIDVSgWOhTm_2(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  __break(1u);
  return result;
}

void IntervalSingleStepConfigurationView.stepLabel()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutSkippingStepRow(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F7StepRowVAF0f8SkippinggH0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F7StepRowVAF0f8SkippinggH0V_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  v8 = WorkoutBlock.steps.getter();
  if (v8 >> 62)
  {
    v13 = v8;
    v14 = __CocoaSet.count.getter();
    v8 = v13;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:

    v15 = *(type metadata accessor for IntervalSingleStepConfigurationView(0) + 36);
    v16 = type metadata accessor for StepType();
    (*(*(v16 - 8) + 16))(v4, v1 + v15, v16);
    outlined init with copy of IntervalSingleStepConfigurationView(v4, v7, type metadata accessor for WorkoutSkippingStepRow);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow, &protocol conformance descriptor for WorkoutSkippingStepRow);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of WorkoutSkippingStepRow(v4);
    return;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v9 = *(v1 + 48);
    type metadata accessor for WorkoutStep();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30], MEMORY[0x277D7DD28]);

    v10 = v9;
    *v7 = ObservedObject.init(wrappedValue:)();
    v7[1] = v11;
    v7[2] = v10;
    v7[3] = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow, &protocol conformance descriptor for WorkoutSkippingStepRow);

    v12 = v10;
    _ConditionalContent<>.init(storage:)();

    return;
  }

  __break(1u);
}

uint64_t closure #3 in IntervalSingleStepConfigurationView.body.getter(uint64_t *a1)
{
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntervalSingleStepConfigurationView(0);
  v6 = *(v3 + 104);
  v6(v5, *MEMORY[0x277D7E720], v2);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728], MEMORY[0x277D7E738]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v10 == v9)
  {
    if (*a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v6(v5, *MEMORY[0x277D7E718], v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (v7)(v5, v2);
  if (v10 != v9)
  {
    return result;
  }

  if (!*a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v10) = 1;

  return static Published.subscript.setter();
}

void *IntervalSingleStepConfigurationView.stepEditViewModel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  MEMORY[0x28223BE20](v12);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = WorkoutBlock.steps.getter();
  if (v17 >> 62)
  {
    v26 = v17;
    v27 = __CocoaSet.count.getter();
    v17 = v26;
    v43 = v8;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_10:

    v28 = v1 + *(type metadata accessor for IntervalSingleStepConfigurationView(0) + 36);
    v39 = *(v3 + 16);
    v39(v5, v28, v2);
    v29 = v1[2];
    if (v29)
    {
      v30 = v29;
      v38 = dispatch thunk of WorkoutConfiguration.activityType.getter();

      v31 = v1[6];
      v41 = v1[7];
      v40 = v31;
      Binding.projectedValue.getter();
      type metadata accessor for IntervalStepEditViewModel(0);
      v21 = swift_allocObject();
      v21[4] = 0;
      *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval) = 0;
      swift_beginAccess();
      type metadata accessor for WorkoutBlock();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD58]);

      v21[2] = ObservedObject.init(wrappedValue:)();
      v21[3] = v32;
      swift_endAccess();
      v33 = v39;
      v39(v11, v5, v2);
      swift_beginAccess();
      v33(v43, v11, v2);
      Published.init(initialValue:)();
      v34 = *(v3 + 8);
      v34(v11, v2);
      swift_endAccess();
      v35 = v38;
      v21[4] = 0;
      v21[5] = v35;
      swift_beginAccess();
      v44 = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      v34(v5, v2);
      v36 = v40;
      v21[6] = v41;
      *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) = v36;
      outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v42, v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
      return v21;
    }

    goto LABEL_15;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v8;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

LABEL_6:

    v20 = v1[6];
    v42 = v1[7];
    type metadata accessor for IntervalSingleStepConfigurationView(0);
    v41 = v20;
    Binding.projectedValue.getter();
    type metadata accessor for IntervalStepEditViewModel(0);
    v21 = swift_allocObject();
    v21[4] = 0;
    *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval) = 0;
    swift_beginAccess();
    type metadata accessor for WorkoutBlock();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60], MEMORY[0x277D7DD58]);

    v21[2] = ObservedObject.init(wrappedValue:)();
    v21[3] = v22;
    swift_endAccess();
    v21[4] = v19;

    v21[5] = WorkoutStep.activityType.getter();
    WorkoutStep.stepType.getter();
    swift_beginAccess();
    (*(v3 + 16))(v43, v11, v2);
    Published.init(initialValue:)();
    (*(v3 + 8))(v11, v2);
    swift_endAccess();
    v23 = WorkoutStep.goal.getter();
    swift_beginAccess();
    v44 = v23;
    Published.init(initialValue:)();
    swift_endAccess();
    v24 = v41;
    v21[6] = v42;
    *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) = v24;
    _s10Foundation4UUIDVSgWOcTm_2(v16, v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
    v25 = WorkoutStep.activePowerZonesAlertTargetZone.getter();

    if (v25)
    {
      dispatch thunk of PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()();
    }

    _s10Foundation4UUIDVSgWOhTm_2(v16, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
    return v21;
  }

  __break(1u);
LABEL_15:
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMR);
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow, &protocol conformance descriptor for WorkoutSkippingStepRow);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
    lazy protocol witness table accessor for type IntervalStepEditView and conformance IntervalStepEditView();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepEditView and conformance IntervalStepEditView()
{
  result = lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView;
  if (!lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMR);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMR, MEMORY[0x277CDF028]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMR);
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_66()
{
  v1 = (type metadata accessor for IntervalSingleStepConfigurationView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = type metadata accessor for StepType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[12];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR) + 32);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in IntervalSingleStepConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IntervalSingleStepConfigurationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for closure #2 in IntervalSingleStepConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  IntervalSingleStepConfigurationView.stepLabel()();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of IntervalSingleStepConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of IntervalSingleStepConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutSkippingStepRow(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSkippingStepRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_7(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GACyA_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaZRd__lFQOyA3_yA8_G_AYQo_AA0P4LinkVyA8_AYGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GACyA_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaZRd__lFQOyA3_yA8_G_AYQo_AA0P4LinkVyA8_AYGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepEditView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalStepEditView(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t IntervalStepEditView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntervalStepEditViewWatch(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
  MEMORY[0x28223BE20](v68);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v57 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgQ0CSgGGAGyAGyAH0hijK5WatchVAPGAVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgQ0CSgGGAGyAGyAH0hijK5WatchVAPGAVG_GMR);
  MEMORY[0x28223BE20](v66);
  v11 = &v57 - v10;
  v12 = static Platform.current.getter();
  v67 = v1;
  v13 = type metadata accessor for ConfigurationNavigationModel(0);
  v14 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

  v62 = v13;
  v64 = v14;
  v15 = EnvironmentObject.init()();
  v17 = v16;
  v18 = type metadata accessor for IntervalWorkoutConfiguration();
  v19 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
  v63 = v18;
  v65 = v19;
  v20 = EnvironmentObject.init()();
  v21 = v20;
  v23 = v22;
  v69 = a1;
  if (v12)
  {
    *(v5 + v3[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
    swift_storeEnumTagMultiPayload();
    *v5 = v15;
    v5[1] = v17;
    v5[2] = v21;
    v5[3] = v23;
    v24 = (v5 + v3[7]);
    type metadata accessor for IntervalStepEditViewModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel, &protocol conformance descriptor for IntervalStepEditViewModel);
    *v24 = ObservedObject.init(wrappedValue:)();
    v24[1] = v25;
    v26 = v5 + v3[8];
    LOBYTE(v70) = 0;
    State.init(wrappedValue:)();
    v27 = v73;
    *v26 = v72;
    *(v26 + 1) = v27;
    v28 = v5 + v3[9];
    LOBYTE(v70) = 0;
    State.init(wrappedValue:)();
    v29 = v73;
    *v28 = v72;
    *(v28 + 1) = v29;
    v30 = v67;
    v31 = *v67;
    if (*v67)
    {

      v32 = static ObservableObject.environmentStore.getter();
      v33 = v60;
      outlined init with take of IntervalStepEditViewWatch(v5, v60);
      v34 = (v33 + *(v59 + 36));
      *v34 = v32;
      v34[1] = v31;
      v35 = v30[2];
      if (v35)
      {
        v36 = v35;
        v37 = static ObservableObject.environmentStore.getter();
        v38 = v58;
        outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v33, v58, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
        v39 = (v38 + *(v68 + 36));
        *v39 = v37;
        v39[1] = v35;
        v40 = v61;
        outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v38, v61, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
        outlined init with copy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(v40, v11);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
        _ConditionalContent<>.init(storage:)();
        return outlined destroy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(v40);
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v60 = v20;
  v61 = v17;
  type metadata accessor for IntervalStepEditViewModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel, &protocol conformance descriptor for IntervalStepEditViewModel);
  v42 = ObservedObject.init(wrappedValue:)();
  v58 = v43;
  v59 = v42;
  v70 = 0;
  v71 = 1;
  State.init(wrappedValue:)();
  v44 = v67;
  v45 = *v67;
  if (!*v67)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v46 = v72;
  v47 = v74;
  LOBYTE(v72) = v73;

  v48 = static ObservableObject.environmentStore.getter();
  v49 = v44[2];
  if (v49)
  {
    v50 = v48;
    v51 = v72;
    v52 = v49;
    v53 = static ObservableObject.environmentStore.getter();
    v54 = v60;
    v55 = v61;
    *v11 = v15;
    *(v11 + 1) = v55;
    *(v11 + 2) = v54;
    *(v11 + 3) = v23;
    v56 = v58;
    *(v11 + 4) = v59;
    *(v11 + 5) = v56;
    *(v11 + 6) = v46;
    v11[56] = v51;
    *(v11 + 8) = v47;
    *(v11 + 9) = v50;
    *(v11 + 10) = v45;
    *(v11 + 11) = v53;
    *(v11 + 12) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    return _ConditionalContent<>.init(storage:)();
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with take of IntervalStepEditViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepEditViewWatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
    lazy protocol witness table accessor for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone()
{
  result = lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone;
  if (!lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMR);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewWatch and conformance IntervalStepEditViewWatch, type metadata accessor for IntervalStepEditViewWatch, &protocol conformance descriptor for IntervalStepEditViewWatch);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfP0CSgGGAEyAEyAF0ghiJ5WatchVANGATGGMd, _s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfP0CSgGGAEyAEyAF0ghiJ5WatchVANGATGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double IntervalStepEditViewModel.workoutBlock.getter()
{
  swift_beginAccess();

  return result;
}

double IntervalStepEditViewModel.stepType.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t IntervalStepEditViewModel.selectedGoalType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance IntervalStepEditViewModel.SelectedGoalType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return result;
}

id IntervalStepEditViewModel.goalsForInterval.getter()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval;
  if (*(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval);
  }

  else
  {
    v2 = closure #1 in IntervalStepEditViewModel.goalsForInterval.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

id closure #1 in IntervalStepEditViewModel.goalsForInterval.getter(uint64_t a1)
{
  v29 = type metadata accessor for StepType();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.intervalWorkout.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v2;
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20C66F000, v9, v10, "getting goals for interval", v12, 2u);
    v13 = v12;
    v2 = v11;
    MEMORY[0x20F30E080](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for IntervalWorkout();
  v14 = *(a1 + 40);
  v15 = static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)();
  v16 = *(v15 + 16);
  v31 = a1;
  if (v16)
  {
    v30 = v14;
    v32[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v17 = 0;
    v18 = *(a1 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
    v19 = (v2 + 8);
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v4);

      result = [v18 unitManager];
      if (!result)
      {
        break;
      }

      v21 = result;
      ++v17;
      static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)();

      (*v19)(v4, v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v16 == v17)
      {

        v22 = v32[0];
        v14 = v30;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_10:
  v33 = v22;
  if ([v14 identifier] != 46)
  {
    return v22;
  }

  v23 = [v14 swimmingLocationType];
  v24 = v31;
  if (v23 != 1)
  {
    return v22;
  }

  v25 = type metadata accessor for WorkoutKitFeatures();
  v32[3] = v25;
  v32[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8], MEMORY[0x277CE3FB8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC0], v25);
  LOBYTE(v25) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v32);
  if ((v25 & 1) == 0)
  {
    return v22;
  }

  result = [*(v24 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) unitManager];
  if (result)
  {
    v27 = result;
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    static NLSessionActivityGoal.makeDefaultTimeAndDistanceGoal(activityType:unitManager:)();

    MEMORY[0x20F30BCF0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v33;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t IntervalStepEditViewModel.isEditing.getter()
{
  v31 = type metadata accessor for UUID();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  if (!*(v0 + 32))
  {
    v22 = 0;
    return v22 & 1;
  }

  v28 = v3;
  v29 = v15;
  v30 = v4;
  outlined init with copy of Binding<UUID?>(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, v9, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);

  MEMORY[0x20F30B100](v7);
  v18 = outlined destroy of Binding<UUID?>(v9, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  MEMORY[0x20F304900](v18);
  v19 = v31;
  (*(v1 + 56))(v13, 0, 1, v31);
  v20 = *(v30 + 12);
  outlined init with copy of Binding<UUID?>(v17, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of Binding<UUID?>(v13, &v6[v20], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(v1 + 48);
  if (v21(v6, 1, v19) != 1)
  {
    v30 = v17;
    v23 = v29;
    outlined init with copy of Binding<UUID?>(v6, v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v21(&v6[v20], 1, v19) != 1)
    {
      v24 = &v6[v20];
      v25 = v28;
      (*(v1 + 32))(v28, v24, v19);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();

      v26 = *(v1 + 8);
      v26(v25, v19);
      outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Binding<UUID?>(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26(v23, v19);
      outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v22 & 1;
    }

    outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of Binding<UUID?>(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v1 + 8))(v23, v19);
    goto LABEL_8;
  }

  outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of Binding<UUID?>(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v21(&v6[v20], 1, v19) != 1)
  {
LABEL_8:
    outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = 1;
  return v22 & 1;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingTargetZones.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.targetZones.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingStepGoal.getter@<X0>(uint64_t *a2@<X8>)
{
  result = WorkoutStep.goal.getter();
  *a2 = result;
  return result;
}

uint64_t IntervalStepEditViewModel.bindingStepType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StepType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if (v8)
  {

    WorkoutStep.stepType.getter();
    v9 = (*(v5 + 88))(v7, v4);
    if (v9 == *MEMORY[0x277D7E718] || v9 == *MEMORY[0x277D7E720])
    {

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMR);
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      type metadata accessor for MainActor();

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v8;

      v17 = static MainActor.shared.getter();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v16;
      v18[4] = v2;
      v18[5] = v8;
      Binding.init(get:set:)();

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMR);
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMR);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t closure #2 in IntervalStepEditViewModel.bindingStepType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a5;
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = *(v7 + 16);
  v14(v16 - v12, a1, v6, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  (v14)(v9, v13, v6);

  static Published.subscript.setter();
  (*(v7 + 8))(v13, v6);
  (v14)(v13, a1, v6);
  return WorkoutStep.stepType.setter();
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingStepDisplayName.getter@<X0>(uint64_t *a2@<X8>)
{
  result = WorkoutStep.displayName.getter();
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t closure #2 in IntervalStepEditViewModel.bindingStepDisplayName.getter(void *a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.trimmingCharacters(in:)();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
  }

  return WorkoutStep.displayName.setter();
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingHeartRateTargetZone.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.heartRateTargetZoneWithDefault.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingPowerZonesAlertTargetZone.getter@<X0>(uint64_t *a2@<X8>)
{
  result = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
  *a2 = result;
  return result;
}

uint64_t IntervalStepEditViewModel.isNewGoalType(_:)(void *a1)
{
  if (*(v1 + 32))
  {

    if ([a1 goalTypeIdentifier] == 2 && (v3 = WorkoutStep.goal.getter(), v4 = objc_msgSend(v3, sel_goalTypeIdentifier), v3, v4 == 2))
    {
      v5 = NLSessionActivityGoal.isTimeAndDistanceGoal()();
      v6 = WorkoutStep.goal.getter();
      v7 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

      v8 = v5 ^ v7;
    }

    else
    {
      v9 = WorkoutStep.goal.getter();
      v10 = [v9 goalTypeIdentifier];

      v11 = [a1 goalTypeIdentifier];

      v8 = v10 != v11;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

double IntervalStepEditViewModel.setGoal(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v2 + 32))
  {

    v8 = a1;
    WorkoutStep.goal.setter();
    v9 = WorkoutStep.goal.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v9;

    v10 = v9;
    static Published.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v7);

    v11 = *(v2 + 40);
    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v12 = a1;
    v13 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    *(v2 + 32) = v13;
    swift_retain_n();

    v14 = WorkoutStep.goal.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v14;

    v15 = v14;
    static Published.subscript.setter();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20CB67B90;
    *(v16 + 32) = v13;

    WorkoutBlock.steps.setter();
  }

  return result;
}

Swift::Void __swiftcall IntervalStepEditViewModel.skipStep()()
{
  v1 = v0;
  v55 = type metadata accessor for UUID();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v51);
  v5 = &v45 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  MEMORY[0x28223BE20](v54);
  v53 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v12);
  v52 = &v45 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for StepType();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {

    WorkoutStep.stepType.getter();

    v24 = (*(v21 + 88))(v23, v20);
    if (v24 != *MEMORY[0x277D7E718] && v24 != *MEMORY[0x277D7E720])
    {
      (*(v21 + 8))(v23, v20);
      return;
    }

    v25 = *(v0 + 32);
    v48 = v11;
    if (v25)
    {

      MEMORY[0x20F304900](v26);

      v27 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v48 = v11;
  }

  v27 = 1;
LABEL_9:
  v28 = *(v2 + 56);
  v29 = v2;
  v30 = v55;
  v47 = v28;
  v28(v19, v27, 1, v55);
  v46 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID;
  v31 = v53;
  outlined init with copy of Binding<UUID?>(v1 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, v53, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  MEMORY[0x20F30B100](v54);
  outlined destroy of Binding<UUID?>(v31, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
  v32 = *(v51 + 48);
  outlined init with copy of Binding<UUID?>(v19, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = v30;
  outlined init with copy of Binding<UUID?>(v16, &v5[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = *(v29 + 48);
  if (v34(v5, 1, v33) == 1)
  {
    outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35 = v55;
    outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v34(&v5[v32], 1, v35) == 1)
    {
      outlined destroy of Binding<UUID?>(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
      v43 = v48;
      v47(v48, 1, 1, v35);
      v44 = v53;
      outlined init with copy of Binding<UUID?>(v1 + v46, v53, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
      outlined init with copy of Binding<UUID?>(v43, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      Binding.wrappedValue.setter();
      outlined destroy of Binding<UUID?>(v44, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);
      v38 = v43;
      v36 = &_s10Foundation4UUIDVSgMd;
      v37 = &_s10Foundation4UUIDVSgMR;
      goto LABEL_17;
    }

LABEL_14:
    v36 = &_s10Foundation4UUIDVSg_ADtMd;
    v37 = &_s10Foundation4UUIDVSg_ADtMR;
    v38 = v5;
LABEL_17:
    outlined destroy of Binding<UUID?>(v38, v36, v37);
    goto LABEL_18;
  }

  outlined init with copy of Binding<UUID?>(v5, v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v34(&v5[v32], 1, v33) == 1)
  {
    outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v29 + 8))(v52, v33);
    goto LABEL_14;
  }

  v39 = &v5[v32];
  v40 = v49;
  (*(v29 + 32))(v49, v39, v33);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v29 + 8);
  v42(v40, v33);
  outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42(v52, v55);
  v35 = v55;
  outlined destroy of Binding<UUID?>(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v41)
  {
    goto LABEL_16;
  }

LABEL_18:
  *(v1 + 32) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = 0;

  static Published.subscript.setter();
  swift_beginAccess();

  WorkoutBlock.steps.setter();
}

uint64_t IntervalStepEditViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__stepType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore8StepTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore8StepTypeOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__selectedGoalType;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25IntervalStepEditViewModelC16SelectedGoalTypeOGMd, &_s7Combine9PublishedVy9WorkoutUI25IntervalStepEditViewModelC16SelectedGoalTypeOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of Binding<UUID?>(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMR);

  return v0;
}

uint64_t IntervalStepEditViewModel.__deallocating_deinit()
{
  IntervalStepEditViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntervalStepEditViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalStepEditViewModel;
  if (!type metadata singleton initialization cache for IntervalStepEditViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepEditViewModel(uint64_t a1)
{
  type metadata accessor for Published<StepType>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<IntervalStepEditViewModel.SelectedGoalType>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<UUID?>(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<StepType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<StepType>)
  {
    type metadata accessor for StepType();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<StepType>);
    }
  }
}

void type metadata accessor for Published<IntervalStepEditViewModel.SelectedGoalType>()
{
  if (!lazy cache variable for type metadata for Published<IntervalStepEditViewModel.SelectedGoalType>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<IntervalStepEditViewModel.SelectedGoalType>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalStepEditViewModel.SelectedGoalType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalStepEditViewModel.SelectedGoalType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for IntervalStepEditViewModel.SelectedGoalType(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for IntervalStepEditViewModel.SelectedGoalType(void *result, int a2)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalStepEditViewModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for IntervalStepEditViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t outlined init with copy of Binding<UUID?>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Binding<UUID?>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double key path getter for IntervalStepEditViewModel.stepType : IntervalStepEditViewModel@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for IntervalStepEditViewModel.stepType : IntervalStepEditViewModel(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StepType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v10, v3);
}

void key path getter for IntervalStepEditViewModel.selectedGoalType : IntervalStepEditViewModel(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t key path setter for IntervalStepEditViewModel.selectedGoalType : IntervalStepEditViewModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t _sSo8NSObjectCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t WorkoutNotificationIntervalView.intervalsComplete.getter()
{
  v1 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *v0;
  if (*(v0 + 16))
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](result, v6);
    goto LABEL_7;
  }

  if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:
    dispatch thunk of WorkoutNotificationUnit.type.getter();

    (*(v2 + 104))(v4, *MEMORY[0x277D7DB38], v1);
    lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType, MEMORY[0x277D7DB58]);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v8, v1);
    return (v11 & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t WorkoutNotificationIntervalView.intervalBodyIndex.getter()
{
  v1 = *(v0 + 16);
  v8 = *v0;
  v2 = WorkoutNotificationIntervalView.intervalsComplete.getter();
  if (v1)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](result);
    }

    else
    {
      if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    dispatch thunk of WorkoutNotificationUnit.key.getter();
    v5 = v4;

    if (v5)
    {

      v6 = 1;
      if (v1)
      {
LABEL_10:
        v7 = 2;
        return v6 + v7;
      }
    }

    else
    {
      v6 = 6;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    return v6 + v7;
  }

  return result;
}

uint64_t WorkoutNotificationIntervalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = (v22 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA6VStackVyACyAA05TupleI0VyAF0fg4UnitI0V_APtGSgANyAA08ModifiedD0VyAF013MetricHeadingI0VyACyAA4TextVAA6HStackVyANyAXSg_AA5ImageVSgA_tGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeU0VGGSg_AZyARGtGGGGAHyArNyA14__ArTyAVyANyATyA1_AA022_EnvironmentKeyWritingV0VyA1_5ScaleOGGSg_A_A_tGGA9_yAA5ColorVGGSgtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA6VStackVyACyAA05TupleI0VyAF0fg4UnitI0V_APtGSgANyAA08ModifiedD0VyAF013MetricHeadingI0VyACyAA4TextVAA6HStackVyANyAXSg_AA5ImageVSgA_tGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeU0VGGSg_AZyARGtGGGGAHyArNyA14__ArTyAVyANyATyA1_AA022_EnvironmentKeyWritingV0VyA1_5ScaleOGGSg_A_A_tGGA9_yAA5ColorVGGSgtGG_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 48);
  *&v29[39] = *(v1 + 32);
  *&v29[41] = v13;
  v30[0] = *(v1 + 64);
  *(v30 + 9) = *(v1 + 73);
  v14 = *(v1 + 16);
  *&v29[35] = *v1;
  *&v29[37] = v14;
  v32 = *(v1 + 88);
  v15 = *(v1 + 80);
  v31 = v15;
  if (v32 == 1)
  {
    if (v15 != 11)
    {
LABEL_3:
      MetricPlatterConstants.init()(v4 + *(v2 + 56));
      WorkoutNotificationIntervalView.resultRow.getter(v29);
      v16 = *(&v29[7] + 1);
      v17 = *&v29[6];
      v4[2] = *&v29[4];
      v4[3] = v17;
      *(v4 + 57) = v16;
      v18 = *&v29[2];
      *v4 = *v29;
      v4[1] = v18;
      WorkoutNotificationIntervalView.nextInterval.getter((v4 + *(v2 + 52)));
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v4, v7, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMR);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
      _ConditionalContent<>.init(storage:)();
      return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v4, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR);
    }
  }

  else
  {
    v22[0] = v10;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v31, v29, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(&v31, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMR);
    (*(v9 + 8))(v12, v22[0]);
    if (LOBYTE(v29[0]) != 11)
    {
      goto LABEL_3;
    }
  }

  MetricPlatterConstants.init()(&v27[38]);
  v21 = static HorizontalAlignment.center.getter();
  v26 = 0;
  closure #1 in WorkoutNotificationIntervalView.nextIntervalNotification.getter(v24);
  memcpy(v28, v24, 0x112uLL);
  memcpy(v29, v24, 0x112uLL);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v28, &v23, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v29, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMR);
  memcpy(&v25[7], v28, 0x112uLL);
  v27[0] = v21;
  v27[1] = 0;
  LOBYTE(v27[2]) = v26;
  memcpy(&v27[2] + 1, v25, 0x119uLL);
  memcpy(v7, v27, 0x168uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMR);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
  return _ConditionalContent<>.init(storage:)();
}

void WorkoutNotificationIntervalView.resultRow.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) != 1)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  v2 = v1[1];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_4;
    }

LABEL_13:
    v5 = 0;
    v7 = 0;
    KeyPath = 0;
    v9 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v14 = a1;
  v15 = __CocoaSet.count.getter();
  a1 = v14;
  if (v15 < 2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = MEMORY[0x20F30C990](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = a1;
    v5 = *(v3 + 32);
  }

  v6 = v2;
  static Color.white.getter();
  v7 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x20F30C990](1, v3);
LABEL_11:
    v10 = static Color.white.getter();
    v11 = swift_getKeyPath();

    v12 = v6;

    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v13 = v12;

    outlined copy of Environment<WorkoutViewStyle>.Content(v11, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v11, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
    a1 = v4;
LABEL_14:
    *a1 = v5;
    *(a1 + 8) = v13;
    *(a1 + 16) = v7;
    *(a1 + 24) = KeyPath;
    *(a1 + 32) = 0;
    *(a1 + 40) = v9;
    *(a1 + 48) = v13;
    *(a1 + 56) = v10;
    *(a1 + 64) = v11;
    *(a1 + 72) = 0;
    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v9 = *(v3 + 40);

    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t WorkoutNotificationIntervalView.nextInterval.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  WorkoutNotificationIntervalView.intervalHeader.getter(&v28);
  WorkoutNotificationIntervalView.intervalBody.getter(&v24);
  WorkoutNotificationIntervalView.intervalAlert.getter(v7);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v7, v4, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMR);
  v8 = v37;
  v39[8] = v36;
  v39[9] = v37;
  v9 = v38;
  v39[10] = v38;
  v10 = v32;
  v11 = v33;
  v39[4] = v32;
  v39[5] = v33;
  v13 = v34;
  v12 = v35;
  v39[6] = v34;
  v39[7] = v35;
  v14 = v28;
  v15 = v29;
  v39[0] = v28;
  v39[1] = v29;
  v17 = v30;
  v16 = v31;
  v39[2] = v30;
  v39[3] = v31;
  a1[8] = v36;
  a1[9] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v12;
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v16;
  v18 = v26;
  v19 = v27[0];
  v40[2] = v26;
  v41[0] = v27[0];
  v20 = *(v27 + 9);
  *(v41 + 9) = *(v27 + 9);
  v21 = v24;
  v40[0] = v24;
  v40[1] = v25;
  a1[12] = v25;
  a1[13] = v18;
  a1[14] = v19;
  *(a1 + 233) = v20;
  a1[10] = v9;
  a1[11] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyAD0e16NotificationUnitH0V_A4_tGSgACyAFyANyACyAqA022_EnvironmentKeyWritingP0VyAQ5ScaleOGGSg_A2OtGGAYyAA5ColorVGGSgtMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyAD0e16NotificationUnitH0V_A4_tGSgACyAFyANyACyAqA022_EnvironmentKeyWritingP0VyAQ5ScaleOGGSg_A2OtGGAYyAA5ColorVGGSgtMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v4, a1 + *(v22 + 64), &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v39, v44, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v40, v44, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v7, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMR);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v4, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMR);
  v42[2] = v26;
  v43[0] = v27[0];
  *(v43 + 9) = *(v27 + 9);
  v42[0] = v24;
  v42[1] = v25;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v42, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMR);
  v44[8] = v36;
  v44[9] = v37;
  v44[10] = v38;
  v44[4] = v32;
  v44[5] = v33;
  v44[6] = v34;
  v44[7] = v35;
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = v30;
  v44[3] = v31;
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v44, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
}

__n128 WorkoutNotificationIntervalView.intervalHeader.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v38 = v1[2];
  v39 = v3;
  v40[0] = v1[4];
  *(v40 + 9) = *(v1 + 73);
  v4 = v1[1];
  v36 = *v1;
  v37 = v4;
  if (!(v36 >> 62))
  {
    v5 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v5 <= 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    MetricPlatterConstants.init()(v13 + 8);
    *&v14[16] = swift_getKeyPath();
    v14[24] = 0;
    closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter(&v36, v12);
    v6 = static HierarchicalShapeStyle.secondary.getter();
    v23 = v13[2];
    *v24 = *v14;
    *&v24[9] = *&v14[9];
    v19 = v12[4];
    v20 = v12[5];
    v21 = v13[0];
    v22 = v13[1];
    v15 = v12[0];
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    *&v24[28] = v6;
    _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi_();
    v33 = v23;
    v34 = *v24;
    v35 = *&v24[16];
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if ((v37 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 >= 3)
  {
    goto LABEL_7;
  }

LABEL_4:
  _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi0_(&v25);
LABEL_8:
  v7 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v7;
  *(a1 + 160) = v35;
  v8 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v8;
  v9 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v9;
  v10 = v26;
  *a1 = v25;
  *(a1 + 16) = v10;
  result = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = result;
  return result;
}

void WorkoutNotificationIntervalView.intervalBody.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-v7];
  v10 = *v1;
  v9 = v1[1];
  if (*v1 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v10;
  v55 = v9;
  v12 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v12;
  *(v59 + 9) = *(v1 + 73);
  v13 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v13;
  if ((WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 1) >= v11)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_21:
    *a1 = v21;
    *(a1 + 8) = v24;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    *(a1 + 32) = 0;
    *(a1 + 40) = v17;
    *(a1 + 48) = v24;
    *(a1 + 56) = v25;
    *(a1 + 64) = v26;
    *(a1 + 72) = 0;
    return;
  }

  v54 = v10;
  v55 = v9;
  v14 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v14;
  *(v59 + 9) = *(v1 + 73);
  v15 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v15;
  v16 = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 1;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x20F30C990](v16, v10);
  }

  else
  {
    if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v10 + 8 * v16 + 32);
  }

  v54 = v10;
  v55 = v9;
  v18 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v18;
  *(v59 + 9) = *(v1 + 73);
  v19 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v19;
  v20 = WorkoutNotificationIntervalView.intervalBodyIndex.getter();
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (v20 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v10 + 8 * v20 + 32);

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = MEMORY[0x20F30C990](v20, v10);
LABEL_12:
  v48 = v10;
  v49 = v9;
  v27 = *(v1 + 4);
  v52 = *(v1 + 3);
  v53[0] = v27;
  *(v53 + 9) = *(v1 + 73);
  v28 = *(v1 + 1);
  v51 = *(v1 + 2);
  v50 = v28;
  v44 = v9;
  WorkoutNotificationIntervalView.colorForStepGoalType(for:)();
  v22 = v29;
  KeyPath = swift_getKeyPath();
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v30 = v47;
  (*(v47 + 104))(v5, *MEMORY[0x277D7DB38], v3);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType, MEMORY[0x277D7DB60]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v54 == v48 && v55 == v49)
  {
    v31 = *(v30 + 8);
    v31(v5, v3);
    v31(v8, v3);

    v21 = v46;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32 = v17;
    v33 = v22;
    v34 = *(v30 + 8);
    v34(v5, v3);
    v34(v8, v3);
    v22 = v33;
    v17 = v32;

    v21 = v46;
    if ((v43 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_20;
    }
  }

  v35 = [objc_opt_self() keyColors];
  if (!v35)
  {
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 nonGradientTextColor];

  if (v37)
  {
    v25 = Color.init(uiColor:)();
LABEL_20:
    v38 = v44;
    v26 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    LOBYTE(v48) = 0;

    v39 = v38;
    v40 = KeyPath;
    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v41 = v39;
    v23 = v40;
    v24 = v41;
    outlined copy of Environment<WorkoutViewStyle>.Content(v26, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v26, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v23, 0);
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
}

unint64_t WorkoutNotificationIntervalView.intervalAlert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = v1[3];
  v19[2] = v1[2];
  v19[3] = v6;
  v20[0] = v1[4];
  *(v20 + 9) = *(v1 + 73);
  v7 = v1[1];
  v19[0] = *v1;
  v19[1] = v7;
  v8 = *&v19[0];
  if (*&v19[0] >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 2) < v9)
  {
    result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 2;
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](result, v8);
    }

    else
    {
      if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    v11 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      result = WorkoutNotificationIntervalView.intervalBodyIndex.getter();
      if ((~*&v11 & 0x7FF0000000000000) != 0)
      {
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            if (!__OFADD__(result + 2, v11))
            {
              if ((result + 2 + v11) < v9)
              {
                v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI17MetricHeadingViewVy05SwiftB005TupleE0VyAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AD4TextVSgATtGGMd, &_s9WorkoutUI17MetricHeadingViewVy05SwiftB005TupleE0VyAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AD4TextVSgATtGGMR);
                MetricPlatterConstants.init()(&v5[*(v14 + 36)]);
                v15 = &v5[*(v14 + 40)];
                *v15 = swift_getKeyPath();
                v15[8] = 0;
                closure #1 in WorkoutNotificationIntervalView.intervalAlert.getter(v19, v5, v11);
                *&v5[*(v3 + 36)] = static Color.white.getter();
                outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(v5, a1, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
                return (*(v18 + 56))(a1, 0, 1, v3);
              }

              goto LABEL_14;
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

LABEL_14:
  v16 = *(v18 + 56);

  return v16(a1, 1, 1, v3);
}

void *closure #1 in WorkoutNotificationIntervalView.nextIntervalNotification.getter@<X0>(void *a1@<X8>)
{
  if (WorkoutNotificationIntervalView.intervalsComplete.getter())
  {
    WorkoutNotificationIntervalView.intervalBody.getter(__src);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB00h16NotificationUnitG0V_AJtGSgAGyAA08ModifiedD0VyAH013MetricHeadingG0VyACyAA4TextVAA6HStackVyAGyARSg_AA5ImageVSgAUtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeR0VGGSg_ATyALGtG_GWOi_(__src);
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMR);
    lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMR, MEMORY[0x277CE14C0]);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    WorkoutNotificationIntervalView.intervalHeader.getter(&v17);
    v2 = static VerticalAlignment.center.getter();
    __src[0] = 1;
    WorkoutNotificationIntervalView.intervalBody.getter(v28);
    *(v39 + 7) = v28[0];
    *(&v39[1] + 7) = v28[1];
    *(&v39[2] + 7) = v28[2];
    *(&v39[3] + 7) = v29[0];
    v39[4] = *(v29 + 9);
    v30[0] = v2;
    v30[1] = 0;
    v31[0] = __src[0];
    *&v31[1] = v39[0];
    *&v31[65] = *(v29 + 9);
    *&v31[49] = v39[3];
    *&v31[33] = v39[2];
    *&v31[17] = v39[1];
    v14 = v25;
    v15 = v26;
    v16 = v27;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v35[4] = *&v31[48];
    v35[5] = *&v31[64];
    v35[0] = v2;
    v35[1] = *v31;
    v35[2] = *&v31[16];
    v35[3] = *&v31[32];
    v32[0] = v17;
    v32[1] = v18;
    v32[2] = v19;
    v32[5] = v22;
    v32[6] = v23;
    v32[3] = v20;
    v32[4] = v21;
    v32[9] = v26;
    v32[10] = v27;
    v32[7] = v24;
    v32[8] = v25;
    *&v5[128] = v25;
    *&v5[144] = v26;
    *&v5[64] = v21;
    *&v5[80] = v22;
    *&v5[96] = v23;
    *&v5[112] = v24;
    *v5 = v17;
    *&v5[16] = v18;
    v36 = BYTE8(v29[1]);
    *&v5[32] = v19;
    *&v5[48] = v20;
    v33[4] = *&v31[48];
    v33[5] = *&v31[64];
    v34 = BYTE8(v29[1]);
    v33[0] = v2;
    v33[1] = *v31;
    v33[2] = *&v31[16];
    v33[3] = *&v31[32];
    *&v5[160] = v27;
    *&v5[176] = v2;
    *&v5[192] = *v31;
    *&v5[208] = *&v31[16];
    *&v5[224] = *&v31[32];
    *&v5[240] = *&v31[48];
    *&v5[256] = *&v31[64];
    v5[272] = BYTE8(v29[1]);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v17, v39, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v30, v39, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMR);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v32, v39, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v33, v39, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMR);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v35, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMR);
    v37[8] = v14;
    v37[9] = v15;
    v37[10] = v16;
    v37[4] = v10;
    v37[5] = v11;
    v37[6] = v12;
    v37[7] = v13;
    v37[0] = v6;
    v37[1] = v7;
    v37[2] = v8;
    v37[3] = v9;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v37, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
    memcpy(__src, v5, 0x111uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB00h16NotificationUnitG0V_AJtGSgAGyAA08ModifiedD0VyAH013MetricHeadingG0VyACyAA4TextVAA6HStackVyAGyARSg_AA5ImageVSgAUtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeR0VGGSg_ATyALGtG_GWOi0_(__src);
    memcpy(v39, __src, 0x112uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMR);
    lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMR, MEMORY[0x277CE14C0]);
    _ConditionalContent<>.init(storage:)();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v30, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMR);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(&v17, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMR);
    memcpy(v39, __dst, 0x112uLL);
  }

  return memcpy(a1, v39, 0x112uLL);
}

void closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v42[-v10];
  if (*(a1 + 16))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1;
  v14 = (*a1 & 0xC000000000000001) == 0;
  v45 = v12;
  v46 = a2;
  v44 = a1;
  if (v14)
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    MEMORY[0x20F30C990](v9);
  }

  dispatch thunk of WorkoutNotificationUnit.type.getter();
  (*(v5 + 104))(v7, *MEMORY[0x277D7DB38], v4);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType, MEMORY[0x277D7DB60]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v69 == v67 && v70 == v68)
  {
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v11, v4);
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v11, v4);

    if ((v43 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v17 = dispatch thunk of WorkoutNotificationUnit.key.getter();
  if (!v18)
  {
LABEL_16:
    if (!(v13 >> 62))
    {
      v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_23:
    v39 = __CocoaSet.count.getter();
LABEL_18:
    if ((v45 | 4) >= v39)
    {

      v33 = 0uLL;
      v38 = -1;
      v32 = 0uLL;
      v35 = 0uLL;
      v34 = 0uLL;
      v37 = 0uLL;
      v36 = 0uLL;
    }

    else
    {
      v40 = static VerticalAlignment.center.getter();
      v66 = 1;
      closure #1 in closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter(v44, v54);
      v59 = v54[2];
      v60 = v54[3];
      v61 = *&v54[4];
      v57 = v54[0];
      v58 = v54[1];
      v62[2] = v54[2];
      v62[3] = v54[3];
      v63 = *&v54[4];
      v62[0] = v54[0];
      v62[1] = v54[1];
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v57, &v47, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMd, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMR);
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v62, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMd, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMR);
      *(v54 + 7) = v57;
      *(&v54[1] + 7) = v58;
      *(&v54[2] + 7) = v59;
      *(&v54[3] + 7) = v60;
      *(&v54[4] + 7) = v61;
      v64[0] = v40;
      v64[1] = 0;
      LOBYTE(v65[0]) = v66;
      *(v65 + 1) = v54[0];
      v65[4] = *(&v54[3] + 15);
      *(&v65[3] + 1) = v54[3];
      *(&v65[2] + 1) = v54[2];
      *(&v65[1] + 1) = v54[1];
      v47 = v40;
      v48 = v65[0];
      v49 = v65[1];
      v50 = v65[2];
      v51 = v65[3];
      v52 = v65[4];
      v66 = 1;
      v53 = 1;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v64, v54, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v64, v54, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text?, Image?, Text?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR, MEMORY[0x277CE1138]);
      _ConditionalContent<>.init(storage:)();

      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v64, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v64, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
      v32 = v54[1];
      v33 = v54[0];
      v35 = v54[2];
      v34 = v54[3];
      v37 = v54[4];
      v36 = v55;
      v38 = v56;
    }

    goto LABEL_21;
  }

  v19 = v17;
  v20 = v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = WorkoutUIBundle.super.isa;
  v71._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = v19;
  v23._object = v20;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v71);

  v54[0] = v25;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29 & 1;
  LOBYTE(v62[0]) = v29 & 1;
  LOBYTE(v57) = 0;
  *&v47 = v26;
  *(&v47 + 1) = v27;
  LOBYTE(v48) = v29 & 1;
  *(&v48 + 1) = v31;
  v53 = 0;
  outlined copy of Text.Storage(v26, v27, v29 & 1);

  outlined copy of Text.Storage(v26, v28, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text?, Image?, Text?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMR, MEMORY[0x277CE1138]);
  _ConditionalContent<>.init(storage:)();

  outlined consume of Text.Storage(v26, v28, v30);

  outlined consume of Text.Storage(v26, v28, v30);

  v32 = v54[1];
  v33 = v54[0];
  v35 = v54[2];
  v34 = v54[3];
  v37 = v54[4];
  v36 = v55;
  v38 = v56;
LABEL_21:
  v41 = v46;
  *v46 = v33;
  v41[1] = v32;
  v41[2] = v35;
  v41[3] = v34;
  v41[4] = v37;
  v41[5] = v36;
  *(v41 + 96) = v38;
}

unint64_t closure #1 in closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  *&v50 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](v9, v8);
  }

  else
  {
    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }
  }

  v3 = dispatch thunk of WorkoutNotificationUnit.key.getter();
  v2 = v10;

  if (v2)
  {
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_9:
      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v51._object = 0xE000000000000000;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = v3;
      v13._object = v2;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v51);

      lazy protocol witness table accessor for type String and conformance String();
      v15 = Text.init<A>(_:)();
      v17 = v16;
      v19 = v18;
      v21 = v20 & 1;
      outlined copy of Text.Storage(v15, v16, v20 & 1);

      goto LABEL_11;
    }

LABEL_58:
    swift_once();
    goto LABEL_9;
  }

  v15 = 0;
  v17 = 0;
  v21 = 0;
  v19 = 0;
LABEL_11:
  if (v7)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v50 == 0.0)
  {
    if (v22 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  else
  {
    MEMORY[0x20F30C990](v22, v8);
  }

  dispatch thunk of WorkoutNotificationUnit.key.getter();
  v5 = v23;

  if (v5)
  {
    v4 = Image.init(systemName:)();
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    v24 = 5;
  }

  else
  {
    v24 = 3;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](v24, v8);
    goto LABEL_28;
  }

  if (v24 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_28:
  _ = dispatch thunk of WorkoutNotificationUnit.key.getter();
  v5 = v25;

  __8 = v15;
  if (!v5)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_55:
    outlined copy of Text?(__8, v17, v21, v19);

    outlined copy of Text?(v27, v28, v29, v5);

    outlined consume of Text?(__8, v17, v21, v19);
    outlined consume of Text?(v27, v28, v29, v5);
    *a2 = __8;
    a2[1] = v17;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = v4;
    a2[5] = v27;
    a2[6] = v28;
    a2[7] = v29;
    a2[8] = v5;
    outlined consume of Text?(v27, v28, v29, v5);

    return outlined consume of Text?(__8, v17, v21, v19);
  }

  if (v7)
  {
    v26 = 6;
  }

  else
  {
    v26 = 4;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](v26, v8);
    goto LABEL_37;
  }

  if (v26 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_37:
  v47 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
  v31 = v30;

  if (v31)
  {
LABEL_46:

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v5 = 0;
    goto LABEL_55;
  }

  if (v7)
  {
    result = 7;
  }

  else
  {
    result = 5;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](result, v8);
    goto LABEL_45;
  }

  if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_45:
    v33 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v35 = v34;

    if (v35)
    {
      goto LABEL_46;
    }

    v50 = *&v33;
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_48:
      swift_beginAccess();
      v36 = WorkoutUIBundle.super.isa;
      v52._object = 0xE000000000000000;
      v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v37.value._object = 0xEB00000000656C62;
      v38._countAndFlagsBits = _;
      v38._object = v5;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_20CB5DA80;
      if ((~*&v47 & 0x7FF0000000000000) != 0)
      {
        if (v47 > -9.22337204e18)
        {
          if (v47 < 9.22337204e18)
          {
            v40 = result;
            lazy protocol witness table accessor for type Int and conformance Int();
            v41 = BinaryInteger.formatted()();
            *(v40 + 56) = MEMORY[0x277D837D0];
            result = lazy protocol witness table accessor for type String and conformance String();
            *(v40 + 64) = result;
            *(v40 + 32) = v41;
            if ((~*&v50 & 0x7FF0000000000000) != 0)
            {
              if (v50 > -9.22337204e18)
              {
                if (v50 < 9.22337204e18)
                {
                  v42 = result;
                  v43 = BinaryInteger.formatted()();
                  *(v40 + 96) = MEMORY[0x277D837D0];
                  *(v40 + 104) = v42;
                  *(v40 + 72) = v43;
                  String.init(format:_:)();

                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v27 = Text.init<A>(_:)();
                  v28 = v44;
                  v5 = v45;
                  v29 = v46 & 1;
                  outlined copy of Text.Storage(v27, v44, v46 & 1);

                  goto LABEL_55;
                }

                goto LABEL_68;
              }

LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_65:
          __break(1u);
          goto LABEL_66;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    swift_once();
    goto LABEL_48;
  }

LABEL_69:
  __break(1u);
  return result;
}

void WorkoutNotificationIntervalView.colorForStepGoalType(for:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 1);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7DB40])
  {
    v5 = [objc_opt_self() distanceColors];
    if (!v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    v0 = v5;
    v6 = [v5 nonGradientTextColor];

    if (v6)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v4 != *MEMORY[0x277D7DB28])
  {
    goto LABEL_9;
  }

  v7 = [objc_opt_self() keyColors];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v0 = v7;
  v8 = [v7 nonGradientTextColor];

  if (!v8)
  {
    __break(1u);
LABEL_9:
    if (v4 != *MEMORY[0x277D7DB00])
    {
      (*(v1 + 8))(v3, v0);
      return;
    }

    v9 = [objc_opt_self() elapsedTimeColors];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 nonGradientTextColor];

      if (v11)
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  Color.init(uiColor:)();
}

unint64_t closure #1 in WorkoutNotificationIntervalView.intervalAlert.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v69 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v69 - v14;
  v15 = *a1;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 3;
  v17 = v15 & 0xC000000000000001;
  v71 = a2;
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](result, v15);
  }

  else
  {
    if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  dispatch thunk of WorkoutNotificationUnit.key.getter();
  v19 = v18;

  if (v19)
  {
    v20 = Image.init(systemName:)();
    v21 = (v9 + *(v6 + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR);
    v70 = v6;
    v23 = v15;
    v24 = v12;
    v25 = v17;
    v26 = *(v22 + 28);
    v27 = *MEMORY[0x277CE1050];
    v28 = type metadata accessor for Image.Scale();
    v29 = v21 + v26;
    v17 = v25;
    v12 = v24;
    v15 = v23;
    (*(*(v28 - 8) + 104))(v29, v27, v28);
    *v21 = swift_getKeyPath();
    *v9 = v20;
    v30 = v72;
    outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(v9, v72, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
    (*(v7 + 56))(v30, 0, 1, v70);
  }

  else
  {
    (*(v7 + 56))(v72, 1, 1, v6);
  }

  if (a3 != 2.0)
  {
    v33 = v12;
    goto LABEL_15;
  }

  v31 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = v31;
  v79[0] = *(a1 + 4);
  *(v79 + 9) = *(a1 + 73);
  v32 = *(a1 + 1);
  v75 = *a1;
  v76 = v32;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 4;
  if (v17)
  {
    MEMORY[0x20F30C990](result, v15);
    goto LABEL_13;
  }

  if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v33 = v12;
  v34 = WorkoutNotificationIntervalView.singleAlertTarget(for:)();
  v36 = v35;

  if (v36)
  {
    *&v75 = v34;
    *(&v75 + 1) = v36;
    lazy protocol witness table accessor for type String and conformance String();
    v37 = StringProtocol.localizedUppercase.getter();
    v39 = v38;

    v73 = v37;
    v74 = v39;
    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    v46 = v45 & 1;
    outlined copy of Text.Storage(v40, v41, v45 & 1);

    goto LABEL_16;
  }

LABEL_15:
  v40 = 0;
  v42 = 0;
  v46 = 0;
  v44 = 0;
LABEL_16:
  v69 = v44;
  v70 = v42;
  if (a3 != 3.0)
  {
    v50 = v46;
    v51 = v40;
    goto LABEL_28;
  }

  v47 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = v47;
  v79[0] = *(a1 + 4);
  *(v79 + 9) = *(a1 + 73);
  v48 = *(a1 + 1);
  v75 = *a1;
  v76 = v48;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 4;
  if (!v17)
  {
    if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v49 = *(v15 + 8 * result + 32);

      goto LABEL_22;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v49 = MEMORY[0x20F30C990](result, v15);
LABEL_22:
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 5;
  if (v17)
  {
    v50 = v46;
    v51 = v40;
    v52 = MEMORY[0x20F30C990](result, v15);
    goto LABEL_26;
  }

  if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = v46;
    v51 = v40;
    v52 = *(v15 + 8 * result + 32);

LABEL_26:
    v53 = WorkoutNotificationIntervalView.rangedAlertTarget(min:max:)(v49, v52);
    v55 = v54;

    if (v55)
    {
      *&v75 = v53;
      *(&v75 + 1) = v55;
      lazy protocol witness table accessor for type String and conformance String();
      v56 = Text.init<A>(_:)();
      v58 = v57;
      v60 = v59;
      v62 = v61 & 1;
      outlined copy of Text.Storage(v56, v57, v61 & 1);

LABEL_29:
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v72, v33, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
      v63 = v71;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v33, v71, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSg_AA4TextVSgAOtMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSg_AA4TextVSgAOtMR);
      v65 = (v63 + *(v64 + 48));
      v67 = v69;
      v66 = v70;
      *v65 = v51;
      v65[1] = v66;
      v65[2] = v50;
      v65[3] = v67;
      v68 = (v63 + *(v64 + 64));
      outlined copy of Text?(v51, v66, v50, v67);
      outlined copy of Text?(v56, v58, v62, v60);
      outlined consume of Text?(v51, v66, v50, v67);
      outlined consume of Text?(v56, v58, v62, v60);
      *v68 = v56;
      v68[1] = v58;
      v68[2] = v62;
      v68[3] = v60;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v72, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
      outlined consume of Text?(v56, v58, v62, v60);
      outlined consume of Text?(v51, v66, v50, v67);
      return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v33, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMR);
    }

LABEL_28:
    v56 = 0;
    v58 = 0;
    v62 = 0;
    v60 = 0;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t WorkoutNotificationIntervalView.singleAlertTarget(for:)()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v41 = *(v0 + 8);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  (*(v4 + 104))(v8, *MEMORY[0x277D7DB28], v3);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType, MEMORY[0x277D7DB60]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v46 == v48 && v47 == v49)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v11, v3);

  if ((v12 & 1) == 0 || (v14 = dispatch thunk of WorkoutNotificationUnit.key.getter(), !v15))
  {
    result = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
    if (!result)
    {
      return result;
    }

    v26 = result;
    dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v27)
    {

      return 0;
    }

    v28 = v45;
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == *MEMORY[0x277D7DB30])
    {
      v30 = MEMORY[0x277D7DE58];
    }

    else if (v29 == *MEMORY[0x277D7DAF8])
    {
      v30 = MEMORY[0x277D7DE40];
    }

    else
    {
      if (v29 != *MEMORY[0x277D7DB10])
      {

        v13(v28, v3);
        return 0;
      }

      v30 = MEMORY[0x277D7DE50];
    }

    v39 = v42;
    v38 = v43;
    v40 = v44;
    (*(v43 + 104))(v42, *v30, v44);
    v37 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();

    (*(v38 + 8))(v39, v40);
    return v37;
  }

  v16 = v14;
  v17 = v15;
  v18 = dispatch thunk of WorkoutNotificationUnit.value.getter();
  if ((v19 & 1) == 0)
  {
    v31 = *&v18;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v51._object = 0xE000000000000000;
    v33._countAndFlagsBits = v16;
    v33._object = v17;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_20CB5DA70;
    if ((~*&v31 & 0x7FF0000000000000) != 0)
    {
      if (v31 > -9.22337204e18)
      {
        if (v31 < 9.22337204e18)
        {
          v36 = MEMORY[0x277D83C10];
          *(result + 56) = MEMORY[0x277D83B88];
          *(result + 64) = v36;
          *(result + 32) = v31;
          v37 = String.init(format:_:)();

          return v37;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v50._object = 0xE000000000000000;
  v21._countAndFlagsBits = v16;
  v21._object = v17;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v50)._countAndFlagsBits;

  return countAndFlagsBits;
}

void *WorkoutNotificationIntervalView.rangedAlertTarget(min:max:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for HeartRateZoneType();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + 8);
  result = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
  if (result)
  {
    v14 = result;
    v15 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v16 & 1) != 0 || (v27 = *&v15, *&v17 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter()), (v18))
    {

      return 0;
    }

    v19 = v27;
    v31 = v17;
    v20 = *&v17;
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v21 = (*(v10 + 88))(v12, v9);
    if (v21 == *MEMORY[0x277D7DB30])
    {
      v22 = MEMORY[0x277D7DE58];
    }

    else
    {
      if (v21 == *MEMORY[0x277D7DB50])
      {
        result = (*(v28 + 104))(v5, *MEMORY[0x277D7E140], v3);
        if (v19 > v20)
        {
          __break(1u);
          return result;
        }

        v24 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
        v25 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
        v23 = MEMORY[0x20F305B10](v30, v14);

        return v23;
      }

      if (v21 == *MEMORY[0x277D7DAF8])
      {
        v22 = MEMORY[0x277D7DE40];
      }

      else
      {
        if (v21 != *MEMORY[0x277D7DB10])
        {

          (*(v10 + 8))(v12, v9);
          return 0;
        }

        v22 = MEMORY[0x277D7DE50];
      }
    }

    (*(v29 + 104))(v8, *v22, v6);
    type metadata accessor for TargetZone();
    swift_allocObject();
    TargetZone.init(type:min:max:enabled:)();

    v23 = TargetZone.displayString(formattingManager:activityType:)();

    return v23;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationIntervalView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationIntervalView(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E22NotificationResultViewVyAA05EmptyH0VAA6VStackVyACyAA05TupleH0VyAD0ef4UnitH0V_ANtGSgALyAA08ModifiedD0VyAD013MetricHeadingH0VyACyAA4TextVAA6HStackVyALyAVSg_AA5ImageVSgAYtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeT0VGGSg_AXyAPGtGGGGAFyApLyA12__ApRyATyALyARyA_AA022_EnvironmentKeyWritingU0VyA_5ScaleOGGSg_A2YtGGA7_yAA5ColorVGGSgtGGGMd, "\b*\t");
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMR, &protocol conformance descriptor for WorkoutNotificationResultView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMR);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGMR, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi0_(uint64_t a1)
{
  result = 0.0;
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
  *(a1 + 160) = 0;
  *(a1 + 168) = 255;
  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void WKUIBreadcrumbMapView.routePolyline.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline;
  v3 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline];
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline] = a1;
  if (v3)
  {
    v4 = a1;
    [v1 removeOverlay_];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v1 addOverlay:v6 level:1];
  }

LABEL_4:
}

void WKUIBreadcrumbMapView.init(locationPositionPublisher:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_cancellable] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline] = 0;
  v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate] = 0;
  v3 = [objc_allocWithZone(type metadata accessor for EmptyCLDelegate #1 in WKUIBreadcrumbMapView.init(locationPositionPublisher:)()) init];
  v4 = WOLocationBundlePath();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v8 = v3;
  v9 = static OS_dispatch_queue.main.getter();
  v10 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v11 = MEMORY[0x20F30BAD0](v5, v7);

  v12 = [v10 initWithEffectiveBundlePath:v11 delegate:v8 onQueue:v9];

  if (v12)
  {
    [v12 setActivityType_];
  }

  v13 = objc_opt_self();
  v14 = WOLocationBundle();
  v15 = MEMORY[0x20F30BAD0](0xD00000000000001BLL, 0x800000020CB9F460);
  v16 = [v13 newAssertionForBundle:v14 withReason:v15 level:1];

  if (v16)
  {
    *&v2[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_inUseAssertion] = v16;
    v22.receiver = v2;
    v22.super_class = type metadata accessor for WKUIBreadcrumbMapView();
    v17 = objc_msgSendSuper2(&v22, sel_initWithFrame_locationManager_, v12, 0.0, 0.0, 0.0, 0.0);
    if (v17)
    {
      v18 = v17;
      [v18 setDelegate_];
      [v18 setZoomEnabled_];
      [v18 setScrollEnabled_];
      [v18 setPitchEnabled_];
      [v18 setRotateEnabled_];
      [v18 setShowsAttribution_];
      [v18 setShowsUserLocation_];
      [v18 setUserTrackingMode_];
      [v18 setMapType_];
      v19 = [objc_opt_self() filterExcludingAllCategories];
      [v18 setPointOfInterestFilter_];

      v20 = [objc_allocWithZone(type metadata accessor for WKUIBreadcrumbPath()) init];
      [v18 addOverlay:v20 level:0];

      v21 = *&v18[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath];
      *&v18[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath] = v20;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall WKUIBreadcrumbMapView.set(routePoints:)(Swift::OpaquePointer routePoints)
{
  v3 = type metadata accessor for RoutePoint();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(routePoints._rawValue + 2);
  if (v7)
  {
    v23 = v1;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v26;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = routePoints._rawValue + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v12 = (v9 - 8);
    do
    {
      v13 = v9;
      v25(v6, v11, v3);
      RoutePoint.coordinate.getter();
      v15 = v14;
      v17 = v16;
      (*v12)(v6, v3);
      v26 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v8 = v26;
      }

      *(v8 + 16) = v20;
      v21 = (v8 + 32 + 16 * v19);
      *v21 = v15;
      v21[1] = v17;
      v11 += v24;
      --v7;
      v9 = v13;
    }

    while (v7);
    v22 = [objc_opt_self() polylineWithCoordinates:v8 + 32 count:v20];

    WKUIBreadcrumbMapView.routePolyline.setter(v22);
  }

  else
  {

    WKUIBreadcrumbMapView.routePolyline.setter(0);
  }
}

Swift::Void __swiftcall WKUIBreadcrumbMapView.update(locations:)(Swift::OpaquePointer locations)
{
  rawValue = locations._rawValue;
  if (locations._rawValue >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((locations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else if ((rawValue & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(rawValue + 8 * v5 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v6 = MEMORY[0x20F30C990](v5, rawValue);
LABEL_8:
  v7 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath];
  if (v7)
  {
    v13 = v6;
    v8 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate;
    if (v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      rawValue = swift_allocObject();
      *(rawValue + 16) = xmmword_20CB67B90;
      *(rawValue + 32) = v13;
      v9 = v13;
    }

    else
    {
    }

    v10 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer];
    v11 = v10;
    v12 = v7;
    WKUIBreadcrumbPath.addLocations(_:mapView:breadcrumbRenderer:)(rawValue, v1, v10);

    v1[v8] = 1;
  }

  else
  {
  }
}

id WKUIBreadcrumbMapView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WKUIBreadcrumbMapView.__allocating_init(frame:locationManager:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 locationManager:{a2, a3, a4, a5}];

  return v7;
}

id WKUIBreadcrumbMapView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized WKUIBreadcrumbMapView.mapView(_:rendererFor:)(uint64_t a1)
{
  type metadata accessor for WKUIBreadcrumbPath();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer;
    v4 = *(v1 + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer);
    if (v4)
    {

      return v4;
    }

    else
    {
      v17 = v2;
      v18 = type metadata accessor for WKUIBreadcrumbPathRenderer();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC9WorkoutUI26WKUIBreadcrumbPathRenderer_crumbs] = v17;
      v24.receiver = v19;
      v24.super_class = v18;
      swift_unknownObjectRetain();
      v20 = objc_msgSendSuper2(&v24, sel_initWithOverlay_, v17);
      v21 = *(v1 + v3);
      *(v1 + v3) = v20;
      v22 = v20;

      return v22;
    }
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x277CD4F30]);
      swift_unknownObjectRetain();
      v9 = [v8 initWithPolyline_];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 systemWhiteColor];
      [v11 setStrokeColor_];

      v13 = [v10 systemWhiteColor];
      v14 = [v13 colorWithAlphaComponent_];

      [v11 setFillColor_];
      [v11 setLineWidth_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20CB61A40;
      _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      *(v15 + 32) = NSNumber.init(integerLiteral:)(2);
      *(v15 + 40) = NSNumber.init(integerLiteral:)(10);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 setLineDashPattern_];

      swift_unknownObjectRelease();
      return v11;
    }

    else
    {
      v23 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

      return [v23 init];
    }
  }
}

uint64_t _sSo17OS_dispatch_queueCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t WorkoutSummaryCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkoutNotification.isUserInteractive.getter()
{
  v0 = type metadata accessor for WorkoutNotification.NotificationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  dispatch thunk of WorkoutNotification.notificationType.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D7D9F0], v0);
  lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType)
  {
    type metadata accessor for WorkoutNotification.NotificationType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for QuickStartWorkoutConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *ManagedConfigurationsUpcomingViewiOS.init(provider:viewModel:activityMoveMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  *a4 = EnvironmentObject.init()();
  *(a4 + 8) = v8;
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *(a4 + 16) = EnvironmentObject.init()();
  *(a4 + 24) = v9;
  _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  *(a4 + 32) = EnvironmentObject.init()();
  *(a4 + 40) = v10;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
  *(a4 + 48) = EnvironmentObject.init()();
  *(a4 + 56) = v11;
  State.init(wrappedValue:)();
  *(a4 + 88) = v13;
  *(a4 + 96) = v14;
  *(a4 + 104) = implicit closure #2 in implicit closure #1 in variable initialization expression of ManagedConfigurationsUpcomingViewiOS._devicesProvider;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  State.init(wrappedValue:)();
  *(a4 + 128) = v13;
  *(a4 + 136) = v14;
  result = State.init(wrappedValue:)();
  *(a4 + 144) = v13;
  *(a4 + 152) = v14;
  *(a4 + 64) = a1;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v66 = type metadata accessor for ListSectionSpacing();
  v2 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMR);
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMR);
  MEMORY[0x28223BE20](v68);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarM0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAVyAMyAA6HStackVyAVyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingY0VG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAZyAVyA11__A9_A11_tGGA15_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAMyAXyAVyA9__A9_SgtGGAA21_TraitWritingModifierVyAA0qE14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyA20_y07WorkoutB0020WorkoutConfigurationE0VGSgGA51_GA48_yAA0qE18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA79_A79_A43_yA77_A77_AMyAMyA9_AA30_EnvironmentKeyWritingModifierVyA9_4CaseOSgGGA51_GGAcAE5alert_11isPresented7actionsQrA9__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAMyAMyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yAMyAMyAMyAMyAZyAVyA11__AMyAMyAMyA9_A81_yAA13TextAlignmentOGGA64_15BodyHyphenationVGA81_yA27_SgGGA11_tGGA15_GA15_GA28_GA34_GG_A38_Qo_A73_GA51_G_AVyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yA101_G_AA28BorderedProminentButtonStyleVQo__A20_yAA18DefaultButtonLabelVGtGQo_tGG_AA0pM7BuilderV10buildBlockyQrxAaPRzlFZQOy_AA0P4ItemVyytA64_20DeviceConnectionMenuVGQo_Qo_A81_y12CoreGraphics7CGFloatVSgGGA48_yAA0Q22SectionSpacingTraitKeyVGGA81_yAA0Q14SectionSpacingVSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarM0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAVyAMyAA6HStackVyAVyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingY0VG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAZyAVyA11__A9_A11_tGGA15_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAMyAXyAVyA9__A9_SgtGGAA21_TraitWritingModifierVyAA0qE14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyA20_y07WorkoutB0020WorkoutConfigurationE0VGSgGA51_GA48_yAA0qE18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA79_A79_A43_yA77_A77_AMyAMyA9_AA30_EnvironmentKeyWritingModifierVyA9_4CaseOSgGGA51_GGAcAE5alert_11isPresented7actionsQrA9__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAMyAMyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yAMyAMyAMyAMyAZyAVyA11__AMyAMyAMyA9_A81_yAA13TextAlignmentOGGA64_15BodyHyphenationVGA81_yA27_SgGGA11_tGGA15_GA15_GA28_GA34_GG_A38_Qo_A73_GA51_G_AVyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yA101_G_AA28BorderedProminentButtonStyleVQo__A20_yAA18DefaultButtonLabelVGtGQo_tGG_AA0pM7BuilderV10buildBlockyQrxAaPRzlFZQOy_AA0P4ItemVyytA64_20DeviceConnectionMenuVGQo_Qo_A81_y12CoreGraphics7CGFloatVSgGGA48_yAA0Q22SectionSpacingTraitKeyVGGA81_yAA0Q14SectionSpacingVSgGG_Qo_MR);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x28223BE20](v9);
  v67 = &v64 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyANyANyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarO0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAWyANyAA6HStackVyAWyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyANyANyANyA_yAWyA12__A10_A12_tGGA16_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyANyAYyAWyA10__A10_SgtGGAA21_TraitWritingModifierVyAA0sG14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVANyANyAA5GroupVyA21_y07WorkoutB0020WorkoutConfigurationG0VGSgGA52_GA49_yAA0sG18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA80_A80_A44_yA78_A78_ANyANyA10_AA30_EnvironmentKeyWritingModifierVyA10_4CaseOSgGGA52_GGAcAE5alert_11isPresented7actionsQrA10__AA7BindingVySbGqd__yXEtAaBRd__lFQOyANyANyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yANyANyANyANyA_yAWyA12__ANyANyANyA10_A82_yAA13TextAlignmentOGGA65_15BodyHyphenationVGA82_yA28_SgGGA12_tGGA16_GA16_GA29_GA35_GG_A39_Qo_A74_GA52_G_AWyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yA102_G_AA28BorderedProminentButtonStyleVQo__A21_yAA18DefaultButtonLabelVGtGQo_tGG_AA0rO7BuilderV10buildBlockyQrxAaQRzlFZQOy_AA0R4ItemVyytA65_20DeviceConnectionMenuVGQo_Qo_A82_y12CoreGraphics7CGFloatVSgGGA49_yAA0S22SectionSpacingTraitKeyVGGA82_yAA0S14SectionSpacingVSgGG_Qo__SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyANyANyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarO0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAWyANyAA6HStackVyAWyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyANyANyANyA_yAWyA12__A10_A12_tGGA16_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyANyAYyAWyA10__A10_SgtGGAA21_TraitWritingModifierVyAA0sG14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVANyANyAA5GroupVyA21_y07WorkoutB0020WorkoutConfigurationG0VGSgGA52_GA49_yAA0sG18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA80_A80_A44_yA78_A78_ANyANyA10_AA30_EnvironmentKeyWritingModifierVyA10_4CaseOSgGGA52_GGAcAE5alert_11isPresented7actionsQrA10__AA7BindingVySbGqd__yXEtAaBRd__lFQOyANyANyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yANyANyANyANyA_yAWyA12__ANyANyANyA10_A82_yAA13TextAlignmentOGGA65_15BodyHyphenationVGA82_yA28_SgGGA12_tGGA16_GA16_GA29_GA35_GG_A39_Qo_A74_GA52_G_AWyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yA102_G_AA28BorderedProminentButtonStyleVQo__A21_yAA18DefaultButtonLabelVGtGQo_tGG_AA0rO7BuilderV10buildBlockyQrxAaQRzlFZQOy_AA0R4ItemVyytA65_20DeviceConnectionMenuVGQo_Qo_A82_y12CoreGraphics7CGFloatVSgGGA49_yAA0S22SectionSpacingTraitKeyVGGA82_yAA0S14SectionSpacingVSgGG_Qo__SSQo_MR);
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE21navigationItemAdaptoryQrqd__AA012UINavigationeF0Rd__lFQOyAcAE0D5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarR0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAYyAPyAA6HStackVyAYyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyAPyAPyA1_yAYyA14__A12_A14_tGGA18_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAPyA_yAYyA12__A12_SgtGGAA21_TraitWritingModifierVyAA0vJ14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyA23_y07WorkoutB0020WorkoutConfigurationJ0VGSgGA54_GA51_yAA0vJ18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA82_A82_A46_yA80_A80_APyAPyA12_AA30_EnvironmentKeyWritingModifierVyA12_4CaseOSgGGA54_GGAcAE5alert_11isPresented7actionsQrA12__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAPyAPyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yAPyAPyAPyAPyA1_yAYyA14__APyAPyAPyA12_A84_yAA13TextAlignmentOGGA67_15BodyHyphenationVGA84_yA30_SgGGA14_tGGA18_GA18_GA31_GA37_GG_A41_Qo_A76_GA54_G_AYyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yA104_G_AA28BorderedProminentButtonStyleVQo__A23_yAA18DefaultButtonLabelVGtGQo_tGG_AA0uR7BuilderV10buildBlockyQrxAaSRzlFZQOy_AA0uE0VyytA67_20DeviceConnectionMenuVGQo_Qo_A84_y12CoreGraphics7CGFloatVSgGGA51_yAA0V22SectionSpacingTraitKeyVGGA84_yAA0V14SectionSpacingVSgGG_Qo__SSQo__A67_019MultilineNavigationE7AdapterVQo_Md,  &_s7SwiftUI4ViewPAAE21navigationItemAdaptoryQrqd__AA012UINavigationeF0Rd__lFQOyAcAE0D5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarR0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAYyAPyAA6HStackVyAYyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyAPyAPyA1_yAYyA14__A12_A14_tGGA18_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAPyA_yAYyA12__A12_SgtGGAA21_TraitWritingModifierVyAA0vJ14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyA23_y07WorkoutB0020WorkoutConfigurationJ0VGSgGA54_GA51_yAA0vJ18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA82_A82_A46_yA80_A80_APyAPyA12_AA30_EnvironmentKeyWritingModifierVyA12_4CaseOSgGGA54_GGAcAE5alert_11isPresented7actionsQrA12__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAPyAPyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yAPyAPyAPyAPyA1_yAYyA14__APyAPyAPyA12_A84_yAA13TextAlignmentOGGA67_15BodyHyphenationVGA84_yA30_SgGGA14_tGGA18_GA18_GA31_GA37_GG_A41_Qo_A76_GA54_G_AYyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yA104_G_AA28BorderedProminentButtonStyleVQo__A23_yAA18DefaultButtonLabelVGtGQo_tGG_AA0uR7BuilderV10buildBlockyQrxAaSRzlFZQOy_AA0uE0VyytA67_20DeviceConnectionMenuVGQo_Qo_A84_y12CoreGraphics7CGFloatVSgGGA51_yAA0V22SectionSpacingTraitKeyVGGA84_yAA0V14SectionSpacingVSgGG_Qo__SSQo__A67_019MultilineNavigationE7AdapterVQo_MR);
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x28223BE20](v13);
  v81 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE21navigationItemAdaptoryQrqd__AA012UINavigationkL0Rd__lFQOyAcAE0J5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAWyAWyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarX0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyA4_yAWyAA6HStackVyA4_yAWyAWyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAWyAWyAWyA8_yA4_yA21__A19_A21_tGGA25_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAWyA6_yA4_yA19__A19_SgtGGAA21_TraitWritingModifierVyAA04ListP14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAWyAWyAA5GroupVyA30_y07WorkoutB0020WorkoutConfigurationP0VGSgGA61_GA58_yAA04ListP18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA89_A89_A53_yA87_A87_AWyAWyA19_AA30_EnvironmentKeyWritingModifierVyA19_4CaseOSgGGA61_GGAcAEAD_AeFQrA19__AJqd__yXEtAaBRd__lFQOyAWyAWyAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yAWyAWyAWyAWyA8_yA4_yA21__AWyAWyAWyA19_A91_yAA13TextAlignmentOGGA74_15BodyHyphenationVGA91_yA37_SgGGA21_tGGA25_GA25_GA38_GA44_GG_A48_Qo_A83_GA61_G_A4_yAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yA105_G_AA28BorderedProminentButtonStyleVQo__A30_yAA18DefaultButtonLabelVGtGQo_tGG_AA07ToolbarX7BuilderV10buildBlockyQrxAaZRzlFZQOy_AA07ToolbarK0VyytA74_20DeviceConnectionMenuVGQo_Qo_A91_y12CoreGraphics7CGFloatVSgGGA58_yAA26ListSectionSpacingTraitKeyVGGA91_yAA18ListSectionSpacingVSgGG_Qo__SSQo__A74_019MultilineNavigationK7AdapterVQo__SSA30_yA19_GA87_Qo_Md,  &_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE21navigationItemAdaptoryQrqd__AA012UINavigationkL0Rd__lFQOyAcAE0J5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAWyAWyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarX0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyA4_yAWyAA6HStackVyA4_yAWyAWyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAWyAWyAWyA8_yA4_yA21__A19_A21_tGGA25_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAWyA6_yA4_yA19__A19_SgtGGAA21_TraitWritingModifierVyAA04ListP14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAWyAWyAA5GroupVyA30_y07WorkoutB0020WorkoutConfigurationP0VGSgGA61_GA58_yAA04ListP18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA89_A89_A53_yA87_A87_AWyAWyA19_AA30_EnvironmentKeyWritingModifierVyA19_4CaseOSgGGA61_GGAcAEAD_AeFQrA19__AJqd__yXEtAaBRd__lFQOyAWyAWyAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yAWyAWyAWyAWyA8_yA4_yA21__AWyAWyAWyA19_A91_yAA13TextAlignmentOGGA74_15BodyHyphenationVGA91_yA37_SgGGA21_tGGA25_GA25_GA38_GA44_GG_A48_Qo_A83_GA61_G_A4_yAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yA105_G_AA28BorderedProminentButtonStyleVQo__A30_yAA18DefaultButtonLabelVGtGQo_tGG_AA07ToolbarX7BuilderV10buildBlockyQrxAaZRzlFZQOy_AA07ToolbarK0VyytA74_20DeviceConnectionMenuVGQo_Qo_A91_y12CoreGraphics7CGFloatVSgGGA58_yAA26ListSectionSpacingTraitKeyVGGA91_yAA18ListSectionSpacingVSgGG_Qo__SSQo__A74_019MultilineNavigationK7AdapterVQo__SSA30_yA19_GA87_Qo_MR);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x28223BE20](v15);
  v76 = &v64 - v16;
  v17 = v1[7];
  v101 = v1[6];
  v102 = v17;
  v18 = v1[9];
  v103 = v1[8];
  v104 = v18;
  v19 = v1[3];
  v97 = v1[2];
  v98 = v19;
  v20 = v1[5];
  v99 = v1[4];
  v100 = v20;
  v21 = v1[1];
  v95 = *v1;
  v96 = v21;
  v82 = &v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMd, &_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMR);
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset( &lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRo,  &_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMd,  &_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMR,  MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_MR);
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset( &lazy protocol witness table cache variable for type List<Never, TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingMod,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMR,  MEMORY[0x277CDE5A0]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR);
  v23 = lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR, MEMORY[0x277CDD7A8]);
  v83 = v22;
  v84 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v8;
  v64 = v8;
  View.toolbar<A>(content:)();
  (*(v65 + 8))(v6, v4);
  KeyPath = swift_getKeyPath();
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGMR) + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = 0x4024000000000000;
  v26[16] = 0;
  v27 = v69;
  static ListSectionSpacing.custom(_:)();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGMR) + 36);
  v29 = v66;
  (*(v2 + 16))(&v8[v28], v27, v66);
  v30 = *(v2 + 56);
  v30(&v8[v28], 0, 1, v29);
  v31 = swift_getKeyPath();
  v32 = v68;
  v33 = &v24[*(v68 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR) + 28);
  (*(v2 + 32))(v33 + v34, v27, v29);
  v30(v33 + v34, 0, 1, v29);
  *v33 = v31;
  static VerticalEdge.Set.all.getter();
  v35 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  v36 = v67;
  v37 = v64;
  View.listRowSeparator(_:edges:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v37, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMR);
  v83 = dispatch thunk of ExternalProvider.sourceName.getter();
  v84 = v38;
  v93 = v32;
  v94 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = lazy protocol witness table accessor for type String and conformance String();
  v41 = MEMORY[0x277D837D0];
  v43 = v70;
  v42 = v71;
  View.navigationTitle<A>(_:)();

  (*(v72 + 8))(v36, v42);
  v83 = v42;
  v84 = v41;
  v85 = OpaqueTypeConformance2;
  v86 = v40;
  v72 = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter();
  v46 = v80;
  v71 = v44;
  View.navigationItemAdaptor<A>(_:)();
  (*(v73 + 8))(v43, v46);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = WorkoutUIBundle.super.isa;
  v105._object = 0xE000000000000000;
  v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v48.value._object = 0xEB00000000656C62;
  v49._object = 0x800000020CB9F700;
  v49._countAndFlagsBits = 0xD000000000000012;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v105._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v105);

  v92 = v51;
  v91 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v83 = v80;
  v84 = &type metadata for MultilineNavigationItemAdapter;
  v85 = v71;
  v86 = v45;
  v73 = swift_getOpaqueTypeConformance2();
  v80 = lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  v52 = v72;
  v53 = v75;
  v54 = v76;
  v55 = v81;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v74 + 8))(v55, v53);
  type metadata accessor for WorkoutConfiguration();
  v56 = swift_allocObject();
  v57 = v102;
  v56[7] = v101;
  v56[8] = v57;
  v58 = v104;
  v56[9] = v103;
  v56[10] = v58;
  v59 = v98;
  v56[3] = v97;
  v56[4] = v59;
  v60 = v100;
  v56[5] = v99;
  v56[6] = v60;
  v61 = v96;
  v56[1] = v95;
  v56[2] = v61;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(&v95, &v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMR);
  v83 = v53;
  v84 = MEMORY[0x277D837D0];
  v85 = v70;
  v86 = MEMORY[0x277CE1428];
  v87 = v73;
  v88 = v52;
  v89 = v80;
  v90 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50], MEMORY[0x277D85378]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  v62 = v78;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v77 + 8))(v54, v62);
}

uint64_t closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v160 = *(v3 - 8);
  v161 = v3;
  MEMORY[0x28223BE20](v3);
  v159 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v155 = &v150 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
  v157 = *(v7 - 8);
  v158 = v7;
  MEMORY[0x28223BE20](v7);
  v156 = &v150 - v8;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMR);
  MEMORY[0x28223BE20](v172);
  v173 = &v150 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrAA4TextV_AA7BindingVySbGqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAMyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAMyAMyAA6HStackVyAA05TupleC0VyAA6SpacerV_AMyAMyAMyAhA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAYyAA5ColorVSgGGAWtGGAA14_PaddingLayoutVGA14_GAA011_BackgroundmV0VyA7_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainoM0VQo_AA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGA32_yAA018ListRowInsetsTraitT0VGG_AUyAcAEANyQrqd__AaORd__lFQOyAQyA5_G_AA017BorderedProminentoM0VQo__AQyAA07DefaultO5LabelVGtGQo_Md, &_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrAA4TextV_AA7BindingVySbGqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAMyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAMyAMyAA6HStackVyAA05TupleC0VyAA6SpacerV_AMyAMyAMyAhA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAYyAA5ColorVSgGGAWtGGAA14_PaddingLayoutVGA14_GAA011_BackgroundmV0VyA7_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainoM0VQo_AA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGA32_yAA018ListRowInsetsTraitT0VGG_AUyAcAEANyQrqd__AaORd__lFQOyAQyA5_G_AA017BorderedProminentoM0VQo__AQyAA07DefaultO5LabelVGtGQo_MR);
  v163 = *(v10 - 8);
  v164 = v10;
  MEMORY[0x28223BE20](v10);
  v176 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = &v150 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMR);
  MEMORY[0x28223BE20](v154);
  v153 = &v150 - v14;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGAA06_TraitkL0VyAA013ListRowInsetsnJ0VGGGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAeA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGAA06_TraitkL0VyAA013ListRowInsetsnJ0VGGGMR);
  v162 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = &v150 - v17;
  v169 = type metadata accessor for Date();
  v18 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v181 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v180 = &v150 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v150 - v26;
  MEMORY[0x28223BE20](v27);
  v152 = &v150 - v28;
  MEMORY[0x28223BE20](v29);
  v179 = &v150 - v30;
  MEMORY[0x28223BE20](v31);
  v151 = &v150 - v32;
  MEMORY[0x28223BE20](v33);
  v178 = &v150 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v150 - v36;
  MEMORY[0x28223BE20](v38);
  v177 = &v150 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMR);
  MEMORY[0x28223BE20](v40 - 8);
  v171 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v150 - v43;
  *v44 = static HorizontalAlignment.center.getter();
  *(v44 + 1) = 0;
  v44[16] = 1;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAIyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAIyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGGMR) + 44);
  v170 = v44;
  closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(a1, &v44[v45]);
  v166 = *(a1 + 72);
  v46 = dispatch thunk of ManagedConfigurationsViewModel.todayConfigurations.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = WorkoutUIBundle.super.isa;
  v205._object = 0xE000000000000000;
  v48._object = 0x800000020CB9B560;
  v48._countAndFlagsBits = 0xD000000000000012;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v49.value._object = 0xEB00000000656C62;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v205._countAndFlagsBits = 0;
  *&v167 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v205)._countAndFlagsBits;

  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v51 = static ManagedConfigurationsUpcomingViewiOS.dateFormatter;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v18 + 8))(v20, v169);
  v53 = [v51 stringFromDate_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v168 = v37;
  if (v46 >> 62)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v169 = a1;
  if (v56)
  {
    v150._object = &v150;
    MEMORY[0x28223BE20](v56);
    v57 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v55, v202);

    *&v204[55] = v203;
    *&v204[39] = v202[2];
    *&v204[23] = v202[1];
    *&v204[7] = v202[0];
    v58 = v186;
    v186 = v57;
    v187 = 0;
    v188 = v58;
    v189 = *v204;
    *&v192[15] = *(&v203 + 1);
    *v192 = *&v204[48];
    v191 = *&v204[32];
    v190 = *&v204[16];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    v59 = v168;
    Section<>.init(header:content:)();

    v60 = 0;
  }

  else
  {

    v60 = 1;
    v59 = v168;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMR);
  (*(*(v61 - 8) + 56))(v59, v60, 1, v61);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v59, v177, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  v62 = dispatch thunk of ManagedConfigurationsViewModel.futureConfigurations.getter();
  v63 = WorkoutUIBundle.super.isa;
  v206._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = 0x800000020CB9B580;
  v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v65.value._object = 0xEB00000000656C62;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v206._countAndFlagsBits = 0;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v206);

  v67 = WorkoutUIBundle.super.isa;
  v207._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0xD000000000000018;
  v68._object = 0x800000020CB9B5A0;
  v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v69.value._object = 0xEB00000000656C62;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v207._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v207);

  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v71 = swift_allocObject();
  v167 = xmmword_20CB5DA70;
  *(v71 + 16) = xmmword_20CB5DA70;
  v72 = ManagedConfigurationsViewModel.futureDaysCount.getter();
  v73 = MEMORY[0x277D83C10];
  *(v71 + 56) = MEMORY[0x277D83B88];
  *(v71 + 64) = v73;
  *(v71 + 32) = v72;
  static String.localizedStringWithFormat(_:_:)();
  v75 = v74;

  if (v62 >> 62)
  {
    v76 = __CocoaSet.count.getter();
  }

  else
  {
    v76 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v151;
  if (v76)
  {
    MEMORY[0x28223BE20](v76);
    v78 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v75, v199);

    *(&v201[3] + 7) = v200;
    *(&v201[2] + 7) = v199[2];
    *(&v201[1] + 7) = v199[1];
    *(v201 + 7) = v199[0];
    v79 = v186;
    v186 = v78;
    v187 = 0;
    v188 = v79;
    v189 = v201[0];
    *&v192[15] = *(&v200 + 1);
    *v192 = v201[3];
    v191 = v201[2];
    v190 = v201[1];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    Section<>.init(header:content:)();

    v80 = 0;
  }

  else
  {

    v80 = 1;
  }

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMR);
  (*(*(v81 - 8) + 56))(v77, v80, 1, v81);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v77, v178, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  v151 = dispatch thunk of ManagedConfigurationsViewModel.pastConfigurations.getter();
  v82 = WorkoutUIBundle.super.isa;
  v208._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000015;
  v83._object = 0x800000020CB9B5C0;
  v84.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v84.value._object = 0xEB00000000656C62;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v208._countAndFlagsBits = 0;
  v150._object = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v208)._countAndFlagsBits;

  v86 = WorkoutUIBundle.super.isa;
  v209._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0xD00000000000001ALL;
  v87._object = 0x800000020CB9B5E0;
  v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v88.value._object = 0xEB00000000656C62;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v209._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v209);

  v90 = swift_allocObject();
  *(v90 + 16) = v167;
  v91 = ManagedConfigurationsViewModel.previousDaysCount.getter();
  *(v90 + 56) = MEMORY[0x277D83B88];
  *(v90 + 64) = MEMORY[0x277D83C10];
  *(v90 + 32) = v91;
  static String.localizedStringWithFormat(_:_:)();
  v93 = v92;
  v94 = v151;

  if (v94 >> 62)
  {
    v95 = __CocoaSet.count.getter();
  }

  else
  {
    v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = v152;
  v97 = v169;
  if (v95)
  {
    v166 = &v150;
    MEMORY[0x28223BE20](v95);
    v98 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v93, v196);

    *(&v198[3] + 7) = v197;
    *(&v198[2] + 7) = v196[2];
    *(&v198[1] + 7) = v196[1];
    *(v198 + 7) = v196[0];
    v99 = v186;
    v186 = v98;
    v187 = 0;
    v188 = v99;
    v189 = v198[0];
    *&v192[15] = *(&v197 + 1);
    *v192 = v198[3];
    v191 = v198[2];
    v190 = v198[1];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    Section<>.init(header:content:)();

    v100 = 0;
  }

  else
  {

    v100 = 1;
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMR);
  (*(*(v101 - 8) + 56))(v96, v100, 1, v101);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v96, v179, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  closure #3 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(v153);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  Section<>.init(footer:content:)();
  v102 = v155;
  static ButtonRole.destructive.getter();
  v103 = type metadata accessor for ButtonRole();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  v104 = swift_allocObject();
  v105 = v97[7];
  v104[7] = v97[6];
  v104[8] = v105;
  v106 = v97[9];
  v104[9] = v97[8];
  v104[10] = v106;
  v107 = v97[3];
  v104[3] = v97[2];
  v104[4] = v107;
  v108 = v97[5];
  v104[5] = v97[4];
  v104[6] = v108;
  v109 = v97[1];
  v104[1] = *v97;
  v104[2] = v109;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(v97, &v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v110 = v156;
  Button.init(role:action:label:)();
  v111 = v159;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v112 = v173;
  v113 = v158;
  v114 = v161;
  View.buttonStyle<A>(_:)();
  (*(v160 + 8))(v111, v114);
  (*(v157 + 8))(v110, v113);
  v186 = static Color.clear.getter();
  v115 = AnyView.init<A>(_:)();
  *&v112[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGMR) + 36)] = v115;
  v116 = &v112[*(v172 + 36)];
  *v116 = xmmword_20CB81050;
  *(v116 + 1) = xmmword_20CB81050;
  v116[32] = 0;
  v117 = WorkoutUIBundle.super.isa;
  v210._object = 0xE000000000000000;
  v118._countAndFlagsBits = 0xD000000000000035;
  v118._object = 0x800000020CB9B600;
  v119.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v119.value._object = 0xEB00000000656C62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v210._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v210);

  v121 = swift_allocObject();
  *(v121 + 16) = v167;
  v122 = dispatch thunk of ExternalProvider.sourceName.getter();
  v124 = v123;
  *(v121 + 56) = MEMORY[0x277D837D0];
  *(v121 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v121 + 32) = v122;
  *(v121 + 40) = v124;
  v125 = String.init(format:_:)();
  v127 = v126;

  v186 = v125;
  v187 = v127;
  lazy protocol witness table accessor for type String and conformance String();
  v168 = Text.init<A>(_:)();
  v166 = v129;
  *&v167 = v128;
  LOBYTE(v112) = v130;
  v185 = v97[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v131 = State.projectedValue.getter();
  v161 = &v150;
  MEMORY[0x28223BE20](v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Button<DefaultButtonLabel>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMR, MEMORY[0x277CE14C0]);
  v132 = v175;
  v133 = v168;
  v134 = v167;
  v135 = v173;
  View.alert<A>(_:isPresented:actions:)();

  outlined consume of Text.Storage(v133, v134, v112 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v135, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMR);
  v136 = v171;
  outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v170, v171, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMR);
  v137 = v174;
  outlined init with copy of ListSectionSpacing?(v177, v174, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined init with copy of ListSectionSpacing?(v178, v180, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined init with copy of ListSectionSpacing?(v179, v181, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  v138 = v162;
  v173 = *(v162 + 16);
  (v173)(v183, v182, v184);
  v139 = v163;
  v172 = *(v163 + 16);
  v140 = v132;
  v141 = v164;
  (v172)(v176, v140, v164);
  v142 = v136;
  v143 = v165;
  outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v142, v165, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMR);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyACyAEyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyE0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyAEyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_AEyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyACyAEyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyE0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyAEyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_AEyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tMR);
  outlined init with copy of ListSectionSpacing?(v137, v143 + v144[12], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined init with copy of ListSectionSpacing?(v180, v143 + v144[16], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined init with copy of ListSectionSpacing?(v181, v143 + v144[20], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  v145 = v184;
  (v173)(v143 + v144[24], v183, v184);
  v146 = v176;
  (v172)(v143 + v144[28], v176, v141);
  v147 = *(v139 + 8);
  v147(v175, v141);
  v148 = *(v138 + 8);
  v148(v182, v145);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v179, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v178, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v177, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v170, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMR);
  v147(v146, v141);
  v148(v183, v184);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v181, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v180, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v174, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v171, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMR);
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PlainButtonStyle();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v46[-v8];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAA011_BackgroundE8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA6HStackVyAA05TupleC0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAA011_BackgroundE8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaingE0VQo_MR);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v55 = &v46[-v12];
  v57 = static VerticalAlignment.center.getter();
  v59 = 0;
  closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(&v76);
  v64 = *&v77[48];
  v65 = *&v77[64];
  v66 = *&v77[80];
  v67 = v77[96];
  v60 = v76;
  v61 = *v77;
  v62 = *&v77[16];
  v63 = *&v77[32];
  v68[0] = v76;
  v68[1] = *v77;
  v68[2] = *&v77[16];
  v68[3] = *&v77[32];
  v68[4] = *&v77[48];
  v68[5] = *&v77[64];
  v68[6] = *&v77[80];
  v69 = v77[96];
  outlined init with copy of ListSectionSpacing?(&v60, &v72, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGSg_AA4TextVAA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGSg_AA4TextVAA6SpacerVtGMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v68, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGSg_AA4TextVAA6SpacerVtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGSg_AA4TextVAA6SpacerVtGMR);
  *&v58[71] = v64;
  *&v58[87] = v65;
  *&v58[103] = v66;
  *&v58[7] = v60;
  *&v58[23] = v61;
  *&v58[39] = v62;
  v58[119] = v67;
  *&v58[55] = v63;
  v56 = v59;
  v47 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  v22 = a1[7];
  v21[7] = a1[6];
  v21[8] = v22;
  v23 = a1[9];
  v21[9] = a1[8];
  v21[10] = v23;
  v24 = a1[3];
  v21[3] = a1[2];
  v21[4] = v24;
  v25 = a1[5];
  v21[5] = a1[4];
  v21[6] = v25;
  v26 = a1[1];
  v21[1] = *a1;
  v21[2] = v26;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(a1, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v27 = v55;
  v28 = v50;
  v29 = v53;
  View.buttonStyle<A>(_:)();
  (*(v54 + 8))(v7, v29);
  (*(v52 + 8))(v9, v28);
  v30 = v48;
  v31 = v49;
  v32 = *(v49 + 16);
  v33 = v51;
  v32(v48, v27, v51);
  *&v72 = v57;
  *(&v72 + 1) = 0x4030000000000000;
  LOBYTE(v73[0]) = v56;
  *(&v73[4] + 1) = *&v58[64];
  *(&v73[5] + 1) = *&v58[80];
  *(&v73[6] + 1) = *&v58[96];
  *(&v73[7] + 1) = *&v58[112];
  *(v73 + 1) = *v58;
  *(&v73[1] + 1) = *&v58[16];
  *(&v73[2] + 1) = *&v58[32];
  *(&v73[3] + 1) = *&v58[48];
  HIDWORD(v73[7]) = *&v71[3];
  *(&v73[7] + 9) = *v71;
  LOBYTE(v27) = v47;
  LOBYTE(v74) = v47;
  DWORD1(v74) = *&v70[3];
  *(&v74 + 1) = *v70;
  *(&v74 + 1) = v14;
  *&v75[0] = v16;
  *(&v75[0] + 1) = v18;
  *&v75[1] = v20;
  BYTE8(v75[1]) = 0;
  v34 = v72;
  v35 = v73[0];
  v36 = v73[2];
  a2[2] = v73[1];
  a2[3] = v36;
  *a2 = v34;
  a2[1] = v35;
  v37 = v73[3];
  v38 = v73[4];
  v39 = v73[6];
  a2[6] = v73[5];
  a2[7] = v39;
  a2[4] = v37;
  a2[5] = v38;
  v40 = v73[7];
  v41 = v74;
  v42 = v75[0];
  *(a2 + 169) = *(v75 + 9);
  a2[9] = v41;
  a2[10] = v42;
  a2[8] = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyACyACyACyAEyAGyAT_ArTtGGAXGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainsQ0VQo_tMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyACyACyACyAEyAGyAT_ArTtGGAXGAA011_BackgroundQ8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainsQ0VQo_tMR);
  v32(a2 + *(v43 + 48), v30, v33);
  outlined init with copy of ListSectionSpacing?(&v72, &v76, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VGMR);
  v44 = *(v31 + 8);
  v44(v55, v33);
  v44(v30, v33);
  *&v77[65] = *&v58[64];
  *&v77[81] = *&v58[80];
  *&v77[97] = *&v58[96];
  *&v77[1] = *v58;
  *&v77[17] = *&v58[16];
  *&v77[33] = *&v58[32];
  *&v76 = v57;
  *(&v76 + 1) = 0x4030000000000000;
  v77[0] = v56;
  v78 = *&v58[112];
  *&v77[49] = *&v58[48];
  *&v79[3] = *&v71[3];
  *v79 = *v71;
  v80 = v27;
  *&v81[3] = *&v70[3];
  *v81 = *v70;
  v82 = v14;
  v83 = v16;
  v84 = v18;
  v85 = v20;
  v86 = 0;
  return outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(&v76, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingK0VGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of ExternalProvider.sourceImageData.getter();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithData_];

  outlined consume of Data._Representation(v6, v8);
  if (v11)
  {
    v12 = v11;
    Image.init(uiImage:)();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v59 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    LOBYTE(v72[0]) = 1;
    v57 = v72[10];
    v58 = v72[9];
    v63 = v72[12];
    v64 = v72[11];
    v56 = v72[14];
    v61 = 1;
    v62 = v72[13];
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = WorkoutUIBundle.super.isa;
  v73._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x800000020CB9F720;
  v16.value._object = 0x800000020CB936F0;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v73);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CB5DA70;
  v19 = dispatch thunk of ExternalProvider.sourceName.getter();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  LocalizedStringKey.init(stringInterpolation:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  LOBYTE(v24) = v30;
  static Font.body.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  v35 = v34;

  outlined consume of Text.Storage(v27, v29, v24 & 1);

  static Color.primary.getter();
  v36 = Text.foregroundColor(_:)();
  v38 = v37;
  v40 = v39;

  outlined consume of Text.Storage(v31, v33, v35 & 1);

  static Font.Weight.bold.getter();
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  outlined consume of Text.Storage(v36, v38, v40 & 1);

  v49 = v58;
  v48 = v59;
  v67 = v59;
  v50 = v60;
  *&v68 = v61;
  *(&v68 + 1) = v58;
  v51 = v56;
  v52 = v57;
  *&v69 = v57;
  *(&v69 + 1) = v64;
  *&v70 = v63;
  *(&v70 + 1) = v62;
  v71 = v56;
  v66 = v45 & 1;
  v65 = 1;
  v53 = v70;
  *(v60 + 32) = v69;
  *(v50 + 48) = v53;
  v54 = v68;
  *v50 = v67;
  *(v50 + 16) = v54;
  *(v50 + 64) = v51;
  *(v50 + 72) = v41;
  *(v50 + 80) = v43;
  *(v50 + 88) = v45 & 1;
  *(v50 + 96) = v47;
  *(v50 + 104) = 0;
  *(v50 + 112) = 1;
  outlined init with copy of ListSectionSpacing?(&v67, v72, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMR);
  outlined copy of Text.Storage(v41, v43, v45 & 1);

  outlined consume of Text.Storage(v41, v43, v45 & 1);

  v72[0] = v48;
  v72[1] = 0;
  v72[2] = v61;
  v72[3] = v49;
  v72[4] = v52;
  v72[5] = v64;
  v72[6] = v63;
  v72[7] = v62;
  v72[8] = v51;
  return outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v72, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMR);
}

double closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(a1, v15);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = a1[7];
  *(v7 + 128) = a1[6];
  *(v7 + 144) = v9;
  v10 = a1[9];
  *(v7 + 160) = a1[8];
  *(v7 + 176) = v10;
  v11 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v11;
  v12 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v12;
  v13 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter, v7);

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[44] = a4;
  v5 = type metadata accessor for Logger();
  v4[45] = v5;
  v4[46] = *(v5 - 8);
  v4[47] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[48] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[49] = v7;
  v4[50] = v6;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter, v7, v6);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[51] = v1;
  if (v1)
  {
    v2 = v1;
    v0[52] = *(v0[44] + 64);
    v3 = dispatch thunk of ExternalProvider.sourceBundleIdentifier.getter();
    v4 = MEMORY[0x20F30BAD0](v3);
    v0[53] = v4;

    v0[2] = v0;
    v0[7] = v0 + 55;
    v0[3] = closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter;
    v5 = swift_continuation_init();
    v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
    v0[30] = MEMORY[0x277D85DD0];
    v0[31] = 1107296256;
    v0[32] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    v0[33] = &block_descriptor_26;
    v0[34] = v5;
    [v2 openApplicationWithBundleIdentifier:v4 usingConfiguration:0 completionHandler:v0 + 30];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 400);
  v4 = *(v1 + 392);
  if (v2)
  {
    v5 = closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[53];
  v2 = v0[51];

  v3 = v0[1];

  return v3();
}

{
  v28 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 352);

  swift_willThrow();

  static WOLog.activityPicker.getter();
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(v4, v0 + 80);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  outlined destroy of ManagedConfigurationsUpcomingViewiOS(v4);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 432);
    v9 = *(v0 + 368);
    v25 = *(v0 + 360);
    v26 = *(v0 + 376);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = dispatch thunk of ExternalProvider.sourceBundleIdentifier.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_20C66F000, v6, v7, "Failed to open app with bundle identifier %s: %@", v10, 0x16u);
    outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F30E080](v12, -1, -1);
    MEMORY[0x20F30E080](v10, -1, -1);

    (*(v9 + 8))(v26, v25);
  }

  else
  {
    v19 = *(v0 + 368);
    v18 = *(v0 + 376);
    v20 = *(v0 + 360);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 432);
  v22 = *(v0 + 352);
  *(v0 + 304) = *(v22 + 144);
  *(v0 + 320) = *(v22 + 144);
  *(v0 + 441) = 1;
  *(v0 + 336) = *(v0 + 312);
  outlined init with copy of ListSectionSpacing?(v0 + 336, v0 + 344, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();

  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v0 + 304, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);

  v23 = *(v0 + 8);

  return v23();
}

__n128 closure #3 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  closure #1 in closure #3 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(v26);
  *&v25[7] = v26[0];
  *&v25[23] = v26[1];
  *&v25[39] = v27[0];
  *&v25[48] = *(v27 + 9);
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static Color.gray.getter();
  v13 = Color.opacity(_:)();

  v14 = static Edge.Set.all.getter();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #25.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  *(a2 + 17) = *v25;
  *(a2 + 33) = *&v25[16];
  result = *&v25[32];
  *(a2 + 49) = *&v25[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v25[48];
  *(a2 + 88) = v4;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  return result;
}

double closure #1 in closure #3 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<D0>(uint64_t a1@<X8>)
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
  static Font.headline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static Color.white.getter();
  v13 = Text.foregroundColor(_:)();
  v15 = v14;
  v17 = v16;

  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Font.Weight.bold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v18;
  *(a1 + 24) = v20;
  *(a1 + 32) = v10 & 1;
  *(a1 + 40) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  outlined copy of Text.Storage(v18, v20, v10 & 1);

  outlined consume of Text.Storage(v18, v20, v10 & 1);

  return result;
}

void closure #3 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(uint64_t a1@<X8>)
{
  v43 = a1;
  v44 = type metadata accessor for Date();
  v1 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v3 = &countAndFlagsBits - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v42);
  v5 = &countAndFlagsBits - v4;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = WorkoutUIBundle.super.isa;
  v47._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._object = 0x800000020CB9B680;
  v8._countAndFlagsBits = 0xD000000000000024;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v47)._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CB5DA80;
  v11 = dispatch thunk of ExternalProvider.sourceName.getter();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v16 = objc_opt_self();
  ExternalProvider.syncStartDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v44);
  v18 = [v16 stringWithDayNameAndShortMonthFromDate_];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v10 + 96) = v14;
    *(v10 + 104) = v15;
    *(v10 + 72) = v19;
    *(v10 + 80) = v21;
    v22 = String.init(format:_:)();
    v24 = v23;

    v45 = v22;
    v46 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    LOBYTE(v19) = v28;
    static Color.secondary.getter();
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    outlined consume of Text.Storage(v25, v27, v19 & 1);

    v36 = &v5[*(v42 + 36)];
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v38 = type metadata accessor for Text.Case();
    (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
    *v36 = swift_getKeyPath();
    *v5 = v29;
    *(v5 + 1) = v31;
    v5[16] = v33 & 1;
    *(v5 + 3) = v35;
    v39 = v43;
    _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v5, v43, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMR);
    v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMR) + 36);
    *v40 = xmmword_20CB7E4D0;
    *(v40 + 16) = xmmword_20CB7E4D0;
    *(v40 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

double closure #5 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = static VerticalAlignment.center.getter();
  LOBYTE(v60[0]) = 1;
  closure #1 in closure #5 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(&v45);
  v53 = v47;
  v54 = v48;
  v55[0] = v49[0];
  *(v55 + 9) = *(v49 + 9);
  v51 = v45;
  v52 = v46;
  *&v57[9] = *(v49 + 9);
  v56[2] = v47;
  v56[3] = v48;
  *v57 = v49[0];
  v56[0] = v45;
  v56[1] = v46;
  outlined init with copy of ListSectionSpacing?(&v51, v44, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAKyAA5ColorVSgGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAKyAA5ColorVSgGGAEtGMR);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v56, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAKyAA5ColorVSgGGAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAKyAA5ColorVSgGGAEtGMR);
  *&v50[39] = v53;
  *&v50[55] = v54;
  *&v50[71] = v55[0];
  *&v50[80] = *(v55 + 9);
  *&v50[7] = v51;
  *&v50[23] = v52;
  v3 = v60[0];
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v44[0]) = 0;
  v13 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v45) = 0;
  v22 = [objc_opt_self() systemRedColor];
  Color.init(uiColor:)();
  v23 = Color.opacity(_:)();

  v24 = static Edge.Set.all.getter();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #25.0 }

  *v25 = _Q0;
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  v34 = *&v50[48];
  *(a2 + 49) = *&v50[32];
  *(a2 + 65) = v34;
  v35 = *&v50[80];
  *(a2 + 81) = *&v50[64];
  *(a2 + 97) = v35;
  result = *v50;
  v37 = *&v50[16];
  *(a2 + 17) = *v50;
  *a2 = v43;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 33) = v37;
  v38 = v45;
  *(a2 + 116) = *(&v45 + 3);
  *(a2 + 113) = v38;
  *(a2 + 120) = v4;
  v39 = v44[0];
  *(a2 + 124) = *(v44 + 3);
  *(a2 + 121) = v39;
  *(a2 + 128) = v6;
  *(a2 + 136) = v8;
  *(a2 + 144) = v10;
  *(a2 + 152) = v12;
  *(a2 + 160) = 0;
  v40 = v60[0];
  *(a2 + 164) = *(v60 + 3);
  *(a2 + 161) = v40;
  *(a2 + 168) = v13;
  v41 = *v59;
  *(a2 + 172) = *&v59[3];
  *(a2 + 169) = v41;
  *(a2 + 176) = v15;
  *(a2 + 184) = v17;
  *(a2 + 192) = v19;
  *(a2 + 200) = v21;
  *(a2 + 208) = 0;
  v42 = *v58;
  *(a2 + 212) = *&v58[3];
  *(a2 + 209) = v42;
  *(a2 + 216) = v23;
  *(a2 + 224) = v24;
  return result;
}

uint64_t closure #1 in closure #5 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  LOWORD(v18) = 2;
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = [objc_opt_self() systemRedColor];
  v12 = Color.init(uiColor:)();
  v13 = swift_getKeyPath();
  v21 = 1;
  *&v24 = v3;
  *(&v24 + 1) = v5;
  LOBYTE(v25) = v7 & 1;
  *(&v25 + 1) = *v23;
  DWORD1(v25) = *&v23[3];
  *(&v25 + 1) = v9;
  *&v26 = KeyPath;
  BYTE8(v26) = 1;
  HIDWORD(v26) = *&v22[3];
  *(&v26 + 9) = *v22;
  *&v27 = v13;
  *(&v27 + 1) = v12;
  *&v20[55] = v27;
  *&v20[39] = v26;
  *&v20[23] = v25;
  *&v20[7] = v24;
  v19[64] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v14 = *&v20[16];
  *(a1 + 9) = *v20;
  v15 = *&v20[32];
  v16 = *&v20[48];
  *(a1 + 72) = *&v20[63];
  *(a1 + 80) = 0;
  *(a1 + 57) = v16;
  *(a1 + 41) = v15;
  *(a1 + 25) = v14;
  *(a1 + 88) = 1;
  v28[0] = v3;
  v28[1] = v5;
  v29 = v7 & 1;
  *&v30[3] = *&v23[3];
  *v30 = *v23;
  v31 = v9;
  v32 = KeyPath;
  v33 = 1;
  *&v34[3] = *&v22[3];
  *v34 = *v22;
  v35 = v13;
  v36 = v12;
  outlined init with copy of ListSectionSpacing?(&v24, v19, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGAGyAA5ColorVSgGGMR);
  return outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v28, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGAGyAA5ColorVSgGGMR);
}

uint64_t closure #6 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for ButtonRole();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v51 - v8;
  v55 = type metadata accessor for BorderedProminentButtonStyle();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd, &_s7SwiftUI10ButtonRoleVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo_MR);
  v53 = *(v57 - 8);
  v18 = v53;
  MEMORY[0x28223BE20](v57);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  static ButtonRole.destructive.getter();
  (*(v4 + 56))(v13, 0, 1, v3);
  v23 = swift_allocObject();
  v24 = a1[7];
  v23[7] = a1[6];
  v23[8] = v24;
  v25 = a1[9];
  v23[9] = a1[8];
  v23[10] = v25;
  v26 = a1[3];
  v23[3] = a1[2];
  v23[4] = v26;
  v27 = a1[5];
  v23[5] = a1[4];
  v23[6] = v27;
  v28 = a1[1];
  v23[1] = *a1;
  v23[2] = v28;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(a1, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGG07WorkoutB015BodyHyphenationVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  Button.init(role:action:label:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0F9AlignmentOGG07WorkoutB015BodyHyphenationVGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v29 = v22;
  v52 = v22;
  v30 = v55;
  View.buttonStyle<A>(_:)();
  (*(v56 + 8))(v10, v30);
  (*(v15 + 8))(v17, v14);
  v31 = v58;
  static ButtonRole.cancel.getter();
  v32 = swift_allocObject();
  v33 = a1[7];
  v32[7] = a1[6];
  v32[8] = v33;
  v34 = a1[9];
  v32[9] = a1[8];
  v32[10] = v34;
  v35 = a1[3];
  v32[3] = a1[2];
  v32[4] = v35;
  v36 = a1[5];
  v32[5] = a1[4];
  v32[6] = v36;
  v37 = a1[1];
  v32[1] = *a1;
  v32[2] = v37;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(a1, v64);
  v38 = v63;
  MEMORY[0x20F30AF90](v31, partial apply for closure #3 in closure #6 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter, v32);
  v39 = *(v18 + 16);
  v40 = v54;
  v41 = v57;
  v39(v54, v29, v57);
  v42 = v60;
  v43 = *(v60 + 16);
  v44 = v59;
  v45 = v61;
  v43(v59, v38, v61);
  v46 = v62;
  v39(v62, v40, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo__AGyAA07DefaultG5LabelVGtMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminentgE0VQo__AGyAA07DefaultG5LabelVGtMR);
  v43(&v46[*(v47 + 48)], v44, v45);
  v48 = *(v42 + 8);
  v48(v63, v45);
  v49 = *(v53 + 8);
  v49(v52, v41);
  v48(v44, v45);
  return (v49)(v40, v41);
}

void closure #1 in closure #6 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(void *a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a1[6];
  if (v6)
  {
    v7 = v6;
    dispatch thunk of WorkoutConfigurationOccurrenceStore.stopSyncing(for:)();

    if (a1[2])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter(v5);

      v8 = NavigationPath.count.getter();
      (*(v3 + 8))(v5, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = static Published.subscript.modify();
      NavigationPath.removeLast(_:)(v8);
      v9(v13, 0);

      return;
    }

    type metadata accessor for ConfigurationNavigationModel(0);
    v10 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v11 = type metadata accessor for ConfigurationNavigationModel;
    v12 = &protocol conformance descriptor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    v10 = &lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore;
    v11 = MEMORY[0x277D7DD18];
    v12 = MEMORY[0x277D7DD10];
  }

  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(v10, v11, v12);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t closure #2 in closure #6 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t closure #2 in ManagedConfigurationsUpcomingViewiOS.body.getter()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  static ToolbarItemPlacement.topBarTrailing.getter();
  lazy protocol witness table accessor for type DeviceConnectionMenu and conformance DeviceConnectionMenu();
  ToolbarItem<>.init(placement:content:)();
  v5 = lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a1 = 1;
  *(a1 + 8) = implicit closure #2 in implicit closure #1 in variable initialization expression of DeviceConnectionMenu._devicesProvider;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  return result;
}

uint64_t closure #3 in ManagedConfigurationsUpcomingViewiOS.body.getter()
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
  v2._countAndFlagsBits = 19279;
  v2._object = 0xE200000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Button<>.init<A>(_:action:)();
}

uint64_t closure #5 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = *a1;
  dispatch thunk of WorkoutConfiguration.activityType.getter();
  v13 = *(a2 + 32);
  if (!v13)
  {
    v31 = &lazy cache variable for type metadata for HKHealthStore;
    v32 = 0x277CCD4D8;
    _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
    v33 = &lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore;
    v34 = &protocol conformance descriptor for HKHealthStore;
LABEL_9:
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(v33, v31, v32, v34);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_10;
  }

  v36 = v9;
  v37 = a3;
  v14 = *(a2 + 48);
  if (!v14)
  {
    type metadata accessor for WorkoutConfigurationOccurrenceStore();
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
    v35 = v13;
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  v15 = *(a2 + 80);
  v16 = type metadata accessor for WorkoutConfigurationDataSource();
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  objc_allocWithZone(v16);
  v17 = v14;
  v18 = v13;
  v19 = WorkoutConfigurationDataSource.init(activityType:activityMoveMode:healthStore:occurrenceStore:raceRouteDataStore:usePersistence:)();
  v20 = *a2;
  if (!*a2)
  {
LABEL_8:
    v31 = &lazy cache variable for type metadata for FIUIFormattingManager;
    v32 = 0x277D0A7E8;
    _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    v33 = &lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager;
    v34 = &protocol conformance descriptor for FIUIFormattingManager;
    goto LABEL_9;
  }

  v21 = v19;
  v22 = v18;
  v23 = v20;
  closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v12, v23, v15, 2, v22, v8);

  v24 = *(a2 + 16);
  if (v24)
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

    v25 = static ObservableObject.environmentStore.getter();
    _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v8, v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
    v26 = &v11[*(v36 + 36)];
    *v26 = v25;
    v26[1] = v24;
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    v27 = static ObservableObject.environmentStore.getter();
    v28 = v37;
    _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v11, v37, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMR);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMR);
    v30 = (v28 + *(result + 36));
    *v30 = v27;
    v30[1] = v21;
    return result;
  }

LABEL_10:
  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t closure #1 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(uint64_t a1, _OWORD *a2)
{
  v11 = a1;
  v3 = swift_allocObject();
  v4 = a2[7];
  v3[7] = a2[6];
  v3[8] = v4;
  v5 = a2[9];
  v3[9] = a2[8];
  v3[10] = v5;
  v6 = a2[3];
  v3[3] = a2[2];
  v3[4] = v6;
  v7 = a2[5];
  v3[5] = a2[4];
  v3[6] = v7;
  v8 = a2[1];
  v3[1] = *a2;
  v3[2] = v8;

  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMR);
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type [WorkoutConfiguration] and conformance [A], &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA68]);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMR);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v77 = &v74 - v5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMR);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v74 - v6;
  v81 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v81);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  MEMORY[0x28223BE20](v83);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMd, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = &v74 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMR);
  MEMORY[0x28223BE20](v78);
  v86 = &v74 - v16;
  started = type metadata accessor for StartButtonState();
  v18 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = *a1;
  v76 = a2;
  type metadata accessor for WorkoutDevicesProvider();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, MEMORY[0x277D7DAA8], MEMORY[0x277D7DAA0]);
  v25 = StateObject.wrappedValue.getter();
  WorkoutConfiguration.startButtonState(with:)();

  (*(v18 + 104))(v20, *MEMORY[0x277D7E0A8], started);
  v26 = static StartButtonState.== infix(_:_:)();
  v27 = *(v18 + 8);
  v27(v20, started);
  v27(v23, started);
  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass() || (v28 = v75, v29 = v76, type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()))
  {
    v30 = 1;
    v31 = v87;
    v32 = v86;
    v33 = v82;
    v34 = v80;
    v35 = v79;
  }

  else
  {
    v65 = swift_allocObject();
    v66 = v29[7];
    *(v65 + 112) = v29[6];
    *(v65 + 128) = v66;
    v67 = v29[9];
    *(v65 + 144) = v29[8];
    *(v65 + 160) = v67;
    v68 = v29[3];
    *(v65 + 48) = v29[2];
    *(v65 + 64) = v68;
    v69 = v29[5];
    *(v65 + 80) = v29[4];
    *(v65 + 96) = v69;
    v70 = v29[1];
    *(v65 + 16) = *v29;
    *(v65 + 32) = v70;
    *(v65 + 176) = v24;
    MEMORY[0x28223BE20](v29);
    *(&v74 - 4) = v24;
    *(&v74 - 3) = v71;
    *(&v74 - 16) = v26 & 1;
    outlined init with copy of ManagedConfigurationsUpcomingViewiOS(v71, v91);
    type metadata accessor for WorkoutConfigurationRow(0);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationRow and conformance WorkoutConfigurationRow, type metadata accessor for WorkoutConfigurationRow, &protocol conformance descriptor for WorkoutConfigurationRow);
    v72 = v24;
    Button.init(action:label:)();
    v34 = v80;
    v35 = v79;
    v73 = v82;
    (*(v80 + 32))(v79, v28, v82);
    v33 = v73;
    v30 = 0;
    v31 = v87;
    v32 = v86;
  }

  (*(v34 + 56))(v35, v30, 1, v33);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v35, v32, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMd, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMR);
  v36 = v32 + *(v78 + 36);
  *v36 = xmmword_20CB81060;
  *(v36 + 16) = xmmword_20CB81060;
  *(v36 + 32) = 0;
  v37 = *(v81 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = type metadata accessor for RoundedCornerStyle();
  v40 = v84;
  (*(*(v39 - 8) + 104))(&v84[v37], v38, v39);
  __asm { FMOV            V0.2D, #26.0 }

  *v40 = _Q0;
  v46 = v89;
  if (v26)
  {
    WorkoutConfiguration.displayPlatterColor.getter();
    v47 = Color.init(uiColor:)();
  }

  else
  {
    WorkoutConfiguration.displayColor.getter();
    Color.init(uiColor:)();
    v47 = Color.opacity(_:)();
  }

  outlined init with take of RoundedRectangle(v40, v9);
  v48 = v83;
  *&v9[*(v83 + 52)] = v47;
  *&v9[*(v48 + 56)] = 256;
  WorkoutConfiguration.displayPlatterColor.getter();
  v49 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  outlined init with copy of RoundedRectangle(v9, v31);
  v50 = *v91 * 0.5;
  v51 = v31 + *(v46 + 68);
  outlined init with copy of RoundedRectangle(v9, v51);
  *(v51 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v50;
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMR) + 36);
  v53 = v91[1];
  *v52 = v91[0];
  *(v52 + 16) = v53;
  *(v52 + 32) = v92;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGMR);
  *(v51 + *(v54 + 52)) = v49;
  *(v51 + *(v54 + 56)) = 256;
  v55 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGAA19_BackgroundModifierVyAEyAiNGGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA5ColorVGAA19_BackgroundModifierVyAEyAiNGGGMR) + 36);
  outlined init with copy of ListSectionSpacing?(v9, v55, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v56 = static Alignment.center.getter();
  v58 = v57;
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v9, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v59 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMR) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = v88;
  (*(v88 + 56))(v31, 0, 1, v46);
  v61 = v85;
  outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v31, v85, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMR);
  if ((*(v60 + 48))(v61, 1, v46) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v31, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMR);
    v62 = 0;
  }

  else
  {
    sub_20C69083C(v61, v77);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type StrokeBorderShapeView<RoundedRectangle, Color, _ShapeView<RoundedRectangle, Color>> and conformance StrokeBorderShapeView<A, B, C>, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMR, MEMORY[0x277CE0458]);
    v62 = AnyView.init<A>(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v31, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGSgMR);
  }

  v63 = v90;
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v32, v90, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMR);
  *(v63 + *(result + 36)) = v62;
  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v5 = a2;
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = static Published.subscript.modify();
    type metadata accessor for WorkoutConfiguration();
    v3 = MEMORY[0x277D7DA50];
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA60]);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, v3, MEMORY[0x277D7DA58]);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, v3, MEMORY[0x277D85378]);
    NavigationPath.append<A>(_:)();
    v2(v4, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 32);
    if (v5)
    {
      v9 = *(a2 + 80);
      type metadata accessor for ConfigurationNavigationModel(0);
      lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v10 = v4;
      v11 = v5;
      *a4 = EnvironmentObject.init()();
      *(a4 + 8) = v12;
      type metadata accessor for WorkoutConfigurationDataSource();
      lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      *(a4 + 16) = EnvironmentObject.init()();
      *(a4 + 24) = v13;
      State.init(wrappedValue:)();
      *(a4 + 72) = v20;
      *(a4 + 80) = v21;
      v14 = type metadata accessor for WorkoutConfigurationRow(0);
      v15 = v14[11];
      *(a4 + v15) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
      swift_storeEnumTagMultiPayload();
      *(a4 + v14[13]) = 0x3FE0000000000000;
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v16 = a1;
      result = ObservedObject.init(wrappedValue:)();
      *(a4 + 32) = result;
      *(a4 + 40) = v18;
      *(a4 + 48) = v9;
      *(a4 + 56) = v10;
      *(a4 + 64) = v11;
      *(a4 + v14[12]) = a3 & 1;
      *(a4 + v14[14]) = 1;
      return result;
    }
  }

  else
  {
    _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
    EnvironmentObject.error()();
    __break(1u);
  }

  _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  v19 = v4;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)@<D0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.localizedCapitalized.getter();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.title2.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v5, v7, v9 & 1);

  static Font.Weight.bold.getter();
  v15 = Text.fontWeight(_:)();
  v17 = v16;
  LOBYTE(v5) = v18;
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Color.primary.getter();
  v19 = Text.foregroundColor(_:)();
  v51 = v20;
  v22 = v21;
  v24 = v23;

  outlined consume of Text.Storage(v15, v17, v5 & 1);

  if (a4)
  {

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    static Font.subheadline.getter();
    v30 = Text.font(_:)();
    v32 = v31;
    v50 = v24;
    v34 = v33;

    outlined consume of Text.Storage(v25, v27, v29 & 1);

    static Font.Weight.regular.getter();
    v35 = Text.fontWeight(_:)();
    v37 = v36;
    v39 = v38;
    outlined consume of Text.Storage(v30, v32, v34 & 1);

    static Color.secondary.getter();
    v40 = Text.foregroundColor(_:)();
    v42 = v41;
    LOBYTE(v32) = v43;
    v45 = v44;
    v24 = v50;

    outlined consume of Text.Storage(v35, v37, v39 & 1);

    v46 = v32 & 1;
    outlined copy of Text.Storage(v40, v42, v46);
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v46 = 0;
    v45 = 0;
  }

  v47 = v22 & 1;
  outlined copy of Text.Storage(v19, v51, v47);

  outlined copy of Text?(v40, v42, v46, v45);
  outlined consume of Text?(v40, v42, v46, v45);
  *a5 = v19;
  *(a5 + 8) = v51;
  *(a5 + 16) = v47;
  *(a5 + 24) = v24;
  *(a5 + 32) = v40;
  *(a5 + 40) = v42;
  *(a5 + 48) = v46;
  *(a5 + 56) = v45;
  outlined consume of Text?(v40, v42, v46, v45);
  outlined consume of Text.Storage(v19, v51, v47);

  return result;
}

uint64_t key path getter for EnvironmentValues.listRowSpacing : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x20F308ED0]();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.listSectionSpacing : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18ListSectionSpacingVSgMd, &_s7SwiftUI18ListSectionSpacingVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of ListSectionSpacing?(a1, &v6 - v3, &_s7SwiftUI18ListSectionSpacingVSgMd, &_s7SwiftUI18ListSectionSpacingVSgMR);
  return MEMORY[0x20F309050](v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_MR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset( &lazy protocol witness table cache variable for type List<Never, TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingMod,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMR,  MEMORY[0x277CDE5A0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMR, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter()
{
  result = lazy protocol witness table cache variable for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter;
  if (!lazy protocol witness table cache variable for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore0G23ConfigurationDataSourceCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGMR);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationsUpcomingViewiOS(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for ManagedConfigurationsUpcomingViewiOS(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGSgtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGAOyAA0mi10BackgroundjO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA6ButtonVy07WorkoutB00G16ConfigurationRowVGSgGAA21_TraitWritingModifierVyAA04Listi6InsetsJ3KeyVGGMR);
    lazy protocol witness table accessor for type Group<Button<WorkoutConfigurationRow>?> and conformance <A> Group<A>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<Button<WorkoutConfigurationRow>?> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<Button<WorkoutConfigurationRow>?> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<Button<WorkoutConfigurationRow>?> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA6ButtonVy07WorkoutB00E16ConfigurationRowVGSgGMd, &_s7SwiftUI5GroupVyAA6ButtonVy07WorkoutB00E16ConfigurationRowVGSgGMR);
    lazy protocol witness table accessor for type Button<WorkoutConfigurationRow>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<Button<WorkoutConfigurationRow>?> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Button<WorkoutConfigurationRow>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMd, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGSgMR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMd, &_s7SwiftUI6ButtonVy07WorkoutB00D16ConfigurationRowVGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<WorkoutConfigurationRow>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAGtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_67()
{

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAGtGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter;

  return closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of ListSectionSpacing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Void __swiftcall MockExternalSeymourSessionStatusProvider.updateStatus()()
{
  v1 = [*(v0 + 16) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMd, &_s9WorkoutUI36ExternalSeymourSessionStatusObserver_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x20F30C990](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 statusDidChangeWith_];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

uint64_t MockExternalSeymourSessionStatusProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VerticalOscillationMetricView.init(metricType:verticalOscillation:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t VerticalOscillationMetricView.metricDescription.getter()
{
  if (*v0 == 28)
  {
    v1 = "CURRENT_VERTICAL_OSCILLATION_DESCRIPTION";
  }

  else
  {
    if (*v0 != 29)
    {
      return 0xD000000000000012;
    }

    v1 = "AVERAGE_VERTICAL_OSCILLATION_DESCRIPTION";
  }

  v2 = v1 - 32;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v9._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = (v2 | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD000000000000028;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t VerticalOscillationMetricView.valueString.getter(double a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  if (*(v1 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v22._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x4E5F43495254454DLL;
    v15._object = 0xEE0045554C41564FLL;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v22)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v21[0] = *(v1 + 8) * 100.0;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v5, v7);
    (*(v3 + 8))(v5, v2);
    v20 = *(v8 + 8);
    v20(v10, v7);
    _sSaySSGSayxGSKsWlTm_3(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v20(v13, v7);
    return *&v21[1];
  }
}

uint64_t VerticalOscillationMetricView.accessibilityLabel.getter()
{
  v1 = 0xEB00000000656C62;
  v2 = 0xD000000000000016;
  object = 0x617A696C61636F4CLL;
  if ((*(v0 + 16) & 1) == 0)
  {
    v10 = *(v0 + 24);
    v11 = *(v0 + 8);
    v42 = *v0;
    v12 = v42;
    v43 = v11;
    v44 = 0;
    v45 = v10;
    VerticalOscillationMetricView.metricDescription.getter();
    v41[0] = 10;
    v41[1] = 0xE100000000000000;
    v40[0] = 32;
    v40[1] = 0xE100000000000000;
    v13 = lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v41, v40, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v14, MEMORY[0x277D837D0], v13, v13, v13);
    v2 = v16;

    v42 = v12;
    v43 = v11;
    v44 = 0;
    v45 = v10;
    v35 = VerticalOscillationMetricView.valueString.getter(v17);
    v36 = v18;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    v4 = v34;
    swift_beginAccess();
    v19 = WorkoutUIBundle.super.isa;
    v47._object = 0xE000000000000000;
    v20._object = 0x800000020CB9F780;
    v20._countAndFlagsBits = 0xD000000000000016;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v47);
    object = v23._object;

    v24 = 0;
    v37 = v23;
    v38 = v15;
    v39 = v2;
    v1 = MEMORY[0x277D84F90];
LABEL_7:
    if (v24 <= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v24;
    }

    v26 = v25 + 1;
    v27 = 16 * v24 + 40;
    while (1)
    {
      if (v24 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        swift_arrayDestroy();
        v42 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        _sSaySSGSayxGSKsWlTm_3(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

        return countAndFlagsBits;
      }

      if (v26 == ++v24)
      {
        break;
      }

      v28 = v27 + 16;
      v29 = *&v34[v27];
      v27 += 16;
      if (v29)
      {
        v2 = *&v34[v28 - 24];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
        }

        v31 = *(v1 + 2);
        v30 = *(v1 + 3);
        object = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v1);
        }

        *(v1 + 2) = object;
        v32 = &v1[16 * v31];
        *(v32 + 4) = v2;
        *(v32 + 5) = v29;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v4 = "CENTIMETER_ABBREVIATED";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_22:
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v46._object = 0xE000000000000000;
  v6._countAndFlagsBits = v2 + 9;
  v6._object = (v4 | 0x8000000000000000);
  v7.value._countAndFlagsBits = object;
  v7.value._object = v1;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v46)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t VerticalOscillationMetricView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 16);
  v5 = VerticalOscillationMetricView.valueString.getter(a2);
  v19 = v6;
  v20 = v5;
  if (v4)
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = WorkoutUIBundle.super.isa;
    v21._object = 0xE000000000000000;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x800000020CB9F780;
    v11._countAndFlagsBits = 0xD000000000000016;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v21);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  v14 = VerticalOscillationMetricView.metricDescription.getter();
  v16 = v15;
  result = VerticalOscillationMetricView.accessibilityLabel.getter();
  *a1 = v20;
  *(a1 + 8) = v19;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = object;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0;
  *(a1 + 56) = result;
  *(a1 + 64) = v18;
  return result;
}

uint64_t getEnumTagSinglePayload for VerticalOscillationMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for VerticalOscillationMetricView(uint64_t result, int a2, int a3)
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

uint64_t _sSaySSGSayxGSKsWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t HeartRateAggregateMetricView.init(label:heartRate:isStale:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = type metadata accessor for HeartRateAggregateMetricView(0);
  v12 = *(v11 + 28);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + *(v11 + 32);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *a5 = v10;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t type metadata accessor for HeartRateAggregateMetricView(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeartRateAggregateMetricView;
  if (!type metadata singleton initialization cache for HeartRateAggregateMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int HeartRateAggregateMetricView.Label.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

uint64_t HeartRateAggregateMetricView.redactionReasons.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HeartRateAggregateMetricView(0);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>(v1 + *(v10 + 28), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for RedactionReasons();
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateAggregateMetricView.Label()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateAggregateMetricView.Label(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t HeartRateAggregateMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0VyAA6HStackVyAOyAgAE16privacySensitiveyQrSbFQOyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ATyATyATyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0W0VSgGGA3_y12CoreGraphics7CGFloatVGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA0J18AttachmentModifierVGtGG_ATyAvW0u4UnitW0VGtGG_Qo_AW0uS0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleF0VyAA6HStackVyAOyAgAE16privacySensitiveyQrSbFQOyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ATyATyATyATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0W0VSgGGA3_y12CoreGraphics7CGFloatVGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA0J18AttachmentModifierVGtGG_ATyAvW0u4UnitW0VGtGG_Qo_AW0uS0V_GMR);
  MEMORY[0x28223BE20](v52);
  v3 = (&v46 - v2);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR);
  MEMORY[0x28223BE20](v51);
  v8 = &v46 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA6HStackVyAKyAcAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__APyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0U0VSgGGA_y12CoreGraphics7CGFloatVGGAA016_ForegroundStyleZ0VyAA5ColorVGGAA0g10AttachmentZ0VGtGG_APyArS0s4UnitU0VGtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleC0VyAA6HStackVyAKyAcAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__APyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0U0VSgGGA_y12CoreGraphics7CGFloatVGGAA016_ForegroundStyleZ0VyAA5ColorVGGAA0g10AttachmentZ0VGtGG_APyArS0s4UnitU0VGtGG_Qo_MR);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v46 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for HeartRateAggregateMetricView(0) + 32);
  v16 = *v14;
  if (*(v14 + 8) == 1)
  {
    if (*v14 == 10)
    {
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v46 = v8;
    v18 = v10;
    v19 = v3;
    v20 = v6;
    v21 = v11;
    v22 = v17;
    os_log(_:dso:log:_:_:)();

    v11 = v21;
    v6 = v20;
    v3 = v19;
    v10 = v18;
    v8 = v46;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v16, 0);
    (*(v11 + 8))(v13, v10);
    if (v57 == 10)
    {
      goto LABEL_11;
    }
  }

  v23 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v23, 0);
    (*(v11 + 8))(v13, v10);
    if (v57 != 11)
    {
      goto LABEL_7;
    }

LABEL_11:
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA0D0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__APyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0R0VSgGGA_y12CoreGraphics7CGFloatVGGAA016_ForegroundStyleW0VyAA5ColorVGGAA023AccessibilityAttachmentW0VGtGG_APyArS0p4UnitR0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA0D0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__APyAPyAPyAPyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0R0VSgGGA_y12CoreGraphics7CGFloatVGGAA016_ForegroundStyleW0VyAA5ColorVGGAA023AccessibilityAttachmentW0VGtGG_APyArS0p4UnitR0VGtGGMR);
    closure #1 in HeartRateAggregateMetricView.body.getter(&v8[*(v40 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    v41 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR, MEMORY[0x277CE1198]);
    v42 = v47;
    v43 = v51;
    View.accessibilityElement(children:)();
    (*(v48 + 8))(v6, v49);
    outlined destroy of VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>>(v8, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR);
    v44 = v50;
    v45 = v53;
    (*(v50 + 16))(v3, v42, v53);
    swift_storeEnumTagMultiPayload();
    v57 = v43;
    v58 = v41;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    _ConditionalContent<>.init(storage:)();
    return (*(v44 + 8))(v42, v45);
  }

  if (*v14 == 11)
  {
    goto LABEL_11;
  }

LABEL_7:
  v24 = HeartRateAggregateMetricView.value.getter(v15);
  v26 = v25;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = WorkoutUIBundle.super.isa;
  v59._object = 0xE000000000000000;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._object = 0x800000020CB94620;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v28, v27, v30, v59);

  v32 = HeartRateAggregateMetricView.description.getter();
  v34 = v33;
  v35 = HeartRateAggregateMetricView.accessibilityLabel.getter();
  v3->_countAndFlagsBits = v24;
  v3->_object = v26;
  v3[1] = v31;
  v3[2]._countAndFlagsBits = v32;
  v3[2]._object = v34;
  LOWORD(v3[3]._countAndFlagsBits) = 0;
  v3[3]._object = v35;
  v3[4]._countAndFlagsBits = v36;
  swift_storeEnumTagMultiPayload();
  v37 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR, MEMORY[0x277CE1198]);
  v55 = v51;
  v56 = v37;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MetricText and conformance MetricText();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t closure #1 in HeartRateAggregateMetricView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  *v8 = static VerticalAlignment.firstTextBaseline.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ANyANyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0Q0VSgGGAYy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleV0VyAA5ColorVGGAA023AccessibilityAttachmentV0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ANyANyANyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0Q0VSgGGAYy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleV0VyAA5ColorVGGAA023AccessibilityAttachmentV0VGtGGMR);
  closure #1 in closure #1 in HeartRateAggregateMetricView.body.getter(&v8[*(v9 + 44)]);
  v23[2] = HeartRateAggregateMetricView.description.getter();
  v23[3] = v10;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.localizedUppercase.getter();
  v13 = v12;

  v23[0] = v11;
  v23[1] = v13;
  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  sub_20C690AC8(v8, v5);
  sub_20C690AC8(v5, a2);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGG_AJyAlM0l4UnitN0VGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGG_AJyAlM0l4UnitN0VGtMR) + 48);
  *v21 = v14;
  *(v21 + 8) = v16;
  *(v21 + 16) = v13 & 1;
  *(v21 + 24) = v19;
  *(v21 + 32) = KeyPath;
  *(v21 + 40) = 0;
  outlined copy of Text.Storage(v14, v16, v13 & 1);

  outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
  outlined destroy of VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>>(v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMR);
  outlined consume of Text.Storage(v14, v16, v13 & 1);

  outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
  return outlined destroy of VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>>(v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMR);
}

uint64_t closure #1 in closure #1 in HeartRateAggregateMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v54 = type metadata accessor for Font.PrivateDesign();
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - v7;
  v8 = type metadata accessor for RedactionReasons();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo_MR);
  v15 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v53 - v18;
  HeartRateAggregateMetricView.redactionReasons.getter(v14);
  static RedactionReasons.privacy.getter();
  lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons();
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v20(v14, v8);
  if (v19)
  {
    v22 = 0xE300000000000000;
    v23 = 2960685;
  }

  else
  {
    v23 = HeartRateAggregateMetricView.value.getter(v21);
  }

  *&v66[0] = v23;
  *(&v66[0] + 1) = v22;
  v53 = lazy protocol witness table accessor for type String and conformance String();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  KeyPath = swift_getKeyPath();
  v69 = v28 & 1;
  v68 = 0;
  *&v62 = v24;
  *(&v62 + 1) = v26;
  LOBYTE(v63) = v28 & 1;
  *(&v63 + 1) = v30;
  LOWORD(v64) = 256;
  *(&v64 + 1) = KeyPath;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, MetricValueFont> and conformance <> ModifiedContent<A, B>();
  View.privacySensitive(_:)();
  v66[0] = v62;
  v66[1] = v63;
  v66[2] = v64;
  v67 = v65;
  outlined destroy of ModifiedContent<Text, MetricValueFont>(v66, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVGMR);
  v32 = Image.init(systemName:)();
  specialized static LayoutUtilities.layoutMetric(regular42:)(16.0);
  static Font.Weight.semibold.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v33 = static Font.system(size:weight:design:)();
  (*(v1 + 8))(v3, v54);
  v34 = swift_getKeyPath();
  if (one-time initialization token for scaleFactorForEnclosedText != -1)
  {
    swift_once();
  }

  v35 = static MetricUnitFont.scaleFactorForEnclosedText;
  v36 = swift_getKeyPath();
  v37 = static Color.red.getter();
  *&v62 = v32;
  *(&v62 + 1) = v34;
  *&v63 = v33;
  *(&v63 + 1) = v36;
  *&v64 = v35;
  *(&v64 + 1) = v37;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = WorkoutUIBundle.super.isa;
  v70._object = 0xE000000000000000;
  v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v39.value._object = 0xEB00000000656C62;
  v40._object = 0x800000020CB94620;
  v40._countAndFlagsBits = 0xD00000000000001CLL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v70);

  v61 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v43 = v55;
  View.accessibilityLabel<A>(_:)();

  v44 = *(v15 + 16);
  v45 = v56;
  v46 = v60;
  v47 = v57;
  v44(v56, v60, v57);
  v48 = v58;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>(v43, v58, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  v49 = v59;
  v44(v59, v45, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AFyAFyAFyAFyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0L0VSgGGAQy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA023AccessibilityAttachmentQ0VGtMd, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AFyAFyAFyAFyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0L0VSgGGAQy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA023AccessibilityAttachmentQ0VGtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>(v48, v49 + *(v50 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  outlined destroy of ModifiedContent<Text, MetricValueFont>(v43, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  v51 = *(v15 + 8);
  v51(v46, v47);
  outlined destroy of ModifiedContent<Text, MetricValueFont>(v48, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  return (v51)(v45, v47);
}

uint64_t HeartRateAggregateMetricView.value.getter(double a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  if (*(v1 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = WorkoutUIBundle.super.isa;
    v33._object = 0xE000000000000000;
    v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v20.value._object = 0xEB00000000656C62;
    v21._object = 0x800000020CB9A400;
    v21._countAndFlagsBits = 0xD000000000000011;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v33)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v31 = *(v1 + 8);
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    (*(v5 + 104))(v7, *MEMORY[0x277D84688], v4);
    MEMORY[0x20F3024B0](v7, 0, 1, v9);
    (*(v5 + 8))(v7, v4);
    v25 = *(v10 + 8);
    v25(v12, v9);
    v26 = v28;
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v26, v9);
    (*(v29 + 8))(v26, v30);
    v25(v15, v9);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v25(v18, v9);
    return v32;
  }
}

uint64_t HeartRateAggregateMetricView.description.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0)
  {
    v5 = &v0[*(type metadata accessor for HeartRateAggregateMetricView(0) + 32)];
    v6 = *v5;
    if (v5[8] == 1)
    {
      v30 = *v5;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v6, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v6) = v30;
    }

    if (v6 > 7u)
    {
LABEL_36:
      v22 = "HEART_RATE_MAXIMUM_DESCRIPTION";
LABEL_38:
      v23 = v22 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v28 = 0xE000000000000000;
      v13 = 0x617A696C61636F4CLL;
      v14 = 0xEB00000000656C62;
      v16 = v23 | 0x8000000000000000;
      v15 = 0xD00000000000001ELL;
      goto LABEL_41;
    }

    if (((1 << v6) & 0x18) == 0)
    {
      if (((1 << v6) & 0x60) == 0)
      {
        if (((1 << v6) & 0x84) != 0)
        {
          v10 = "HEART_RATE_MAXIMUM_DESCRIPTION_FULL";
LABEL_33:
          v21 = v10 - 32;
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v12 = WorkoutUIBundle.super.isa;
          v28 = 0xE000000000000000;
          v13 = 0x617A696C61636F4CLL;
          v14 = 0xEB00000000656C62;
          v15 = 0xD000000000000023;
          v16 = v21 | 0x8000000000000000;
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      v18 = "HEART_RATE_MAXIMUM_DESCRIPTION_ONE_LINE";
      goto LABEL_28;
    }

    v17 = "HEART_RATE_MAXIMUM_DESCRIPTION_ONE_LINE_FULL";
    goto LABEL_24;
  }

  v7 = &v0[*(type metadata accessor for HeartRateAggregateMetricView(0) + 32)];
  v8 = *v7;
  if (v7[8] == 1)
  {
    v30 = *v7;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v8, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v8) = v30;
  }

  if (v8 <= 4u)
  {
    if (v8 - 3 < 2)
    {
      v17 = "HEART_RATE_AVERAGE_DESCRIPTION_ONE_LINE_FULL";
LABEL_24:
      v19 = v17 - 32;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = WorkoutUIBundle.super.isa;
      v28 = 0xE000000000000000;
      v13 = 0x617A696C61636F4CLL;
      v14 = 0xEB00000000656C62;
      v15 = 0xD00000000000002CLL;
      v16 = v19 | 0x8000000000000000;
      goto LABEL_41;
    }

    if (v8 != 2)
    {
LABEL_37:
      v22 = "HEART_RATE_AVERAGE_DESCRIPTION";
      goto LABEL_38;
    }

LABEL_32:
    v10 = "HEART_RATE_AVERAGE_DESCRIPTION_FULL";
    goto LABEL_33;
  }

  if (v8 - 5 < 2)
  {
    v18 = "HEART_RATE_AVERAGE_DESCRIPTION_ONE_LINE";
LABEL_28:
    v20 = v18 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v28 = 0xE000000000000000;
    v13 = 0x617A696C61636F4CLL;
    v14 = 0xEB00000000656C62;
    v15 = 0xD000000000000027;
    v16 = v20 | 0x8000000000000000;
    goto LABEL_41;
  }

  if (v8 == 7)
  {
    goto LABEL_32;
  }

  if (v8 != 10)
  {
    goto LABEL_37;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v28 = 0xE000000000000000;
  v13 = 0x617A696C61636F4CLL;
  v14 = 0xEB00000000656C62;
  v15 = 0xD000000000000024;
  v16 = 0x800000020CB9F8F0;
LABEL_41:
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, *&v13, v12, v24, *(&v28 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t HeartRateAggregateMetricView.accessibilityLabel.getter()
{
  if (*(v0 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v24._object = 0xE000000000000000;
    v2._object = 0x800000020CB9A390;
    v2._countAndFlagsBits = 0xD000000000000015;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v24)._countAndFlagsBits;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = WorkoutUIBundle.super.isa;
    v25._object = 0xE000000000000000;
    v7._countAndFlagsBits = 0xD00000000000001CLL;
    v7._object = 0x800000020CB94620;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v25);

    v22 = HeartRateAggregateMetricView.description.getter();
    v23 = v11;
    v21[0] = 10;
    v21[1] = 0xE100000000000000;
    v20[0] = 32;
    v20[1] = 0xE100000000000000;
    v12 = lazy protocol witness table accessor for type String and conformance String();
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v21, v20, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v13, MEMORY[0x277D837D0], v12, v12, v12);
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CB5EA80;
    *(v17 + 32) = HeartRateAggregateMetricView.value.getter(COERCE_DOUBLE(3));
    *(v17 + 40) = v18;
    *(v17 + 48) = v10;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
  }

  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type HeartRateAggregateMetricView.Label and conformance HeartRateAggregateMetricView.Label()
{
  result = lazy protocol witness table cache variable for type HeartRateAggregateMetricView.Label and conformance HeartRateAggregateMetricView.Label;
  if (!lazy protocol witness table cache variable for type HeartRateAggregateMetricView.Label and conformance HeartRateAggregateMetricView.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateAggregateMetricView.Label and conformance HeartRateAggregateMetricView.Label);
  }

  return result;
}

void type metadata completion function for HeartRateAggregateMetricView(uint64_t a1)
{
  _sSdSgMaTm_3(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<RedactionReasons>(319);
    if (v2 <= 0x3F)
    {
      _sSdSgMaTm_3(319, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>, &type metadata for WorkoutViewStyle, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void _sSdSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for HeartRateAggregateMetricView.Label(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateAggregateMetricView.Label(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, MetricText> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, MetricText> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, MetricText> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA6HStackVyAMyAeAE16privacySensitiveyQrSbFQOyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ARyARyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0V0VSgGGA1_y12CoreGraphics7CGFloatVGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA0I18AttachmentModifierVGtGG_ARyAtU0t4UnitV0VGtGG_Qo_AU0tR0VGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA6HStackVyAMyAeAE16privacySensitiveyQrSbFQOyAA08ModifiedD0VyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ARyARyARyARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0V0VSgGGA1_y12CoreGraphics7CGFloatVGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA0I18AttachmentModifierVGtGG_ARyAtU0t4UnitV0VGtGG_Qo_AU0tR0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__ALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0O0VSgGGAWy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGtGG_ALyAnO0m4UnitO0VGtGGMR, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type MetricText and conformance MetricText();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.accessibilityElement(children:)>>.0, MetricText> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons()
{
  result = lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons;
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    type metadata accessor for RedactionReasons();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Text, MetricValueFont>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(<<opaque return type of View.privacySensitive(_:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<CGFloat>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>)>>, ModifiedContent<Text, MetricUnitFont>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for AlertMultipleConfigurationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for AlertMultipleConfigurationView;
  if (!type metadata singleton initialization cache for AlertMultipleConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AlertMultipleConfigurationView(uint64_t a1)
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_7(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  if (v1 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_7(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKActivityMoveMode(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AlertConfigurationStateManaging();
        if (v4 <= 0x3F)
        {
          type metadata accessor for AlertConfigurationSessionContext();
          if (v5 <= 0x3F)
          {
            type metadata accessor for AlertConfigurationContext();
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_7(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t type metadata accessor for AlertConfigurationStateManaging()
{
  result = lazy cache variable for type metadata for AlertConfigurationStateManaging;
  if (!lazy cache variable for type metadata for AlertConfigurationStateManaging)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AlertConfigurationStateManaging);
  }

  return result;
}

uint64_t AlertMultipleConfigurationView.footerText.getter()
{
  v1 = type metadata accessor for AlertConfigurationSessionContext();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  if ([*v0 isPartOfMultiSport])
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v32 = 0xE000000000000000;
    v8 = 0xD00000000000002ELL;
    v9 = 0x800000020CB9FA10;
LABEL_15:
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, v17, v7, v18, *(&v32 - 1));

    v20 = [v6 effectiveTypeIdentifier];
    v21 = [v6 swimmingLocationType];
    v22 = [v6 isIndoor];
    v23 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
    v24 = MEMORY[0x20F30D330](v20, v21, v22, 0, v23);

    if (v24)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20CB5DA70;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (!v27)
    {
      v29 = [v6 localizedName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v30;
    }

    *(v28 + 32) = v25;
    *(v28 + 40) = v27;
    countAndFlagsBits = String.init(format:_:)();

    return countAndFlagsBits;
  }

  v10 = type metadata accessor for AlertMultipleConfigurationView(0);
  (*(v2 + 16))(v5, v0 + *(v10 + 32), v1);
  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x277D7E688])
  {
    (*(v2 + 8))(v5, v1);
LABEL_12:
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v32 = 0xE000000000000000;
    v9 = 0x800000020CB9F9B0;
    v8 = 0xD000000000000023;
    goto LABEL_15;
  }

  (*(v2 + 96))(v5, v1);
  v11 = *v5;
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v34._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x800000020CB9F9E0;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v34)._countAndFlagsBits;

  return countAndFlagsBits;
}

void closure #1 in AlertMultipleConfigurationView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for AlertMultipleConfigurationView(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA15ModifiedContentVyAA14NavigationLinkVyAD0K9LabelViewVAA4ListVys5NeverOAIyAA012_ConditionalJ0VyASyASyAA05TupleN0VyAD011AlertsEntryN0V_AUyAD05PacerstN0VSg_AD04RacestN0VSgtGSgtGAD013HeartRateZonetN0VGASyA2WGGASyASyAD010TimeSplitsN0VSgAD014DistanceSplitsN0VSgGASyAD05TracktN0VSgAD010PowerZonestN0VSgGGGAD08NillableK5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGMd, &_s7SwiftUI7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAfA15ModifiedContentVyAA14NavigationLinkVyAD0K9LabelViewVAA4ListVys5NeverOAIyAA012_ConditionalJ0VyASyASyAA05TupleN0VyAD011AlertsEntryN0V_AUyAD05PacerstN0VSg_AD04RacestN0VSgtGSgtGAD013HeartRateZonetN0VGASyA2WGGASyASyAD010TimeSplitsN0VSgAD014DistanceSplitsN0VSgGASyAD05TracktN0VSgAD010PowerZonestN0VSgGGGAD08NillableK5TitleVGGGAA31AccessibilityAttachmentModifierVGSgGMR);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAlA08ModifiedD0VyAA14NavigationLinkVyAJ0o5LabelG0VAA4ListVys5NeverOAOyACyACyACyAA05TupleG0VyAJ011AlertsEntryG0V_AYyAJ05PaceruvG0VSg_AJ04RaceuvG0VSgtGSgtGAJ013HeartRateZonevG0VGACyA_A_GGACyACyAJ010TimeSplitsG0VSgAJ014DistanceSplitsG0VSgGACyAJ05TrackvG0VSgAJ010PowerZonesvG0VSgGGGAJ08NillableO5TitleVGGGAA31AccessibilityAttachmentModifierVGSgG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA7ForEachVySay07WorkoutB022AlertConfigurationTypeOGAlA08ModifiedD0VyAA14NavigationLinkVyAJ0o5LabelG0VAA4ListVys5NeverOAOyACyACyACyAA05TupleG0VyAJ011AlertsEntryG0V_AYyAJ05PaceruvG0VSg_AJ04RaceuvG0VSgtGSgtGAJ013HeartRateZonevG0VGACyA_A_GGACyACyAJ010TimeSplitsG0VSgAJ014DistanceSplitsG0VSgGACyAJ05TrackvG0VSgAJ010PowerZonesvG0VSgGGGAJ08NillableO5TitleVGGGAA31AccessibilityAttachmentModifierVGSgG_GMR);
  MEMORY[0x28223BE20](v28);
  v9 = &v26 - v8;
  v10 = type metadata accessor for AlertConfigurationSessionContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1 + *(v3 + 32), v10, v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277D7E688])
  {
    (*(v11 + 96))(v14, v10);
    v15 = *v14;
    type metadata accessor for IntervalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>();
      _ConditionalContent<>.init(storage:)();

      return;
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  v16 = __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
  v18 = v16[3];
  v17 = v16[4];
  v19 = v16[1];
  v32[2] = v16[2];
  v32[3] = v18;
  v32[4] = v17;
  v32[0] = *v16;
  v32[1] = v19;
  MEMORY[0x28223BE20](v16);
  v24 = v32;
  v25 = v20;
  v31 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AlertConfigurationView.orderedSupportedConfigurationTypes(with:), (&v26 - 4), &outlined read-only object #0 of static AlertConfigurationType.allCases.getter);
  outlined init with copy of AlertConfigurationView(v32, v30);

  specialized MutableCollection<>.sort(by:)(&v31, v32);
  outlined destroy of AlertConfigurationView(v32);

  v30[0] = v31;
  swift_getKeyPath();
  outlined init with copy of AlertMultipleConfigurationView(a1, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  outlined init with take of AlertMultipleConfigurationView(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI22AlertConfigurationTypeOGMd, &_sSay9WorkoutUI22AlertConfigurationTypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGSgMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGSgMR);
  lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type [AlertConfigurationType] and conformance [A], &_sSay9WorkoutUI22AlertConfigurationTypeOGMd, &_sSay9WorkoutUI22AlertConfigurationTypeOGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type AlertConfigurationType and conformance AlertConfigurationType();
  v24 = lazy protocol witness table accessor for type ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>? and conformance <A> A?();
  ForEach<>.init(_:id:content:)();
  v23 = v27;
  (*(v27 + 16))(v9, v7, v5);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ForEach<[AlertConfigurationType], AlertConfigurationType, ModifiedContent<NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>>, AccessibilityAttachmentModifier>?> and conformance <> ForEach<A, B, C>();
  _ConditionalContent<>.init(storage:)();
  (*(v23 + 8))(v7, v5);
}

uint64_t closure #1 in closure #1 in AlertMultipleConfigurationView.body.getter@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalF0VyAIyAIyAA9TupleViewVy07WorkoutB0011AlertsEntryI0V_AKyAL05PacerklI0VSg_AL04RaceklI0VSgtGSgtGAL013HeartRateZonelI0VGAIyA2NGGAIyAIyAL010TimeSplitsI0VSgAL08DistancesI0VSgGAIyAL05TracklI0VSgAL010PowerZoneslI0VSgGGGAL23NillableNavigationTitleVGGMd, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalF0VyAIyAIyAA9TupleViewVy07WorkoutB0011AlertsEntryI0V_AKyAL05PacerklI0VSg_AL04RaceklI0VSgtGSgtGAL013HeartRateZonelI0VGAIyA2NGGAIyAIyAL010TimeSplitsI0VSgAL08DistancesI0VSgGAIyAL05TracklI0VSgAL010PowerZoneslI0VSgGGGAL23NillableNavigationTitleVGGMR);
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMd, &_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
  v12 = type metadata accessor for AlertMultipleConfigurationView(0);
  if (AlertConfigurationView.configurationTypeIsSupported(_:configurationContext:)(v11, a2 + *(v12 + 36)) && (outlined init with copy of AlertConfigurationStateManaging(a2 + 24, v27), __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI31AlertConfigurationStateManaging_pMd, &_s9WorkoutUI31AlertConfigurationStateManaging_pMR), v13 = swift_dynamicCast(), (v13 & 1) != 0))
  {
    v20 = v8;
    v21 = a3;
    v19 = &v19;
    v28[1] = v23;
    v28[2] = v24;
    v28[3] = v25;
    v28[4] = v26;
    v28[0] = v22;
    MEMORY[0x28223BE20](v13);
    *(&v19 - 16) = v11;
    *(&v19 - 1) = a2;
    MEMORY[0x28223BE20](v14);
    *(&v19 - 4) = v28;
    *(&v19 - 24) = v11;
    *(&v19 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAEyAA9TupleViewVy07WorkoutB0011AlertsEntryG0V_AGyAH05PacerijG0VSg_AH04RaceijG0VSgtGSgtGAH013HeartRateZonejG0VGAEyA2JGGAEyAEyAH010TimeSplitsG0VSgAH08DistanceqG0VSgGAEyAH05TrackjG0VSgAH010PowerZonesjG0VSgGGGAH23NillableNavigationTitleVGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle> and conformance <> ModifiedContent<A, B>();
    List<>.init(content:)();
    lazy protocol witness table accessor for type NavigationLabelView and conformance NavigationLabelView();
    lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalF0VyAIyAIyAA9TupleViewVy07WorkoutB0011AlertsEntryI0V_AKyAL05PacerklI0VSg_AL04RaceklI0VSgtGSgtGAL013HeartRateZonelI0VGAIyA2NGGAIyAIyAL010TimeSplitsI0VSgAL08DistancesI0VSgGAIyAL05TracklI0VSgAL010PowerZoneslI0VSgGGGAL23NillableNavigationTitleVGGMd, &_s7SwiftUI4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalF0VyAIyAIyAA9TupleViewVy07WorkoutB0011AlertsEntryI0V_AKyAL05PacerklI0VSg_AL04RaceklI0VSgtGSgtGAL013HeartRateZonelI0VGAIyA2NGGAIyAIyAL010TimeSplitsI0VSgAL08DistancesI0VSgGAIyAL05TracklI0VSgAL010PowerZoneslI0VSgGGGAL23NillableNavigationTitleVGGMR, MEMORY[0x277CDE5A0]);
    NavigationLink.init(destination:label:)();
    lazy protocol witness table accessor for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<NavigationLabelView, List<Never, ModifiedContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<TupleView<(AlertsEntryView, TupleView<(PacerAlertsEntryView?, RaceAlertsEntryView?)>?)>, HeartRateZoneEntryView>, _ConditionalContent<AlertsEntryView, AlertsEntryView>>, _ConditionalContent<_ConditionalContent<TimeSplitsView?, DistanceSplitsView?>, _ConditionalContent<TrackEntryView?, PowerZonesEntryView?>>>, NillableNavigationTitle>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMd, &_s7SwiftUI14NavigationLinkVy07WorkoutB00C9LabelViewVAA4ListVys5NeverOAA15ModifiedContentVyAA012_ConditionalK0VyANyANyAA05TupleG0VyAD011AlertsEntryG0V_APyAD05PacernoG0VSg_AD04RacenoG0VSgtGSgtGAD013HeartRateZoneoG0VGANyA2RGGANyANyAD010TimeSplitsG0VSgAD08DistancevG0VSgGANyAD05TrackoG0VSgAD010PowerZonesoG0VSgGGGAD08NillableC5TitleVGGGMR, MEMORY[0x277CDD938]);
    v15 = v21;
    View.accessibilityIdentifier(_:)();
    outlined destroy of AlertConfigurationView(v28);

    (*(v20 + 8))(v10, v7);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMR);
    return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVy07WorkoutB00E9LabelViewVAA4ListVys5NeverOACyAA012_ConditionalD0VyANyANyAA05TupleI0VyAF011AlertsEntryI0V_APyAF05PacernoI0VSg_AF04RacenoI0VSgtGSgtGAF013HeartRateZoneoI0VGANyA2RGGANyANyAF010TimeSplitsI0VSgAF08DistancevI0VSgGANyAF05TrackoI0VSgAF010PowerZonesoI0VSgGGGAF08NillableE5TitleVGGGAA31AccessibilityAttachmentModifierVGMR);
    return (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }
}