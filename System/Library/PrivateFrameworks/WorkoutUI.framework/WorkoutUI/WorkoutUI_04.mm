unint64_t lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView()
{
  result = lazy protocol witness table cache variable for type AlertsPickerView and conformance AlertsPickerView;
  if (!lazy protocol witness table cache variable for type AlertsPickerView and conformance AlertsPickerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertsPickerView and conformance AlertsPickerView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of TargetZone.ZoneType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextV_ANtGGAFGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleH0VyAA4TextV_ANtGGAFGGMR);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0012AlertsPickerG0VGMd, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0012AlertsPickerG0VGMR, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AlertsPickerView, NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void *one-time initialization function for shared()
{
  type metadata accessor for MetricPlatterAnalytics();
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  v1 = MEMORY[0x277D84F98];
  result[4] = 0;
  result[5] = v1;
  static MetricPlatterAnalytics.shared = result;
  return result;
}

Swift::Void __swiftcall MetricPlatterAnalytics.record(metricPlatterType:elapsedTime:)(Swift::String_optional metricPlatterType, Swift::Double elapsedTime)
{
  v5 = *(v2 + 24);
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = *(v2 + 32);
  v7 = elapsedTime - v6;
  if (elapsedTime - v6 < 0.0)
  {
    goto LABEL_3;
  }

  v9 = *(v2 + 16);
  if ((~*&v7 & 0x7FF0000000000000) == 0)
  {
    if (v7 <= 0.0 || (COERCE_UNSIGNED_INT64(elapsedTime - v6) & 0xFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    countAndFlagsBits = metricPlatterType.value._countAndFlagsBits;
    object = metricPlatterType.value._object;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 40);
    v14 = v24;
    *(v2 + 40) = 0x8000000000000000;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v5);
    v17 = v24[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      v3 = v16;
      if (v24[3] < v20)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
        v14 = v24;
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v5);
        if ((v3 & 1) == (v21 & 1))
        {
          goto LABEL_18;
        }

        v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        *(v2 + 40) = v14;
        if (v3)
        {
LABEL_20:
          *(v14[7] + 8 * v15) = v7 + *(v14[7] + 8 * v15);
          swift_endAccess();

          v8 = specialized thunk for @callee_guaranteed () -> (@unowned Double);
          metricPlatterType.value._object = object;
          metricPlatterType.value._countAndFlagsBits = countAndFlagsBits;
          goto LABEL_4;
        }

LABEL_19:
        v22 = v15;
        specialized _NativeDictionary._insert(at:key:value:)(v15, v9, v5, v14, 0.0);

        v15 = v22;
        goto LABEL_20;
      }
    }

    v23 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v23;
    v14 = v24;
    *(v2 + 40) = v24;
    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v7 > 0.0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = 0;
LABEL_4:
  *(v2 + 16) = metricPlatterType;

  *(v2 + 32) = elapsedTime;
  _sxRi_zRi0_zlySdIsegr_SgWOe(v8, 0);
}

uint64_t closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 64) = a4;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:), v8, v7);
}

uint64_t closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:)()
{
  v1 = *(v0 + 64);

  if (v1)
  {
    if (v1 == 2)
    {
      MetricPlatterAnalytics.finalize(with:)();
    }
  }

  else
  {
    v2 = *(v0 + 40);
    v2[2] = 0;
    v2[3] = 0;

    v2[4] = 0;
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v2[5] = v3;
  }

  v4 = *(v0 + 8);

  return v4();
}

id MetricPlatterAnalytics.finalize(with:)()
{
  v0 = type metadata accessor for ConfigurationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.elapsedTimeMetricsPublisher.getter();
  ElapsedTimeMetricsPublisher.elapsedTime.getter();
  v5 = v4;

  MetricPlatterAnalytics.record(metricPlatterType:elapsedTime:)(0, v5);
  MetricsPublisher.workoutStatePublisher.getter();
  v6 = WorkoutStatePublisher.activityType.getter();

  if (v6)
  {
    swift_beginAccess();

    [v6 effectiveTypeIdentifier];
    HKWorkoutActivityType.description.getter();
    v8 = MetricsPublisher.workoutConfigurationType.getter();
    MEMORY[0x20F305840](v8);
    (*(v1 + 8))(v3, v0);
    [v6 isIndoor];
    [v6 swimmingLocationType];
    result = _HKWorkoutSwimmingLocationTypeName();
    if (result)
    {
      v9 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static WKAnalyticsEvent.metricPlatters(_:activityType:configurationType:duration:isIndoor:swimmingLocationType:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t MetricPlatterAnalytics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _sxRi_zRi0_zlySdIsegr_SgWOe(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t one-time initialization function for $showTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_allocate_value_buffer(v0, static TipKitSafetyCheckInRemindersTip.$showTip);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInRemindersTip.$showTip);
  [objc_opt_self() showCheckInRemindersTip];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO15ParameterOptionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO15ParameterOptionVGMR);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t static TipKitSafetyCheckInRemindersTip.$showTip.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TipKitSafetyCheckInRemindersTip.$showTip.setter(uint64_t a1)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TipKitSafetyCheckInRemindersTip.$showTip.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v1, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  return static TipKitSafetyCheckInRemindersTip.$showTip.modify;
}

uint64_t key path getter for static TipKitSafetyCheckInRemindersTip.$showTip : TipKitSafetyCheckInRemindersTip.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t key path setter for static TipKitSafetyCheckInRemindersTip.$showTip : TipKitSafetyCheckInRemindersTip.Type(uint64_t a1)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v3 = __swift_project_value_buffer(v2, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static TipKitSafetyCheckInRemindersTip.showTip.getter()
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v0, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t key path getter for static TipKitSafetyCheckInRemindersTip.showTip : TipKitSafetyCheckInRemindersTip.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v2, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t key path setter for static TipKitSafetyCheckInRemindersTip.showTip : TipKitSafetyCheckInRemindersTip.Type(char *a1)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v1, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t static TipKitSafetyCheckInRemindersTip.showTip.setter(char a1)
{
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v1, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static TipKitSafetyCheckInRemindersTip.showTip.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static TipKitSafetyCheckInRemindersTip.showTip.modify;
}

void static TipKitSafetyCheckInRemindersTip.showTip.modify(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t TipKitSafetyCheckInRemindersTip.title.getter()
{
  v0 = [objc_opt_self() workoutAlwaysPromptBody];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t TipKitSafetyCheckInRemindersTip.actions.getter()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() workoutAlwaysPromptActionTitle];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v12[0] = v5;
  v12[1] = v7;
  lazy protocol witness table accessor for type String and conformance String();
  Tips.Action.init<A>(id:title:perform:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMR);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CB5DA70;
  (*(v1 + 32))(v9 + v8, v3, v0);
  v10 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v9);
  swift_setDeallocating();
  (*(v1 + 8))(v9 + v8, v0);
  swift_deallocClassInstance();
  return v10;
}

uint64_t TipKitSafetyCheckInRemindersTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md, &_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_MR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md, &_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_MR);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307FA0](1, v10);
  v13 = MEMORY[0x277CE1A20];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A20]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t TipKitSafetyCheckInRemindersTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t closure #2 in TipKitSafetyCheckInRemindersTip.rules.getter@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR);
  a2[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR, MEMORY[0x277CC90F0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMR, MEMORY[0x277CC90F8]);
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t protocol witness for Tip.title.getter in conformance TipKitSafetyCheckInRemindersTip()
{
  v0 = [objc_opt_self() workoutAlwaysPromptBody];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t protocol witness for Tip.rules.getter in conformance TipKitSafetyCheckInRemindersTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for $showTip != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static TipKitSafetyCheckInRemindersTip.$showTip);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t protocol witness for Tip.options.getter in conformance TipKitSafetyCheckInRemindersTip()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md, &_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_MR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md, &_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_MR);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x20F307FA0](1, v10);
  v13 = MEMORY[0x277CE1A20];
  MEMORY[0x20F307E70](v7, v4, MEMORY[0x277CE1A20]);
  (*(v5 + 8))(v7, v4);
  v17 = v4;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F307E90](v12, v8, OpaqueTypeConformance2);
  v17 = v8;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TipKitSafetyCheckInRemindersTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip();
  result = MEMORY[0x20F307D70](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v25 = *v2;
  *v11 = static VerticalAlignment.top.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA5ColorVSgGGAA08_PaddingG0VGAA023AccessibilityAttachmentO0VGSg_AKyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA6VStackVyAIyAKyA6_AAE10fontWeightyQrAQ6WeightVSgFQOyAKyAA4TextVSgASG_Qo_AXG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAKyAA0X0VyA16_GA_GGtGG_AA017BorderedProminentxV0VQo_AOyAA08AnyShapeV0VSgGGAA6SpacerVAKyAKyA6_AAEA7_yQrqd__AAA8_Rd__lFQOyA30_yAKyAKyAKyAtOyAA19SymbolRenderingModeVSgGGAA011_ForegroundV9Modifier2VyA2VGGAA16_BlendModeEffectVGG_AA05PlainxV0VQo_AA01_j9ShapeKindO0VyAA6CircleVGGA_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA5ColorVSgGGAA08_PaddingG0VGAA023AccessibilityAttachmentO0VGSg_AKyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA6VStackVyAIyAKyA6_AAE10fontWeightyQrAQ6WeightVSgFQOyAKyAA4TextVSgASG_Qo_AXG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAKyAA0X0VyA16_GA_GGtGG_AA017BorderedProminentxV0VQo_AOyAA08AnyShapeV0VSgGGAA6SpacerVAKyAKyA6_AAEA7_yQrqd__AAA8_Rd__lFQOyA30_yAKyAKyAKyAtOyAA19SymbolRenderingModeVSgGGAA011_ForegroundV9Modifier2VyA2VGGAA16_BlendModeEffectVGG_AA05PlainxV0VQo_AA01_j9ShapeKindO0VyAA6CircleVGGA_GtGGMR);
  closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(a1, v25, &v11[*(v12 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMR, MEMORY[0x277CE1138]);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v5);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMR);
  v13 = static Edge.Set.all.getter();
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GMR) + 36);
  *v14 = v13;
  *(v14 + 8) = xmmword_20CB60700;
  __asm { FMOV            V0.2D, #16.0 }

  *(v14 + 24) = _Q0;
  *(v14 + 40) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GAA017_AppearanceActionR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GAA017_AppearanceActionR0VGMR) + 36));
  *v21 = partial apply for closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:);
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v25;

  return v22;
}

uint64_t closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v92 = a3;
  v82 = type metadata accessor for PlainButtonStyle();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TipViewStyleConfiguration();
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v86 = v7;
  v87 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAWGGAA06_BlendN6EffectVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAWGGAA06_BlendN6EffectVGGMR);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v76 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v97);
  v91 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v76 - v11;
  v12 = type metadata accessor for BorderedProminentButtonStyle();
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMR);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v14);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMR);
  MEMORY[0x28223BE20](v84);
  v98 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v90 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v76 - v24;
  MEMORY[0x28223BE20](v26);
  v99 = &v76 - v27;
  v28 = TipViewStyleConfiguration.image.getter();
  if (v28)
  {
    v29 = v28;
    static Font.Weight.medium.getter();
    v30 = type metadata accessor for Font.Design();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    v77 = static Font.system(size:weight:design:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v20, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    KeyPath = swift_getKeyPath();
    v32 = static Color.accentColor.getter();
    v78 = v5;
    v33 = a1;
    v34 = v32;
    v35 = swift_getKeyPath();
    v36 = v12;
    v37 = v6;
    v38 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v109 = 0;
    *&v101 = v29;
    *(&v101 + 1) = KeyPath;
    *&v102 = v77;
    *(&v102 + 1) = v35;
    *&v103 = v34;
    a1 = v33;
    v5 = v78;
    BYTE8(v103) = v38;
    v6 = v37;
    v12 = v36;
    *&v104 = v39;
    *(&v104 + 1) = v40;
    *&v105 = v41;
    *(&v105 + 1) = v42;
    v106 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
    v107[3] = v104;
    v107[4] = v105;
    v108 = v106;
    v107[0] = v101;
    v107[1] = v102;
    v107[2] = v103;
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v107, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
    (*(*(v43 - 8) + 56))(v25, 0, 1, v43);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGMR);
    (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
  }

  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v25, v99, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  v45 = static HorizontalAlignment.leading.getter();
  v46 = v81;
  *v81 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_AXyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAKyAA6ButtonVyAUGAA08_PaddingG0VGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAKyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_AXyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAKyAA6ButtonVyAUGAA08_PaddingG0VGGtGGMR);
  closure #1 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(a1, v46 + *(v47 + 44));
  v48 = v83;
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, ForEach<[Tips.Action], String, ModifiedContent<Button<Text>, _PaddingLayout>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMR, MEMORY[0x277CE1198]);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v49 = v100;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v48, v12);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v46, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAGyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ATyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA6ButtonVyAQGAA14_PaddingLayoutVGGtGGMR);
  static Color.accentColor.getter();
  v50 = Color.opacity(_:)();

  v51 = swift_getKeyPath();
  *&v107[0] = v50;
  v52 = AnyShapeStyle.init<A>(_:)();
  v53 = (v49 + *(v84 + 36));
  *v53 = v51;
  v53[1] = v52;
  v54 = v89;
  v55 = v87;
  (*(v89 + 16))(v87, a1, v6);
  v56 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v57 = swift_allocObject();
  v58 = v94;
  *(v57 + 16) = v94;
  (*(v54 + 32))(v57 + v56, v55, v6);
  v59 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
  v60 = v93;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAWGGAA06_BlendN6EffectVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAWGGAA06_BlendN6EffectVGGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v61 = v88;
  v62 = v96;
  v63 = v82;
  View.buttonStyle<A>(_:)();
  (*(v79 + 8))(v5, v63);
  (*(v95 + 8))(v60, v62);
  v64 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.accessibility.getter();
  *v64 = 0;
  v65 = static Edge.Set.all.getter();
  v66 = v61 + *(v97 + 36);
  *v66 = v65;
  *(v66 + 8) = xmmword_20CB60710;
  *(v66 + 24) = xmmword_20CB60720;
  *(v66 + 40) = 0;
  v67 = v99;
  v68 = v90;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v99, v90);
  v69 = v49;
  v70 = v98;
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v69, v98, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMR);
  v71 = v91;
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v61, v91, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMR);
  v72 = v92;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v68, v92);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSg_ACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA6VStackVyAA05TupleP0VyACyAzAE10fontWeightyQrAI0X0VSgFQOyACyAA4TextVSgAKG_Qo_APG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0T0VyA10_GASGGtGG_AA017BorderedProminenttR0VQo_AGyAA08AnyShapeR0VSgGGAA6SpacerVACyACyAzAEA_yQrqd__AAA0_Rd__lFQOyA24_yACyACyACyAlGyAA19SymbolRenderingModeVSgGGAA011_ForegroundR9Modifier2VyA2NGGAA16_BlendModeEffectVGG_AA05PlaintR0VQo_AA01_d9ShapeKindI0VyAA6CircleVGGASGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSg_ACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA6VStackVyAA05TupleP0VyACyAzAE10fontWeightyQrAI0X0VSgFQOyACyAA4TextVSgAKG_Qo_APG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0T0VyA10_GASGGtGG_AA017BorderedProminenttR0VQo_AGyAA08AnyShapeR0VSgGGAA6SpacerVACyACyAzAEA_yQrqd__AAA0_Rd__lFQOyA24_yACyACyACyAlGyAA19SymbolRenderingModeVSgGGAA011_ForegroundR9Modifier2VyA2NGGAA16_BlendModeEffectVGG_AA05PlaintR0VQo_AA01_d9ShapeKindI0VyAA6CircleVGGASGtMR);
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v70, v72 + v73[12], &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMR);
  v74 = v72 + v73[16];
  *v74 = 0;
  *(v74 + 8) = 1;
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v71, v72 + v73[20], &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v61, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v100, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v71, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAA19SymbolRenderingModeVSgGGAA011_ForegroundG9Modifier2VyAA5ColorVA_GGAA06_BlendR6EffectVGG_AA05PlainiG0VQo_AA01_d9ShapeKindN0VyAA6CircleVGGAA14_PaddingLayoutVGMR);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA6VStackVyAA05TupleE0VyACyAeAE10fontWeightyQrAA4FontV0M0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_AVyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA0I0VyASGAA14_PaddingLayoutVGGtGG_AA017BorderedProminentiG0VQo_AVyAA08AnyShapeG0VSgGGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v68, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
}

uint64_t closure #1 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay6TipKit4TipsO6ActionVGSSAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGGMd, &_s7SwiftUI7ForEachVySay6TipKit4TipsO6ActionVGSSAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGGMR);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMR) - 8;
  MEMORY[0x28223BE20](v36);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = TipViewStyleConfiguration.title.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v44 = v10;
  v45 = v12;
  v46 = v14;
  v47 = v16;
  v48 = KeyPath;
  v49 = v17;
  static Font.Weight.medium.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined consume of Text?(v10, v12, v14, v16);

  v19 = [objc_opt_self() labelColor];
  v20 = Color.init(uiColor:)();
  v21 = swift_getKeyPath();
  v22 = *(v36 + 44);
  v35 = v9;
  v23 = &v9[v22];
  *v23 = v21;
  v23[1] = v20;
  v44 = TipViewStyleConfiguration.actions.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay6TipKit4TipsO6ActionVGMd, &_sSay6TipKit4TipsO6ActionVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [Tips.Action] and conformance [A], &_sSay6TipKit4TipsO6ActionVGMd, &_sSay6TipKit4TipsO6ActionVGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(&lazy protocol witness table cache variable for type Tips.Action and conformance Tips.Action, MEMORY[0x277CE1A40], MEMORY[0x277CE1A48]);
  v24 = v39;
  ForEach<>.init(_:content:)();
  v25 = v38;
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v9, v38, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMR);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = v42;
  v28(v40, v24, v42);
  v30 = v43;
  outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(v25, v43, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyAMGAA14_PaddingLayoutVGGtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyAMGAA14_PaddingLayoutVGGtMR);
  v28((v30 + *(v31 + 48)), v27, v29);
  v32 = *(v26 + 8);
  v32(v24, v29);
  outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v35, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMR);
  v32(v27, v29);
  return outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(v25, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_APyAA5ColorVSgGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  Tips.Action.handler.getter();
  Button.init(action:label:)();
  v3 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  v13 = a2 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = Tips.Action.label.getter();
  v3 = v2();
  v5 = v4;
  v7 = v6;

  static Font.body.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  static Font.Weight.medium.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  LOBYTE(v5) = v16;
  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Color.accentColor.getter();
  v17 = Text.foregroundColor(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  outlined consume of Text.Storage(v13, v15, v5 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(void *a1)
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-1] - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:), v12);

  TipViewStyleConfiguration.tip.getter();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  (*(v3 + 104))(v5, *MEMORY[0x277CE1A10], v2);
  Tip.invalidate(reason:)();
  (*(v3 + 8))(v5, v2);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:), v6, v5);
}

uint64_t closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)()
{
  v1 = *(v0 + 16);

  [v1 respondedToCheckInRemindersTipWithResponse_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #3 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = Image.init(systemName:)();
  static Font.Weight.semibold.getter();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v9 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMR) + 36)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.palette.getter();
  v11 = type metadata accessor for SymbolRenderingMode();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 1) = KeyPath;
  *(a1 + 2) = v7;
  v12 = objc_opt_self();
  v13 = [v12 secondaryLabelColor];
  v14 = Color.init(uiColor:)();
  v15 = [v12 quaternaryLabelColor];
  v16 = Color.init(uiColor:)();
  v17 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGMR) + 36)];
  *v17 = v14;
  v17[1] = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMR) + 36);
  v19 = *MEMORY[0x277CE13B8];
  v20 = type metadata accessor for BlendMode();
  return (*(*(v20 - 8) + 104))(&a1[v18], v19, v20);
}

uint64_t closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:), v8);
}

uint64_t closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:), v6, v5);
}

uint64_t closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)()
{
  v1 = *(v0 + 16);

  [v1 startCheckInRemindersTipMetricsCollection];
  v2 = *(v0 + 8);

  return v2();
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR, MEMORY[0x277D7D9E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR, MEMORY[0x277D7DFF0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMR, MEMORY[0x277CE1A40]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR, MEMORY[0x277D7DFD0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore18AppleExertionScaleOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18AppleExertionScaleOGMR, MEMORY[0x277D7E2A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR, MEMORY[0x277D7DD78]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WidgetKit0D18RelevanceAttributeVyytGGMd, &_ss23_ContiguousArrayStorageCy9WidgetKit0D18RelevanceAttributeVyytGGMR, &_s9WidgetKit0A18RelevanceAttributeVyytGMd, &_s9WidgetKit0A18RelevanceAttributeVyytGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI25PowerZonesBarChartElementVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI25PowerZonesBarChartElementVGMR, type metadata accessor for PowerZonesBarChartElement);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI21TrainingLoadViewModelVGMR, type metadata accessor for TrainingLoadViewModel);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVGMd, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVGMR, MEMORY[0x277D504F8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVSgGMd, &_ss23_ContiguousArrayStorageCy11SeymourCore13CatalogLockupVSgGMR, &_s11SeymourCore13CatalogLockupVSgMd, &_s11SeymourCore13CatalogLockupVSgMR);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMR);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI16ActivityProtocol_pGMd, &_ss23_ContiguousArrayStorageCy9WorkoutUI16ActivityProtocol_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI16ActivityProtocol_pMd, &_s9WorkoutUI16ActivityProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9WorkoutUI22DemoTrainingLoadValuesVtGMd, &_ss23_ContiguousArrayStorageCySS_9WorkoutUI22DemoTrainingLoadValuesVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9WorkoutUI22DemoTrainingLoadValuesVtMd, &_sSS_9WorkoutUI22DemoTrainingLoadValuesVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMd, &_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static Tips.ActionBuilder.buildFinalResult(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_6TipKit4TipsO6ActionV7elementtMd, &_sSi6offset_6TipKit4TipsO6ActionV7elementtMR);
  MEMORY[0x28223BE20](v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v16, v9, &_sSi6offset_6TipKit4TipsO6ActionV7elementtMd, &_sSi6offset_6TipKit4TipsO6ActionV7elementtMR);
      Tips.Action.with(index:)();
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(v9, &_sSi6offset_6TipKit4TipsO6ActionV7elementtMd, &_sSi6offset_6TipKit4TipsO6ActionV7elementtMR);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip()
{
  result = lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip;
  if (!lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip;
  if (!lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipKitSafetyCheckInRemindersTip and conformance TipKitSafetyCheckInRemindersTip);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipKitSafetyCheckInRemindersTip(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TipKitSafetyCheckInRemindersTip(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TipKitSafetyCheckInRemindersTipStyle(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for TipKitSafetyCheckInRemindersTipStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GAA017_AppearanceActionR0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GAA017_AppearanceActionR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VGSg_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyACyAeAE10fontWeightyQrAS6WeightVSgFQOyACyAA4TextVSgAUG_Qo_AZG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSACyAA6ButtonVyA16_GA1_GGtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAA6SpacerVACyACyAeAEA7_yQrqd__AAA8_Rd__lFQOyA30_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGG_Qo_A1_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VGSg_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAGyA2_AAE10fontWeightyQrAM0Y0VSgFQOyAGyAA4TextVSgAOG_Qo_ATG_AA7ForEachVySay6TipKit4TipsO6ActionVGSSAGyAA0V0VyA12_GAWGGtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAA6SpacerVAGyAGyA2_AAEA3_yQrqd__AAA4_Rd__lFQOyA26_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGGMR, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VG_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyAA012_ConditionalD0VyAMyACyAA4TextVA1_G_A13_tGA13_G_ACyAA6ButtonVyACyA13_A4_GGA1_GSgtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAMyAA6SpacerV_ACyACyAeAEA6_yQrqd__AAA7_Rd__lFQOyA18_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGSgtGG_Qo_A1_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA5ColorVSgGGAA14_PaddingLayoutVGAA0i10AttachmentR0VG_ACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonY0Rd__lFQOyAA6VStackVyAMyAA012_ConditionalD0VyAMyACyAA4TextVA1_G_A13_tGA13_G_ACyAA6ButtonVyACyA13_A4_GGA1_GSgtGG_AA023BorderedProminentButtonY0VQo_AQyAA08AnyShapeY0VSgGGAMyAA6SpacerV_ACyACyAeAEA6_yQrqd__AAA7_Rd__lFQOyA18_yACyACyACyAvQyAA19SymbolRenderingModeVSgGGAA011_ForegroundY9Modifier2VyA2XGGAA16_BlendModeEffectVGG_AA011PlainButtonY0VQo_AA01_d9ShapeKindR0VyAA6CircleVGGA1_GtGSgtGG_Qo_A1_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAA012_ConditionalG0VyAEyAGyAA4TextVAWG_A9_tGA9_G_AGyAA0V0VyAGyA9_AZGGAWGSgtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAEyAA6SpacerV_AGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA14_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAA012_ConditionalG0VyAEyAGyAA4TextVAWG_A9_tGA9_G_AGyAA0V0VyAGyA9_AZGGAWGSgtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAEyAA6SpacerV_AGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA14_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGSgtGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAA012_ConditionalG0VyAEyAGyAA4TextVAWG_A9_tGA9_G_AGyAA0V0VyAGyA9_AZGGAWGSgtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAEyAA6SpacerV_AGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA14_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentL0VG_AGyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA6VStackVyAEyAA012_ConditionalG0VyAEyAGyAA4TextVAWG_A9_tGA9_G_AGyAA0V0VyAGyA9_AZGGAWGSgtGG_AA017BorderedProminentvT0VQo_AKyAA08AnyShapeT0VSgGGAEyAA6SpacerV_AGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA14_yAGyAGyAGyApKyAA19SymbolRenderingModeVSgGGAA011_ForegroundT9Modifier2VyA2RGGAA16_BlendModeEffectVGG_AA05PlainvT0VQo_AA01_g9ShapeKindL0VyAA6CircleVGGAWGtGSgtGGMR, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleE0VyACyACy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyACyAN07AppIconE0VAA0i10AttachmentU0VGGG_ACyAA6VStackVyAMyAA4TextV_ACyA4_AA022_EnvironmentKeyWritingU0VySiSgGGSgtGGAA05_FlexrS0VGtGG_Qo_AA08_PaddingS0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<MediaSuggestionArtworkView, _FrameLayout>, _OverlayModifier<ModifiedContent<AppIconView, AccessibilityAttachmentModifier>>>, ModifiedContent<VStack<TupleView<(Text, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?)>>, _FlexFrameLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0022MediaSuggestionArtworkE0VAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAH07AppIconE0VAA023AccessibilityAttachmentO0VGGG_AGyAA6VStackVyAEyAA4TextV_AGyAzA022_EnvironmentKeyWritingO0VySiSgGGSgtGGAA05_FlexlM0VGtGGMR, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:);

  return closure #1 in closure #2 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)()
{
  type metadata accessor for TipViewStyleConfiguration();
  v1 = *(v0 + 16);

  return closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(v1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGAA06_BlendM6EffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGAA25_ForegroundStyleModifier2VyAA5ColorVAUGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMd, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMR, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGAA023AccessibilityAttachmentI0VGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:);

  return closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TipKitSafetyCheckInRemindersTipStyle.makeBody(configuration:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type Text? and conformance <A> A?();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?, ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<Circle>>, _PaddingLayout>)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, AccessibilityAttachmentModifier>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t RaceElevationViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

Swift::Void __swiftcall RaceElevationViewModel.load()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v5[1] = 1;

  static Published.subscript.setter();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore), *(v0 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore + 24));
  RaceWorkoutConfiguration.lastWorkoutUUID.getter();
  static RaceSessionConstants.noTimeLimitAnchor.getter();
  static RaceSessionConstants.noPointsLimit.getter();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of RaceRouteDataStoring.queryRoute(for:timestampAnchor:pointsLimit:completion:)();

  (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in RaceElevationViewModel.load()(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for RaceChartPoint();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RaceRoute();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMd, &_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v44 = result;
    outlined init with copy of Result<RaceRoute, Error>(a1, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Result<RaceRoute, Error>(v14);
      type metadata accessor for OS_dispatch_queue();
      v16 = static OS_dispatch_queue.main.getter();
      v56 = partial apply for closure #3 in closure #1 in RaceElevationViewModel.load();
      v57 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed () -> ();
      v55 = &block_descriptor_1;
      v17 = _Block_copy(&aBlock);

      v18 = v47;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v19 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1F0](0, v18, v19, v17);
      _Block_release(v17);

      (*(v6 + 8))(v19, v5);
      return (*(v8 + 8))(v18, v49);
    }

    (*(v46 + 32))(v45, v14, v10);
    v20 = RaceRoute.locations.getter();
    if (v20 >> 62)
    {
      v37 = v20;
      v21 = __CocoaSet.count.getter();
      v20 = v37;
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = MEMORY[0x277D84F90];
    v42 = v8;
    if (v21)
    {
      v23 = v20;
      v39 = v10;
      v40 = v6;
      v41 = v5;
      aBlock = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      v25 = aBlock;
      v26 = v23;
      v50 = v23 & 0xC000000000000001;
      v27 = v43;
      do
      {
        if (v50)
        {
          v28 = MEMORY[0x20F30C990](v24, v26);
        }

        else
        {
          v28 = *(v26 + 8 * v24 + 32);
        }

        v29 = v28;
        [v28 odometer_m];
        [v29 altitude_m];
        RaceChartPoint.init(odometer_m:altitude_m:)();

        aBlock = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v25 = aBlock;
        }

        ++v24;
        *(v25 + 16) = v31 + 1;
        (*(v3 + 32))(v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, v27, v51);
        v26 = v23;
      }

      while (v21 != v24);

      v5 = v41;
      v6 = v40;
      v10 = v39;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    type metadata accessor for OS_dispatch_queue();
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = v44;
    *(v33 + 24) = v25;
    v56 = partial apply for closure #2 in closure #1 in RaceElevationViewModel.load();
    v57 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed () -> ();
    v55 = &block_descriptor_10;
    v34 = _Block_copy(&aBlock);

    v35 = v47;
    static DispatchQoS.unspecified.getter();
    aBlock = v22;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v35, v36, v34);
    _Block_release(v34);

    (*(v6 + 8))(v36, v5);
    (*(v42 + 8))(v35, v49);
    return (*(v46 + 8))(v45, v10);
  }

  return result;
}

uint64_t closure #2 in closure #1 in RaceElevationViewModel.load()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in closure #1 in RaceElevationViewModel.load()(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceElevationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RaceElevationViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceElevationViewModel;
  if (!type metadata singleton initialization cache for RaceElevationViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceElevationViewModel(uint64_t a1)
{
  type metadata accessor for Published<RaceElevationViewModel.State>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<RaceElevationViewModel.State>()
{
  if (!lazy cache variable for type metadata for Published<RaceElevationViewModel.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RaceElevationViewModel.State>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI22RaceElevationViewModelC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for RaceElevationViewModel.State(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceElevationViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
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

void *destructiveInjectEnumTag for RaceElevationViewModel.State(void *result, int a2)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RaceElevationViewModel@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t protocol witness for static Canonical.canonical() in conformance RaceElevationViewModel@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  type metadata accessor for RaceWorkoutConfiguration();
  v7 = MEMORY[0x20F303820]();
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel__state;
  v18 = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v8 + v9, v5, v2);
  v10 = type metadata accessor for RaceRouteDataStore();
  swift_allocObject();
  v11 = v6;
  v12 = RaceRouteDataStore.init(healthStore:)();
  v13 = (v8 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore);
  v14 = MEMORY[0x277D7E2D8];
  v13[3] = v10;
  v13[4] = v14;
  *v13 = v12;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_workoutConfiguration) = v7;

  v15 = MEMORY[0x20F305230]();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v15;

  result = static Published.subscript.setter();
  *a1 = v8;
  return result;
}

uint64_t key path getter for RaceElevationViewModel.state : RaceElevationViewModel@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for RaceElevationViewModel.state : RaceElevationViewModel(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of RaceElevationViewModel.State(v2);

  return static Published.subscript.setter();
}

unint64_t outlined copy of RaceElevationViewModel.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t outlined init with copy of Result<RaceRoute, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMd, &_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<RaceRoute, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMd, &_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t SiriWorkoutDisambiguationSheet.init(isPresentingSiriDisambiguation:reducedTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  result = EnvironmentObject.init()();
  *a5 = result;
  *(a5 + 8) = v11;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t SiriWorkoutDisambiguationSheet.onDismiss(type:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v24 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = v1[1];
  v30 = *v1;
  v31 = v15;
  v32 = v1[2];
  _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v9 + 8);
  v23(v11, v8);
  v16 = swift_allocObject();
  v17 = v31;
  *(v16 + 24) = v30;
  *(v16 + 16) = a1;
  *(v16 + 40) = v17;
  *(v16 + 56) = v32;
  aBlock[4] = partial apply for closure #1 in SiriWorkoutDisambiguationSheet.onDismiss(type:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  outlined init with copy of SiriWorkoutDisambiguationSheet(&v30, v28);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  MEMORY[0x20F30C1A0](v14, v7, v5, v18);
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v7, v26);
  return (v23)(v14, v24);
}

uint64_t closure #1 in SiriWorkoutDisambiguationSheet.onDismiss(type:)(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for GoalWorkoutConfiguration();
  _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v5 = a1;
  static NLSessionActivityGoal.makeOpenGoal()();
  UUID.init()();
  type metadata accessor for Occurrence();
  MEMORY[0x20F304B60](0);
  v6 = GoalWorkoutConfiguration.__allocating_init(_:goal:uuid:occurrence:)();
  v7 = *a2;
  if (*a2)
  {
    v8 = v6;
    swift_beginAccess();
    v9 = *(v7 + 16);

    v10 = v9;
    v11 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 5;
    }

    v13 = *(v7 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v14 = *(v7 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v14(v8, v12);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t SiriWorkoutDisambiguationSheet.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMR);
  lazy protocol witness table accessor for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>();
  return List<>.init(content:)();
}

uint64_t closure #1 in SiriWorkoutDisambiguationSheet.body.getter(uint64_t a1)
{
  LocalizedStringKey.init(stringLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo23FIUIWorkoutActivityTypeCGAeA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedM0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipC9RTLEffectVGSgAA4TextVGGGMd, &_s7SwiftUI7ForEachVySaySo23FIUIWorkoutActivityTypeCGAeA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedM0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipC9RTLEffectVGSgAA4TextVGGGMR);
  lazy protocol witness table accessor for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>();
  return Section<>.init(_:content:)();
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMR);
    lazy protocol witness table accessor for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySo23FIUIWorkoutActivityTypeCGAeA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedM0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipC9RTLEffectVGSgAA4TextVGGGMd, &_s7SwiftUI7ForEachVySaySo23FIUIWorkoutActivityTypeCGAeA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedM0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipC9RTLEffectVGSgAA4TextVGGGMR);
    lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMd, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in SiriWorkoutDisambiguationSheet.body.getter(uint64_t a1)
{
  v6 = *(a1 + 40);
  v7 = v6;
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = *(a1 + 32);
  outlined init with copy of [FIUIWorkoutActivityType](&v7, v5);
  outlined init with copy of SiriWorkoutDisambiguationSheet(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23FIUIWorkoutActivityTypeCGMd, &_sSaySo23FIUIWorkoutActivityTypeCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMd, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMR);
  lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(&lazy protocol witness table cache variable for type [FIUIWorkoutActivityType] and conformance [A], &_sSaySo23FIUIWorkoutActivityTypeCGMd, &_sSaySo23FIUIWorkoutActivityTypeCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType and conformance NSObject();
  lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMd, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA4TextVGGMR, MEMORY[0x277CDF028]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in SiriWorkoutDisambiguationSheet.body.getter(void **a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v3;
  outlined init with copy of SiriWorkoutDisambiguationSheet(a2, v8);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD4TextVGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD4TextVGMR);
  lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD4TextVGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAD17_FlipForRTLEffectVGSgAD4TextVGMR, &protocol conformance descriptor for AlignedLeadingAccessoryContentView<A, B>);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in SiriWorkoutDisambiguationSheet.body.getter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.setter();
  return SiriWorkoutDisambiguationSheet.onDismiss(type:)(a2);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in SiriWorkoutDisambiguationSheet.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = static VerticalAlignment.center.getter();
  v4 = [a1 symbolName];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = Image.init(_internalSystemName:)();
    v27 = static Color.black.getter();
    KeyPath = swift_getKeyPath();
    v25 = 1;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    KeyPath = 0;
    v25 = 0;
  }

  v6 = [a1 localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Color.black.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined consume of Text.Storage(v12, v14, v16 & 1);

  *a2 = v28;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v27;
  *(a2 + 24) = v25;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  *(a2 + 64) = 0x4022000000000000;
  *(a2 + 72) = v29;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance SiriWorkoutDisambiguationSheet()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo23FIUIWorkoutActivityTypeCGAiA6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA05_FlipE9RTLEffectVGSgAEGGGAA05EmptyP0VGMR);
  lazy protocol witness table accessor for type Section<Text, ForEach<[FIUIWorkoutActivityType], FIUIWorkoutActivityType, Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>>>, EmptyView> and conformance <> Section<A, B, C>();
  return List<>.init(content:)();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriWorkoutDisambiguationSheet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for SiriWorkoutDisambiguationSheet(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t outlined init with copy of [FIUIWorkoutActivityType](uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23FIUIWorkoutActivityTypeCGMd, &_sSaySo23FIUIWorkoutActivityTypeCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type FIUIWorkoutActivityType and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_1(255, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject);
  }

  return result;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>?, Text>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance WorkoutAlertPresenterKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type WorkoutAlertPresenter? and conformance <A> A?();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.workoutAlertPresenter.getter()
{
  lazy protocol witness table accessor for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey;
  if (!lazy protocol witness table cache variable for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertPresenter? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertPresenter? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type WorkoutAlertPresenter? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI0A14AlertPresenterCSgMd, &_s9WorkoutUI0A14AlertPresenterCSgMR);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertPresenter? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance NSObject;
  if (!lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance NSObject)
  {
    type metadata accessor for WorkoutAlertPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance NSObject);
  }

  return result;
}

uint64_t one-time initialization function for defaultBackground(uint64_t a1)
{
  result = static Color.black.getter();
  static SessionViewColors.defaultBackground = result;
  return result;
}

double static SessionViewColors.defaultBackground.getter()
{
  if (one-time initialization token for defaultBackground != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t one-time initialization function for buttonBackground()
{
  v0 = type metadata accessor for Material();
  __swift_allocate_value_buffer(v0, static SessionViewColors.buttonBackground);
  __swift_project_value_buffer(v0, static SessionViewColors.buttonBackground);
  return static Material.thin.getter();
}

uint64_t static SessionViewColors.buttonBackground.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for buttonBackground != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Material();
  v3 = __swift_project_value_buffer(v2, static SessionViewColors.buttonBackground);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getEnumTagSinglePayload for SessionViewColors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SessionViewColors(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionStatusView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for SessionStatusView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void SessionStatusView.init(sessionViewModel:metricsPublisher:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 104) = swift_getKeyPath();
  *(a3 + 112) = 0;
  *(a3 + 120) = AppStorage.init<A>(wrappedValue:_:store:)();
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = specialized UIDevice.screenType.getter();

  v9 = dbl_20CB611A8[v8];
  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 mainScreen];
  [v14 nativeScale];
  v16 = v15;

  if (v13 != v16)
  {
    v17 = [v10 mainScreen];
    [v17 scale];
    v19 = v18;

    v20 = [v10 mainScreen];
    [v20 nativeScale];
    v22 = v21;

    v9 = v9 * (v19 / v22 * 0.95);
  }

  *(a3 + 128) = v9;
  *(a3 + 136) = specialized static LayoutUtilities.layoutMetric(regular42:)(22.0);
  *a3 = a1;

  MetricsPublisher.activitySummaryMetricsPublisher.getter();
  type metadata accessor for ActivitySummaryMetricsPublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher, MEMORY[0x277D7E670], MEMORY[0x277D7E668]);
  *(a3 + 8) = ObservedObject.init(wrappedValue:)();
  *(a3 + 16) = v23;
  MetricsPublisher.goalPublisher.getter();
  type metadata accessor for GoalPublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type GoalPublisher and conformance GoalPublisher, MEMORY[0x277D7DFC0], MEMORY[0x277D7DFB8]);
  *(a3 + 24) = ObservedObject.init(wrappedValue:)();
  *(a3 + 32) = v24;
  MetricsPublisher.intervalsMetricsPublisher.getter();
  type metadata accessor for IntervalsMetricsPublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type IntervalsMetricsPublisher and conformance IntervalsMetricsPublisher, MEMORY[0x277D7E518], MEMORY[0x277D7E510]);
  *(a3 + 40) = ObservedObject.init(wrappedValue:)();
  *(a3 + 48) = v25;
  MetricsPublisher.racePositionStatePublisher.getter();
  type metadata accessor for RacePositionStatePublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type RacePositionStatePublisher and conformance RacePositionStatePublisher, MEMORY[0x277D7E5C8], MEMORY[0x277D7E5C0]);
  *(a3 + 56) = ObservedObject.init(wrappedValue:)();
  *(a3 + 64) = v26;
  MetricsPublisher.workoutStatePublisher.getter();
  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  *(a3 + 72) = ObservedObject.init(wrappedValue:)();
  *(a3 + 80) = v27;
  MetricsPublisher.trackRunningMetricsPublisher.getter();
  type metadata accessor for TrackRunningMetricsPublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type TrackRunningMetricsPublisher and conformance TrackRunningMetricsPublisher, MEMORY[0x277D7E608], MEMORY[0x277D7E600]);
  v28 = ObservedObject.init(wrappedValue:)();
  v30 = v29;

  *(a3 + 88) = v28;
  *(a3 + 96) = v30;
}

uint64_t SessionStatusView.shouldAnimate.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  AppStorage.wrappedValue.getter();
  if (v10[15] == 1)
  {
    if (!v6)
    {

      static os_log_type_t.fault.getter();
      v7 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutAnimationStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v5) = v10[14];
    }

    v8 = v5 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id SessionStatusView.raceColors.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RacePositionState();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;

  RacePositionStatePublisher.racePositionState.getter();

  v9 = (*(v3 + 88))(v8, v2);
  if (v9 == *MEMORY[0x277D7E218])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D7E210])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D7E220])
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.2 green:0.0823529412 blue:0.0666666667 alpha:1.0];
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.407843137 blue:0.321568627 alpha:1.0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D7E238])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D7E240] || v9 == *MEMORY[0x277D7E230])
  {
LABEL_4:
    v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0 green:0.62745098 blue:0.525490196 alpha:1.0];
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D7E228])
  {
LABEL_2:
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.654901961 green:0.654901961 blue:0.654901961 alpha:1.0];
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.133333333 green:0.133333333 blue:0.133333333 alpha:1.0];
    v12 = v10;
    v13 = v12;
LABEL_7:
    v14 = v12;
    v15 = [v11 colorWithAlphaComponent_];
    result = [v13 colorWithAlphaComponent_];
    *a1 = v14;
    a1[1] = v13;
    a1[2] = v11;
    a1[3] = v15;
    a1[4] = result;
    return result;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  MEMORY[0x20F30BC00](0xD00000000000001BLL, 0x800000020CB94880);
  RacePositionStatePublisher.racePositionState.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v3 + 8))(v5, v2);
  MEMORY[0x20F30BC00](544106784, 0xE400000000000000);
  MEMORY[0x20F30BC00](0x6F6C6F4365636172, 0xEA00000000007372);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SessionStatusView.glyphColor.getter()
{
  v1 = type metadata accessor for ConfigurationType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *v0;
  v39 = *(v0 + 1);
  v9 = v0[4];
  v40 = v0[3];
  v10 = *(v0 + 11);
  v11 = *(v0 + 15);
  v36 = *(v0 + 13);
  v37 = v11;
  v38 = v0[17];
  v12 = *(v0 + 7);
  v32 = *(v0 + 5);
  v33 = v12;
  v34 = *(v0 + 9);
  v35 = v10;
  swift_getKeyPath();
  v21 = v8;
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v8 + 24);
  dispatch thunk of WorkoutConfiguration.type.getter();

  (*(v2 + 104))(v4, *MEMORY[0x277D7E100], v1);
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E130]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  if (v21 == v20[0])
  {
    v22 = v39;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    v21 = v8;
    v23 = v40;
    v24 = v9;
    v31 = v38;
    v27 = v34;
    SessionStatusView.raceColors.getter(v20);
    v15 = v20[1];
    v16 = v20[2];
    v17 = v20[3];
  }

  else
  {

    v18 = GoalPublisher.goal.getter();

    _HKWorkoutGoalType.color.getter(v18);
  }

  return Color.init(uiColor:)();
}

void closure #1 in SessionStatusView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v92 - v4;
  v108 = type metadata accessor for WorkoutTimeView(0);
  MEMORY[0x28223BE20](v108);
  v101 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMR);
  MEMORY[0x28223BE20](v109);
  v111 = &v92 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v93);
  v94 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHy07WorkoutB00k4TimeC0VAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMyAA5ColorVSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVyAHy07WorkoutB00k4TimeC0VAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAMyAA5ColorVSgGG_Qo_MR);
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v95 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v92 - v11;
  v12 = type metadata accessor for AccessibilityChildBehavior();
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v104 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMR);
  MEMORY[0x28223BE20](v103);
  v15 = (&v92 - v14);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalM0VyAQyAMyAA5ImageVAA0G18AttachmentModifierVGAVGAQyAMyAMy07WorkoutB008GoalRingC0VAA12_FrameLayoutVGAUGAMyAMyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_AMyAMyAOyAQyAQyAX020PrecisionStartStatusC0VAMyAMyAMyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyAMyAMyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGAMyAMyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalM0VyAQyAMyAA5ImageVAA0G18AttachmentModifierVGAVGAQyAMyAMy07WorkoutB008GoalRingC0VAA12_FrameLayoutVGAUGAMyAMyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_AMyAMyAOyAQyAQyAX020PrecisionStartStatusC0VAMyAMyAMyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyAMyAMyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGAMyAMyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_MR);
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v17 = &v92 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGGMR);
  MEMORY[0x28223BE20](v100);
  v112 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v92 - v20;
  v21 = *a1;
  v122 = *(a1 + 9);
  v22 = *(&v122 + 1);

  v23 = WorkoutStatePublisher.workoutStarted.getter();
  v99 = v22;
  if (v23)
  {
    WorkoutStatePublisher.workoutPaused.getter();
  }

  else
  {
    swift_getKeyPath();
    *&v118 = v21;
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*&v21 + 18) == 1)
    {
      swift_getKeyPath();
      *&v118 = v21;
      goto LABEL_8;
    }
  }

  v24 = WorkoutStatePublisher.activityType.getter();
  if (v24)
  {
    v25 = v24;
    goto LABEL_9;
  }

  swift_getKeyPath();
  *&v118 = v21;
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
LABEL_8:
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v26 = *(*&v21 + 24);
  v25 = dispatch thunk of WorkoutConfiguration.activityType.getter();

LABEL_9:
  *v15 = static Alignment.center.getter();
  v15[1] = v27;
  v28 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAKyAA5ImageVAA31AccessibilityAttachmentModifierVGATGAOyAKyAKy07WorkoutB008GoalRingD0VAA06_FrameG0VGASGAKyAKyAqZGASGGGSgGAA16_GrayscaleEffectVG_AKyAKyAMyAOyAOyAV020PrecisionStartStatusD0VAKyAKyAKyAqA012_AspectRatioG0VGAZGASGGAOyA16_AOyAKyAKyAV08AnimatedQ5GlyphVAA17_FlipForRTLEffectVGASGAKyAKyAV0q4TypeM0VA21_GASGGGGGAA016_ForegroundStyleP0VyAA5ColorVGGA8_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAKyAA5ImageVAA31AccessibilityAttachmentModifierVGATGAOyAKyAKy07WorkoutB008GoalRingD0VAA06_FrameG0VGASGAKyAKyAqZGASGGGSgGAA16_GrayscaleEffectVG_AKyAKyAMyAOyAOyAV020PrecisionStartStatusD0VAKyAKyAKyAqA012_AspectRatioG0VGAZGASGGAOyA16_AOyAKyAKyAV08AnimatedQ5GlyphVAA17_FlipForRTLEffectVGASGAKyAKyAV0q4TypeM0VA21_GASGGGGGAA016_ForegroundStyleP0VyAA5ColorVGGA8_GtGGMR) + 44);
  v92 = v25;
  closure #1 in closure #1 in SessionStatusView.body.getter(a1, v25, v28);
  v29 = v104;
  static AccessibilityChildBehavior.combine.getter();
  started = lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _Fl(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImag, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMR, MEMORY[0x277CE11A8]);
  v31 = v103;
  View.accessibilityElement(children:)();
  (*(v106 + 8))(v29, v107);
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v15, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAGyAA5ImageVAA31AccessibilityAttachmentModifierVGAPGAKyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAOGAGyAGyAmVGAOGGGSgGAA16_GrayscaleEffectVG_AGyAGyAIyAKyAKyAR020PrecisionStartStatusE0VAGyAGyAGyAmA012_AspectRatioR0VGAVGAOGGAKyA12_AKyAGyAGyAR08AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAGyAGyAR0n4TypeJ0VA17_GAOGGGGGAA016_ForegroundStyleM0VyAA5ColorVGGA4_GtGGMR);
  *&v118 = v31;
  *(&v118 + 1) = started;
  swift_getOpaqueTypeConformance2();
  v32 = v114;
  v33 = v105;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v102 + 8))(v17, v33);
  v34 = (v32 + *(v100 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.accessibility.getter();
  *v34 = 0;
  v35 = v110;
  WorkoutStatePublisher.workoutStartDate.getter();
  v36 = *(a1 + 7);
  v119[5] = *(a1 + 6);
  v119[6] = v36;
  v119[7] = *(a1 + 8);
  v37 = *(a1 + 3);
  v119[1] = *(a1 + 2);
  v119[2] = v37;
  v38 = *(a1 + 5);
  v119[3] = *(a1 + 4);
  v119[4] = v38;
  v39 = *(a1 + 1);
  v118 = *a1;
  v119[0] = v39;
  LOBYTE(v34) = SessionStatusView.shouldAnimate.getter();
  KeyPath = swift_getKeyPath();
  v41 = v101;
  *v101 = KeyPath;
  *(v41 + 8) = 0;
  *(v41 + 16) = swift_getKeyPath();
  *(v41 + 24) = 0;
  v42 = v108;
  v43 = *(v108 + 24);
  v44 = type metadata accessor for Date();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = *(v42 + 28);
  outlined assign with copy of Date?(v35, v41 + v43);
  *(v41 + v45) = v34 & 1;
  v46 = (v41 + *(v42 + 32));
  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  v47 = ObservedObject.init(wrappedValue:)();
  v49 = v48;
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *v46 = v47;
  v46[1] = v49;
  v50 = swift_getKeyPath();
  v51 = v111;
  outlined init with copy of WorkoutTimeView(v41, v111, type metadata accessor for WorkoutTimeView);
  v52 = (v51 + *(v109 + 36));
  *v52 = v50;
  v52[1] = 0x3FE0000000000000;
  outlined destroy of WorkoutTimeView(v41, type metadata accessor for WorkoutTimeView);
  if ((WorkoutStatePublisher.workoutPaused.getter() & 1) == 0)
  {
    v54 = [objc_opt_self() elapsedTimeColors];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 nonGradientTextColor];

      if (v56)
      {
        v53 = Color.init(uiColor:)();
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  static Color.gray.getter();
  v53 = Color.opacity(_:)();

LABEL_14:
  v57 = swift_getKeyPath();
  v58 = v94;
  outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v51, v94, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMR);
  v59 = (v58 + *(v93 + 36));
  *v59 = v57;
  v59[1] = v53;
  v60 = swift_allocObject();
  v61 = *(a1 + 7);
  v60[7] = *(a1 + 6);
  v60[8] = v61;
  v60[9] = *(a1 + 8);
  v62 = *(a1 + 3);
  v60[3] = *(a1 + 2);
  v60[4] = v62;
  v63 = *(a1 + 5);
  v60[5] = *(a1 + 4);
  v60[6] = v63;
  v64 = *(a1 + 1);
  v60[1] = *a1;
  v60[2] = v64;
  outlined init with copy of SessionStatusView(a1, &v118);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  View.onTapGesture(count:perform:)();

  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v58, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMR);
  v121 = *(a1 + 1);
  v111 = ActivitySummaryMetricsPublisher.activitySummary.getter();
  v65 = a1[16];
  v66 = ActivitySummaryMetricsPublisher.isWheelchairUser.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v117[5] = v120[0];
  *&v117[21] = v120[1];
  *&v117[37] = v120[2];
  v67 = 1.0;
  if ((WorkoutStatePublisher.workoutPaused.getter() & 1) == 0)
  {

    v68 = ActivitySummaryMetricsPublisher.activitySummary.getter();
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v121, &_s7SwiftUI14ObservedObjectVy11WorkoutCore31ActivitySummaryMetricsPublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore31ActivitySummaryMetricsPublisherCGMR);
    v69 = [v68 exerciseTimeGoal];
    if (v69)
    {
      v70 = v69;
      v71 = [objc_opt_self() minuteUnit];
      [v70 doubleValueForUnit_];
      v73 = v72;

      v74 = v73 < 2.22044605e-16;
    }

    else
    {
      v74 = 1;
    }

    v75 = WorkoutStatePublisher.mirroringToCompanion.getter();

    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v122, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMR);
    if ((v74 | v75))
    {
      v67 = 0.0;
    }

    else
    {
      v67 = 1.0;
    }
  }

  LODWORD(v110) = v66 & 1;
  v76 = v112;
  sub_20C676CE0(v114, v112);
  v78 = v95;
  v77 = v96;
  v79 = *(v96 + 16);
  v80 = v113;
  v81 = v97;
  v79(v95, v113, v97);
  v82 = v98;
  sub_20C676CE0(v76, v98);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGG_AA6SpacerVAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAX0s4TimeE0VAA022_EnvironmentKeyWritingR0Vy12CoreGraphics7CGFloatVGGA59_yA37_SgGG_Qo_A52_ACyACyAX013ActivityRingsE0VA0_GA10_GtMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGG_AA6SpacerVAeAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAX0s4TimeE0VAA022_EnvironmentKeyWritingR0Vy12CoreGraphics7CGFloatVGGA59_yA37_SgGG_Qo_A52_ACyACyAX013ActivityRingsE0VA0_GA10_GtMR);
  v84 = v82 + v83[12];
  *v84 = 0;
  *(v84 + 8) = 1;
  v79((v82 + v83[16]), v78, v81);
  v85 = *&v117[16];
  *(v116 + 3) = *v117;
  v86 = v82 + v83[20];
  *v86 = 0;
  *(v86 + 8) = 1;
  v87 = (v82 + v83[24]);
  v88 = v111;
  *&v115 = v111;
  *(&v115 + 1) = v65;
  LOWORD(v116[0]) = 0;
  LOBYTE(v82) = v110;
  BYTE2(v116[0]) = v110;
  *(&v116[1] + 3) = v85;
  *(&v116[2] + 3) = *&v117[32];
  *&v116[3] = *&v117[45];
  *(&v116[3] + 1) = v67;
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(&v115, &v118, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017ActivityRingsViewVAA12_FrameLayoutVGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017ActivityRingsViewVAA12_FrameLayoutVGAA16_GrayscaleEffectVGMR);

  v89 = v116[2];
  v87[2] = v116[1];
  v87[3] = v89;
  v87[4] = v116[3];
  v90 = v116[0];
  *v87 = v115;
  v87[1] = v90;
  v91 = *(v77 + 8);
  v91(v80, v81);
  sub_20C676D50(v114);
  *&v118 = v88;
  *(&v118 + 1) = v65;
  LOWORD(v119[0]) = 0;
  BYTE2(v119[0]) = v82;
  *(v119 + 3) = *v117;
  *(&v119[1] + 3) = *&v117[16];
  *(&v119[2] + 3) = *&v117[32];
  *&v119[3] = *&v117[45];
  *(&v119[3] + 1) = v67;
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v118, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017ActivityRingsViewVAA12_FrameLayoutVGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB017ActivityRingsViewVAA12_FrameLayoutVGAA16_GrayscaleEffectVGMR);
  v91(v78, v81);
  sub_20C676D50(v112);
}

uint64_t closure #1 in closure #1 in SessionStatusView.body.getter@<X0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGMR) - 8;
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v34 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAEyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAEyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGGGSgGMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v34 - v24;
  closure #1 in closure #1 in closure #1 in SessionStatusView.body.getter(a1, v15);
  v26 = 0.0;
  if (WorkoutStatePublisher.workoutPaused.getter())
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v15, v22, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAEyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAEyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGGGSgGMR);
  *&v22[*(v17 + 44)] = v27;
  outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v22, v25, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
  v28 = v35;
  closure #2 in closure #1 in closure #1 in SessionStatusView.body.getter(a1, v38, v35);
  *(v28 + *(v36 + 44)) = SessionStatusView.glyphColor.getter();
  if (WorkoutStatePublisher.workoutPaused.getter())
  {
    v26 = 1.0;
  }

  outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v28, v10, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGMR);
  *&v10[*(v6 + 44)] = v26;
  v29 = v34;
  outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v10, v34, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v25, v19, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
  v30 = v37;
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v29, v37, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  v31 = v39;
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v19, v39, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVG_ACyACyAEyAGyAGyAN020PrecisionStartStatusN0VACyACyACyAiA012_AspectRatioP0VGARGAKGGAGyA8_AGyACyACyAN08AnimatedK5GlyphVAA17_FlipForRTLEffectVGAKGACyACyAN0k4TypeG0VA13_GAKGGGGGAA016_ForegroundStyleJ0VyAA5ColorVGGA0_GtMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVG_ACyACyAEyAGyAGyAN020PrecisionStartStatusN0VACyACyACyAiA012_AspectRatioP0VGARGAKGGAGyA8_AGyACyACyAN08AnimatedK5GlyphVAA17_FlipForRTLEffectVGAKGACyACyAN0k4TypeG0VA13_GAKGGGGGAA016_ForegroundStyleJ0VyAA5ColorVGGA0_GtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v30, v31 + *(v32 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v29, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v25, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v30, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB024PrecisionStartStatusViewVACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGAGyAuGyACyACyAH08AnimatedG5GlyphVAA17_FlipForRTLEffectVGATGACyACyAH0g4TypeL0VAZGATGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGAA16_GrayscaleEffectVGMR);
  return outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v19, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyACyAA5ImageVAA31AccessibilityAttachmentModifierVGALGAGyACyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGACyACyAiRGAKGGGSgGAA16_GrayscaleEffectVGMR);
}

void closure #1 in closure #1 in closure #1 in SessionStatusView.body.getter(double *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v98);
  v93 = &v86 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAGyAGyAA5ImageVALGAOG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAGyAGyAA5ImageVALGAOG_GMR);
  MEMORY[0x28223BE20](v96);
  v97 = &v86 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
  MEMORY[0x28223BE20](v112);
  v99 = &v86 - v6;
  v91 = type metadata accessor for AccessibilityTraits();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v95);
  v87 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v86 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGACyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGALGACyAGyAGy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAKGAGyAGyAiRGAKGG_GMR);
  MEMORY[0x28223BE20](v108);
  v111 = &v86 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAL_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAL_GMR);
  MEMORY[0x28223BE20](v105);
  v106 = &v86 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
  MEMORY[0x28223BE20](v110);
  v107 = &v86 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v104);
  v94 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for ConfigurationType();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGACyAEyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAIGAEyAEyAgPGAIGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGACyAEyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAIGAEyAEyAgPGAIGGGMR);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v109 = &v86 - v27;
  v28 = *a1;
  v113 = a1;
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    WorkoutStatePublisher.workoutPaused.getter();
  }

  else
  {
    swift_getKeyPath();
    *&v123 = v28;
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v28 + 18))
    {
      v29 = 1;
LABEL_20:
      (*(v114 + 56))(a2, v29, 1, v115);
      return;
    }
  }

  v103 = a2;
  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *&v123 = v28;
  v31 = lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  v102 = v30;
  v101 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v32 = *(v28 + 24);
  dispatch thunk of WorkoutConfiguration.type.getter();

  v33 = *MEMORY[0x277D7E100];
  v100 = *(v21 + 104);
  v100(v23, v33, v20);
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E130]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v21 + 8);
  v34(v23, v20);
  v34(v26, v20);
  if (v123 == v118)
  {
    SessionStatusView.raceColors.getter(&v123);
    v35 = v123;
    v36 = v124;

    SessionStatusView.raceColors.getter(&v118);
    v37 = v118;
    v38 = v119;
    v39 = v120;

    v40 = FIUICircularGradientImage();
    a2 = v103;
    if (v40)
    {
      *&v123 = Image.init(uiImage:)();
      View.accessibilityHidden(_:)();

      v41 = &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd;
      v42 = &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR;
      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v19, v106, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      v43 = v107;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v43, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      v44 = v109;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v43, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
      v45 = v19;
LABEL_17:
      v78 = v41;
      v79 = v42;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

  swift_getKeyPath();
  *&v123 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v28 + 24);
  dispatch thunk of WorkoutConfiguration.type.getter();

  v100(v23, *MEMORY[0x277D7E108], v20);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34(v23, v20);
  v34(v26, v20);
  if (v123 == v118)
  {
    v47 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v48 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.105882353 green:0.654901961 blue:0.607843137 alpha:1.0];
    v49 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v50 = [v48 colorWithAlphaComponent_];

    v51 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v52 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.105882353 green:0.654901961 blue:0.607843137 alpha:1.0];
    v53 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v54 = [v52 colorWithAlphaComponent_];
    v55 = [v51 colorWithAlphaComponent_];

    v56 = FIUICircularGradientImage();
    if (v56)
    {
      *&v123 = Image.init(uiImage:)();
      v57 = v94;
      View.accessibilityHidden(_:)();

      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v57, v106, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      v58 = v107;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v58, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      v44 = v109;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v58, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
      outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v57, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
      a2 = v103;
LABEL_19:
      outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(v44, a2, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGACyAEyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAIGAEyAEyAgPGAIGGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGACyAEyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAIGAEyAEyAgPGAIGGGMR);
      v29 = 0;
      goto LABEL_20;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_getKeyPath();
  *&v123 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v59 = *(v28 + 24);
  dispatch thunk of WorkoutConfiguration.type.getter();

  v100(v23, *MEMORY[0x277D7E110], v20);
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E128]);
  LOBYTE(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  v34(v23, v20);
  v34(v26, v20);
  v60 = v113;
  if ((v59 & 1) != 0 || !GoalPublisher.goal.getter())
  {
    GoalPublisher.goal.getter();
    v80 = FIUICircularWorkoutGradientImageWithGoal();
    a2 = v103;
    if (v80)
    {
      v81 = Image.init(uiImage:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v123 = v81;
      *(&v123 + 1) = v118;
      LOBYTE(v124) = BYTE8(v118);
      *(&v124 + 1) = v119;
      v125[0] = BYTE8(v119);
      *&v125[8] = v120;
      v82 = GoalPublisher.goal.getter();
      v116 = _HKWorkoutGoalType.accessibilityLabel.getter(v82);
      v117 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
      lazy protocol witness table accessor for type String and conformance String();
      v84 = v93;
      View.accessibilityLabel<A>(_:)();

      v41 = &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd;
      v42 = &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR;
      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v84, v97, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      v85 = v99;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v85, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
      v44 = v109;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
      v45 = v84;
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v61 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:GoalPublisher.goal.getter() value:0];
  v62 = v60[16];
  v63 = v61;
  v64 = GoalPublisher.progress.getter() / 100.0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v113 = v63;
  *&v118 = v63;
  *(&v118 + 1) = v62;
  *&v119 = 0x4014000000000000;
  *(&v119 + 1) = v64;
  v65 = GoalPublisher.goal.getter();
  v116 = _HKWorkoutGoalType.accessibilityLabel.getter(v65);
  v117 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v67 = v87;
  View.accessibilityLabel<A>(_:)();

  *v125 = v120;
  *&v125[16] = v121;
  v126 = v122;
  v124 = v119;
  v123 = v118;
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v123, &_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMR);
  GoalPublisher.progress.getter();
  v68 = AXFormatFloatWithPercentage();
  a2 = v103;
  if (v68)
  {
    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    *&v118 = v70;
    *(&v118 + 1) = v72;
    v73 = v88;
    v74 = v95;
    ModifiedContent<>.accessibilityValue<A>(_:)();

    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v67, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    v75 = v89;
    static AccessibilityTraits.updatesFrequently.getter();
    v76 = v92;
    MEMORY[0x20F308AB0](v75, v74);
    (*(v90 + 8))(v75, v91);
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v73, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v76, v97, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v77 = v99;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v77, v111, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    v44 = v109;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v77, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
    v45 = v76;
    v78 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd;
    v79 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR;
LABEL_18:
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v45, v78, v79);
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

uint64_t closure #2 in closure #1 in closure #1 in SessionStatusView.body.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a2;
  v180 = a3;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v163);
  v156 = &v138 - v4;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB008AnimatedG5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAGyAGyAH0G9TypeImageVALGAOG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB008AnimatedG5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAGyAGyAH0G9TypeImageVALGAOG_GMR);
  MEMORY[0x28223BE20](v159);
  v161 = &v138 - v5;
  v6 = type metadata accessor for AnimatedWorkoutGlyph(0);
  MEMORY[0x28223BE20](v6 - 8);
  v140 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMR);
  MEMORY[0x28223BE20](v141);
  v142 = &v138 - v8;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v160);
  v143 = &v138 - v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMR);
  MEMORY[0x28223BE20](v170);
  v162 = &v138 - v10;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGACyAGyAGy07WorkoutB008AnimatedO5GlyphVAA17_FlipForRTLEffectVGAQGAGyAGyAS0o4TypeG0VAWGAQGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGACyAGyAGy07WorkoutB008AnimatedO5GlyphVAA17_FlipForRTLEffectVGAQGAGyAGyAS0o4TypeG0VAWGAQGG_GMR);
  MEMORY[0x28223BE20](v168);
  v169 = &v138 - v11;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
  MEMORY[0x28223BE20](v179);
  v171 = &v138 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v153 = *(v13 - 8);
  v154 = v13;
  MEMORY[0x28223BE20](v13);
  v152 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StepType();
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x28223BE20](v15);
  v144 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v175);
  v155 = &v138 - v17;
  v18 = type metadata accessor for ConfigurationType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v173 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v138 - v22;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGACyAuCyAJyAJyAF08AnimatedF5GlyphVAA17_FlipForRTLEffectVGATGAJyAJyAF0f4TypeL0VAZGATGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVGGACyAuCyAJyAJyAF08AnimatedF5GlyphVAA17_FlipForRTLEffectVGATGAJyAJyAF0f4TypeL0VAZGATGGG_GMR);
  MEMORY[0x28223BE20](v176);
  v178 = &v138 - v24;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameO0VGAA31AccessibilityAttachmentModifierVG_GMR);
  MEMORY[0x28223BE20](v165);
  v166 = &v138 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
  MEMORY[0x28223BE20](v177);
  v167 = &v138 - v26;
  v27 = type metadata accessor for Logger();
  v147 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v157 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v150 = *(v29 - 8);
  v151 = v29;
  MEMORY[0x28223BE20](v29);
  v149 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v148 = &v138 - v32;
  started = type metadata accessor for PrecisionStartStatusView(0);
  MEMORY[0x28223BE20](started);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v138 - v36;
  v38 = *a1;
  v174 = a1;
  v199[0] = *(a1 + 9);
  v39 = *(&v199[0] + 1);

  v40 = WorkoutStatePublisher.workoutStarted.getter();
  v164 = v39;
  if (v40)
  {
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v199, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMR);
    WorkoutStatePublisher.workoutPaused.getter();
LABEL_10:
    swift_getKeyPath();
    *&v191 = v38;
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v51 = *(v38 + 24);
    dispatch thunk of WorkoutConfiguration.type.getter();

    v52 = v173;
    (*(v19 + 104))(v173, *MEMORY[0x277D7E110], v18);
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType, MEMORY[0x277D7E118], MEMORY[0x277D7E130]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v53 = *(v19 + 8);
    v53(v52, v18);
    v53(v23, v18);
    if (v191 == v187)
    {
      v54 = IntervalsMetricsPublisher.intervalThisStep.getter();
      if (v54)
      {
        v55 = v144;
        v174 = v54;
        WorkoutStep.stepType.getter();
        StepType.scaleableImage.getter();
        v56 = v146;
        v57 = *(v145 + 8);
        v57(v55, v146);
        Image.init(uiImage:)();
        v59 = v152;
        v58 = v153;
        v60 = v154;
        (*(v153 + 104))(v152, *MEMORY[0x277CE0FE0], v154);
        v61 = Image.resizable(capInsets:resizingMode:)();
        (*(v58 + 8))(v59, v60);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();

        *&v182[38] = v198;
        *&v182[22] = v197;
        *&v182[6] = v196;
        *&v188[2] = *v182;
        LOBYTE(v183) = 1;
        v187 = v61;
        *v188 = 1;
        *&v188[18] = *&v182[16];
        *&v188[34] = *&v182[32];
        *&v188[48] = *(&v198 + 1);
        WorkoutStep.stepType.getter();
        v62 = StepType.displayString.getter();
        v64 = v63;
        v57(v55, v56);
        v185 = v62;
        v186 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type String and conformance String();
        v65 = v155;
        View.accessibilityLabel<A>(_:)();

        v192 = *v188;
        v193 = *&v188[16];
        v194 = *&v188[32];
        v195 = *&v188[48];
        v191 = v187;
        outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v191, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
        outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v65, v166, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type PrecisionStartStatusView and conformance PrecisionStartStatusView, type metadata accessor for PrecisionStartStatusView, &protocol conformance descriptor for PrecisionStartStatusView);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
        v66 = v167;
        _ConditionalContent<>.init(storage:)();
        outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v66, v178, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>();
        _ConditionalContent<>.init(storage:)();

        outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v66, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
        v67 = v65;
        v68 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd;
        v69 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR;
        return outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v67, v68, v69);
      }
    }

    if (TrackRunningMetricsPublisher.trackInfo.getter())
    {
      if (dispatch thunk of RunningTrackInfo.shouldShowTrackRunningDuringSession.getter())
      {
        v70 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();
        v71 = dispatch thunk of TrackRunningCoordinator.trackModeEnabledMirrored.getter();

        if (v71)
        {
          *&v187 = dispatch thunk of RunningTrackInfo.laneNumber.getter();
          KeyPath = MEMORY[0x277D83B88];
          *&v191 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v191 + 1) = v72;
          MEMORY[0x20F30BC00](0x656E616C2ELL, 0xE500000000000000);
          Image.init(systemName:)();
          v74 = v152;
          v73 = v153;
          v75 = v154;
          (*(v153 + 104))(v152, *MEMORY[0x277CE0FE0], v154);
          v76 = Image.resizable(capInsets:resizingMode:)();
          (*(v73 + 8))(v74, v75);
          static Alignment.center.getter();
          _FrameLayout.init(width:height:alignment:)();

          v190 = 1;
          v34 = &v187;
          *&v189[22] = v197;
          *&v189[38] = v198;
          *&v189[6] = v196;
          v187 = v76;
          *v188 = 1;
          *&v188[2] = *v189;
          *&v188[18] = *&v189[16];
          *&v188[34] = *&v189[32];
          *&v188[48] = *(&v198 + 1);
          if (one-time initialization token for WorkoutUIBundle == -1)
          {
LABEL_17:
            swift_beginAccess();
            v77 = WorkoutUIBundle.super.isa;
            v200._object = 0xE000000000000000;
            v78._countAndFlagsBits = 0x5F454E414C5F5841;
            v78._object = 0xED00004C4542414CLL;
            v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v79.value._object = 0xEB00000000656C62;
            v80._countAndFlagsBits = 0;
            v80._object = 0xE000000000000000;
            v200._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v200);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_20CB5DA70;
            v82 = dispatch thunk of RunningTrackInfo.laneNumber.getter();
            v83 = MEMORY[0x277D83C10];
            *(v81 + 56) = KeyPath;
            *(v81 + 64) = v83;
            *(v81 + 32) = v82;
            v84 = String.init(format:_:)();
            v86 = v85;

            v183 = v84;
            v184 = v86;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
            lazy protocol witness table accessor for type String and conformance String();
            v87 = v155;
            View.accessibilityLabel<A>(_:)();

            v88 = v187;
            *(v34 + 152) = *v188;
            v89 = *&v188[32];
            *(v34 + 168) = *&v188[16];
            *(v34 + 184) = v89;
            v195 = *&v188[48];
            *(v34 + 136) = v88;
            outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v191, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
            outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v87, v169, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR);
            swift_storeEnumTagMultiPayload();
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
            lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
            v90 = v171;
            _ConditionalContent<>.init(storage:)();
            outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v90, v178, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
            swift_storeEnumTagMultiPayload();
            lazy protocol witness table accessor for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
            lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>();
            _ConditionalContent<>.init(storage:)();

            outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v90, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
            v67 = v87;
            v68 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd;
            v69 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR;
            return outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v67, v68, v69);
          }

LABEL_37:
          swift_once();
          goto LABEL_17;
        }
      }
    }

    v91 = v158;
    if (FIUIWorkoutSupportsAnimatedIcon())
    {
      if (WorkoutStatePublisher.workoutStarted.getter())
      {
        if ((WorkoutStatePublisher.workoutPaused.getter() & 1) == 0)
        {
LABEL_22:
          if (SessionStatusView.shouldAnimate.getter())
          {
            v92 = WorkoutStatePublisher.workoutPaused.getter() ^ 1;
          }

          else
          {
            v92 = 0;
          }

          v102 = v162;
          v129 = v91;
          v130 = v92 & 1;
          v131 = v140;
          AnimatedWorkoutGlyph.init(activityType:iconSize:animated:)(v129, v130, v140);
          v132 = v142;
          outlined init with take of AnimatedWorkoutGlyph(v131, v142, type metadata accessor for AnimatedWorkoutGlyph);
          *(v132 + *(v141 + 36)) = 1;
          v133 = [v129 localizedName];
          v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v136 = v135;

          *&v191 = v134;
          *(&v191 + 1) = v136;
          lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type String and conformance String();
          v98 = v143;
          View.accessibilityLabel<A>(_:)();

          outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v132, &_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMR);
          v100 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd;
          v101 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR;
          outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v98, v161, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
          goto LABEL_33;
        }
      }

      else
      {
        swift_getKeyPath();
        *&v191 = v38;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        if ((*(v38 + 18) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v93 = SessionStatusView.glyphColor.getter();
    *&v191 = v91;
    *(&v191 + 1) = 2;
    *&v192 = v93;
    BYTE8(v192) = 1;
    v94 = [v91 localizedName];
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    *&v196 = v95;
    *(&v196 + 1) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    v98 = v156;
    View.accessibilityLabel<A>(_:)();

    v99 = v191;

    v100 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd;
    v101 = &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR;
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v98, v161, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    v102 = v162;
LABEL_33:
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v98, v100, v101);
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v102, v169, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    v137 = v171;
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v137, v178, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v137, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
    v67 = v102;
    v68 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMd;
    v69 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMR;
    return outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v67, v68, v69);
  }

  v138 = v27;
  v139 = v37;
  swift_getKeyPath();
  *&v191 = v38;
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if ((*(v38 + 18) & 1) == 0)
  {
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v199, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore0E14StatePublisherCGMR);
    goto LABEL_10;
  }

  swift_getKeyPath();
  *&v191 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v41 = *(v38 + 24);
  v173 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  swift_getKeyPath();
  *&v187 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v38 + 24);
  KeyPath = swift_getKeyPath();
  *&v187 = v38;
  v171 = v42;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v38 + 24);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v45 = v44;
    v46 = MultiSportWorkoutConfiguration.subConfigs.getter();
    v47 = v157;
    if (v46 >> 62)
    {
      KeyPath = v46;
      v48 = __CocoaSet.count.getter();
    }

    else
    {
      v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v48, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v49 = (v48 - 1) & ~((v48 - 1) >> 63);
    v50 = v174;
  }

  else
  {
    v49 = 0;
    v50 = v174;
    v47 = v157;
  }

  v103 = *(v50 + 128);
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v34 + 9) = implicit closure #2 in implicit closure #1 in variable initialization expression of PrecisionStartStatusView._gpsLockProvider;
  *(v34 + 10) = 0;
  v34[88] = 0;
  LOBYTE(v196) = 0;
  State.init(wrappedValue:)();
  v104 = *(&v187 + 1);
  v34[96] = v187;
  *(v34 + 13) = v104;
  LOBYTE(v196) = 0;
  State.init(wrappedValue:)();
  v105 = *(&v187 + 1);
  v34[112] = v187;
  *(v34 + 15) = v105;
  v106 = v148;
  Date.init()();
  v107 = v150;
  v108 = v151;
  (*(v150 + 16))(v149, v106, v151);
  State.init(wrappedValue:)();
  (*(v107 + 8))(v106, v108);
  v109 = type metadata accessor for ReminderHaptic();
  v110 = objc_allocWithZone(v109);
  *&v110[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v110[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v174 = v49;
    v114 = v103;
    v115 = v113;
    v116 = swift_slowAlloc();
    *&v187 = v116;
    *v115 = 136446210;
    *(v115 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020CB948A0, &v187);
    _os_log_impl(&dword_20C66F000, v111, v112, "Creating reminder haptic for identifier=%{public}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x20F30E080](v116, -1, -1);
    v117 = v115;
    v103 = v114;
    v49 = v174;
    MEMORY[0x20F30E080](v117, -1, -1);

    (*(v147 + 8))(v157, v138);
  }

  else
  {

    (*(v147 + 8))(v47, v138);
  }

  v118 = started;
  v119 = &v34[*(started + 64)];
  *&v110[OBJC_IVAR___WOReminderHaptic_timeInterval] = 0x4066800000000000;
  *&v110[OBJC_IVAR___WOReminderHaptic_systemSoundID] = 1540;
  *&v110[OBJC_IVAR___WOReminderHaptic_maximumReminders] = 10;
  v120 = &v110[OBJC_IVAR___WOReminderHaptic_identifier];
  *v120 = 0xD000000000000018;
  *(v120 + 1) = 0x800000020CB948A0;
  v181.receiver = v110;
  v181.super_class = v109;
  *&v196 = objc_msgSendSuper2(&v181, sel_init);
  State.init(wrappedValue:)();
  v121 = *(&v187 + 1);
  *v119 = v187;
  *(v119 + 1) = v121;
  v122 = &v34[*(v118 + 68)];
  LOBYTE(v196) = 0;
  State.init(wrappedValue:)();
  v123 = *(&v187 + 1);
  *v122 = v187;
  *(v122 + 1) = v123;
  v124 = v171;
  *(v34 + 2) = v173;
  *(v34 + 3) = v124;
  *(v34 + 4) = v49;
  v34[50] = 0;
  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  *(v34 + 7) = ObservedObject.init(wrappedValue:)();
  *(v34 + 8) = v125;
  *(v34 + 5) = v103;
  *(v34 + 24) = 0;
  v126 = v139;
  outlined init with take of AnimatedWorkoutGlyph(v34, v139, type metadata accessor for PrecisionStartStatusView);
  outlined init with copy of WorkoutTimeView(v126, v166, type metadata accessor for PrecisionStartStatusView);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type PrecisionStartStatusView and conformance PrecisionStartStatusView, type metadata accessor for PrecisionStartStatusView, &protocol conformance descriptor for PrecisionStartStatusView);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  v127 = v167;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(v127, v178, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(v127, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
  return outlined destroy of WorkoutTimeView(v126, type metadata accessor for PrecisionStartStatusView);
}

uint64_t closure #2 in closure #1 in SessionStatusView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 112);
  v10 = *(a1 + 104);
  v18 = v10;
  if (v19 == 1)
  {
    if ((v10 & 1) == 0)
    {
LABEL_3:
      AppStorage.wrappedValue.getter();
      v17 = (v16 & 1) == 0;
      return AppStorage.wrappedValue.setter();
    }
  }

  else
  {
    outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(&v18, &v16, &_s7SwiftUI11EnvironmentVy07WorkoutB00D14AnimationStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D14AnimationStyleOGMR);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, Accessibi(&v18, &_s7SwiftUI11EnvironmentVy07WorkoutB00D14AnimationStyleOGMd, &_s7SwiftUI11EnvironmentVy07WorkoutB00D14AnimationStyleOGMR);
    (*(v7 + 8))(v9, v6);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  static WOLog.app.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20C66F000, v13, v14, "Ignoring double-tap during low power mode", v15, 2u);
    MEMORY[0x20F30E080](v15, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for View.body.getter in conformance SessionStatusView@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[7];
  v12[6] = v2[6];
  v12[7] = v4;
  v12[8] = v2[8];
  v5 = v2[3];
  v12[2] = v2[2];
  v12[3] = v5;
  v6 = v2[5];
  v12[4] = v2[4];
  v12[5] = v6;
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAIyAKyAA5GroupVyAA012_ConditionalJ0VyAWyAKyAA5ImageVAA0N18AttachmentModifierVGA0_GAWyAKyAKy07WorkoutB008GoalRingD0VAA06_FrameG0VGA_GAKyAKyAYA6_GA_GGGSgGAA16_GrayscaleEffectVG_AKyAKyAUyAWyAWyA2_020PrecisionStartStatusD0VAKyAKyAKyAyA012_AspectRatioG0VGA6_GA_GGAWyA24_AWyAKyAKyA2_08AnimatedW5GlyphVAA17_FlipForRTLEffectVGA_GAKyAKyA2_0w4TypeT0VA29_GA_GGGGGAA016_ForegroundStyleV0VyAA5ColorVGGA16_GtGG_Qo_A_GAA01_j9ShapeKindV0VyAA6CircleVGG_AA6SpacerVAmAE12onTapGesture5count7performQrSi_yyctFQOyAKyAKyA2_0w4TimeD0VAA022_EnvironmentKeyWritingV0Vy12CoreGraphics7CGFloatVGGA65_yA43_SgGG_Qo_A58_AKyAKyA2_013ActivityRingsD0VA6_GA16_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAIyAKyAA5GroupVyAA012_ConditionalJ0VyAWyAKyAA5ImageVAA0N18AttachmentModifierVGA0_GAWyAKyAKy07WorkoutB008GoalRingD0VAA06_FrameG0VGA_GAKyAKyAYA6_GA_GGGSgGAA16_GrayscaleEffectVG_AKyAKyAUyAWyAWyA2_020PrecisionStartStatusD0VAKyAKyAKyAyA012_AspectRatioG0VGA6_GA_GGAWyA24_AWyAKyAKyA2_08AnimatedW5GlyphVAA17_FlipForRTLEffectVGA_GAKyAKyA2_0w4TypeT0VA29_GA_GGGGGAA016_ForegroundStyleV0VyAA5ColorVGGA16_GtGG_Qo_A_GAA01_j9ShapeKindV0VyAA6CircleVGG_AA6SpacerVAmAE12onTapGesture5count7performQrSi_yyctFQOyAKyAKyA2_0w4TimeD0VAA022_EnvironmentKeyWritingV0Vy12CoreGraphics7CGFloatVGGA65_yA43_SgGG_Qo_A58_AKyAKyA2_013ActivityRingsD0VA6_GA16_GtGGMR);
  closure #1 in SessionStatusView.body.getter(v12, a2 + *(v8 + 44));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAGyACyAA5GroupVyAA012_ConditionalD0VyASyACyAA5ImageVAA0K18AttachmentModifierVGAXGASyACyACy07WorkoutB008GoalRingG0VAA12_FrameLayoutVGAWGACyACyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_ACyACyAQyASyASyAZ020PrecisionStartStatusG0VACyACyACyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyACyACyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGACyACyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_d9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAZ0t4TimeG0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_ACyACyAZ013ActivityRingsG0VA2_GA12_GtGGA61_yAZ0tG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAGyACyAA5GroupVyAA012_ConditionalD0VyASyACyAA5ImageVAA0K18AttachmentModifierVGAXGASyACyACy07WorkoutB008GoalRingG0VAA12_FrameLayoutVGAWGACyACyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_ACyACyAQyASyASyAZ020PrecisionStartStatusG0VACyACyACyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyACyACyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGACyACyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_d9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAZ0t4TimeG0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_ACyACyAZ013ActivityRingsG0VA2_GA12_GtGGA61_yAZ0tG5StyleOGGMR);
  v11 = a2 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 1;
  return result;
}

uint64_t outlined assign with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of Environment<WorkoutAnimationStyle>.Content(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAHyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _Fl(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E8TimeViewVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type WorkoutTimeView and conformance WorkoutTimeView, type metadata accessor for WorkoutTimeView, &protocol conformance descriptor for WorkoutTimeView);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _Fl(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage();
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutTypeImage and conformance WorkoutTypeImage()
{
  result = lazy protocol witness table cache variable for type WorkoutTypeImage and conformance WorkoutTypeImage;
  if (!lazy protocol witness table cache variable for type WorkoutTypeImage and conformance WorkoutTypeImage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutTypeImage and conformance WorkoutTypeImage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect()
{
  result = lazy protocol witness table cache variable for type _FlipForRTLEffect and conformance _FlipForRTLEffect;
  if (!lazy protocol witness table cache variable for type _FlipForRTLEffect and conformance _FlipForRTLEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FlipForRTLEffect and conformance _FlipForRTLEffect);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGMR);
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph and conformance AnimatedWorkoutGlyph, type metadata accessor for AnimatedWorkoutGlyph, &protocol conformance descriptor for AnimatedWorkoutGlyph);
    lazy protocol witness table accessor for type _FlipForRTLEffect and conformance _FlipForRTLEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB008AnimatedF5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGAEyAEyAF0F9TypeImageVAJGAMGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB008AnimatedE5GlyphVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB00E9TypeImageVAA17_FlipForRTLEffectVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB024PrecisionStartStatusViewVAA08ModifiedD0VyAHyAHyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGAA31AccessibilityAttachmentModifierVGGMR);
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type PrecisionStartStatusView and conformance PrecisionStartStatusView, type metadata accessor for PrecisionStartStatusView, &protocol conformance descriptor for PrecisionStartStatusView);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA31AccessibilityAttachmentModifierVGACyAEyAEy07WorkoutB008AnimatedN5GlyphVAA17_FlipForRTLEffectVGAOGAEyAEyAQ0n4TypeF0VAUGAOGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _FlipForRTLEffect>, AccessibilityAttachmentModifier>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of AnimatedWorkoutGlyph(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutTimeView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutTimeView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GoalRingView and conformance GoalRingView()
{
  result = lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView;
  if (!lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView;
  if (!lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GoalRingView and conformance GoalRingView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ActivitySummaryMetricsPublisher and conformance ActivitySummaryMetricsPublisher(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGAEyAEyAA5ImageVAJGAMGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB012GoalRingViewVAA12_FrameLayoutVGAA31AccessibilityAttachmentModifierVGMR, lazy protocol witness table accessor for type ModifiedContent<GoalRingView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<WorkoutTimeView, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>, Spacer, <<opaque return type of View.onTapGesture(count:perform:)>>.0, Spacer, ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>, Spacer, <<opaque return type of View.onTapGesture(count:perform:)>>.0, Spacer, ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>, Spacer, <<opaque return type of View.onTapGesture(count:perform:)>>.0, Spacer, ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAGyACyAA5GroupVyAA012_ConditionalD0VyASyACyAA5ImageVAA0K18AttachmentModifierVGAXGASyACyACy07WorkoutB008GoalRingG0VAA12_FrameLayoutVGAWGACyACyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_ACyACyAQyASyASyAZ020PrecisionStartStatusG0VACyACyACyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyACyACyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGACyACyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_d9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAZ0t4TimeG0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_ACyACyAZ013ActivityRingsG0VA2_GA12_GtGGA61_yAZ0tG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA0G0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAGyACyAA5GroupVyAA012_ConditionalD0VyASyACyAA5ImageVAA0K18AttachmentModifierVGAXGASyACyACy07WorkoutB008GoalRingG0VAA12_FrameLayoutVGAWGACyACyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_ACyACyAQyASyASyAZ020PrecisionStartStatusG0VACyACyACyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyACyACyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGACyACyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_d9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyACyACyAZ0t4TimeG0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_ACyACyAZ013ActivityRingsG0VA2_GA12_GtGGA61_yAZ0tG5StyleOGGMR);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _Fl(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>, Spacer, <<opaque return type of View.onTapGesture(count:perform:)>>.0, Spacer, ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAEyAGyAA5GroupVyAA012_ConditionalG0VyASyAGyAA5ImageVAA0K18AttachmentModifierVGAXGASyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAWGAGyAGyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_AGyAGyAQyASyASyAZ020PrecisionStartStatusE0VAGyAGyAGyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyAGyAGyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGAGyAGyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_g9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAZ0t4TimeE0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_AGyAGyAZ013ActivityRingsE0VA2_GA12_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAEyAGyAA5GroupVyAA012_ConditionalG0VyASyAGyAA5ImageVAA0K18AttachmentModifierVGAXGASyAGyAGy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAWGAGyAGyAUA2_GAWGGGSgGAA16_GrayscaleEffectVG_AGyAGyAQyASyASyAZ020PrecisionStartStatusE0VAGyAGyAGyAuA012_AspectRatioX0VGA2_GAWGGASyA20_ASyAGyAGyAZ08AnimatedT5GlyphVAA17_FlipForRTLEffectVGAWGAGyAGyAZ0t4TypeQ0VA25_GAWGGGGGAA016_ForegroundStyleS0VyAA5ColorVGGA12_GtGG_Qo_AWGAA01_g9ShapeKindS0VyAA6CircleVGG_AA6SpacerVAiAE12onTapGesture5count7performQrSi_yyctFQOyAGyAGyAZ0t4TimeE0VAA022_EnvironmentKeyWritingS0Vy12CoreGraphics7CGFloatVGGA61_yA39_SgGG_Qo_A54_AGyAGyAZ013ActivityRingsE0VA2_GA12_GtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<GoalRingView, _FrameLayout>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Image, _FrameLayout>, AccessibilityAttachmentModifier>>>?>, _GrayscaleEffect>, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<PrecisionStartStatusView, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>>, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _ConditionalContent<ModifiedContent<ModifiedContent<AnimatedWorkoutGlyph, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<WorkoutTypeImage, _Fl(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, _ContentShapeKindModifier<Circle>>, Spacer, <<opaque return type of View.onTapGesture(count:perform:)>>.0, Spacer, ModifiedContent<ModifiedContent<ActivityRingsView, _FrameLayout>, _GrayscaleEffect>)>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static WorkoutAlertPresenter.DisplayedWorkoutAlert.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutAlertPresenter.DisplayedWorkoutAlert(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t (*WorkoutAlertPresenter._display.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOWorkoutAlertPresenter__display;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return WorkoutAlertPresenter._display.modify;
}

uint64_t key path getter for WorkoutAlertPresenter.display : WorkoutAlertPresenter@<X0>(uint64_t *a4@<X8>)
{
  return key path getter for WorkoutAlertPresenter.display : WorkoutAlertPresenter(a4);
}

{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutAlertPresenter(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutAlertPresenter;
  if (!type metadata singleton initialization cache for WorkoutAlertPresenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*WorkoutAlertPresenter.display.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutAlertPresenter._display.modify(v4);
  return WorkoutAlertPresenter.display.modify;
}

uint64_t (*WorkoutAlertPresenter._traitEnvironment.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOWorkoutAlertPresenter__traitEnvironment;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return WorkoutAlertPresenter._traitEnvironment.modify;
}

uint64_t key path setter for WorkoutAlertPresenter.display : WorkoutAlertPresenter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t WorkoutAlertPresenter.display.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t WorkoutAlertPresenter.display.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t (*WorkoutAlertPresenter.traitEnvironment.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutAlertPresenter._traitEnvironment.modify(v4);
  return WorkoutAlertPresenter.traitEnvironment.modify;
}

void (*WorkoutAlertPresenter._inactiveAppearanceAnimationCoordinator.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOWorkoutAlertPresenter__inactiveAppearanceAnimationCoordinator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return WorkoutAlertPresenter._inactiveAppearanceAnimationCoordinator.modify;
}

void WorkoutAlertPresenter._inactiveAppearanceAnimationCoordinator.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void key path setter for WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator : WorkoutAlertPresenter(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator.setter(v1);
}

void WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      type metadata accessor for InactiveAppearanceAnimationCoordinator();
      v4 = v3;
      v5 = static NSObject.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutAlertPresenter._inactiveAppearanceAnimationCoordinator.modify(v4);
  return WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator.modify;
}

uint64_t (*WorkoutAlertPresenter._alertSuppressor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOWorkoutAlertPresenter__alertSuppressor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return WorkoutAlertPresenter._alertSuppressor.modify;
}

void WorkoutAlertPresenter._display.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*WorkoutAlertPresenter.alertSuppressor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutAlertPresenter._alertSuppressor.modify(v4);
  return WorkoutAlertPresenter.alertSuppressor.modify;
}

void *WorkoutAlertPresenter.announcer.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOWorkoutAlertPresenter_announcer);
  v2 = v1;
  return v1;
}

void WorkoutAlertPresenter.currentAlert.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert;
  v5 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NLWorkoutAlert, 0x277D7E7A8);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void key path setter for WorkoutAlertPresenter.currentAlert : WorkoutAlertPresenter(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutAlertPresenter.currentAlert.setter(v1);
}

void WorkoutAlertPresenter._isAlertingANonVisualAlert.didset(char a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert) & 1) == 0 && (a1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert))
    {
      v5 = swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = OBJC_IVAR___WOWorkoutAlertPresenter__queuedAlerts;
      swift_beginAccess();
      v7 = *(v1 + v6);
      if (v7 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          return;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {

        v5 = MEMORY[0x20F30C990](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v7 + 32);
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v7 = *(v2 + v6);
      KeyPath = v7 >> 62;
      if (!(v7 >> 62))
      {
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(v2 + v6);
      if (!__CocoaSet.count.getter())
      {
LABEL_30:
        __break(1u);
        return;
      }

      v7 = v10;
      if (__CocoaSet.count.getter())
      {
LABEL_11:
        if ((v7 & 0xC000000000000001) == 0)
        {
          v8 = v7 & 0xFFFFFFFFFFFFFF8;
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (!KeyPath)
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }

LABEL_23:
        MEMORY[0x20F30C990](0, v7);
        swift_unknownObjectRelease();
        v8 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!KeyPath)
        {
LABEL_14:
          v9 = *(v8 + 16);
          goto LABEL_25;
        }

LABEL_24:
        v9 = __CocoaSet.count.getter();
LABEL_25:
        if (v9)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
          swift_endAccess();
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          WorkoutAlertPresenter.notifyUser(with:)(v5);

          return;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }
}

void WorkoutAlertPresenter.isAlertingANonVisualAlert.setter(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert) = v2;

    WorkoutAlertPresenter._isAlertingANonVisualAlert.didset(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id key path getter for WorkoutAlertPresenter.displayedWorkoutAlert : WorkoutAlertPresenter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR___WOWorkoutAlertPresenter__displayedWorkoutAlert);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *v4;
  *a2 = *v4;
  *(a2 + 16) = v5;

  return v6;
}

void key path setter for WorkoutAlertPresenter.displayedWorkoutAlert : WorkoutAlertPresenter(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  v2 = v3;
  WorkoutAlertPresenter.displayedWorkoutAlert.setter(&v3);
}

id WorkoutAlertPresenter.displayedWorkoutAlert.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR___WOWorkoutAlertPresenter__displayedWorkoutAlert);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v4;

  return v5;
}

void WorkoutAlertPresenter.displayedWorkoutAlert.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR___WOWorkoutAlertPresenter__displayedWorkoutAlert;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *v5;
  LOBYTE(v6) = specialized WorkoutAlertPresenter.shouldNotifyObservers<A>(_:_:)(v6, v7, v8, v2, v3, v4);

  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v11 = *v5;
    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }
}

void closure #1 in WorkoutAlertPresenter.displayedWorkoutAlert.setter(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR___WOWorkoutAlertPresenter__displayedWorkoutAlert;
  swift_beginAccess();
  v8 = *v7;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  v9 = a2;
}

uint64_t (*WorkoutAlertPresenter.displayedWorkoutAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutAlertPresenter._displayedWorkoutAlert.modify(v4);
  return WorkoutAlertPresenter.displayedWorkoutAlert.modify;
}

void WorkoutAlertPresenter.display.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t key path getter for WorkoutAlertPresenter.cancellables : WorkoutAlertPresenter@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t WorkoutAlertPresenter.cancellables.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t WorkoutAlertPresenter.cancellables.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in WorkoutAlertPresenter.cancellables.setter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t WorkoutAlertPresenter.lastBacklightState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState);
}

uint64_t key path getter for WorkoutAlertPresenter.lastBacklightState : WorkoutAlertPresenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState);
  return result;
}

uint64_t WorkoutAlertPresenter.lastBacklightState.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *WorkoutAlertPresenter.currentAlert.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id key path getter for WorkoutAlertPresenter.currentAlert : WorkoutAlertPresenter@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void WorkoutAlertPresenter.backlightTimer.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer;
  v5 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer);
  if (!v5)
  {
    if (!a1)
    {
      v11 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v10 = v7;
  [v11 invalidate];
}

double WorkoutAlertPresenter.notificationCenter.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for WorkoutAlertPresenter.notificationCenter : WorkoutAlertPresenter@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);

  return result;
}

uint64_t WorkoutAlertPresenter.isAlertingANonVisualAlert.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t key path getter for WorkoutAlertPresenter.isAlertingANonVisualAlert : WorkoutAlertPresenter@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t WorkoutAlertPresenter.isWorkoutBuddySupported.setter(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

char *WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v17 = a3;
  swift_getObjectType();
  return specialized WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(a1, a2, v17, a4, a5, a6, a7, a8, a9, a10, a11, a12, v12);
}

uint64_t closure #1 in WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:), v7, v6);
}

uint64_t closure #1 in WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();
    v4 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter() & 1;
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v3);
    if (v4 == v2[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddySupported])
    {
      v2[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddySupported] = v4;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v2;
      *(v5 + 24) = v4;
      *(v0 + 40) = v2;
      lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v6 = (dispatch thunk of WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter() ^ 1) & 1;
    if (v6 == v2[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddyAvailableInCurrentWorkout])
    {
      v2[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddyAvailableInCurrentWorkout] = v6;
    }

    else
    {
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v2;
      *(v7 + 24) = v6;
      *(v0 + 40) = v2;
      lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

void closure #2 in WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v9 = v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v11 = Strong, swift_getKeyPath(), v23[0] = v11, lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v12 = *&v11[OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert], v13 = v12, v11, v12))
    {
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        WorkoutAlertPresenter.displayCompleted(for:)(v13);
      }
    }

    else
    {
      static WOLog.alerts.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23[0] = v19;
        *v18 = 136315138;
        v20 = _typeName(_:qualified:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v23);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_20C66F000, v16, v17, "[%s]: currentAlert nil when notification center published update; skipping call to display completed", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x20F30E080](v19, -1, -1);
        MEMORY[0x20F30E080](v18, -1, -1);
      }

      (*(v5 + 8))(v8, v9);
    }
  }
}

id WorkoutAlertPresenter.__deallocating_deinit()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*&v0[OBJC_IVAR___WOWorkoutAlertPresenter__workoutAlertTester])
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v4 = v0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WorkoutAlertPresenter(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void WorkoutAlertPresenter.handleWorkoutAlert(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  static WOLog.alerts.getter();
  v12 = a1;
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v51 = v8;
    v52 = v4;
    v53 = v3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    swift_getKeyPath();
    v56 = v13;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    v18 = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = Strong;
    if (Strong)
    {
      v21 = [Strong traitCollection];
      swift_unknownObjectRelease();
      v22 = [v21 activeAppearance];
    }

    else
    {
      v22 = 0;
    }

    v56 = v22;
    v57 = v20 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v24 = Optional.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v55);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20C66F000, v14, v15, "Received in-session workout_alert=%@, active_appearance=%s", v16, 0x16u);
    outlined destroy of NSObject?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v17, -1, -1);
    v27 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v16, -1, -1);

    v3 = v53;
    v23 = *(v52 + 8);
    v23(v11, v53);
    v8 = v51;
  }

  else
  {

    v23 = *(v4 + 8);
    v23(v11, v3);
  }

  if (WorkoutAlertPresenter.shouldSuppress(_:)(v12))
  {
    static WOLog.alerts.getter();
    v28 = v12;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_20C66F000, v29, v30, "Suppressing in-session workout_alert=%@", v31, 0xCu);
      outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v32, -1, -1);
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    v23(v54, v3);
    return;
  }

  if (!WorkoutAlertPresenter.shouldQueue(_:)(v12))
  {
    WorkoutAlertPresenter.notifyUser(with:)(v12);
    return;
  }

  static WOLog.alerts.getter();
  v34 = v12;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v8;
    v39 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&dword_20C66F000, v35, v36, "Queuing workout_alert=%@", v37, 0xCu);
    outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = v39;
    v8 = v38;
    MEMORY[0x20F30E080](v41, -1, -1);
    MEMORY[0x20F30E080](v37, -1, -1);
  }

  v23(v8, v3);
  [v34 type];
  if ((NLWorkoutAlertType.shouldQueueMultipleAlerts.getter() & 1) == 0)
  {
    swift_getKeyPath();
    v56 = v13;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    v42 = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = v13;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v43 = OBJC_IVAR___WOWorkoutAlertPresenter__queuedAlerts;
    swift_beginAccess();
    v44 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v13[v43], v42);

    v45 = *&v13[v43];
    if (v45 >> 62)
    {
      v46 = __CocoaSet.count.getter();
      if (v46 >= v44)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 >= v44)
      {
LABEL_17:
        specialized Array.replaceSubrange<A>(_:with:)(v44, v46, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        swift_endAccess();
        v56 = v13;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        goto LABEL_18;
      }
    }

    __break(1u);
    return;
  }

LABEL_18:
  swift_getKeyPath();
  v56 = v13;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = v13;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR___WOWorkoutAlertPresenter__queuedAlerts;
  swift_beginAccess();
  v48 = v34;
  MEMORY[0x20F30BCF0]();
  if (*((*&v13[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v13[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v56 = v13;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void WorkoutAlertPresenter.announceWorkoutAlert(_:)(void *a1)
{
  WorkoutAlertPresenter.isAlertASplitWithMotivationOn(_:)(a1);
  if ((v3 & 1) == 0 && ([a1 isNonVisualAlert] & 1) == 0 && objc_msgSend(a1, sel_type) != 27 && *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter_announcer))
  {
    v4 = [a1 spokenDescriptionWithFormattingManager_];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of Announcer.announce(utterance:)();
  }
}

void WorkoutAlertPresenter.isAlertASplitWithMotivationOn(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  type metadata accessor for WorkoutAlertSegment();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = a1;
  if ([v12 type] != 6)
  {
LABEL_10:

    return;
  }

  v14 = *(v2 + OBJC_IVAR___WOWorkoutAlertPresenter_liveWorkoutConfiguration);
  if (!v14)
  {

    return;
  }

  v34 = v5;
  v35 = v13;
  v36 = dispatch thunk of LiveWorkoutConfiguration.currentActivityType.getter();
  swift_getKeyPath();
  v37 = v2;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  v13 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddySupported) != 1)
  {

    goto LABEL_10;
  }

  v33 = v13;
  v15 = v36;
  v16 = *(v2 + OBJC_IVAR___WOWorkoutAlertPresenter_workoutVoiceAvailabilityProvider);
  if (v16)
  {
    v17 = v16;
    v18 = dispatch thunk of WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter();

    if (v18)
    {

      return;
    }
  }

  v19 = [v15 workoutActivityType];
  v20 = [*(v2 + OBJC_IVAR___WOWorkoutAlertPresenter_formattingManager) unitManager];
  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  v32 = [v20 unitManager];

  v22 = WorkoutAlertSegment.segmentMarker.getter();
  v23 = [v22 distance];

  if (!v23)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [v23 _value];

  v24 = objc_opt_self();
  v25 = [v24 meters];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  v26 = *(v2 + OBJC_IVAR___WOWorkoutAlertPresenter_splitProvider);
  if (v26)
  {
    [v26 definedSplitDistance];
  }

  v27 = v33;
  v28 = v34;
  v29 = v32;
  type metadata accessor for LiveWorkoutContextManager();
  v30 = [v24 meters];
  Measurement.init(value:unit:)();
  MEMORY[0x20F303730](v19, v29, v10, v7, v27);

  v31 = *(v28 + 8);
  v31(v7, v4);
  v31(v10, v4);
}

void WorkoutAlertPresenter.notifyUser(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchTime();
  v64 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  static WOLog.alerts.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v62 = v12;
    v22 = v11;
    v23 = v2;
    v24 = v8;
    v25 = v4;
    v26 = v21;
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v27 = v17;
    _os_log_impl(&dword_20C66F000, v18, v19, "Notify user of workout_alert=%@", v20, 0xCu);
    outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v28 = v26;
    v4 = v25;
    v8 = v24;
    v2 = v23;
    v11 = v22;
    v12 = v62;
    MEMORY[0x20F30E080](v28, -1, -1);
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  v29 = v12[1];
  v29(v16, v11);
  if (([v17 isNonVisualAlert] & 1) == 0)
  {
    v30 = v17;
    WorkoutAlertPresenter.currentAlert.setter(v17);
    WorkoutAlertPresenter.backlightTimer.setter(0);
    if ([v30 isTrainerTimerAlert])
    {
      swift_getKeyPath();
      aBlock[0] = v2;
      lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong displayWorkoutAlert:v30 duration:0.0];
        swift_unknownObjectRelease();
      }

      v72[0] = v17;
      v72[1] = 0;
      v73 = 1;
      v32 = v30;
      WorkoutAlertPresenter.displayedWorkoutAlert.setter(v72);
      return;
    }

    v34 = WorkoutAlertPresenter.displayDuration(for:)(v30);
    if (*&v2[OBJC_IVAR___WOWorkoutAlertPresenter_dataLinkHost] && (dispatch thunk of DataLinkHost.isActive.getter() & 1) != 0)
    {
      if (!*&v2[OBJC_IVAR___WOWorkoutAlertPresenter_announcer] || (v35 = Announcer.availabilityProvider.getter(), v36 = dispatch thunk of VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()(), v35, v37 = *&v34, (v36 & 1) == 0))
      {
        v37 = 5.0;
      }

      v62 = type metadata accessor for WorkoutNotification();
      v38 = *&v2[OBJC_IVAR___WOWorkoutAlertPresenter_formattingManager];
      v39 = v30;
      v61 = v38;
      v40 = specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(v39, v37);
      v62 = v39;

      dispatch thunk of DataLinkHost.sendNotification(_:)();
      if ((FIAlertOnWatchWhenMirrored() & 1) == 0)
      {
        v61 = v40;
        static WOLog.alerts.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_20C66F000, v49, v50, "Skipping notification on watch, mirrored alerts only.", v51, 2u);
          MEMORY[0x20F30E080](v51, -1, -1);
        }

        v29(v70, v11);
        v52 = v62;
        WorkoutAlertPresenter.announceWorkoutAlert(_:)(v62);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v53 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v54 = v63;
        + infix(_:_:)();
        v70 = *(v64 + 8);
        (v70)(v8, v71);
        v55 = swift_allocObject();
        *(v55 + 16) = v2;
        *(v55 + 24) = v52;
        aBlock[4] = partial apply for closure #1 in WorkoutAlertPresenter.notifyUser(with:);
        aBlock[5] = v55;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_140;
        v56 = _Block_copy(aBlock);
        v57 = v52;
        v58 = v2;

        v59 = v65;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
        v60 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x20F30C1A0](v54, v59, v60, v56);
        _Block_release(v56);

        (*(v69 + 8))(v60, v4);
        (*(v66 + 8))(v59, v68);
        (v70)(v54, v71);
        return;
      }
    }

    v41 = swift_allocObject();
    v41[2] = v2;
    v41[3] = v30;
    v41[4] = v34;
    swift_getKeyPath();
    aBlock[0] = v2;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    v42 = v30;
    v43 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v45 = v44;

      specialized InactiveAppearanceAnimationCoordinator.startAnimation(_:)(v45, partial apply for closure #2 in WorkoutAlertPresenter.notifyUser(with:), v41);
    }

    else
    {
      v47 = v42;
      v48 = v43;
      specialized WorkoutAlertPresenter.performHaptic(for:completion:)(v47, v48, v48, v47);

      WorkoutAlertPresenter.displayWorkoutAlert(_:for:)(v47, v34, 0);
    }

    return;
  }

  if ([v17 type] == 3)
  {
    if (v2[OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert] == 1)
    {
      v2[OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert] = 1;
      WorkoutAlertPresenter._isAlertingANonVisualAlert.didset(1);
      return;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v61 - 2) = v2;
    *(&v61 - 8) = 1;
    aBlock[0] = v2;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    goto LABEL_24;
  }

  if ([v17 type] != 25)
  {
    return;
  }

  if (v2[OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert])
  {
    v33 = swift_getKeyPath();
    MEMORY[0x28223BE20](v33);
    *(&v61 - 2) = v2;
    *(&v61 - 8) = 0;
    aBlock[0] = v2;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
LABEL_24:
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2[OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert] = 0;
  swift_getKeyPath();
  aBlock[0] = v2;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void closure #2 in WorkoutAlertPresenter.notifyUser(with:)(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  specialized WorkoutAlertPresenter.performHaptic(for:completion:)(v6, v5, v5, v6);

  WorkoutAlertPresenter.displayWorkoutAlert(_:for:)(v6, *&a3, 0);
}

void closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:)(uint64_t a1, void *a2)
{
  WorkoutAlertPresenter.isAlertASplitWithMotivationOn(_:)(a2);
  if ((v4 & 1) == 0 && ![a2 isNonVisualAlert] && objc_msgSend(a2, sel_type) != 27 && *(a1 + OBJC_IVAR___WOWorkoutAlertPresenter_announcer))
  {
    v5 = [a2 spokenDescriptionWithFormattingManager_];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of Announcer.announce(utterance:)();
  }
}

BOOL WorkoutAlertPresenter.shouldQueue(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v83 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v83 - v11;
  MEMORY[0x28223BE20](v13);
  v87 = v83 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v83 - v16;
  v18 = type metadata accessor for TargetZone.ZoneType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v83 - v24;
  if ([a1 isTrainerTimerAlert])
  {
    static WOLog.alerts.getter();
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_20C66F000, v27, v28, "Should not queue trainer time alert workout_alert %@", v29, 0xCu);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v30, -1, -1);
      MEMORY[0x20F30E080](v29, -1, -1);
    }

    (*(v88 + 8))(v6, v89);
    return 0;
  }

  if ([a1 isNonVisualAlert])
  {
    static WOLog.alerts.getter();
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_20C66F000, v33, v34, "Should not queue workout_alert=%@", v35, 0xCu);
      outlined destroy of NSObject?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v36, -1, -1);
      MEMORY[0x20F30E080](v35, -1, -1);
    }

    (*(v88 + 8))(v9, v89);
    return 0;
  }

  if ([v2 canTriggerAlerts])
  {
    v39 = v2[OBJC_IVAR___WOWorkoutAlertPresenter_paceAlertsForcedOff];
    v86 = v2;
    if ((v39 & 1) == 0)
    {
      v40 = NLWorkoutAlert.isFirstMilestone(with:activityType:)();
      v41 = NLWorkoutAlert.isCustomSplitMultipleOfFirstMileStone(with:activityType:)();
      v2 = v86;
      LODWORD(v85) = v40;
      if (v40 & 1) != 0 || (v41)
      {
        v84 = v41;
        v42 = static TargetZoneStorage.paceTargetZone(for:)();
        if (dispatch thunk of TargetZone.enabled.getter())
        {
          v83[1] = v42;
          TargetZone.type.getter();
          (*(v19 + 104))(v21, *MEMORY[0x277D7DE48], v18);
          lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE98]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v92[0] == v90 && v92[1] == v91)
          {
            v43 = *(v19 + 8);
            v43(v21, v18);
            v43(v25, v18);

LABEL_28:
            static WOLog.alerts.getter();
            v70 = a1;
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v92[0] = v75;
              *v73 = 138412802;
              *(v73 + 4) = v70;
              *v74 = v70;
              *(v73 + 12) = 2080;
              if (v85)
              {
                v76 = 1702195828;
              }

              else
              {
                v76 = 0x65736C6166;
              }

              if (v85)
              {
                v77 = 0xE400000000000000;
              }

              else
              {
                v77 = 0xE500000000000000;
              }

              v78 = v70;
              v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v92);

              *(v73 + 14) = v79;
              *(v73 + 22) = 2080;
              if (v84)
              {
                v80 = 1702195828;
              }

              else
              {
                v80 = 0x65736C6166;
              }

              if (v84)
              {
                v81 = 0xE400000000000000;
              }

              else
              {
                v81 = 0xE500000000000000;
              }

              v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v92);

              *(v73 + 24) = v82;
              _os_log_impl(&dword_20C66F000, v71, v72, "Need to queue workout_alert %@ due to rolling pace alerts enabled: isFirstMilestone %s, isCustomSplitMultiple %s", v73, 0x20u);
              outlined destroy of NSObject?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x20F30E080](v74, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x20F30E080](v75, -1, -1);
              MEMORY[0x20F30E080](v73, -1, -1);
            }

            (*(v88 + 8))(v17, v89);
            return 1;
          }

          v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v69 = *(v19 + 8);
          v69(v21, v18);
          v69(v25, v18);

          if (v68)
          {
            goto LABEL_28;
          }
        }

        v2 = v86;
      }
    }

    swift_getKeyPath();
    v92[0] = v2;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v50 = v86;

    v51 = *&v50[OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert];
    if (!v51)
    {
      return 0;
    }

    v52 = v51;
    v53 = v87;
    static WOLog.alerts.getter();
    v54 = a1;
    v55 = v52;
    v56 = v50;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v84 = v58;
      v60 = v59;
      v61 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v92[0] = v85;
      *v60 = 138412802;
      *(v60 + 4) = v54;
      *(v60 + 12) = 2112;
      *(v60 + 14) = v55;
      *v61 = v54;
      v61[1] = v51;
      *(v60 + 22) = 2080;
      swift_getKeyPath();
      v90 = v56;
      v62 = v54;
      v63 = v55;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v90 = *&v56[OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState];
      type metadata accessor for BLSBacklightState(0);
      v64 = String.init<A>(describing:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v92);

      *(v60 + 24) = v66;
      _os_log_impl(&dword_20C66F000, v57, v84, "Need to queue workout_alert %@ due to an existing current alert %@ with last backlight state %s", v60, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v61, -1, -1);
      v67 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x20F30E080](v67, -1, -1);
      MEMORY[0x20F30E080](v60, -1, -1);

      (*(v88 + 8))(v87, v89);
    }

    else
    {

      (*(v88 + 8))(v53, v89);
    }

    return 1;
  }

  static WOLog.alerts.getter();
  v44 = a1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&dword_20C66F000, v45, v46, "Cannot Trigger alerts due to voice motivation speaking, Checking if we should queue workout_alert=%@", v47, 0xCu);
    outlined destroy of NSObject?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v48, -1, -1);
    MEMORY[0x20F30E080](v47, -1, -1);
  }

  (*(v88 + 8))(v12, v89);
  return [v44 type] != 27;
}

uint64_t WorkoutAlertPresenter.shouldSuppress(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  swift_getKeyPath();
  v48 = v1;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([Strong shouldSuppressAlert_])
    {
      static WOLog.alerts.getter();
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v47 = v14;
        *v13 = 136315138;
        v15 = v10;
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v3;
        v18 = v17;
        v20 = v19;

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v47);

        *(v13 + 4) = v21;
        _os_log_impl(&dword_20C66F000, v11, v12, "Suppressing alert: %s because WorkoutAlertSuppressor's shouldSuppressAlert is true.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x20F30E080](v14, -1, -1);
        MEMORY[0x20F30E080](v13, -1, -1);
        swift_unknownObjectRelease();

        (*(v46 + 8))(v8, v45);
        return 1;
      }

      swift_unknownObjectRelease();
      v42 = *(v46 + 8);
      v43 = v8;
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  if (([a1 isTrainerTimerAlert] & 1) == 0 && (objc_msgSend(a1, sel_isNonVisualAlert) & 1) == 0)
  {
    swift_getKeyPath();
    v47 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
    if (v22)
    {
      v23 = v22;
      if ([v23 isMoreImportantThanAlert_])
      {
        static WOLog.alerts.getter();
        v24 = a1;
        v25 = v23;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v47 = v29;
          *v28 = 136315394;
          v30 = v24;
          v31 = [v30 description];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v3;
          v34 = v33;

          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v47);

          *(v28 + 4) = v35;
          *(v28 + 12) = 2080;
          v36 = v25;
          v37 = [v36 description];
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v47);

          *(v28 + 14) = v41;
          _os_log_impl(&dword_20C66F000, v26, v27, "Suppressing alert: %s because currentAlert: %s is more important.", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F30E080](v29, -1, -1);
          MEMORY[0x20F30E080](v28, -1, -1);

          (*(v46 + 8))(v5, v45);
          return 1;
        }

        v42 = *(v46 + 8);
        v43 = v5;
LABEL_13:
        v42(v43, v3);
        return 1;
      }
    }
  }

  return 0;
}

void WorkoutAlertPresenter.displayWorkoutAlert(_:for:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  if (a3)
  {
    v16 = WorkoutAlertPresenter.displayDuration(for:)(a1);
  }

  else
  {
    v16 = *&a2;
  }

  static WOLog.alerts.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;
    v22 = v17;
    _os_log_impl(&dword_20C66F000, v18, v19, "Displaying workout_alert=%@ for duration=%f", v20, 0x16u);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v21, -1, -1);
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  v25 = *(v9 + 8);
  v24 = v9 + 8;
  v23 = v25;
  v25(v15, v8);
  swift_getKeyPath();
  v66 = v4;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong displayWorkoutAlert:v17 duration:v16];
    swift_unknownObjectRelease();
  }

  v64[0] = v17;
  *&v64[1] = v16;
  v65 = 0;
  v27 = v17;
  WorkoutAlertPresenter.displayedWorkoutAlert.setter(v64);
  swift_getKeyPath();
  v64[0] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v4 + OBJC_IVAR___WOWorkoutAlertPresenter__notificationCenter))
  {
    v28 = one-time initialization token for unsupportedWorkoutAlertTypes;

    if (v28 != -1)
    {
      swift_once();
    }

    if (specialized Set.contains(_:)([v27 type], static MetricPlattersView.unsupportedWorkoutAlertTypes))
    {
      v60 = v8;
      v29 = v63;
      static WOLog.app.getter();
      v30 = v27;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v58 = v23;
        v36 = v35;
        v64[0] = v35;
        *v33 = 136315394;
        v37 = _typeName(_:qualified:)();
        v59 = v24;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v64);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2112;
        *(v33 + 14) = v30;
        *v34 = v17;
        v40 = v30;
        _os_log_impl(&dword_20C66F000, v31, v32, "[%s]: ignoring unsupported workout alert=%@", v33, 0x16u);
        outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F30E080](v34, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F30E080](v36, -1, -1);
        MEMORY[0x20F30E080](v33, -1, -1);

        v58(v63, v60);
      }

      else
      {

        v23(v29, v60);
      }
    }

    else
    {
      v59 = v24;
      v41 = v62;
      static WOLog.alerts.getter();
      v42 = v27;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v58 = v23;
        v63 = v47;
        v64[0] = v47;
        *v45 = 136315394;
        v48 = _typeName(_:qualified:)();
        v60 = v8;
        v50 = v42;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v64);

        *(v45 + 4) = v51;
        v42 = v50;
        *(v45 + 12) = 2112;
        *(v45 + 14) = v50;
        *v46 = v17;
        v52 = v50;
        _os_log_impl(&dword_20C66F000, v43, v44, "[%s]: adding workout_alert=%@ to the notification center.", v45, 0x16u);
        outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F30E080](v46, -1, -1);
        v53 = v63;
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x20F30E080](v53, -1, -1);
        MEMORY[0x20F30E080](v45, -1, -1);

        v58(v62, v60);
      }

      else
      {

        v23(v41, v8);
      }

      type metadata accessor for WorkoutNotification();
      v54 = *(v4 + OBJC_IVAR___WOWorkoutAlertPresenter_formattingManager);
      v55 = v42;
      v56 = v54;
      v57 = specialized WorkoutNotification.init(alert:formattingManager:displayDuration:)(v55, v16 + 0.35);

      dispatch thunk of WorkoutNotificationCenter.add(_:)();
    }
  }
}

double WorkoutAlertPresenter.displayDuration(for:)(void *a1)
{
  v2 = v1;
  v4 = [a1 spokenDescriptionWithFormattingManager_];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [a1 useExtendedDisplayDuration];
  if ([a1 isUserInteractive])
  {

    v6 = 31.5;
  }

  else
  {
    WorkoutAlertPresenter.isAlertASplitWithMotivationOn(_:)(a1);
    if (v7)
    {

      v6 = 8.5;
    }

    else if (*(v2 + OBJC_IVAR___WOWorkoutAlertPresenter_announcer))
    {
      dispatch thunk of Announcer.estimateDuration(of:)();
      v9 = v8;

      v6 = v9 + 1.5;
    }

    else
    {

      v6 = 1.5;
    }
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v10 = UITraitEnvironment.isAppearanceInactive.getter();
    swift_unknownObjectRelease();
    v11 = 3.0;
    if (v10)
    {
      v11 = 6.0;
    }

    if (v5)
    {
      return v6 + v11;
    }

    else if (v6 <= v11)
    {
      return v11;
    }
  }

  return v6;
}

void WorkoutAlertPresenter.displayCompleted(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  static WOLog.alerts.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v63 = v4;
  v65 = v5;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v62 = v2;
    v16 = v15;
    v67[0] = v15;
    *v14 = 136315138;
    v17 = v10;
    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v10;
    v20 = v4;
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, v67);

    *(v14 + 4) = v23;
    _os_log_impl(&dword_20C66F000, v11, v12, "Display completed of workout_alert=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v24 = v16;
    v2 = v62;
    MEMORY[0x20F30E080](v24, -1, -1);
    MEMORY[0x20F30E080](v14, -1, -1);

    v25 = *(v65 + 8);
    v26 = v20;
    v10 = v61;
    v25(v9, v26);
  }

  else
  {

    v25 = *(v5 + 8);
    v25(v9, v4);
  }

  swift_getKeyPath();
  v27 = OBJC_IVAR___WOWorkoutAlertPresenter___observationRegistrar;
  v67[0] = v2;
  v28 = lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert;
  v30 = *&v2[OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert];
  if (v30)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NLWorkoutAlert, 0x277D7E7A8);
    v31 = v10;
    v32 = v30;
    v33 = static NSObject.== infix(_:_:)();

    if (v33)
    {
      if (*&v2[v29])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v59 - 2) = v2;
        *(&v59 - 1) = 0;
        v67[0] = v2;
        v32 = 0;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v67[0] = 0;
      v67[1] = 0;
      v68 = 0;
      WorkoutAlertPresenter.displayedWorkoutAlert.setter(v67);
      v35 = swift_getKeyPath();
      v67[0] = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v36 = OBJC_IVAR___WOWorkoutAlertPresenter__queuedAlerts;
      swift_beginAccess();
      v37 = *&v2[v36];
      if (v37 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          return;
        }
      }

      else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v37 & 0xC000000000000001) != 0)
      {

        v32 = MEMORY[0x20F30C990](0, v37);
      }

      else
      {
        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v32 = *(v37 + 32);
      }

      swift_getKeyPath();
      v66 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v66 = v2;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      v37 = *&v2[v36];
      v35 = v37 >> 62;
      if (!(v37 >> 62))
      {
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!__CocoaSet.count.getter())
      {
LABEL_38:
        __break(1u);
        return;
      }

      if (__CocoaSet.count.getter())
      {
LABEL_15:
        if ((v37 & 0xC000000000000001) == 0)
        {
          v38 = v37 & 0xFFFFFFFFFFFFFF8;
          if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (!v35)
          {
            goto LABEL_18;
          }

          goto LABEL_32;
        }

LABEL_31:
        MEMORY[0x20F30C990](0, v37);
        swift_unknownObjectRelease();
        v38 = v37 & 0xFFFFFFFFFFFFFF8;
        if (!v35)
        {
LABEL_18:
          v39 = *(v38 + 16);
          goto LABEL_33;
        }

LABEL_32:
        v39 = __CocoaSet.count.getter();
LABEL_33:
        if (v39)
        {
          specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
          swift_endAccess();
          v66 = v2;
          swift_getKeyPath();
          ObservationRegistrar.didSet<A, B>(_:keyPath:)();

          WorkoutAlertPresenter.notifyUser(with:)(v32);

          return;
        }

        goto LABEL_37;
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v61 = v28;
  v62 = v25;
  v40 = v64;
  static WOLog.alerts.getter();
  v41 = v10;
  v42 = v2;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v59 = v27;
    v46 = v2;
    v47 = v45;
    v60 = swift_slowAlloc();
    v67[0] = v60;
    *v47 = 136315394;
    v48 = v41;
    v49 = [v48 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v67);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    swift_getKeyPath();
    v66 = v42;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v66 = *&v46[v29];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NLWorkoutAlertCSgMd, &_sSo14NLWorkoutAlertCSgMR);
    v54 = Optional.description.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v67);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_20C66F000, v43, v44, "Ignoring completed workout alert because it is not the current workout alert. completed_workout_alert=%s current_workout_alert=%s", v47, 0x16u);
    v57 = v60;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v57, -1, -1);
    MEMORY[0x20F30E080](v47, -1, -1);

    v58 = v64;
  }

  else
  {

    v58 = v40;
  }

  (v62)(v58, v63);
}

id WorkoutAlertPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WorkoutAlertPresenter.alertSource(_:didTriggerAlert:)(uint64_t a1, void *a2)
{
  type metadata accessor for DispatchUtilities();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  v5 = v2;
  v6 = a2;
  static DispatchUtilities.ensureMainQueueOrAsync(block:)();
}

Swift::Bool __swiftcall WorkoutAlertPresenter.canTriggerAlerts()()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return (*(v0 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert) & 1) == 0;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for TrainingLoadSampleDaySummary();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of NSObject?(v25, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMR);
  }

  if (v18 < 1)
  {
    return outlined destroy of NSObject?(v25, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMR);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return outlined destroy of NSObject?(v25, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss15CollectionOfOneVy13HealthBalance28TrainingLoadSampleDaySummaryVGMR);
  }

LABEL_23:
  __break(1u);
  return result;
}

char *specialized WorkoutAlertPresenter.__allocating_init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a3;
  v24 = objc_allocWithZone(type metadata accessor for WorkoutAlertPresenter(0));

  return specialized WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(a1, a2, v16, a4, a5, a6, a7, a8, a9, a10, a11, a12, v24);
}

char *specialized WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, _BYTE *a13)
{
  v65 = a1;
  v66 = a6;
  v60 = a5;
  v61 = a4;
  LODWORD(v59) = a3;
  v63 = a12;
  v64 = a11;
  v55 = a9;
  v56 = a10;
  ObjectType = swift_getObjectType();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMR);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v50 - v17;
  v18 = OBJC_IVAR___WOWorkoutAlertPresenter__display;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR___WOWorkoutAlertPresenter__traitEnvironment;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___WOWorkoutAlertPresenter__inactiveAppearanceAnimationCoordinator;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert] = 0;
  a13[OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert] = 0;
  v21 = &a13[OBJC_IVAR___WOWorkoutAlertPresenter__displayedWorkoutAlert];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = OBJC_IVAR___WOWorkoutAlertPresenter__notificationCenter;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__notificationCenter] = 0;
  v23 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__cancellables] = v24;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__queuedAlerts] = v23;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState] = 2;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_backlightOffNotificationTimeout] = 0x402E000000000000;
  a13[OBJC_IVAR___WOWorkoutAlertPresenter_shouldObserveBacklightState] = 0;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_alertDisplayDurationPadding] = 0x3FF8000000000000;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_alertDisplayDurationActiveAppearance] = 0x4008000000000000;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_alertDisplayDurationInactiveAppearance] = 0x4018000000000000;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_mirrorAlertDisplayDurationWithoutVoiceFeedback] = 0x4014000000000000;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer] = 0;
  v25 = OBJC_IVAR___WOWorkoutAlertPresenter__workoutAlertTester;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter__workoutAlertTester] = 0;
  a13[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddySupported] = 0;
  a13[OBJC_IVAR___WOWorkoutAlertPresenter__isWorkoutBuddyAvailableInCurrentWorkout] = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectRetain();
  _sSo18UITraitEnvironment_pSgXwWOh_0(&a13[v18]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  _sSo18UITraitEnvironment_pSgXwWOh_0(&a13[v19]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  a13[OBJC_IVAR___WOWorkoutAlertPresenter_paceAlertsForcedOff] = v59 & 1;
  v26 = v61;
  MEMORY[0x20F30E160](&a13[v20]);
  swift_unknownObjectWeakInit();
  v61 = v26;

  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_formattingManager] = a7;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_activityType] = a8;
  v27 = v60;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_announcer] = v60;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_dataLinkHost] = v66;
  v28 = a7;
  v29 = a8;
  v30 = v55;
  v31 = v56;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_liveWorkoutConfiguration] = v55;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_workoutVoiceAvailabilityProvider] = v31;
  *&a13[OBJC_IVAR___WOWorkoutAlertPresenter_splitProvider] = v64;
  v58 = v28;
  v59 = v29;
  v57 = v27;

  v60 = v30;
  v32 = v31;
  swift_unknownObjectRetain();
  v33 = v63;

  *&a13[v22] = v33;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    type metadata accessor for WorkoutAlertTester();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    WorkoutAlertTester.observeTestingNotifications()();

    *&a13[v25] = v34;
  }

  v35 = type metadata accessor for WorkoutAlertPresenter(0);
  v69.receiver = a13;
  v69.super_class = v35;
  v36 = objc_msgSendSuper2(&v69, sel_init);
  swift_getKeyPath();
  v68 = v36;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*&v36[OBJC_IVAR___WOWorkoutAlertPresenter__workoutAlertTester])
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  v37 = type metadata accessor for TaskPriority();
  v38 = v62;
  (*(*(v37 - 8) + 56))(v62, 1, 1, v37);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v40 = v32;

  v41 = static MainActor.shared.getter();
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D85700];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v39;
  v42[5] = v40;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in WorkoutAlertPresenter.init(display:traitEnvironment:paceAlertsForcedOff:inactiveAppearanceAnimationCoordinator:announcer:dataLinkHost:formattingManager:activityType:liveWorkoutConfiguration:workoutVoiceAvailabilityProvider:splitProvider:notificationCenter:), v42);

  if (v33)
  {
    v44 = v52;
    dispatch thunk of WorkoutNotificationCenter.$notification.getter();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    v47 = ObjectType;
    *(v46 + 16) = v45;
    *(v46 + 24) = v47;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<WorkoutNotification?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMR, MEMORY[0x277CBCEC8]);
    v48 = v54;
    Publisher<>.sink(receiveValue:)();

    (*(v53 + 8))(v44, v48);
    swift_getKeyPath();
    v67 = v36;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v67 = v36;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v67 = v36;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return v36;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NLWorkoutAlert, 0x277D7E7A8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for InactiveAppearanceAnimation(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized WorkoutAlertPresenter.performHaptic(for:completion:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = a3;
  v13 = a4;
  static WOLog.alerts.getter();
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v11;
    v44 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v20 = v14;
    _os_log_impl(&dword_20C66F000, v15, v16, "Playing haptic for workout_alert=%@", v18, 0xCu);
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v19, -1, -1);
    v21 = v18;
    v11 = v43;
    v12 = v44;
    MEMORY[0x20F30E080](v21, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  switch([v14 type])
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 0xAuLL:
    case 0x19uLL:
    case 0x1BuLL:
      closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:)(v12, v13);

    case 4uLL:
    case 0xDuLL:
    case 0xFuLL:
    case 0x17uLL:
    case 0x18uLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_166;
      v22 = _Block_copy(&aBlock);

      v23 = 1430;
      goto LABEL_11;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 0x1AuLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v24 = &block_descriptor_160;
      goto LABEL_10;
    case 8uLL:
    case 0x12uLL:
    case 0x15uLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_157;
      v22 = _Block_copy(&aBlock);

      v23 = 1551;
      goto LABEL_11;
    case 9uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x16uLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_154;
      v22 = _Block_copy(&aBlock);

      v23 = 1552;
      goto LABEL_11;
    case 0xBuLL:
    case 0xCuLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v24 = &block_descriptor_163;
LABEL_10:
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = v24;
      v22 = _Block_copy(&aBlock);

      v23 = 1431;
      goto LABEL_11;
    case 0xEuLL:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v26 = static FIUIWorkoutActivityType.outdoorRun.getter();
      v27 = static NSObject.== infix(_:_:)();

      if (v27 & 1) != 0 || (v28 = static FIUIWorkoutActivityType.outdoorWheelchairRun.getter(), v29 = static NSObject.== infix(_:_:)(), v28, (v29) || (v30 = static FIUIWorkoutActivityType.indoorRun.getter(), v31 = static NSObject.== infix(_:_:)(), v30, (v31) || (v32 = static FIUIWorkoutActivityType.indoorWheelchairRun.getter(), v33 = static NSObject.== infix(_:_:)(), v32, (v33))
      {
        v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
        v50 = v11;
        aBlock = MEMORY[0x277D85DD0];
        v46 = 1107296256;
        v47 = thunk for @escaping @callee_guaranteed () -> ();
        v48 = &block_descriptor_172;
        v34 = _Block_copy(&aBlock);

        AudioServicesPlayAlertSoundWithCompletion(0x626u, v34);
        _Block_release(v34);
      }

      v35 = static FIUIWorkoutActivityType.outdoorWalk.getter();
      v36 = static NSObject.== infix(_:_:)();

      if ((v36 & 1) == 0)
      {
        v37 = static FIUIWorkoutActivityType.outdoorWheelchairWalk.getter();
        v38 = static NSObject.== infix(_:_:)();

        if ((v38 & 1) == 0)
        {
          v39 = static FIUIWorkoutActivityType.indoorWalk.getter();
          v40 = static NSObject.== infix(_:_:)();

          if ((v40 & 1) == 0)
          {
            v41 = static FIUIWorkoutActivityType.indoorWheelchairWalk.getter();
            v42 = static NSObject.== infix(_:_:)();

            if ((v42 & 1) == 0)
            {
            }
          }
        }
      }

      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_169;
      v22 = _Block_copy(&aBlock);

      v23 = 1575;
LABEL_11:
      AudioServicesPlayAlertSoundWithCompletion(v23, v22);
      _Block_release(v22);

    case 0x10uLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_151;
      v22 = _Block_copy(&aBlock);

      v23 = 1583;
      goto LABEL_11;
    case 0x11uLL:
      v49 = partial apply for closure #1 in closure #2 in WorkoutAlertPresenter.notifyUser(with:);
      v50 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = thunk for @escaping @callee_guaranteed () -> ();
      v48 = &block_descriptor_148;
      v22 = _Block_copy(&aBlock);

      v23 = 1582;
      goto LABEL_11;
    default:

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
  }
}

uint64_t specialized WorkoutAlertPresenter.shouldNotifyObservers<A>(_:_:)(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  v6 = a4;
  v7 = a1;
  if (a1)
  {
    if (a4)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v12 = v7;
      v13 = v6;
      v6 = v12;
      LOBYTE(v12) = static NSObject.== infix(_:_:)();

      if (v12)
      {
        if (a3)
        {
          if ((a6 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else if ((a6 & 1) != 0 || *&a2 != *&a5)
        {
          goto LABEL_15;
        }

        v16 = 0;
LABEL_16:
        v7 = v6;
        goto LABEL_17;
      }

LABEL_15:
      v16 = 1;
      goto LABEL_16;
    }

    v14 = a1;
LABEL_10:
    v15 = v14;
    v16 = 1;
LABEL_17:

    return v16;
  }

  if (a4)
  {
    v14 = a4;
    goto LABEL_10;
  }

  return 0;
}

void partial apply for closure #1 in WorkoutAlertPresenter.currentAlert.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert);
  *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert) = v2;
  v4 = v2;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, void *a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x20F30C990](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 type];
    v9 = [a2 type];

    if (v8 == v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, void *a2)
{
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == __CocoaSet.count.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F30C990](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 type];
    v14 = [a2 type];

    if (v13 != v14)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F30C990](v8, v5);
          v16 = MEMORY[0x20F30C990](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v17)
          {
            goto LABEL_45;
          }

          if (v9 >= v17)
          {
            goto LABEL_46;
          }

          v18 = *(v5 + 32 + 8 * v9);
          v15 = *(v5 + 32 + 8 * v8);
          v16 = v18;
        }

        v19 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v20 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v5 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

        if ((v5 & 0x8000000000000000) != 0 || v20)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v21 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v23 = v21 + 8 * v9;
        v24 = *(v23 + 32);
        *(v23 + 32) = v15;

        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __CocoaSet.count.getter();
}

void specialized WorkoutAlertPresenter.backlight(_:didCompleteUpdateTo:for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v40 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.alerts.getter();
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v51 = v16;

  v19 = os_log_type_enabled(v17, v18);
  v52 = a2;
  if (v19)
  {
    v20 = a1;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v53 = v22;
    *v21 = 134218242;
    v40 = v20;
    *(v21 + 4) = v20;
    *(v21 + 12) = 2080;
    if (a2)
    {
      v23 = [v51 previousState];
    }

    else
    {
      v23 = 0;
    }

    aBlock = v23;
    LOBYTE(v55) = a2 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v24 = Optional.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v53);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_20C66F000, v17, v18, "backlight state changed backlightState=%ld previousBacklightState=%s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v13 + 8))(v15, v12);
    a1 = v40;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  if (*&v3[OBJC_IVAR___WOWorkoutAlertPresenter__lastBacklightState] != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v40 - 2) = v3;
    *(&v40 - 1) = a1;
    aBlock = v3;
    lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v28 = v52 && ![v51 previousState] && (a1 - 1) < 2;
  swift_getKeyPath();
  aBlock = v3;
  lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter, type metadata accessor for WorkoutAlertPresenter, &protocol conformance descriptor for WorkoutAlertPresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *&v3[OBJC_IVAR___WOWorkoutAlertPresenter__currentAlert];
  if (v29 && v28)
  {
    swift_getKeyPath();
    aBlock = v3;
    v30 = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*&v3[OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v51 = static OS_dispatch_queue.main.getter();
      v31 = v41;
      static DispatchTime.now()();
      v32 = v42;
      + infix(_:_:)();
      v52 = *(v43 + 1);
      v52(v31, v50);
      v33 = swift_allocObject();
      *(v33 + 16) = v3;
      *(v33 + 24) = v30;
      v58 = partial apply for closure #1 in WorkoutAlertPresenter.backlight(_:didCompleteUpdateTo:for:);
      v59 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = thunk for @escaping @callee_guaranteed () -> ();
      v57 = &block_descriptor_3;
      v34 = _Block_copy(&aBlock);
      v35 = v30;
      v43 = v3;

      v36 = v44;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v37 = v46;
      v38 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v51;
      MEMORY[0x20F30C1A0](v32, v36, v37, v34);
      _Block_release(v34);

      (*(v48 + 8))(v37, v38);
      (*(v45 + 8))(v36, v47);
      v52(v32, v50);
      WorkoutAlertPresenter.backlightTimer.setter(0);
    }
  }
}

uint64_t type metadata completion function for WorkoutAlertPresenter(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertPresenter.DisplayedWorkoutAlert(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertPresenter.DisplayedWorkoutAlert(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for UUID();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

void partial apply for closure #1 in WorkoutAlertPresenter.backlightTimer.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer);
  *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__backlightTimer) = v2;
  v4 = v2;
  [v3 invalidate];
}

void partial apply for closure #1 in WorkoutAlertPresenter.isAlertingANonVisualAlert.setter()
{
  partial apply for closure #1 in WorkoutAlertPresenter.isAlertingANonVisualAlert.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert);
  *(v1 + OBJC_IVAR___WOWorkoutAlertPresenter__isAlertingANonVisualAlert) = *(v0 + 24);
  WorkoutAlertPresenter._isAlertingANonVisualAlert.didset(v2);
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutAlertPresenter and conformance WorkoutAlertPresenter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for closure #1 in WorkoutAlertPresenter.workoutAlertTester.setter(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t closure #1 in WorkoutAlertPresenter.alertSuppressor.setterpartial apply()
{
  return partial apply for closure #1 in WorkoutAlertPresenter.alertSuppressor.setter();
}

{
  return partial apply for closure #1 in WorkoutAlertPresenter.alertSuppressor.setter();
}

void closure #1 in WorkoutAlertPresenter.isAlertingANonVisualAlert.setterpartial apply()
{
  partial apply for closure #1 in WorkoutAlertPresenter.isAlertingANonVisualAlert.setter();
}

{
  partial apply for closure #1 in WorkoutAlertPresenter.isAlertingANonVisualAlert.setter();
}

id RaceMapViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceMapViewDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9WorkoutUI21RaceRoutePathRendererC7overlay11routePoints21polylineUpdateCadence09portionOfD11Highlighted05totalD17HighlightDurationACSo9MKOverlay_p_SaySo22CLLocationCoordinate2DVGS3dtcfCTf4ennnnn_nSo10MKPolylineC_Tt4g5Tf4gnnnn_n(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for RaceRoutePathRenderer();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_lightColor;
  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:1.0 blue:0.62745098 alpha:1.0];
  v14 = [v13 CGColor];

  *&v11[v12] = v14;
  v15 = OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_darkColor;
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.0196078431 green:0.619607843 blue:0.560784314 alpha:1.0];
  v17 = [v16 CGColor];

  *&v11[v15] = v17;
  v18 = *(a2 + 16);
  if (v18)
  {
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v33;
    v20 = a2 + 40;
    v21 = v18;
    do
    {
      v24 = MKMapPointForCoordinate(*(v20 - 8));
      y = v24.y;
      x = v24.x;
      v33 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        y = v24.y;
        x = v24.x;
        v19 = v33;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = x;
      *(v27 + 40) = y;
      v20 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_mapPoints] = v19;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_polylineUpdateCadence] = a3;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_portionOfRouteHighlighted] = a4;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_totalRouteHighlightDuration] = a5;
  v29 = v18 * a4;
  if (COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = -v29;
  if (__OFSUB__(0, v29))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_highlightHead] = 0;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_highlightTail] = v30;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_initialHighlightHeadIndex] = 0;
  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_initialHighlightTailIndex] = v30;
  v31 = (a4 + 1.0) * v18 / (a5 / a3);
  if (COERCE_UNSIGNED_INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_pointsPerAnimation] = v31;
  if (!__OFSUB__(0, v30))
  {
    *&v11[OBJC_IVAR____TtC9WorkoutUI21RaceRoutePathRenderer_gradientColors] = specialized static RaceRoutePathRenderer.interpolateColorsFor(numberOfPoints:)(v29 / 2);
    v32.receiver = v11;
    v32.super_class = v10;
    return objc_msgSendSuper2(&v32, sel_initWithOverlay_, a1);
  }

LABEL_24:
  __break(1u);
  return result;
}

id specialized RaceMapViewDelegate.mapView(_:rendererFor:)(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277CD4EE8]) init];
  }

  v2 = v1;
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  static Published.subscript.getter(&v5);

  if (v5 < 3)
  {
    outlined consume of RaceRouteLocationsModel.State(v5);
    swift_unknownObjectRelease();
    return [objc_allocWithZone(MEMORY[0x277CD4EE8]) init];
  }

  updated = _s9WorkoutUI21RaceRoutePathRendererC7overlay11routePoints21polylineUpdateCadence09portionOfD11Highlighted05totalD17HighlightDurationACSo9MKOverlay_p_SaySo22CLLocationCoordinate2DVGS3dtcfCTf4ennnnn_nSo10MKPolylineC_Tt4g5Tf4gnnnn_n(v2, v5, 0.05, 0.5, 4.0);
  swift_unknownObjectRelease();
  return updated;
}

char *specialized RaceMapViewDelegate.mapView(_:viewFor:)(uint64_t a1)
{
  type metadata accessor for WorkoutLocationAnnotation();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    swift_unknownObjectRetain();
    v3 = [v2 initWithAnnotation:v1 reuseIdentifier:0];
    v4 = *&v1[OBJC_IVAR____TtC9WorkoutUI25WorkoutLocationAnnotation_centerXOffset];
    v5 = *&v1[OBJC_IVAR____TtC9WorkoutUI25WorkoutLocationAnnotation_centerYOffset];
    v1 = v3;
    [v1 setCenterOffset_];
    v6 = 2;
    [v1 setCollisionMode_];
    type metadata accessor for WorkoutStartLocationAnnotation();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for WorkoutEndLocationAnnotation();
      if (!swift_dynamicCastClass())
      {
LABEL_6:
        swift_unknownObjectRelease();

        return v1;
      }

      v6 = 1;
    }

    [v1 _setZIndex_];
    goto LABEL_6;
  }

  return v1;
}

unint64_t outlined consume of RaceRouteLocationsModel.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

Swift::Void __swiftcall RaceRouteLocationsModel.load()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  v6 = v8;
  outlined consume of RaceRouteLocationsModel.State(v8);
  if (v6 <= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = 1;

    static Published.subscript.setter();
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9WorkoutUI23RaceRouteLocationsModel_dataStore), *(v1 + OBJC_IVAR____TtC9WorkoutUI23RaceRouteLocationsModel_dataStore + 24));
    RaceWorkoutConfiguration.lastWorkoutUUID.getter();
    static RaceSessionConstants.noTimeLimitAnchor.getter();
    static RaceSessionConstants.noPointsLimit.getter();
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of RaceRouteDataStoring.queryRoute(for:timestampAnchor:pointsLimit:completion:)();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t key path getter for RaceRouteLocationsModel.state : RaceRouteLocationsModel@<X0>(void *a4@<X8>)
{
  return key path getter for RaceRouteLocationsModel.state : RaceRouteLocationsModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for RaceRouteLocationsModel.state : RaceRouteLocationsModel(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of RaceRouteLocationsModel.State(v2);

  return static Published.subscript.setter();
}

uint64_t RaceRouteLocationsModel.state.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t closure #1 in RaceRouteLocationsModel.load()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RaceRoute();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMd, &_ss6ResultOy11WorkoutCore9RaceRouteVs5Error_pGMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = result;
    outlined init with copy of Result<RaceRoute, Error>(a1, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Result<RaceRoute, Error>(v14);
      type metadata accessor for OS_dispatch_queue();
      v45 = static OS_dispatch_queue.main.getter();
      v51 = partial apply for closure #3 in closure #1 in RaceRouteLocationsModel.load();
      v52 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed () -> ();
      v50 = &block_descriptor_4;
      v16 = _Block_copy(&aBlock);

      v17 = v46;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v45;
      MEMORY[0x20F30C1F0](0, v17, v6, v16);
      _Block_release(v16);

      (*(v4 + 8))(v6, v3);
      return (*(v8 + 8))(v17, v7);
    }

    v40 = v8;
    (*(v44 + 32))(v43, v14, v45);
    v19 = RaceRoute.locations.getter();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v7;
    if (v21)
    {
      v37 = v6;
      v38 = v4;
      v39 = v3;
      aBlock = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = aBlock;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x20F30C990](v22, v20);
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        [v24 latitude_deg];
        v27 = v26;
        [v25 longitude_deg];
        v29 = v28;

        aBlock = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v23 = aBlock;
        }

        ++v22;
        *(v23 + 16) = v31 + 1;
        v32 = v23 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
      }

      while (v21 != v22);

      v4 = v38;
      v3 = v39;
      v6 = v37;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    type metadata accessor for OS_dispatch_queue();
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = v42;
    *(v34 + 24) = v23;
    v51 = partial apply for closure #2 in closure #1 in RaceRouteLocationsModel.load();
    v52 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = thunk for @escaping @callee_guaranteed () -> ();
    v50 = &block_descriptor_10_0;
    v35 = _Block_copy(&aBlock);

    v36 = v46;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v36, v6, v35);
    _Block_release(v35);

    (*(v4 + 8))(v6, v3);
    (*(v40 + 8))(v36, v41);
    return (*(v44 + 8))(v43, v45);
  }

  return result;
}

uint64_t closure #2 in closure #1 in RaceRouteLocationsModel.load()(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  [objc_opt_self() polylineWithCoordinates:a2 + 4 count:a2[2]];
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #3 in closure #1 in RaceRouteLocationsModel.load()(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceRouteLocationsModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI23RaceRouteLocationsModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI23RaceRouteLocationsModelC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI23RaceRouteLocationsModelC5StateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9WorkoutUI23RaceRouteLocationsModel__polyline;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo10MKPolylineCSgGMd, &_s7Combine9PublishedVySo10MKPolylineCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9WorkoutUI23RaceRouteLocationsModel_dataStore));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RaceRouteLocationsModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceRouteLocationsModel;
  if (!type metadata singleton initialization cache for RaceRouteLocationsModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceRouteLocationsModel(uint64_t a1)
{
  type metadata accessor for Published<RaceRouteLocationsModel.State>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<MKPolyline?>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<RaceRouteLocationsModel.State>()
{
  if (!lazy cache variable for type metadata for Published<RaceRouteLocationsModel.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RaceRouteLocationsModel.State>);
    }
  }
}

void type metadata accessor for Published<MKPolyline?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<MKPolyline?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10MKPolylineCSgMd, &_sSo10MKPolylineCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<MKPolyline?>);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9WorkoutUI23RaceRouteLocationsModelC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}